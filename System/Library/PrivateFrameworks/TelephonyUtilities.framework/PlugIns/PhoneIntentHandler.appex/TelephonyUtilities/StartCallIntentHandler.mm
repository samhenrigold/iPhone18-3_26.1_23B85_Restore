@interface StartCallIntentHandler
- (AppResolving)appResolver;
- (BOOL)anyContactsHaveSameName:(id)name;
- (BOOL)haveAlreadyConfirmedRecipient:(id)recipient;
- (BOOL)intentHasUnresolvedLocalEmergencyContact:(id)contact;
- (BOOL)isChinaSKUDevice;
- (BOOL)isEmergencyCall:(id)call;
- (BOOL)isEmergencyHandle:(id)handle;
- (BOOL)isFaceTimeInvitationEnabled;
- (BOOL)isFaceTimeNoFanOutEnabled;
- (BOOL)isGFTDisabledForChinaSKU:(id)u;
- (BOOL)isUnresolvedLocalEmergencyContact:(id)contact;
- (BOOL)shouldForceAudioOnlyWithIdiom:(int64_t)idiom withDisplayDisabled:(BOOL)disabled;
- (BOOL)shouldInferAudioCapabilityForRequestedCallCapability:(int64_t)capability idiom:(int64_t)idiom isDisplayDisabled:(BOOL)disabled;
- (BOOL)shouldRequireInvalidNumberConfirmationForRecipient:(id)recipient;
- (BOOL)shouldRequireUnknownRecipientConfirmationForRequestedRecipient:(id)recipient resolvedToRecipient:(id)toRecipient contact:(id)contact;
- (IntentHandlerCoreAnalyticsLogging)coreAnalyticsLogger;
- (NSCache)identifierToContactCache;
- (StartCallIntentHandler)init;
- (StartCallIntentHandler)initWithFeatureFlags:(id)flags;
- (StartCallIntentHandler)initWithFeatureFlags:(id)flags faceTimeUtilities:(id)utilities;
- (StartCallIntentHandlerDataSource)dataSource;
- (id)_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:(id)contact requestedHandleType:(int64_t)type preferredCallProvider:(int64_t)provider;
- (id)_inPersonsFromContact:(id)contact withRequestedType:(int64_t)type requestedLabel:(id)label isoCountryCodes:(id)codes;
- (id)allCountryCodesRelevantToCall:(id)call;
- (id)callRecordForRecentCall:(id)call;
- (id)emergencyTypeToString:(int64_t)string;
- (id)generateAdditionalMatchingHandles:(id)handles resolvedContacts:(id)contacts requestedHandleType:(int64_t)type requestedHandleLabel:(id)label;
- (id)getAlternativesForContact:(id)contact forRequestedHandleType:(int64_t)type forCallProvider:(int64_t)provider;
- (id)globalEmergencyNumbers;
- (id)localizedEmergencyString:(id)string;
- (id)personResolutionResultsForIntent:(id)intent;
- (id)recentCallRecordToRedialForIntent:(id)intent;
- (id)recentCallToRedialForQuery:(id)query;
- (id)recentCallsWithHandles:(id)handles telephonyOnly:(BOOL)only;
- (id)relayCRRRecommendationForPerson:(id)person intent:(id)intent;
- (id)resolutionResultForCallCapability:(int64_t)capability idiom:(int64_t)idiom withDisplayDisabled:(BOOL)disabled;
- (id)resolutionResultForEmergency;
- (id)resolutionResultForPersonWithResolvedContactName:(id)name resolvedPerson:(id)person resolvedContact:(id)contact contactIdentifiersRequiringConfirmation:(id)confirmation;
- (id)resolutionResultForPersonWithResolvedHandleValue:(id)value;
- (id)resolveContactsFromCallGroups:(id)groups;
- (id)resolvePreferredContactFromContacts:(id)contacts;
- (id)resolvePreferredHandleFromHandles:(id)handles contactIdentifiersRequiringConfirmation:(id)confirmation telephonyOnly:(BOOL)only;
- (id)responseForDialRequest:(id)request intent:(id)intent;
- (id)responseForJoinRequest:(id)request intent:(id)intent callProvider:(id)provider;
- (int64_t)callCapabilityFromRecentCall:(id)call;
- (int64_t)inferCallCapabilityForPreferredCallProvider:(int64_t)provider recentCall:(id)call initialCallCapability:(int64_t)capability idiom:(int64_t)idiom isDisplayDisabled:(BOOL)disabled executionContext:(int64_t)context;
- (void)confirmStartCall:(id)call completion:(id)completion;
- (void)extractHandlesFromIntent:(id)intent faceTimeMemberHandles:(id)handles nonFaceTimeMemberHandles:(id)memberHandles;
- (void)handleStartCall:(id)call completion:(id)completion;
- (void)parseEmergencyContacts:(id)contacts usingExistingResult:(id)result;
- (void)resolveCallCapabilityForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveCallRecordToCallBackForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveContactsForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveDestinationTypeForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveFaceTimeLinkForStartCall:(id)call withCompletion:(id)completion;
- (void)resolvePreferredCallProviderForStartCall:(id)call withCompletion:(id)completion;
- (void)sortFaceTimeHandles:(id)handles faceTimeHandles:(id)timeHandles nonFaceTimeHandles:(id)faceTimeHandles;
- (void)updateHandlerStateForContactResolutionResults:(id)results;
- (void)updateScoreBasedContactResolver:(id)resolver forFavoritesAmongContacts:(id)contacts;
- (void)updateScoreBasedContactResolver:(id)resolver forRecentCallsMatchingContacts:(id)contacts;
- (void)updateScoreBasedHandleResolver:(id)resolver forFavoritesAmongHandles:(id)handles;
- (void)updateScoreBasedHandleResolver:(id)resolver forRecentCallsMatchingHandles:(id)handles telephonyOnly:(BOOL)only;
@end

@implementation StartCallIntentHandler

- (StartCallIntentHandler)init
{
  v3 = objc_alloc_init(IntentHandlerFeatureFlags);
  v4 = +[FaceTimeUtilities sharedInstance];
  v5 = [(StartCallIntentHandler *)self initWithFeatureFlags:v3 faceTimeUtilities:v4];

  return v5;
}

- (StartCallIntentHandler)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v5 = +[FaceTimeUtilities sharedInstance];
  v6 = [(StartCallIntentHandler *)self initWithFeatureFlags:flagsCopy faceTimeUtilities:v5];

  return v6;
}

- (StartCallIntentHandler)initWithFeatureFlags:(id)flags faceTimeUtilities:(id)utilities
{
  flagsCopy = flags;
  utilitiesCopy = utilities;
  v12.receiver = self;
  v12.super_class = StartCallIntentHandler;
  v9 = [(StartCallIntentHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureFlags, flags);
    objc_storeStrong(&v10->_faceTimeUtilities, utilities);
  }

  return v10;
}

- (StartCallIntentHandlerDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
    v5 = dispatch_queue_create([v4 UTF8String], 0);

    v6 = [[StartCallIntentHandlerDataSource alloc] initWithDispatchQueue:v5 featureFlags:self->_featureFlags];
    v7 = self->_dataSource;
    self->_dataSource = v6;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (NSCache)identifierToContactCache
{
  identifierToContactCache = self->_identifierToContactCache;
  if (!identifierToContactCache)
  {
    v4 = objc_alloc_init(NSCache);
    v5 = self->_identifierToContactCache;
    self->_identifierToContactCache = v4;

    identifierToContactCache = self->_identifierToContactCache;
  }

  return identifierToContactCache;
}

- (IntentHandlerCoreAnalyticsLogging)coreAnalyticsLogger
{
  coreAnalyticsLogger = self->_coreAnalyticsLogger;
  if (!coreAnalyticsLogger)
  {
    v4 = objc_alloc_init(IntentHandlerCoreAnalyticsLogger);
    v5 = self->_coreAnalyticsLogger;
    self->_coreAnalyticsLogger = v4;

    coreAnalyticsLogger = self->_coreAnalyticsLogger;
  }

  return coreAnalyticsLogger;
}

- (AppResolving)appResolver
{
  appResolver = self->_appResolver;
  if (!appResolver)
  {
    v4 = objc_alloc_init(AppResolver);
    v5 = self->_appResolver;
    self->_appResolver = v4;

    appResolver = self->_appResolver;
  }

  return appResolver;
}

- (BOOL)isChinaSKUDevice
{
  v2 = +[FTDeviceSupport sharedInstance];
  isGreenTea = [v2 isGreenTea];

  return isGreenTea;
}

- (BOOL)isFaceTimeNoFanOutEnabled
{
  featureFlags = [(StartCallIntentHandler *)self featureFlags];
  faceTimeNoFanOutEnabled = [featureFlags faceTimeNoFanOutEnabled];

  if (faceTimeNoFanOutEnabled)
  {
    v6 = IntentHandlerDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Facetime No Fan Out is true", v10, 2u);
    }
  }

  featureFlags2 = [(StartCallIntentHandler *)self featureFlags];
  faceTimeNoFanOutEnabled2 = [featureFlags2 faceTimeNoFanOutEnabled];

  return faceTimeNoFanOutEnabled2;
}

- (BOOL)isFaceTimeInvitationEnabled
{
  featureFlags = [(StartCallIntentHandler *)self featureFlags];
  faceTimeInvitationEnabled = [featureFlags faceTimeInvitationEnabled];

  return faceTimeInvitationEnabled;
}

- (void)handleStartCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v7 = IntentHandlerDefaultLog(completionCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = IntentHandlerDefaultLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "handleStartCall", " enableTelemetry=YES ", buf, 2u);
  }

  v86 = v8 - 1;
  v87 = completionCopy;
  spid = v8;

  v13 = IntentHandlerDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = callCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling start call intent: %@", buf, 0xCu);
  }

  v14 = [TUDialRequest alloc];
  dataSource = [(StartCallIntentHandler *)self dataSource];
  providerManager = [dataSource providerManager];
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  [dataSource2 contactsDataSource];
  v18 = v88 = callCopy;
  dataSource3 = [(StartCallIntentHandler *)self dataSource];
  senderIdentityClient = [dataSource3 senderIdentityClient];
  featureFlags = [(StartCallIntentHandler *)self featureFlags];
  v85 = [v14 initWithDialIntent:v88 providerManager:providerManager contactsDataSource:v18 senderIdentityClient:senderIdentityClient isEmergencyServicesOverrideEnabled:{objc_msgSend(featureFlags, "emergencyServicesOverrideEnabled")}];

  v22 = v88;
  if ([(StartCallIntentHandler *)self isFaceTimeInvitationEnabled])
  {
    faceTimeLink = [v88 faceTimeLink];
    v24 = [faceTimeLink length];

    if (v24)
    {
      v26 = IntentHandlerDefaultLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        faceTimeLink2 = [v88 faceTimeLink];
        *buf = 138412290;
        v99 = faceTimeLink2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "FaceTimeInvitation Enabled for faceTime link: %@", buf, 0xCu);
      }

      v28 = +[NSMutableSet set];
      v29 = +[NSMutableSet set];
      [(StartCallIntentHandler *)self extractHandlesFromIntent:v88 faceTimeMemberHandles:v28 nonFaceTimeMemberHandles:v29];
      faceTimeLink3 = [v88 faceTimeLink];
      v31 = [NSString stringWithFormat:@"%@", faceTimeLink3];
      v32 = [NSURL URLWithString:v31];

      v33 = [TUConversationLink conversationLinkForURL:v32];
      if (v33)
      {
        v34 = [[TUJoinConversationRequest alloc] initWithConversationLink:v33 otherInvitedHandles:v29 sendLetMeInRequest:0];
        [v34 setWantsStagingArea:0];
        callCapability = [v88 callCapability];
        if (callCapability == 2)
        {
          callCapability = [v34 setVideoEnabled:1];
        }

        v36 = v28;
        v37 = IntentHandlerDefaultLog(callCapability);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Configuring invitation preferences on FaceTime join request.", buf, 2u);
        }

        v38 = [[TUConversationInvitationPreference alloc] initWithHandleType:2 notificationStyles:1];
        v103[0] = v38;
        v39 = [[TUConversationInvitationPreference alloc] initWithHandleType:3 notificationStyles:1];
        v103[1] = v39;
        v40 = [[TUConversationInvitationPreference alloc] initWithHandleType:1 notificationStyles:2];
        v103[2] = v40;
        v41 = [NSArray arrayWithObjects:v103 count:3];
        v42 = [NSSet setWithArray:v41];
        [v34 setInvitationPreferences:v42];

        v28 = v36;
      }

      else
      {
        v34 = 0;
      }

      v22 = v88;
      if (v34)
      {
        goto LABEL_29;
      }
    }
  }

  v43 = [NSMutableArray alloc];
  contacts = [v22 contacts];
  v45 = [v43 initWithCapacity:{objc_msgSend(contacts, "count")}];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [v22 contacts];
  v46 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v95;
    v89 = *v95;
    v90 = v45;
    do
    {
      for (i = 0; i != v47; i = i + 1)
      {
        if (*v95 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v94 + 1) + 8 * i);
        personHandle = [v50 personHandle];
        type = [personHandle type];

        if (type == 2)
        {
          dataSource4 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource = [dataSource4 coreTelephonyDataSource];
          allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
          firstObject = [allRelevantISOCountryCodes firstObject];

          v56 = [CNPhoneNumber alloc];
          personHandle2 = [v50 personHandle];
          value = [personHandle2 value];
          v59 = [v56 initWithStringValue:value countryCode:firstObject];

          v60 = [INPersonHandle alloc];
          formattedInternationalStringValue = [v59 formattedInternationalStringValue];
          personHandle3 = [v50 personHandle];
          type2 = [personHandle3 type];
          personHandle4 = [v50 personHandle];
          label = [personHandle4 label];
          v66 = [v60 initWithValue:formattedInternationalStringValue type:type2 label:label];

          v45 = v90;
          [v50 setPersonHandle:v66];
          [v90 addObject:v50];

          v48 = v89;
        }

        else
        {
          [v45 addObject:v50];
        }
      }

      v47 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v47);
  }

  v22 = v88;
  [v88 setContacts:v45];
  v67 = [[NSUserActivity alloc] _initWithIntent:v88];
  v34 = [[TUJoinConversationRequest alloc] initWithUserActivity:v67];

  if (v34)
  {
LABEL_29:
    remoteMembers = [v34 remoteMembers];
    if ([remoteMembers count] >= 2)
    {

      v70 = v86;
      v69 = v87;
      v71 = v85;
LABEL_32:
      provider = [v71 provider];
      v74 = [(StartCallIntentHandler *)self responseForJoinRequest:v34 intent:v22 callProvider:provider];
LABEL_33:

      goto LABEL_38;
    }

    conversationLink = [v34 conversationLink];

    v70 = v86;
    v69 = v87;
    v71 = v85;
    if (conversationLink)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v70 = v86;
    v69 = v87;
    v71 = v85;
  }

  v74 = [(StartCallIntentHandler *)self responseForDialRequest:v71 intent:v22];
  code = [v74 code];
  if (code == 2)
  {
    provider2 = [v71 provider];
    isTelephonyProvider = [provider2 isTelephonyProvider];

    if (isTelephonyProvider)
    {
      provider = [(StartCallIntentHandler *)self dataSource];
      handle = [v71 handle];
      [provider logOutgoingCallToHandle:handle];

      goto LABEL_33;
    }
  }

LABEL_38:
  v79 = IntentHandlerDefaultLog(code);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [v74 userActivity];
    *buf = 138412546;
    v99 = v74;
    v100 = 2112;
    v101 = userActivity;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@ user activity: %@", buf, 0x16u);
  }

  v82 = IntentHandlerDefaultLog(v81);
  v83 = v82;
  if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_END, spid, "handleStartCall", "", buf, 2u);
  }

  (v69)[2](v69, v74);
}

- (void)sortFaceTimeHandles:(id)handles faceTimeHandles:(id)timeHandles nonFaceTimeHandles:(id)faceTimeHandles
{
  handlesCopy = handles;
  timeHandlesCopy = timeHandles;
  faceTimeHandlesCopy = faceTimeHandles;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = handlesCopy;
  v11 = [handlesCopy countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v28;
    *&v12 = 138412290;
    v25 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
        v33 = v16;
        v18 = [NSArray arrayWithObjects:&v33 count:1];
        v19 = [faceTimeUtilities isFaceTimeable:v18];

        v21 = IntentHandlerDefaultLog(v20);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          v23 = timeHandlesCopy;
          if (v22)
          {
            *buf = v25;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "found a FaceTimeable personHandle: %@", buf, 0xCu);
            v23 = timeHandlesCopy;
          }
        }

        else
        {
          v23 = faceTimeHandlesCopy;
          if (v22)
          {
            *buf = v25;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "found a non-FaceTimeable personHandle: %@", buf, 0xCu);
            v23 = faceTimeHandlesCopy;
          }
        }

        v24 = [TUHandle normalizedHandleWithDestinationID:v16];
        [v23 addObject:v24];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v13);
  }
}

- (void)extractHandlesFromIntent:(id)intent faceTimeMemberHandles:(id)handles nonFaceTimeMemberHandles:(id)memberHandles
{
  intentCopy = intent;
  handlesCopy = handles;
  memberHandlesCopy = memberHandles;
  v8 = IntentHandlerDefaultLog(memberHandlesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    contacts = [intentCopy contacts];
    *buf = 138412290;
    v43 = contacts;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Extracting Handles From Intent: %@", buf, 0xCu);
  }

  v34 = intentCopy;
  v35 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  contacts2 = [intentCopy contacts];
  v11 = [contacts2 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(contacts2);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        personHandle = [v15 personHandle];
        value = [personHandle value];
        v18 = [value length];

        if (v18)
        {
          v20 = IntentHandlerDefaultLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            personHandle2 = [v15 personHandle];
            faceTimeType = [personHandle2 faceTimeType];
            *buf = 134218242;
            v43 = faceTimeType;
            v44 = 2112;
            v45 = v15;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "faceTimeType is %ld for %@", buf, 0x16u);
          }

          personHandle3 = [v15 personHandle];
          faceTimeType2 = [personHandle3 faceTimeType];

          if (faceTimeType2 == 2)
          {
            personHandle4 = [v15 personHandle];
            value2 = [personHandle4 value];
            v27 = [TUHandle normalizedHandleWithDestinationID:value2];
            v28 = memberHandlesCopy;
          }

          else
          {
            if (faceTimeType2 != 1)
            {
              if (faceTimeType2)
              {
                continue;
              }

              personHandle4 = [v15 personHandle];
              value2 = [personHandle4 value];
              [v35 addObject:value2];
              goto LABEL_18;
            }

            personHandle4 = [v15 personHandle];
            value2 = [personHandle4 value];
            v27 = [TUHandle normalizedHandleWithDestinationID:value2];
            v28 = handlesCopy;
          }

          [v28 addObject:v27];

LABEL_18:
          continue;
        }
      }

      v12 = [contacts2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v12);
  }

  if ([v35 count])
  {
    faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
    [faceTimeUtilities runIDSQueryForStartCallIntent:v35];

    v31 = memberHandlesCopy;
    v30 = handlesCopy;
    [(StartCallIntentHandler *)self sortFaceTimeHandles:v35 faceTimeHandles:handlesCopy nonFaceTimeHandles:memberHandlesCopy];
  }

  else
  {
    v32 = IntentHandlerDefaultLog(0);
    v31 = memberHandlesCopy;
    v30 = handlesCopy;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Skipping IDS query lookup as all handles have been resolved.", buf, 2u);
    }
  }
}

- (id)responseForDialRequest:(id)request intent:(id)intent
{
  requestCopy = request;
  intentCopy = intent;
  v8 = IntentHandlerDefaultLog(intentCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "responseForDialRequest", "", buf, 2u);
  }

  v15 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = requestCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Determining response for dial request: %@", buf, 0xCu);
  }

  if ([intentCopy preferredCallProvider] == 3 && ((v16 = objc_msgSend(intentCopy, "destinationType"), v16 == 4) || (v16 = objc_msgSend(intentCopy, "destinationType"), v16 == 5)))
  {
    v17 = IntentHandlerDefaultLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Redial/callback to 3P call history entry.", buf, 2u);
    }

    appResolver = [(StartCallIntentHandler *)self appResolver];
    bundleIdentifier = [(__CFString *)requestCopy bundleIdentifier];
    v20 = [appResolver appSupportsDeprecatedCallingIntents:bundleIdentifier];

    v22 = IntentHandlerDefaultLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"NO";
      if (v20)
      {
        v23 = @"YES";
      }

      *buf = 138412290;
      v75 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "useDeprecatedCallingIntents: %@", buf, 0xCu);
    }

    v24 = [(__CFString *)requestCopy userActivityUsingDeprecatedCallingIntents:v20];
  }

  else
  {
    v24 = [NSUserActivity makeActivityWithIntent:intentCopy dialRequestAttachment:requestCopy];
  }

  v25 = v24;
  v26 = [[INStartCallIntentResponse alloc] initWithCode:2 userActivity:v24];
  dataSource = [(StartCallIntentHandler *)self dataSource];
  v28 = [dataSource callFilterStatusForDialRequest:requestCopy];

  if (v28 != 3)
  {
    if ((v28 - 1) <= 1)
    {
      v33 = IntentHandlerDefaultLog(v29);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000301FC();
      }

      v31 = [INStartCallIntentResponse alloc];
      v32 = &_INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled;
      goto LABEL_25;
    }

    if ([intentCopy _idiom] == 4)
    {
      dataSource2 = [(StartCallIntentHandler *)self dataSource];
      callRinging = [dataSource2 callRinging];

      if (callRinging)
      {
        v43 = IntentHandlerDefaultLog(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_1000301C8();
        }

        v31 = [INStartCallIntentResponse alloc];
        v34 = 12;
        goto LABEL_26;
      }
    }

    if ([intentCopy _idiom] == 4)
    {
      dataSource3 = [(StartCallIntentHandler *)self dataSource];
      callsInProgress = [dataSource3 callsInProgress];

      if (callsInProgress)
      {
        v47 = IntentHandlerDefaultLog(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100030194();
        }

        v31 = [INStartCallIntentResponse alloc];
        v34 = 11;
        goto LABEL_26;
      }
    }

    v73 = v9;
    provider = [(__CFString *)requestCopy provider];
    if ([provider isFaceTimeProvider] && (-[__CFString isVideo](requestCopy, "isVideo") & 1) != 0)
    {
      dataSource4 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeVideoCalls = [dataSource4 supportsFaceTimeVideoCalls];

      if ((supportsFaceTimeVideoCalls & 1) == 0)
      {
        v52 = IntentHandlerDefaultLog(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_10002FFB4();
        }

        goto LABEL_69;
      }
    }

    else
    {
    }

    provider2 = [(__CFString *)requestCopy provider];
    if ([provider2 isFaceTimeProvider] && !-[__CFString isVideo](requestCopy, "isVideo"))
    {
      dataSource5 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeAudioCalls = [dataSource5 supportsFaceTimeAudioCalls];

      if ((supportsFaceTimeAudioCalls & 1) == 0)
      {
        v52 = IntentHandlerDefaultLog(v54);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_10002FFE8();
        }

        goto LABEL_69;
      }
    }

    else
    {
    }

    if (v25)
    {
      v9 = v73;
      if ([(__CFString *)requestCopy isValid]& 1) != 0 || (v58 = _TUIsInternalInstall(), v58) && (v58 = TUShouldUseSuperboxTelephonyProvider(), (v58))
      {
        provider3 = [(__CFString *)requestCopy provider];
        isTelephonyProvider = [provider3 isTelephonyProvider];

        if (!isTelephonyProvider)
        {
          goto LABEL_28;
        }

        if ([(__CFString *)requestCopy dialType]== 1)
        {
          dataSource9 = IntentHandlerDefaultLog(1);
          if (os_log_type_enabled(dataSource9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, dataSource9, OS_LOG_TYPE_DEFAULT, "Emergency call requested, will always try to place the call, skipping provider and cellular service availability checks.", buf, 2u);
          }

          goto LABEL_27;
        }

        if ([intentCopy _idiom] == 3)
        {
          dataSource9 = IntentHandlerDefaultLog(3);
          if (os_log_type_enabled(dataSource9, OS_LOG_TYPE_DEBUG))
          {
            sub_10003012C();
          }

          goto LABEL_27;
        }

        dataSource6 = [(StartCallIntentHandler *)self dataSource];
        supportsTelephonyCalls = [dataSource6 supportsTelephonyCalls];

        if (supportsTelephonyCalls)
        {
          dataSource7 = [(StartCallIntentHandler *)self dataSource];
          canAttemptTelephonyCallsWithoutCellularConnection = [dataSource7 canAttemptTelephonyCallsWithoutCellularConnection];

          if (canAttemptTelephonyCallsWithoutCellularConnection)
          {
            goto LABEL_28;
          }

          dataSource8 = [(StartCallIntentHandler *)self dataSource];
          isAirplaneModeEnabled = [dataSource8 isAirplaneModeEnabled];

          if (isAirplaneModeEnabled)
          {
            v69 = IntentHandlerDefaultLog(v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              sub_1000300F8();
            }

            v31 = [INStartCallIntentResponse alloc];
            v34 = 8;
            goto LABEL_26;
          }

          dataSource9 = [(StartCallIntentHandler *)self dataSource];
          if (![dataSource9 supportsPrimaryCalling])
          {
            goto LABEL_27;
          }

          dataSource10 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource = [dataSource10 coreTelephonyDataSource];
          isCellularServiceAvailable = [coreTelephonyDataSource isCellularServiceAvailable];

          if (isCellularServiceAvailable)
          {
            v9 = v73;
            goto LABEL_28;
          }

          v52 = IntentHandlerDefaultLog(v36);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_1000300C4();
          }

LABEL_69:

          dataSource9 = v26;
          v26 = [[INStartCallIntentResponse alloc] initWithCode:6 userActivity:0];
          v9 = v73;
          goto LABEL_27;
        }

        v57 = IntentHandlerDefaultLog(v63);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_100030090();
        }
      }

      else
      {
        v57 = IntentHandlerDefaultLog(v58);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_10003001C();
        }
      }
    }

    else
    {
      v57 = IntentHandlerDefaultLog(v54);
      v9 = v73;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_100030160();
      }
    }

    v31 = [INStartCallIntentResponse alloc];
    v34 = 4;
    goto LABEL_26;
  }

  v30 = IntentHandlerDefaultLog(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_100030230();
  }

  v31 = [INStartCallIntentResponse alloc];
  v32 = &_INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled;
LABEL_25:
  v34 = *v32;
LABEL_26:
  dataSource9 = v26;
  v26 = [v31 initWithCode:v34 userActivity:0];
LABEL_27:

LABEL_28:
  v37 = IntentHandlerDefaultLog(v36);
  v38 = v37;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v9, "responseForDialRequest", "", buf, 2u);
  }

  return v26;
}

- (id)responseForJoinRequest:(id)request intent:(id)intent callProvider:(id)provider
{
  requestCopy = request;
  intentCopy = intent;
  providerCopy = provider;
  v11 = IntentHandlerDefaultLog(providerCopy);
  v12 = os_signpost_id_generate(v11);

  v14 = IntentHandlerDefaultLog(v13);
  v15 = v14;
  v16 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "responseForJoinRequest", "", buf, 2u);
  }

  spid = v12;

  v18 = IntentHandlerDefaultLog(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = requestCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Determining response for join request: %@", buf, 0xCu);
  }

  v19 = [NSUserActivity makeActivityWithIntent:intentCopy joinRequestAttachment:requestCopy];
  v20 = [[INStartCallIntentResponse alloc] initWithCode:2 userActivity:v19];
  dataSource = [(StartCallIntentHandler *)self dataSource];
  contacts = [intentCopy contacts];
  v23 = [dataSource restrictedContacts:contacts callProvider:providerCopy];

  if (v23)
  {
    v24 = [v23 count];
    contacts2 = [intentCopy contacts];
    v26 = [contacts2 count];

    if (v24 == v26)
    {
      v28 = IntentHandlerDefaultLog(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100030264();
      }

      v29 = [INStartCallIntentResponse alloc];
      v30 = _INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled;
      goto LABEL_24;
    }
  }

  if ([requestCopy isVideoEnabled])
  {
    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeVideoCalls = [dataSource2 supportsFaceTimeVideoCalls];

    if ((supportsFaceTimeVideoCalls & 1) == 0)
    {
      v38 = IntentHandlerDefaultLog(v33);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100030298();
      }

      goto LABEL_23;
    }
  }

  isVideoEnabled = [requestCopy isVideoEnabled];
  if ((isVideoEnabled & 1) == 0)
  {
    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeAudioCalls = [dataSource3 supportsFaceTimeAudioCalls];

    if ((supportsFaceTimeAudioCalls & 1) == 0)
    {
      v38 = IntentHandlerDefaultLog(isVideoEnabled);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000302CC();
      }

LABEL_23:

      v29 = [INStartCallIntentResponse alloc];
      v30 = 6;
LABEL_24:
      v39 = [v29 initWithCode:v30 userActivity:0];

      v20 = v39;
      goto LABEL_25;
    }
  }

  if (!v19)
  {
    v37 = IntentHandlerDefaultLog(isVideoEnabled);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100030160();
    }

    v29 = [INStartCallIntentResponse alloc];
    v30 = 4;
    goto LABEL_24;
  }

LABEL_25:
  v40 = IntentHandlerDefaultLog(isVideoEnabled);
  v41 = v40;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, spid, "responseForJoinRequest", "", buf, 2u);
  }

  return v20;
}

- (BOOL)isEmergencyCall:(id)call
{
  callCopy = call;
  if ([callCopy destinationType] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:callCopy];
  }

  return v5;
}

- (void)confirmStartCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v7 = IntentHandlerDefaultLog(completionCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = IntentHandlerDefaultLog(v9);
  v11 = v10;
  v12 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "confirmStartCall", "", buf, 2u);
  }

  v14 = IntentHandlerDefaultLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = callCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Confirm start audio call: %@", buf, 0xCu);
  }

  spid = v8;

  v15 = [[NSUserActivity alloc] _initWithIntent:callCopy];
  v16 = [[TUJoinConversationRequest alloc] initWithUserActivity:v15];
  v79 = v16;
  if (v16 && ([v16 remoteMembers], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v18 >= 2))
  {
    v19 = [TUDialRequest alloc];
    dataSource = [(StartCallIntentHandler *)self dataSource];
    [dataSource providerManager];
    v21 = v75 = v15;
    [(StartCallIntentHandler *)self dataSource];
    v22 = v74 = v8 - 1;
    contactsDataSource = [v22 contactsDataSource];
    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    senderIdentityClient = [dataSource2 senderIdentityClient];
    v26 = [v19 initWithDialIntent:callCopy providerManager:v21 contactsDataSource:contactsDataSource senderIdentityClient:senderIdentityClient];

    v12 = v74;
    v15 = v75;

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    contacts = [callCopy contacts];
    provider = [v26 provider];
    v30 = [dataSource3 restrictedContacts:contacts callProvider:provider];
  }

  else
  {
    v30 = 0;
  }

  if ([callCopy preferredCallProvider] == 2)
  {
LABEL_17:
    if (!v30)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  dataSource4 = [(StartCallIntentHandler *)self dataSource];
  if ([dataSource4 isAirplaneModeEnabled])
  {
    v32 = v15;
    v33 = v12;
    v34 = [(StartCallIntentHandler *)self isEmergencyCall:callCopy];
    if (v34 && (-[StartCallIntentHandler dataSource](self, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), ([v15 canAttemptEmergencyCallsWithoutCellularConnection] & 1) == 0))
    {

      v12 = v33;
      v15 = v32;
    }

    else
    {
      dataSource5 = [(StartCallIntentHandler *)self dataSource];
      canAttemptTelephonyCallsWithoutCellularConnection = [dataSource5 canAttemptTelephonyCallsWithoutCellularConnection];

      if (v34)
      {
      }

      v12 = v33;
      v15 = v32;
      if (canAttemptTelephonyCallsWithoutCellularConnection)
      {
        goto LABEL_17;
      }
    }

    v68 = IntentHandlerDefaultLog(v37);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      sub_100030300();
    }

    v66 = [INStartCallIntentResponse alloc];
    v67 = 8;
    goto LABEL_50;
  }

  if (!v30)
  {
LABEL_25:
    v45 = [(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:callCopy];
    if (v45)
    {
      v46 = IntentHandlerDefaultLog(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v47 = "Even though destinationType is normal, user specifically asked for a emergency number";
LABEL_43:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 2u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if ([callCopy destinationType] == 4 || objc_msgSend(callCopy, "destinationType") == 5)
    {
      contacts2 = [callCopy contacts];
      v49 = [contacts2 count];

      if (v49 == 1)
      {
        v76 = v15;
        contacts3 = [callCopy contacts];
        firstObject = [contacts3 firstObject];

        personHandle = [firstObject personHandle];
        if (personHandle)
        {
          v53 = personHandle;
          selfCopy = self;
          v55 = v12;
          personHandle2 = [firstObject personHandle];
          value = [personHandle2 value];
          if (value)
          {
            v58 = value;
            personHandle3 = [firstObject personHandle];
            value2 = [personHandle3 value];
            v61 = [(StartCallIntentHandler *)selfCopy isEmergencyHandle:value2];

            v12 = v55;
            if (v61)
            {
              v62 = IntentHandlerDefaultLog(personHandle);
              v15 = v76;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Contact to redial/call back is an emergency number. Requiring intent confirmation.", buf, 2u);
              }

              if ([callCopy destinationType] == 4)
              {
                v63 = 2;
              }

              else
              {
                v63 = 3;
              }

              v43 = [[INStartCallIntentResponse alloc] initWithCode:3 userActivity:0];
              [v43 setShouldDoEmergencyCountdown:&__kCFBooleanFalse];
              [v43 setConfirmationReason:v63];
LABEL_62:

              goto LABEL_52;
            }
          }

          else
          {

            v12 = v55;
          }
        }

        v73 = IntentHandlerDefaultLog(personHandle);
        v15 = v76;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Contact to redial/call back is NOT an emergency number.", buf, 2u);
        }

        v43 = [[INStartCallIntentResponse alloc] initWithCode:1 userActivity:0];
        [v43 setShouldDoEmergencyCountdown:&__kCFBooleanFalse];
        goto LABEL_62;
      }
    }

    if ([callCopy destinationType] == 2)
    {
      v46 = IntentHandlerDefaultLog(2);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v47 = "Making an emergency call, sending UserConfirmationRequired with emergency flag = YES";
        goto LABEL_43;
      }

LABEL_44:

      v64 = [[INStartCallIntentResponse alloc] initWithCode:3 userActivity:0];
      v43 = v64;
      v65 = &__kCFBooleanTrue;
LABEL_51:
      v44 = [v64 setShouldDoEmergencyCountdown:v65];
      goto LABEL_52;
    }

    v66 = [INStartCallIntentResponse alloc];
    v67 = 1;
LABEL_50:
    v64 = [v66 initWithCode:v67 userActivity:0];
    v43 = v64;
    v65 = &__kCFBooleanFalse;
    goto LABEL_51;
  }

LABEL_20:
  if (![v30 count])
  {
    goto LABEL_25;
  }

  v38 = [v30 count];
  contacts4 = [callCopy contacts];
  v40 = [contacts4 count];

  if (v38 >= v40)
  {
    goto LABEL_25;
  }

  v42 = IntentHandlerDefaultLog(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Join request was restricted due to some restrictions with some members (but not all).", buf, 2u);
  }

  v43 = [[INStartCallIntentResponse alloc] initWithCode:3 userActivity:0];
  [v43 setConfirmationReason:_INStartCallIntentConfirmationReasonHasRestrictedContacts];
  v44 = [v43 setRestrictedContacts:v30];
LABEL_52:
  v69 = IntentHandlerDefaultLog(v44);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v43;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@", buf, 0xCu);
  }

  v71 = IntentHandlerDefaultLog(v70);
  v72 = v71;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, spid, "confirmStartCall", "", buf, 2u);
  }

  completionCopy[2](completionCopy, v43);
}

- (void)resolveCallRecordToCallBackForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving callRecordToCallBack for start call: %@", &v23, 0xCu);
  }

  v10 = IntentHandlerDefaultLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = IntentHandlerDefaultLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "resolveCallRecordToCallBack", "", &v23, 2u);
  }

  callRecordFilter = [callCopy callRecordFilter];

  if (callRecordFilter)
  {
    v16 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
    if (v16)
    {
      [INStartCallCallRecordToCallBackResolutionResult successWithResolvedCallRecord:v16];
    }

    else
    {
      [INStartCallCallRecordToCallBackResolutionResult unsupportedForReason:1];
    }
    v18 = ;
  }

  else
  {
    v17 = +[INStartCallCallRecordToCallBackResolutionResult notRequired];
    v18 = v17;
  }

  v19 = IntentHandlerDefaultLog(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling completion block with result: %@", &v23, 0xCu);
  }

  v21 = IntentHandlerDefaultLog(v20);
  v22 = v21;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v11, "resolveCallRecordToCallBack", "", &v23, 2u);
  }

  completionCopy[2](completionCopy, v18);
}

- (void)resolveDestinationTypeForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v36) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveDestinationType", "", &v36, 2u);
  }

  v15 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    v37 = callCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resolve destination type for start call: %@", &v36, 0xCu);
  }

  v16 = &AnalyticsSendEventLazy_ptr;
  if ([callCopy destinationType])
  {
    [INCallDestinationTypeResolutionResult successWithResolvedCallDestinationType:[callCopy destinationType]];
  }

  else
  {
    +[INCallDestinationTypeResolutionResult notRequired];
  }
  v17 = ;
  contacts = [callCopy contacts];
  if ([contacts count] != 1 || -[NSObject destinationType](callCopy, "destinationType") == 4)
  {
    value = 0;
LABEL_12:

    goto LABEL_13;
  }

  destinationType = [callCopy destinationType];

  if (destinationType != 5)
  {
    contacts = [callCopy contacts];
    [contacts firstObject];
    v34 = v33 = v9;
    personHandle = [v34 personHandle];
    value = [personHandle value];

    v9 = v33;
    v16 = &AnalyticsSendEventLazy_ptr;
    goto LABEL_12;
  }

  value = 0;
LABEL_13:
  if (![value length])
  {
    v22 = IntentHandlerDefaultLog(0);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    LOWORD(v36) = 0;
    v24 = "Could not determine if handle to dial is an emergency handle because handle has not yet been resolved";
    v25 = v22;
    v26 = 2;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, &v36, v26);
    goto LABEL_23;
  }

  v20 = [(StartCallIntentHandler *)self isEmergencyHandle:value];
  v21 = v20;
  v22 = IntentHandlerDefaultLog(v20);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (!v21)
  {
    if (!v23)
    {
      goto LABEL_23;
    }

    v36 = 138412290;
    v37 = value;
    v24 = "%@ is not an emergency handle. Do not need special resolving.";
    v25 = v22;
    v26 = 12;
    goto LABEL_22;
  }

  if (v23)
  {
    v36 = 138412290;
    v37 = value;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ is an emergency handle. Resolving to an emergency call", &v36, 0xCu);
  }

  [v16[259] successWithResolvedCallDestinationType:2];
  v17 = v22 = v17;
LABEL_23:

  v28 = IntentHandlerDefaultLog(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    v37 = v17;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Calling completion block with result: %@", &v36, 0xCu);
  }

  v30 = IntentHandlerDefaultLog(v29);
  v31 = v30;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    LOWORD(v36) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, v9, "resolveDestinationType", "", &v36, 2u);
  }

  completionCopy[2](completionCopy, v17);
}

- (id)resolutionResultForEmergency
{
  dataSource = [(StartCallIntentHandler *)self dataSource];
  siriEmergencyServices = [dataSource siriEmergencyServices];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [siriEmergencyServices count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = siriEmergencyServices;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        v9 = v4;
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [INPerson alloc];
        v12 = [INPersonHandle alloc];
        handle = [v10 handle];
        value = [handle value];
        label = [v10 label];
        v16 = [(StartCallIntentHandler *)self localizedEmergencyString:label];
        v17 = [v12 initWithValue:value type:2 label:v16 emergencyType:1];
        v18 = [v11 initWithPersonHandle:v17 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];

        v4 = v9;
        [v9 addObject:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v19 = [v4 count];
  if (v19 >= 2)
  {
    v20 = IntentHandlerDefaultLog(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "There are more than one number that could be dialed. Prompting to disambiguate between them using these people: %@", buf, 0xCu);
    }

    v21 = [INStartCallContactResolutionResult resolutionResultDisambiguationWithItemsToDisambiguate:v4];
LABEL_19:
    v26 = v21;
    goto LABEL_20;
  }

  v22 = [v4 count];
  v23 = IntentHandlerDefaultLog(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22 != 1)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] User asked to call emergency services. Emergency provider does not have multiple handles, and call can be completed without specifying one. Returning not required.", buf, 2u);
    }

    v21 = +[INStartCallContactResolutionResult notRequired];
    goto LABEL_19;
  }

  if (v24)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Only a single emergency number to call. Resolving to that number.", buf, 2u);
  }

  firstObject = [v4 firstObject];
  v26 = [INStartCallContactResolutionResult successWithResolvedPerson:firstObject];

LABEL_20:

  return v26;
}

- (void)resolveContactsForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveContacts", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v108 = callCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resolving contacts for start call intent: %@", buf, 0xCu);
  }

  if ([(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:callCopy])
  {
    dataSource = [(StartCallIntentHandler *)self dataSource];
    providerManager = [dataSource providerManager];
    emergencyProvider = [providerManager emergencyProvider];
    emergencyLabeledHandles = [emergencyProvider emergencyLabeledHandles];
    v20 = [emergencyLabeledHandles count];

    v13 = v9 - 1;
    if (v20 >= 2)
    {
      v83 = completionCopy;
      v21 = objc_alloc_init(NSMutableArray);
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      contacts = [callCopy contacts];
      v23 = [contacts countByEnumeratingWithState:&v95 objects:v106 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v96;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v96 != v25)
            {
              objc_enumerationMutation(contacts);
            }

            v27 = *(*(&v95 + 1) + 8 * i);
            v28 = [(StartCallIntentHandler *)self isUnresolvedLocalEmergencyContact:v27];
            if (v28)
            {
              resolutionResultForEmergency = [(StartCallIntentHandler *)self resolutionResultForEmergency];
            }

            else
            {
              v30 = IntentHandlerDefaultLog(v28);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v108 = v27;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Intent includes an emergency person and a non-emergency person. Returning success for non-emergency person so emergency person can be properly resolved. Person: %@", buf, 0xCu);
              }

              resolutionResultForEmergency = [INStartCallContactResolutionResult successWithResolvedPerson:v27];
            }

            v31 = resolutionResultForEmergency;
            [v21 addObject:resolutionResultForEmergency];
          }

          v24 = [contacts countByEnumeratingWithState:&v95 objects:v106 count:16];
        }

        while (v24);
      }

      v32 = [v21 copy];
      v33 = IntentHandlerDefaultLog([(StartCallIntentHandler *)self updateHandlerStateForContactResolutionResults:v32]);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v108 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Detected foreign emergency label, calling completion block early: %@", buf, 0xCu);
      }

      v35 = IntentHandlerDefaultLog(v34);
      v36 = v35;
      completionCopy = v83;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, v9, "resolveContacts", "", buf, 2u);
      }

      v83[2](v83, v32);
      goto LABEL_80;
    }
  }

  destinationType = [callCopy destinationType];
  v32 = 0;
  if (destinationType > 2)
  {
    if ((destinationType - 4) >= 2)
    {
      if (destinationType != 3)
      {
        goto LABEL_74;
      }

      v69 = IntentHandlerDefaultLog(3);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Resolution not required for voicemail destination", buf, 2u);
      }

      resolutionResultForEmergency2 = +[INStartCallContactResolutionResult notRequired];
      v105 = resolutionResultForEmergency2;
      v71 = &v105;
      goto LABEL_68;
    }

    v38 = IntentHandlerDefaultLog(destinationType);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Resolution for redial", buf, 2u);
    }

    v39 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
    v40 = v39;
    if (v39)
    {
      participants = [v39 participants];
      v42 = [participants count];

      if (v42 >= 2)
      {
        v84 = completionCopy;
        v86 = v13;
        v44 = callCopy;
        v45 = IntentHandlerDefaultLog(v43);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v108 = v40;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "recentCall for group facetime: %@", buf, 0xCu);
        }

        participants4 = objc_alloc_init(NSMutableArray);
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        participants2 = [v40 participants];
        v48 = [participants2 countByEnumeratingWithState:&v87 objects:v102 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v88;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v88 != v50)
              {
                objc_enumerationMutation(participants2);
              }

              v52 = [INPersonResolutionResult successWithResolvedPerson:*(*(&v87 + 1) + 8 * j)];
              [participants4 addObject:v52];
            }

            v49 = [participants2 countByEnumeratingWithState:&v87 objects:v102 count:16];
          }

          while (v49);
        }

        v32 = [participants4 copy];
        callCopy = v44;
        completionCopy = v84;
        v13 = v86;
        goto LABEL_73;
      }

      participants3 = [v40 participants];
      v74 = [participants3 count];

      if (v74 == 1)
      {
        participants4 = [v40 participants];
        firstObject = [participants4 firstObject];
        v77 = [INStartCallContactResolutionResult successWithResolvedPerson:firstObject];
        v101 = v77;
        v32 = [NSArray arrayWithObjects:&v101 count:1];

LABEL_73:
        goto LABEL_74;
      }

      v78 = IntentHandlerDefaultLog(v75);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_100030334();
      }

      participants4 = [INStartCallContactResolutionResult unsupportedForReason:7];
      v99 = participants4;
      v72 = &v99;
    }

    else
    {
      participants4 = [INStartCallContactResolutionResult unsupportedForReason:6];
      v100 = participants4;
      v72 = &v100;
    }

    v32 = [NSArray arrayWithObjects:v72 count:1];
    goto LABEL_73;
  }

  if (destinationType >= 2)
  {
    if (destinationType != 2)
    {
      goto LABEL_74;
    }

    v53 = IntentHandlerDefaultLog(2);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Resolution for emergency destination", buf, 2u);
    }

    contacts2 = [callCopy contacts];
    firstObject2 = [contacts2 firstObject];
    personHandle = [firstObject2 personHandle];
    value = [personHandle value];
    v58 = [value length];

    v60 = IntentHandlerDefaultLog(v59);
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
    if (v58)
    {
      v85 = completionCopy;
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Intent's contact has a personHandle.value set on an emergency call. Resolving to that value.", buf, 2u);
      }

      v62 = objc_alloc_init(NSMutableArray);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      contacts3 = [callCopy contacts];
      v64 = [contacts3 countByEnumeratingWithState:&v91 objects:v103 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v92;
        do
        {
          for (k = 0; k != v65; k = k + 1)
          {
            if (*v92 != v66)
            {
              objc_enumerationMutation(contacts3);
            }

            v68 = [INPersonResolutionResult successWithResolvedPerson:*(*(&v91 + 1) + 8 * k)];
            [v62 addObject:v68];
          }

          v65 = [contacts3 countByEnumeratingWithState:&v91 objects:v103 count:16];
        }

        while (v65);
      }

      v32 = [v62 copy];
      completionCopy = v85;
      goto LABEL_74;
    }

    if (v61)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Intent's contact has no display name. Looking up the list of emergency handles available on this device", buf, 2u);
    }

    resolutionResultForEmergency2 = [(StartCallIntentHandler *)self resolutionResultForEmergency];
    v104 = resolutionResultForEmergency2;
    v71 = &v104;
LABEL_68:
    v32 = [NSArray arrayWithObjects:v71 count:1];

    goto LABEL_74;
  }

  v32 = [(StartCallIntentHandler *)self personResolutionResultsForIntent:callCopy];
LABEL_74:
  v79 = IntentHandlerDefaultLog([(StartCallIntentHandler *)self updateHandlerStateForContactResolutionResults:v32]);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v108 = v32;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Calling completion block with resolution results: %@", buf, 0xCu);
  }

  v81 = IntentHandlerDefaultLog(v80);
  v82 = v81;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, OS_SIGNPOST_INTERVAL_END, v9, "resolveContacts", "", buf, 2u);
  }

  completionCopy[2](completionCopy, v32);
LABEL_80:
}

- (void)resolveCallCapabilityForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveCallCapability", "", &v21, 2u);
  }

  v14 = IntentHandlerDefaultLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = callCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Resolving call capability for start call intent: %@", &v21, 0xCu);
  }

  v15 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
  v16 = -[StartCallIntentHandler resolutionResultForCallCapability:idiom:withDisplayDisabled:](self, "resolutionResultForCallCapability:idiom:withDisplayDisabled:", -[StartCallIntentHandler inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:](self, "inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:", [callCopy preferredCallProvider], v15, objc_msgSend(callCopy, "callCapability"), objc_msgSend(callCopy, "_idiom"), objc_msgSend(callCopy, "_isPrimaryDisplayDisabled"), objc_msgSend(callCopy, "_executionContext")), objc_msgSend(callCopy, "_idiom"), objc_msgSend(callCopy, "_isPrimaryDisplayDisabled"));
  v17 = IntentHandlerDefaultLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Returning call capability resolution result: %@", &v21, 0xCu);
  }

  v19 = IntentHandlerDefaultLog(v18);
  v20 = v19;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v9, "resolveCallCapability", "", &v21, 2u);
  }

  completionCopy[2](completionCopy, v16);
}

- (int64_t)callCapabilityFromRecentCall:(id)call
{
  callCopy = call;
  v4 = callCopy;
  if (!callCopy)
  {
    v6 = IntentHandlerDefaultLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v8 = "[WARN] Unable to infer callCapability from call to redial because the recent call was nil";
      v9 = &v14;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  mediaType = [callCopy mediaType];
  if (!mediaType)
  {
    v6 = IntentHandlerDefaultLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "[WARN] Unable to infer callCapability from call to redial because media type of that call was unknown.";
      v9 = &v11;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (mediaType == 2)
  {
    v6 = IntentHandlerDefaultLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Inferring video call capability from call to redial", v12, 2u);
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    if (mediaType != 1)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v6 = IntentHandlerDefaultLog(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Inferring audio call capability from call to redial", buf, 2u);
    }

    v7 = 1;
  }

LABEL_16:

LABEL_17:
  return v7;
}

- (BOOL)shouldInferAudioCapabilityForRequestedCallCapability:(int64_t)capability idiom:(int64_t)idiom isDisplayDisabled:(BOOL)disabled
{
  if (capability == 1 || (v6 = [(StartCallIntentHandler *)self shouldForceAudioOnlyWithIdiom:idiom withDisplayDisabled:disabled]))
  {
    dataSource = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeAudioCalls = [dataSource supportsFaceTimeAudioCalls];

    LOBYTE(v6) = supportsFaceTimeAudioCalls;
  }

  return v6;
}

- (int64_t)inferCallCapabilityForPreferredCallProvider:(int64_t)provider recentCall:(id)call initialCallCapability:(int64_t)capability idiom:(int64_t)idiom isDisplayDisabled:(BOOL)disabled executionContext:(int64_t)context
{
  disabledCopy = disabled;
  callCopy = call;
  v15 = callCopy;
  if (capability && context == 1)
  {
    v16 = IntentHandlerDefaultLog(callCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Call capability is already set in plugin, no inferring needed", &v35, 2u);
    }

    goto LABEL_46;
  }

  capabilityCopy = capability;
  if (callCopy)
  {
    callCopy = [callCopy callCapability];
    capabilityCopy = callCopy;
  }

  if (context == 1 && capabilityCopy)
  {
    goto LABEL_34;
  }

  if (provider != 2)
  {
    if (provider == 1)
    {
      v18 = IntentHandlerDefaultLog(callCopy);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        v19 = "Inferring audio callCapability because provider is Telephony.";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, &v35, 2u);
        goto LABEL_40;
      }

      goto LABEL_40;
    }

LABEL_34:
    if (capability || capabilityCopy != 2)
    {
      goto LABEL_43;
    }

    callCopy = [(StartCallIntentHandler *)self shouldForceAudioOnlyWithIdiom:idiom withDisplayDisabled:disabledCopy];
    if (!callCopy)
    {
      capabilityCopy = 2;
      goto LABEL_43;
    }

    v18 = IntentHandlerDefaultLog(callCopy);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    LOWORD(v35) = 0;
    v19 = "Changing callCapability from video to audio because the current idiom only supports audio";
    goto LABEL_39;
  }

  if (context == 1)
  {
    dataSource = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeVideoCalls = [dataSource supportsFaceTimeVideoCalls];

    if (!supportsFaceTimeVideoCalls)
    {
      dataSource2 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeAudioCalls = [dataSource2 supportsFaceTimeAudioCalls];

      v18 = IntentHandlerDefaultLog(v32);
      v33 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (supportsFaceTimeAudioCalls)
      {
        if (v33)
        {
          LOWORD(v35) = 0;
          v19 = "Inferring audio callCapability because provider is FaceTime and audio is supported";
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      if (!v33)
      {
        goto LABEL_33;
      }

      LOWORD(v35) = 0;
      v23 = "[WARN] Unable to infer callCapability. Execution Context is assistantDialog. Provider is Facetime, but neither facetime audio nor video calling are supported.";
      goto LABEL_32;
    }

    v18 = IntentHandlerDefaultLog(v22);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      v23 = "Inferring video callCapability because provider is FaceTime and video is supported.";
      capabilityCopy = 2;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v23, &v35, 2u);
      goto LABEL_33;
    }

    capabilityCopy = 2;
    goto LABEL_33;
  }

  if (capability == 2)
  {
    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeVideoCalls2 = [dataSource3 supportsFaceTimeVideoCalls];

    if (supportsFaceTimeVideoCalls2)
    {
      v18 = IntentHandlerDefaultLog(v26);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        capabilityCopy = 2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Inferring video callCapability because provider is FaceTime, requested callCapability was video and video is supported.", &v35, 2u);
      }

      else
      {
        capabilityCopy = 2;
      }

      goto LABEL_41;
    }
  }

  v27 = [(StartCallIntentHandler *)self shouldInferAudioCapabilityForRequestedCallCapability:capability idiom:idiom isDisplayDisabled:disabledCopy];
  v28 = v27;
  v18 = IntentHandlerDefaultLog(v27);
  v29 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (!v28)
  {
    if (v29)
    {
      LOWORD(v35) = 0;
      v23 = "[WARN] Unable to infer callCapability. Execution Context is not assistantDialog. Provider is Facetime, but neither facetime audio nor video calling are supported.";
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v29)
  {
    LOWORD(v35) = 0;
    v19 = "Inferring audio callCapability because provider is FaceTime, request callCapability was audio and audio is supported";
    goto LABEL_39;
  }

LABEL_40:
  capabilityCopy = 1;
LABEL_41:

LABEL_43:
  v16 = IntentHandlerDefaultLog(callCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 134217984;
    v36 = capabilityCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning call Capability %ld", &v35, 0xCu);
  }

  capability = capabilityCopy;
LABEL_46:

  return capability;
}

- (id)resolutionResultForCallCapability:(int64_t)capability idiom:(int64_t)idiom withDisplayDisabled:(BOOL)disabled
{
  if (!capability)
  {
    disabled = [INStartCallCallCapabilityResolutionResult notRequired:0];
    goto LABEL_13;
  }

  if (capability != 2)
  {
    if (capability != 1)
    {
      disabled = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = [(StartCallIntentHandler *)self shouldForceAudioOnlyWithIdiom:idiom withDisplayDisabled:disabled];
  if (!v5)
  {
    capability = 2;
LABEL_12:
    disabled = [INStartCallCallCapabilityResolutionResult successWithResolvedCallCapability:capability, idiom, disabled];
    goto LABEL_13;
  }

  v6 = IntentHandlerDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100030368();
  }

  disabled = [INStartCallCallCapabilityResolutionResult unsupportedForReason:1];
LABEL_13:

  return disabled;
}

- (BOOL)shouldForceAudioOnlyWithIdiom:(int64_t)idiom withDisplayDisabled:(BOOL)disabled
{
  v4 = __stack_chk_guard;
  if (idiom <= 7)
  {
    disabledCopy = disabled;
    if (((1 << idiom) & 0x47) == 0)
    {
      if (((1 << idiom) & 0x38) != 0)
      {
        v12 = IntentHandlerDefaultLog(self);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          idiomCopy2 = idiom;
          v13 = "deviceIdiom %ld is an audio only device idiom.";
          v14 = v12;
          v15 = 12;
LABEL_15:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      dataSource = [(StartCallIntentHandler *)self dataSource];
      hasCamera = [dataSource hasCamera];

      if ((hasCamera & 1) == 0)
      {
        v12 = IntentHandlerDefaultLog(self);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        LOWORD(v19) = 0;
        v13 = "This Mac has no attached camera.";
        goto LABEL_14;
      }
    }

    v8 = IntentHandlerDefaultLog(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      idiomCopy2 = idiom;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deviceIdiom %ld supports video calling.", &v19, 0xCu);
    }

    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeVideoCalls = [dataSource2 supportsFaceTimeVideoCalls];

    if (supportsFaceTimeVideoCalls)
    {
      if (!disabledCopy)
      {
        v4 = 0;
        return v4 & 1;
      }

      v12 = IntentHandlerDefaultLog(v11);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      LOWORD(v19) = 0;
      v13 = "Devices primary display is disabled, e.g. user is on carDND mode. ";
      goto LABEL_14;
    }

    v12 = IntentHandlerDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v13 = "Call capabilities do not support FaceTime video calls";
LABEL_14:
      v14 = v12;
      v15 = 2;
      goto LABEL_15;
    }

LABEL_16:

    v4 = 1;
  }

  return v4 & 1;
}

- (BOOL)isGFTDisabledForChinaSKU:(id)u
{
  uCopy = u;
  if (-[StartCallIntentHandler isChinaSKUDevice](self, "isChinaSKUDevice") && ([uCopy isGroupCall], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v6))
  {
    v8 = IntentHandlerDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GroupFaceTime is disabled for China SKU devices", v11, 2u);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)resolveFaceTimeLinkForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving faceTimeLink for start call intent: %@", buf, 0xCu);
  }

  v10 = IntentHandlerDefaultLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = IntentHandlerDefaultLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "resolveFaceTimeLink", " enableTelemetry=YES ", buf, 2u);
  }

  v40 = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_10001506C;
  v43 = &unk_10004CF78;
  v45 = v11;
  v15 = completionCopy;
  v44 = v15;
  v16 = objc_retainBlock(&v40);
  preferredCallProvider = [callCopy preferredCallProvider];
  if (preferredCallProvider == 2)
  {
    preferredCallProvider = [(StartCallIntentHandler *)self isFaceTimeInvitationEnabled];
    if (preferredCallProvider)
    {
      contacts = [callCopy contacts];
      v19 = [contacts count];

      if (v19)
      {
        v20 = +[NSMutableSet set];
        v21 = +[NSMutableSet set];
        [(StartCallIntentHandler *)self extractHandlesFromIntent:callCopy faceTimeMemberHandles:v20 nonFaceTimeMemberHandles:v21];
        if ([v21 count])
        {
          _idiom = [callCopy _idiom];
          _idiom2 = [callCopy _idiom];
          if (_idiom2 != 4)
          {
            _idiom2 = [callCopy _idiom];
            if (_idiom != 3 && _idiom2 != 6)
            {
              faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
              v30 = [faceTimeUtilities generateFaceTimeLink:v20];

              if (v30 && ([v30 URL], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "absoluteString"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "length"), v33, v32, v34))
              {
                v35 = [v30 URL];
                absoluteString = [v35 absoluteString];
                v27 = [INStringResolutionResult successWithResolvedString:absoluteString];
              }

              else
              {
                v38 = IntentHandlerDefaultLog(v31);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Link generation failed and nil was returned. Setting empty string.", buf, 2u);
                }

                v37 = [INStringResolutionResult successWithResolvedString:&stru_10004D950];
                v27 = v37;
              }

              v39 = IntentHandlerDefaultLog(v37);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v47 = v27;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Returning FaceTimeLink resolution result: %@", buf, 0xCu);
              }

              (v16[2])(v16, v27);
              goto LABEL_22;
            }
          }

          v24 = IntentHandlerDefaultLog(_idiom2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "This is watchOS or tvOS. Sending a placeholder string for returning unsupported dialog", buf, 2u);
          }

          v25 = [INStringResolutionResult successWithResolvedString:@"NoLinkGenerated"];
        }

        else
        {
          v28 = IntentHandlerDefaultLog(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No non-FaceTime handles found. Returning nil.", buf, 2u);
          }

          v25 = +[INStringResolutionResult notRequired];
        }

        v27 = v25;
        (v16[2])(v16, v25);
LABEL_22:

        goto LABEL_17;
      }
    }
  }

  v26 = IntentHandlerDefaultLog(preferredCallProvider);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Returning empty string as this is a telephony call or featureflag is disabled or destinations was empty", buf, 2u);
  }

  v27 = [INStringResolutionResult successWithResolvedString:&stru_10004D950];
  (v16[2])(v16, v27);
LABEL_17:
}

- (void)resolvePreferredCallProviderForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolvePreferredCallProvider", "", buf, 2u);
  }

  v15 = IntentHandlerDefaultLog(v14);
  v16 = &off_100038000;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v76 = callCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resolving call provider for start call intent: %@", buf, 0xCu);
  }

  preferredCallProvider = [callCopy preferredCallProvider];
  if (preferredCallProvider)
  {
    v18 = 0;
LABEL_8:
    if (preferredCallProvider == 3)
    {
      v40 = 3;
      goto LABEL_52;
    }

    if (preferredCallProvider != 2)
    {
      if (preferredCallProvider == 1)
      {
        v73 = v18;
        v74 = v9 - 1;
        v19 = v9;
        globalEmergencyNumbers = [(StartCallIntentHandler *)self globalEmergencyNumbers];
        contacts = [callCopy contacts];
        firstObject = [contacts firstObject];
        personHandle = [firstObject personHandle];
        value = [personHandle value];
        v25 = ([globalEmergencyNumbers containsObject:value] & 1) != 0 || objc_msgSend(callCopy, "destinationType") == 2;

        _idiom = [callCopy _idiom];
        dataSource = [(StartCallIntentHandler *)self dataSource];
        supportsTelephonyCalls = [dataSource supportsTelephonyCalls];

        if ((v25 & 1) != 0 || _idiom == 3)
        {
          v9 = v19;
          v18 = v73;
          v13 = v74;
          v16 = &off_100038000;
          if ((supportsTelephonyCalls & 1) == 0)
          {
            v48 = IntentHandlerDefaultLog(v46);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              sub_100030570(_idiom == 3, v25, v48);
            }
          }
        }

        else
        {
          v9 = v19;
          v18 = v73;
          v13 = v74;
          v16 = &off_100038000;
          if ((supportsTelephonyCalls & 1) == 0)
          {
            v47 = IntentHandlerDefaultLog(v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_10003053C();
            }

            v42 = 1;
            goto LABEL_47;
          }
        }

        v40 = 1;
LABEL_52:
        v28 = [INStartCallPreferredCallProviderResolutionResult successWithResolvedPreferredCallProvider:v40];
        goto LABEL_53;
      }

LABEL_18:
      v28 = +[INStartCallPreferredCallProviderResolutionResult notRequired];
LABEL_53:
      v29 = v28;
      goto LABEL_54;
    }

    v30 = -[StartCallIntentHandler inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:](self, "inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:", 2, v18, [callCopy callCapability], objc_msgSend(callCopy, "_idiom"), objc_msgSend(callCopy, "_isPrimaryDisplayDisabled"), objc_msgSend(callCopy, "_executionContext"));
    faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
    isFaceTimeEnabledInSettings = [faceTimeUtilities isFaceTimeEnabledInSettings];

    if ((isFaceTimeEnabledInSettings & 1) == 0)
    {
      v41 = IntentHandlerDefaultLog(v33);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10003039C();
      }

      v42 = 6;
      goto LABEL_47;
    }

    if (v30 == 2)
    {
      if (-[StartCallIntentHandler shouldForceAudioOnlyWithIdiom:withDisplayDisabled:](self, "shouldForceAudioOnlyWithIdiom:withDisplayDisabled:", [callCopy _idiom], objc_msgSend(callCopy, "_isPrimaryDisplayDisabled")))
      {
        dataSource2 = [(StartCallIntentHandler *)self dataSource];
        isFaceTimeVideoBlocked = [dataSource2 isFaceTimeVideoBlocked];

        if (isFaceTimeVideoBlocked)
        {
          v39 = IntentHandlerDefaultLog(v51);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
LABEL_45:
            sub_1000304A0();
          }

LABEL_46:

          v42 = 4;
LABEL_47:
          v28 = [INStartCallPreferredCallProviderResolutionResult unsupportedForReason:v42];
          goto LABEL_53;
        }

        dataSource3 = [(StartCallIntentHandler *)self dataSource];
        supportsDisplayingFaceTimeVideoCalls = [dataSource3 supportsDisplayingFaceTimeVideoCalls];

        if (supportsDisplayingFaceTimeVideoCalls)
        {
          dataSource4 = [(StartCallIntentHandler *)self dataSource];
          isDirectFaceTimeVideoCallingCurrentlyAvailable = [dataSource4 isDirectFaceTimeVideoCallingCurrentlyAvailable];

          v64 = IntentHandlerDefaultLog(v71);
          v72 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
          if (isDirectFaceTimeVideoCallingCurrentlyAvailable)
          {
            if (v72)
            {
              sub_10003046C();
            }

            goto LABEL_68;
          }

          if (v72)
          {
            sub_100030438();
          }

LABEL_79:

          v42 = 5;
          goto LABEL_47;
        }

        v53 = IntentHandlerDefaultLog(v68);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      v52 = [(StartCallIntentHandler *)self isGFTDisabledForChinaSKU:callCopy];
      if (v52)
      {
        v53 = IntentHandlerDefaultLog(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_1000303D0();
        }

        goto LABEL_73;
      }
    }

    else if (v30 == 1)
    {
      dataSource5 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeAudioCalls = [dataSource5 supportsFaceTimeAudioCalls];

      if ((supportsFaceTimeAudioCalls & 1) == 0)
      {
        dataSource6 = [(StartCallIntentHandler *)self dataSource];
        isFaceTimeAudioBlocked = [dataSource6 isFaceTimeAudioBlocked];

        if (isFaceTimeAudioBlocked)
        {
          v39 = IntentHandlerDefaultLog(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        dataSource7 = [(StartCallIntentHandler *)self dataSource];
        supportsDisplayingFaceTimeAudioCalls = [dataSource7 supportsDisplayingFaceTimeAudioCalls];

        if (supportsDisplayingFaceTimeAudioCalls)
        {
          dataSource8 = [(StartCallIntentHandler *)self dataSource];
          isDirectFaceTimeAudioCallingCurrentlyAvailable = [dataSource8 isDirectFaceTimeAudioCallingCurrentlyAvailable];

          v64 = IntentHandlerDefaultLog(v63);
          v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
          if (isDirectFaceTimeAudioCallingCurrentlyAvailable)
          {
            if (v65)
            {
              sub_100030508();
            }

LABEL_68:

LABEL_74:
            v28 = +[INStartCallPreferredCallProviderResolutionResult unsupported];
            goto LABEL_53;
          }

          if (v65)
          {
            sub_1000304D4();
          }

          goto LABEL_79;
        }

        v53 = IntentHandlerDefaultLog(v60);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
LABEL_72:
          sub_100030404();
        }

LABEL_73:

        goto LABEL_74;
      }
    }

    v40 = 2;
    goto LABEL_52;
  }

  v26 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
  v18 = v26;
  if (!v26)
  {
    goto LABEL_18;
  }

  preferredCallProvider = [v26 preferredCallProvider];
  if (preferredCallProvider)
  {
    goto LABEL_8;
  }

  v27 = IntentHandlerDefaultLog(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_100030600(v18, v27);
  }

  v28 = +[INStartCallPreferredCallProviderResolutionResult unsupported];
  v29 = v28;
  if (!v28)
  {
    goto LABEL_18;
  }

LABEL_54:
  v54 = IntentHandlerDefaultLog(v28);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v16 + 442);
    v76 = v29;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Returning call provider resolution result: %@", buf, 0xCu);
  }

  v56 = IntentHandlerDefaultLog(v55);
  v57 = v56;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_END, v9, "resolvePreferredCallProvider", "", buf, 2u);
  }

  completionCopy[2](completionCopy, v29);
}

- (id)recentCallRecordToRedialForIntent:(id)intent
{
  intentCopy = intent;
  destinationType = [intentCopy destinationType];
  if (destinationType == 4 || (destinationType = [intentCopy destinationType], destinationType == 5))
  {
    v6 = IntentHandlerDefaultLog(destinationType);
    v7 = os_signpost_id_generate(v6);

    v9 = IntentHandlerDefaultLog(v8);
    v10 = v9;
    v11 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "recentCallToRedial", "", buf, 2u);
    }

    v13 = IntentHandlerDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100030694();
    }

    callRecordToCallBack = [intentCopy callRecordToCallBack];

    if (callRecordToCallBack)
    {
      v16 = IntentHandlerDefaultLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000306C8();
      }

      callRecordToCallBack2 = [intentCopy callRecordToCallBack];
      v18 = callRecordToCallBack2;
    }

    else
    {
      callRecordFilter = [intentCopy callRecordFilter];

      v21 = IntentHandlerDefaultLog(v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (callRecordFilter)
      {
        selfCopy = self;
        v42 = v7 - 1;
        v43 = v7;
        if (v22)
        {
          sub_1000306FC();
        }

        v23 = [RecentCallQuery alloc];
        callRecordFilter2 = [intentCopy callRecordFilter];
        participants = [callRecordFilter2 participants];
        destinationType2 = [intentCopy destinationType];
        callRecordFilter3 = [intentCopy callRecordFilter];
        callTypes = [callRecordFilter3 callTypes];
        callRecordFilter4 = [intentCopy callRecordFilter];
        callCapability = [callRecordFilter4 callCapability];
        callRecordFilter5 = [intentCopy callRecordFilter];
        v32 = -[RecentCallQuery initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:includeThirdPartyCalls:](v23, "initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:includeThirdPartyCalls:", participants, destinationType2, callTypes, callCapability, [callRecordFilter5 preferredCallProvider], 1);

        v33 = [(StartCallIntentHandler *)selfCopy recentCallToRedialForQuery:v32];
        if (v33)
        {
          v18 = [(StartCallIntentHandler *)selfCopy callRecordForRecentCall:v33];
        }

        else
        {
          v18 = 0;
        }

        v11 = v42;
        v7 = v43;
      }

      else
      {
        if (v22)
        {
          sub_100030730();
        }

        v45 = 0;
        [intentCopy recordTypeForRedialing];
        INCallRecordTypeGetBackingType();
        INCallRecordTypeOptionsAddBackingType();
        v34 = [RecentCallQuery alloc];
        contacts = [intentCopy contacts];
        v36 = -[RecentCallQuery initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:](v34, "initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:", contacts, [intentCopy destinationType], 0, objc_msgSend(intentCopy, "callCapability"), objc_msgSend(intentCopy, "preferredCallProvider"));

        v37 = [(StartCallIntentHandler *)self recentCallToRedialForQuery:v36];
        if (v37)
        {
          v18 = [(StartCallIntentHandler *)self callRecordForRecentCall:v37];
        }

        else
        {
          v18 = 0;
        }
      }
    }

    v38 = IntentHandlerDefaultLog(callRecordToCallBack2);
    v39 = v38;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *v44 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v7, "recentCallToRedial", "", v44, 2u);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)callRecordForRecentCall:(id)call
{
  callCopy = call;
  v5 = +[CallRecordConverter sharedInstance];
  v19 = callCopy;
  v6 = [NSArray arrayWithObjects:&v19 count:1];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  contactsDataSource = [dataSource contactsDataSource];
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  providerManager = [dataSource2 providerManager];
  dataSource3 = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource3 coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v14 = [v5 callRecordsForRecentCalls:v6 withContactsDataSource:contactsDataSource withCallProviderManager:providerManager withCurrentISOCountryCodes:allRelevantISOCountryCodes];

  v15 = [v14 count];
  if (v15 == 1)
  {
    v16 = [v14 objectAtIndexedSubscript:0];
  }

  else
  {
    v17 = IntentHandlerDefaultLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100030764();
    }

    v16 = 0;
  }

  return v16;
}

- (id)recentCallToRedialForQuery:(id)query
{
  queryCopy = query;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  contactsDataSource = [dataSource contactsDataSource];
  identifierToContactCache = [(StartCallIntentHandler *)self identifierToContactCache];
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
  v10 = [queryCopy predicateForRecentCallWithContactsDataSource:contactsDataSource contactIdentifierCache:identifierToContactCache coreTelephonyDataSource:coreTelephonyDataSource];

  v12 = IntentHandlerDefaultLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100030798();
  }

  v14 = IntentHandlerDefaultLog(v13);
  v15 = os_signpost_id_generate(v14);

  v17 = IntentHandlerDefaultLog(v16);
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "callHistoryDBCallToRedial", "", buf, 2u);
  }

  dataSource3 = [(StartCallIntentHandler *)self dataSource];
  callHistoryDataSource = [dataSource3 callHistoryDataSource];
  v21 = [callHistoryDataSource callsWithPredicate:v10 limit:1 offset:0 batchSize:1];
  firstObject = [v21 firstObject];

  v24 = IntentHandlerDefaultLog(v23);
  v25 = v24;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v15, "callHistoryDBCallToRedial", "", v29, 2u);
  }

  v27 = IntentHandlerDefaultLog(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_100030800();
  }

  return firstObject;
}

- (id)emergencyTypeToString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unset";
  }

  else
  {
    return off_10004D110[string];
  }
}

- (BOOL)intentHasUnresolvedLocalEmergencyContact:(id)contact
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contacts = [contact contacts];
  v5 = [contacts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contacts);
        }

        if ([(StartCallIntentHandler *)self isUnresolvedLocalEmergencyContact:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [contacts countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)isUnresolvedLocalEmergencyContact:(id)contact
{
  contactCopy = contact;
  personHandle = [contactCopy personHandle];
  if ([personHandle emergencyType] == 1)
  {
    personHandle2 = [contactCopy personHandle];
    value = [personHandle2 value];
    v7 = [value length] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)globalEmergencyNumbers
{
  if (qword_100057A50 != -1)
  {
    sub_100030868();
  }

  v3 = qword_100057A48;

  return v3;
}

- (id)personResolutionResultsForIntent:(id)intent
{
  intentCopy = intent;
  contacts = [intentCopy contacts];
  callGroups = [intentCopy callGroups];
  v7 = [callGroups count];

  if (v7)
  {
    v8 = [(StartCallIntentHandler *)self resolveContactsFromCallGroups:intentCopy];

    contacts = v8;
  }

  v241 = contacts;
  if ([contacts count])
  {
    v9 = objc_alloc_init(NSMutableArray);
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    v10 = contacts;
    v11 = [v10 countByEnumeratingWithState:&v286 objects:v308 count:16];
    v258 = intentCopy;
    v252 = v10;
    if (!v11)
    {
      goto LABEL_210;
    }

    v12 = v11;
    v257 = *v287;
    v243 = _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation;
    v246 = v9;
    selfCopy = self;
    while (1)
    {
      v13 = 0;
      v255 = v12;
      do
      {
        if (*v287 != v257)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v286 + 1) + 8 * v13);
        personHandle = [v14 personHandle];
        value = [personHandle value];

        if ([v10 count] < 2 || (v17 = objc_msgSend(intentCopy, "preferredCallProvider"), v17 == 2))
        {
          personHandle2 = [v14 personHandle];
          emergencyType = [personHandle2 emergencyType];

          if (emergencyType == 1)
          {
            v21 = IntentHandlerDefaultLog(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              personHandle3 = [v14 personHandle];
              [v14 personHandle];
              v250 = v14;
              v23 = intentCopy;
              v25 = v24 = v13;
              -[StartCallIntentHandler emergencyTypeToString:](self, "emergencyTypeToString:", [v25 emergencyType]);
              v26 = v10;
              selfCopy2 = self;
              v28 = v9;
              v30 = v29 = value;
              *buf = 138412546;
              v294 = personHandle3;
              v295 = 2112;
              v296 = v30;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Handle has the LocalEmergency flag. Resolving success. %@ with type: %@", buf, 0x16u);

              v13 = v24;
              intentCopy = v23;
              v14 = v250;

              value = v29;
              v9 = v28;
              self = selfCopy2;
              v10 = v26;
            }

            v31 = [INStartCallContactResolutionResult successWithResolvedPerson:v14];
            [v9 addObject:v31];
            v12 = v255;
          }

          else
          {
            v256 = v13;
            if (![value length])
            {
              featureFlags = [(StartCallIntentHandler *)self featureFlags];
              if ([featureFlags crrFullRecommendation])
              {
                scoredAlternatives = [v14 scoredAlternatives];

                if (scoredAlternatives)
                {
                  v31 = [(StartCallIntentHandler *)self relayCRRRecommendationForPerson:v14 intent:intentCopy];
                  [v9 addObject:v31];
                  v12 = v255;
                  goto LABEL_208;
                }
              }

              else
              {
              }

              v254 = value;
              v50 = [ContactResolver alloc];
              dataSource = [(StartCallIntentHandler *)self dataSource];
              contactsDataSource = [dataSource contactsDataSource];
              coreAnalyticsLogger = [(StartCallIntentHandler *)self coreAnalyticsLogger];
              v31 = [(ContactResolver *)v50 initWithDataSource:contactsDataSource logger:coreAnalyticsLogger];

              v54 = [(ContactResolver *)v31 matchingContactsForPerson:v14];
              if (![v54 count])
              {
                v130 = IntentHandlerDefaultLog(0);
                v12 = v255;
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v294 = v14;
                  _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Found no matching contact from siriMatches or name search, returning unsupported. Person: %@", buf, 0xCu);
                }

                v131 = [INStartCallContactResolutionResult unsupportedForReason:1];
                [v9 addObject:v131];
                v13 = v256;
                goto LABEL_207;
              }

              personHandle4 = [v14 personHandle];
              label = [personHandle4 label];

              v251 = v14;
              personHandle5 = [v14 personHandle];
              type = [personHandle5 type];

              v261 = type;
              if (!type && [intentCopy preferredCallProvider] == 1)
              {
                v59 = IntentHandlerDefaultLog(1);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Requested handle type is unknown, but preferredCallProvider is phone. Inferring handle type of phone number.", buf, 2u);
                }

                v261 = 2;
                goto LABEL_44;
              }

              if ([intentCopy preferredCallProvider] == 2)
              {
                v59 = IntentHandlerDefaultLog(2);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "PreferredCallProvider is faceTime. Inferring handle type of unknown to present both phone number and email address.", buf, 2u);
                }

                v261 = 0;
LABEL_44:
              }

              v259 = label;
              v248 = v31;
              v60 = objc_alloc_init(NSMutableDictionary);
              v282 = 0u;
              v283 = 0u;
              v284 = 0u;
              v285 = 0u;
              v249 = v54;
              allContacts = [v54 allContacts];
              v62 = [allContacts countByEnumeratingWithState:&v282 objects:v306 count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v283;
                do
                {
                  for (i = 0; i != v63; i = i + 1)
                  {
                    if (*v283 != v64)
                    {
                      objc_enumerationMutation(allContacts);
                    }

                    v66 = *(*(&v282 + 1) + 8 * i);
                    dataSource2 = [(StartCallIntentHandler *)selfCopy dataSource];
                    coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
                    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
                    v70 = [(StartCallIntentHandler *)selfCopy _inPersonsFromContact:v66 withRequestedType:v261 requestedLabel:v259 isoCountryCodes:allRelevantISOCountryCodes];

                    if ([v70 count])
                    {
                      [v60 setObject:v70 forKeyedSubscript:v66];
                    }
                  }

                  v63 = [allContacts countByEnumeratingWithState:&v282 objects:v306 count:16];
                }

                while (v63);
              }

              v71 = [v60 copy];
              intentCopy = v258;
              v72 = -[StartCallIntentHandler _applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:requestedHandleType:preferredCallProvider:](selfCopy, "_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:requestedHandleType:preferredCallProvider:", v71, v261, [v258 preferredCallProvider]);

              v54 = v249;
              v244 = [[ContactSlotResolutionHelper alloc] initWithUnresolvedPerson:v251 availableContacts:v249];
              v73 = objc_alloc_init(NSSet);
              extractRecommendation = [v251 extractRecommendation];
              v245 = extractRecommendation;
              if ([extractRecommendation contactsAvailableInPool:v249])
              {
                dataSource3 = [(StartCallIntentHandler *)selfCopy dataSource];
                expectUpstreamContactRecommendation = [dataSource3 expectUpstreamContactRecommendation];

                if (expectUpstreamContactRecommendation)
                {
                  v78 = IntentHandlerDefaultLog(v77);
                  v13 = v256;
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Native flow contact resolver enabled.", buf, 2u);
                  }

                  type2 = [extractRecommendation type];
                  allKeys = 0;
                  if (type2 <= 1)
                  {
                    v31 = v248;
                    if (type2)
                    {
                      if (type2 == 1)
                      {
                        contactIdentifiers = [extractRecommendation contactIdentifiers];
                        firstObject = [contactIdentifiers firstObject];
                        v83 = [v249 contactWithId:firstObject];
                        v305 = v83;
                        allKeys = [NSArray arrayWithObjects:&v305 count:1];

                        firstObject3 = IntentHandlerDefaultLog(v84);
                        if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
                        {
                          contactIdentifiers2 = [extractRecommendation contactIdentifiers];
                          firstObject2 = [contactIdentifiers2 firstObject];
                          *buf = 138412290;
                          v294 = firstObject2;
                          _os_log_impl(&_mh_execute_header, firstObject3, OS_LOG_TYPE_DEFAULT, "Confident match found by NCR, uuid %@", buf, 0xCu);
                        }

                        goto LABEL_68;
                      }

LABEL_206:

                      v9 = v246;
                      v10 = v252;
                      v131 = v259;
                      self = selfCopy;
                      v12 = v255;
LABEL_207:

                      value = v254;
                      goto LABEL_208;
                    }

                    v185 = IntentHandlerDefaultLog(0);
                    if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v294 = v251;
                      _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "NCR found no matches for person: %@", buf, 0xCu);
                    }

                    v89 = [INStartCallContactResolutionResult unsupportedForReason:1];
                    [v246 addObject:v89];
                    allKeys = 0;
LABEL_204:

LABEL_205:
                    v13 = v256;
                    goto LABEL_206;
                  }

                  v31 = v248;
                  if (type2 == 2)
                  {
                    contactIdentifiers3 = [extractRecommendation contactIdentifiers];
                    firstObject3 = [contactIdentifiers3 firstObject];

                    v187 = [v249 contactWithId:firstObject3];
                    v304 = v187;
                    allKeys = [NSArray arrayWithObjects:&v304 count:1];

                    v188 = [NSSet setWithObject:firstObject3];

                    v190 = IntentHandlerDefaultLog(v189);
                    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v294 = firstObject3;
                      _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "Low-confidence (needsConfirmation) match found by NCR, uuid %@", buf, 0xCu);
                    }

                    v73 = v188;
                    intentCopy = v258;
                  }

                  else
                  {
                    if (type2 != 3)
                    {
                      goto LABEL_206;
                    }

                    contactIdentifiers4 = [extractRecommendation contactIdentifiers];
                    firstObject3 = [v249 contactsWithIds:contactIdentifiers4];

                    v148 = [(StartCallIntentHandler *)selfCopy anyContactsHaveSameName:firstObject3];
                    if (v148)
                    {
                      v149 = IntentHandlerDefaultLog(v148);
                      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "NCR recommended needsDisambiguation for contacts, but some have the same name. Proceeding to handle disambiguation.", buf, 2u);
                      }

                      firstObject3 = firstObject3;
                      allKeys = firstObject3;
                    }

                    else
                    {
                      contactIdentifiers5 = [extractRecommendation contactIdentifiers];
                      v196 = [(ContactSlotResolutionHelper *)v244 buildDisambiguationResultForContacts:contactIdentifiers5];

                      [(StartCallIntentHandler *)selfCopy parseEmergencyContacts:v252 usingExistingResult:v196];
                      featureFlags2 = [(StartCallIntentHandler *)selfCopy featureFlags];
                      crrHandleRecommendation = [featureFlags2 crrHandleRecommendation];

                      if (crrHandleRecommendation)
                      {
                        siriMatches = [v251 siriMatches];
                        v200 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:siriMatches];

                        v196 = v200;
                      }

                      v201 = IntentHandlerDefaultLog([v246 addObject:v196]);
                      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v294 = firstObject3;
                        _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "needsDisambiguation recommended by NCR, uuids %@", buf, 0xCu);
                      }

                      allKeys = 0;
                    }
                  }

LABEL_68:

                  if (!allKeys || ![allKeys count])
                  {
                    goto LABEL_205;
                  }

                  v89 = objc_alloc_init(NSMutableArray);
                  v274 = 0u;
                  v275 = 0u;
                  v276 = 0u;
                  v277 = 0u;
                  allKeys = allKeys;
                  v90 = [allKeys countByEnumeratingWithState:&v274 objects:v301 count:16];
                  if (v90)
                  {
                    v91 = v90;
                    v92 = *v275;
                    do
                    {
                      for (j = 0; j != v91; j = j + 1)
                      {
                        if (*v275 != v92)
                        {
                          objc_enumerationMutation(allKeys);
                        }

                        v94 = [v72 objectForKeyedSubscript:*(*(&v274 + 1) + 8 * j)];
                        [v89 addObjectsFromArray:v94];
                      }

                      v91 = [allKeys countByEnumeratingWithState:&v274 objects:v301 count:16];
                    }

                    while (v91);
                  }

                  v95 = [v89 copy];
                  v96 = [INPersonDeduplicator dedupeINPersons:v95];

                  v97 = [v96 count];
                  if (v97 || ([v251 personHandle], v150 = objc_claimAutoreleasedReturnValue(), v150, !v150))
                  {
                    v98 = IntentHandlerDefaultLog(v97);
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                    {
                      v99 = [allKeys count];
                      v100 = [v96 count];
                      *buf = 134218754;
                      v294 = v99;
                      v295 = 2048;
                      v296 = v100;
                      v297 = 2112;
                      v298 = allKeys;
                      v299 = 2112;
                      v300 = v96;
                      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Resolved to %ld matching contacts with %ld matching handles. Contact: %@ Handles: %@", buf, 0x2Au);
                    }

                    v31 = v248;
                    v54 = v249;
                  }

                  else
                  {
                    v151 = v96;
                    v152 = IntentHandlerDefaultLog(v97);
                    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                    {
                      personHandle6 = [v251 personHandle];
                      *buf = 138412290;
                      v294 = personHandle6;
                      _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "No valid matching handle is found for the resolved contacts and this handle has been requested: %@. will attempt additional matching handles from siri matches.", buf, 0xCu);
                    }

                    v96 = [(StartCallIntentHandler *)selfCopy generateAdditionalMatchingHandles:v251 resolvedContacts:allKeys requestedHandleType:v261 requestedHandleLabel:v259];

                    v155 = IntentHandlerDefaultLog(v154);
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                    {
                      v156 = [allKeys count];
                      v157 = [v96 count];
                      *buf = 134218754;
                      v294 = v156;
                      v295 = 2048;
                      v296 = v157;
                      v297 = 2112;
                      v298 = allKeys;
                      v299 = 2112;
                      v300 = v96;
                      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "Resolved to %ld matching contacts with %ld additional matching handles. Contact: %@ Handles: %@", buf, 0x2Au);
                    }

                    v31 = v248;
                    v54 = v249;
                    if ([v96 count]== 1)
                    {
                      v158 = IntentHandlerDefaultLog(1);
                      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                      {
                        firstObject4 = [v96 firstObject];
                        *buf = 138412546;
                        v294 = v259;
                        v295 = 2112;
                        v296 = firstObject4;
                        _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "%@ was requested but the contact doesn't an exact match. Using the only alternative instead: %@", buf, 0x16u);
                      }

                      firstObject5 = [v96 firstObject];
                      v160 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedHandleValue:firstObject5];
                      [v246 addObject:v160];

                      goto LABEL_203;
                    }
                  }

                  v242 = v73;
                  if (![v96 count])
                  {
                    v161 = v96;
                    v162 = IntentHandlerDefaultLog(0);
                    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "None of the resolved contacts have a valid matching handle. Offering all handles as alternatives", buf, 2u);
                    }

                    firstObject5 = objc_alloc_init(NSMutableArray);
                    v270 = 0u;
                    v271 = 0u;
                    v272 = 0u;
                    v273 = 0u;
                    v163 = allKeys;
                    v164 = [v163 countByEnumeratingWithState:&v270 objects:v292 count:16];
                    if (v164)
                    {
                      v165 = v164;
                      v166 = *v271;
                      do
                      {
                        for (k = 0; k != v165; k = k + 1)
                        {
                          if (*v271 != v166)
                          {
                            objc_enumerationMutation(v163);
                          }

                          v168 = -[StartCallIntentHandler getAlternativesForContact:forRequestedHandleType:forCallProvider:](selfCopy, "getAlternativesForContact:forRequestedHandleType:forCallProvider:", *(*(&v270 + 1) + 8 * k), v261, [v258 preferredCallProvider]);
                          [firstObject5 addObjectsFromArray:v168];
                        }

                        v165 = [v163 countByEnumeratingWithState:&v270 objects:v292 count:16];
                      }

                      while (v165);
                    }

                    v169 = [firstObject5 copy];
                    v170 = [INPersonDeduplicator dedupeINPersons:v169];

                    v172 = IntentHandlerDefaultLog(v171);
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "Offering all handles as alternatives", buf, 2u);
                    }

                    v173 = [INStartCallContactResolutionResult resolutionResultUnsupportedWithReason:3 alternativeItems:v170];
                    [v246 addObject:v173];

                    v96 = v161;
                    intentCopy = v258;
                    v31 = v248;
                    v54 = v249;
                    v73 = v242;
                    goto LABEL_203;
                  }

                  featureFlags3 = [(StartCallIntentHandler *)selfCopy featureFlags];
                  if ([featureFlags3 crrHandleRecommendation])
                  {
                    siriMatches2 = [v251 siriMatches];
                    v103 = [siriMatches2 count];

                    if (v103)
                    {
                      v105 = IntentHandlerDefaultLog(v104);
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                      {
                        siriMatches3 = [v251 siriMatches];
                        *buf = 138412290;
                        v294 = siriMatches3;
                        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Using CRR based recommendation results: %@", buf, 0xCu);
                      }

                      siriMatches4 = [v251 siriMatches];
                      v108 = [siriMatches4 count];

                      v73 = v242;
                      if (v108 == 1)
                      {
                        siriMatches5 = [v251 siriMatches];
                        firstObject6 = [siriMatches5 firstObject];

                        v113 = IntentHandlerDefaultLog(v112);
                        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v294 = firstObject6;
                          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Resolved to one CRR recommended handle: %@", buf, 0xCu);
                        }

                        firstObject7 = [allKeys firstObject];
                        firstObject5 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedContactName:v251 resolvedPerson:firstObject6 resolvedContact:firstObject7 contactIdentifiersRequiringConfirmation:v242];
                      }

                      else
                      {
                        v193 = IntentHandlerDefaultLog(v109);
                        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
                        {
                          siriMatches6 = [v251 siriMatches];
                          *buf = 138412290;
                          v294 = siriMatches6;
                          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "Resolved to more than one CRR recommended handle: %@", buf, 0xCu);
                        }

                        firstObject6 = [v251 siriMatches];
                        firstObject5 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:firstObject6];
                      }

                      [v246 addObject:firstObject5];
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                  }

                  if ([v96 count]== 1)
                  {
                    firstObject5 = [v96 firstObject];
                    v180 = IntentHandlerDefaultLog(firstObject5);
                    v73 = v242;
                    if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v294 = firstObject5;
                      _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "Resolved to one handle: %@", buf, 0xCu);
                    }

                    firstObject8 = [allKeys firstObject];
                    v182 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedContactName:v251 resolvedPerson:firstObject5 resolvedContact:firstObject8 contactIdentifiersRequiringConfirmation:v242];

                    [v246 addObject:v182];
                    goto LABEL_202;
                  }

                  v73 = v242;
                  if ([intentCopy preferredCallProvider] == 2 || (v183 = objc_msgSend(intentCopy, "callCapability"), v183 == 2))
                  {
                    if ([allKeys count]== 1)
                    {
                      firstObject9 = [allKeys firstObject];
                      goto LABEL_179;
                    }

                    firstObject9 = [StartCallIntentHandlerUtilities contactsShareHandleValue:allKeys];
                    if (firstObject9)
                    {
                      v202 = IntentHandlerDefaultLog(firstObject9);
                      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v294 = allKeys;
                        _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "Resolved contacts all share a handle: treating them as the same person. Contacts: %@", buf, 0xCu);
                      }

                      firstObject9 = [StartCallIntentHandlerUtilities contactWithMostHandles:allKeys];
LABEL_179:
                      firstObject5 = firstObject9;
                      if (firstObject9)
                      {
                        v203 = -[StartCallIntentHandler requireScoreBasedResolutionForGFT:numberOfContactsCount:](selfCopy, "requireScoreBasedResolutionForGFT:numberOfContactsCount:", -[NSObject count](v96, "count"), [v252 count]);
                        if ((v203 & 1) != 0 || (-[StartCallIntentHandler featureFlags](selfCopy, "featureFlags"), v204 = objc_claimAutoreleasedReturnValue(), v205 = [v204 faceTimeNoFanOutEnabled], v204, v205))
                        {
                          v206 = IntentHandlerDefaultLog(v203);
                          if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v294 = v96;
                            _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "Facetime call contact resolved to multiple handles. Using score based resolution model to resolve handles: %@", buf, 0xCu);
                          }

                          v73 = v242;
                          v207 = [(StartCallIntentHandler *)selfCopy resolvePreferredHandleFromHandles:v96 contactIdentifiersRequiringConfirmation:v242 telephonyOnly:0];
                          [v246 addObject:v207];
                        }

                        else
                        {
                          v213 = [StartCallIntentHandlerUtilities inPersonFromContact:firstObject5 handleValue:0 handleType:v261 handleLabel:v259];
                          v214 = IntentHandlerDefaultLog(v213);
                          if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v294 = v213;
                            _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEFAULT, "Facetime call resolved to multiple handles for a distinct person, preserving ambiguity. Will ring all handles. Person: %@", buf, 0xCu);
                          }

                          v73 = v242;
                          v215 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedContactName:v251 resolvedPerson:v213 resolvedContact:firstObject5 contactIdentifiersRequiringConfirmation:v242];
                          [v246 addObject:v215];

                          intentCopy = v258;
                        }

LABEL_202:
                        v54 = v249;
LABEL_203:

                        goto LABEL_204;
                      }
                    }

                    v208 = IntentHandlerDefaultLog(firstObject9);
                    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "Facetime call resolved to multiple contacts with the same name, none of which share a handle. Disambiguating between handles.", buf, 2u);
                    }

                    v209 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v96];
                  }

                  else
                  {
                    v211 = IntentHandlerDefaultLog(v183);
                    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v294 = v96;
                      _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "Resolved to multiple handles, using score based resolution model to resolve handles: %@", buf, 0xCu);
                    }

                    v209 = [(StartCallIntentHandler *)selfCopy resolvePreferredHandleFromHandles:v96 contactIdentifiersRequiringConfirmation:v242 telephonyOnly:1];
                  }

                  firstObject5 = v209;
                  [v246 addObject:v209];
                  goto LABEL_203;
                }
              }

              if ([v72 count] == 1)
              {
                allKeys = [v72 allKeys];
                firstObject3 = IntentHandlerDefaultLog(allKeys);
                if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
                {
                  firstObject10 = [allKeys firstObject];
                  *buf = 138412290;
                  v294 = firstObject10;
                  _os_log_impl(&_mh_execute_header, firstObject3, OS_LOG_TYPE_DEFAULT, "Only one matching contact for requested handle -- proceeding to handle disambiguation: %@", buf, 0xCu);
                }

                v31 = v248;
                goto LABEL_68;
              }

              if ([v249 count] == 1)
              {
                allKeys = [v249 allContacts];
                firstObject3 = IntentHandlerDefaultLog(allKeys);
                v31 = v248;
                if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
                {
                  firstObject11 = [allKeys firstObject];
                  *buf = 138412290;
                  v294 = firstObject11;
                  _os_log_impl(&_mh_execute_header, firstObject3, OS_LOG_TYPE_DEFAULT, "Only one matching contact (regardless of requested handle): %@", buf, 0xCu);
                }

                goto LABEL_68;
              }

              dataSource4 = [(StartCallIntentHandler *)selfCopy dataSource];
              useLegacyContactResolution = [dataSource4 useLegacyContactResolution];

              if (useLegacyContactResolution)
              {
                v136 = IntentHandlerDefaultLog(v135);
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Using legacy contact resolution", buf, 2u);
                }

                v89 = objc_alloc_init(NSMutableArray);
                v278 = 0u;
                v279 = 0u;
                v280 = 0u;
                v281 = 0u;
                allContacts2 = [v249 allContacts];
                v138 = [allContacts2 countByEnumeratingWithState:&v278 objects:v303 count:16];
                if (v138)
                {
                  v139 = v138;
                  v140 = *v279;
                  do
                  {
                    for (m = 0; m != v139; m = m + 1)
                    {
                      if (*v279 != v140)
                      {
                        objc_enumerationMutation(allContacts2);
                      }

                      v142 = [StartCallIntentHandlerUtilities inPersonFromContact:*(*(&v278 + 1) + 8 * m) handleValue:0 handleType:v261 handleLabel:v259];
                      [v89 addObject:v142];
                    }

                    v139 = [allContacts2 countByEnumeratingWithState:&v278 objects:v303 count:16];
                  }

                  while (v139);
                }

                v144 = IntentHandlerDefaultLog(v143);
                v54 = v249;
                if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                {
                  v145 = [v249 count];
                  *buf = 134218242;
                  v294 = v145;
                  v295 = 2112;
                  v296 = v89;
                  _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Resolved to %ld contacts, asking the user to disambiguate among persons: %@", buf, 0x16u);
                }

                v146 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v89];
                [v246 addObject:v146];

                allKeys = 0;
                v31 = v248;
                goto LABEL_204;
              }

              allContacts3 = [v249 allContacts];
              firstObject3 = [(StartCallIntentHandler *)selfCopy resolvePreferredContactFromContacts:allContacts3];

              resolutionResultType = [firstObject3 resolutionResultType];
              resolvedEntities = [firstObject3 resolvedEntities];
              v177 = resolvedEntities;
              allKeys = 0;
              v31 = v248;
              if (resolutionResultType <= 1)
              {
                if (resolutionResultType)
                {
                  if (resolutionResultType == 1)
                  {
                    firstObject12 = [resolvedEntities firstObject];
                    v179 = [v249 contactWithId:firstObject12];
                    v302 = v179;
                    allKeys = [NSArray arrayWithObjects:&v302 count:1];

                    goto LABEL_197;
                  }

LABEL_198:

                  goto LABEL_68;
                }

                firstObject12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Unexpected score based contact resolution result type." userInfo:0];
                [firstObject12 raise];
LABEL_196:
                allKeys = 0;
LABEL_197:

                goto LABEL_198;
              }

              if (resolutionResultType == 2)
              {
                firstObject12 = [resolvedEntities firstObject];
                v210 = [(ContactSlotResolutionHelper *)v244 buildConfirmationResultForContact:firstObject12 withReason:3];
              }

              else
              {
                if (resolutionResultType != 3)
                {
                  goto LABEL_198;
                }

                firstObject12 = [v249 contactsWithIds:resolvedEntities];
                v191 = [(StartCallIntentHandler *)selfCopy anyContactsHaveSameName:firstObject12];
                if (v191)
                {
                  v192 = IntentHandlerDefaultLog(v191);
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "ScoreBasedResolutionResult is Disambiguate, but some contacts have the same name. Proceeding to handle disambiguation.", buf, 2u);
                  }

                  firstObject12 = firstObject12;
                  allKeys = firstObject12;
                  goto LABEL_197;
                }

                v210 = [(ContactSlotResolutionHelper *)v244 buildDisambiguationResultForContacts:v177];
              }

              v212 = v210;
              [v246 addObject:v210];

              goto LABEL_196;
            }

            v253 = value;
            globalEmergencyNumbers = [(StartCallIntentHandler *)self globalEmergencyNumbers];
            personHandle7 = [v14 personHandle];
            value2 = [personHandle7 value];
            v35 = [globalEmergencyNumbers containsObject:value2];

            v37 = IntentHandlerDefaultLog(v36);
            v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
            if (!v35)
            {
              if (v38)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Number is not on the global emergency numbers list", buf, 2u);
              }

              v31 = [(StartCallIntentHandler *)self resolutionResultForPersonWithResolvedHandleValue:v14];
              [v9 addObject:v31];
              v13 = v256;
              goto LABEL_32;
            }

            if (v38)
            {
              personHandle8 = [v14 personHandle];
              personHandle9 = [v14 personHandle];
              v41 = -[StartCallIntentHandler emergencyTypeToString:](self, "emergencyTypeToString:", [personHandle9 emergencyType]);
              *buf = 138412546;
              v294 = personHandle8;
              v295 = 2112;
              v296 = v41;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Handle %@ is in the global emergency numbers list. EmergencyType is %@", buf, 0x16u);
            }

            personHandle10 = [v14 personHandle];
            emergencyType2 = [personHandle10 emergencyType];

            v45 = IntentHandlerDefaultLog(v44);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            v13 = v256;
            if (emergencyType2)
            {
              if (v46)
              {
                *buf = 138412290;
                v294 = v14;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Number is on the global emergency numbers list, but INPersonHandle already has the emergencyType set: %@", buf, 0xCu);
              }

              v31 = [(StartCallIntentHandler *)self resolutionResultForPersonWithResolvedHandleValue:v14];
              [v9 addObject:v31];
LABEL_32:
              value = v253;
              v12 = v255;
              goto LABEL_208;
            }

            if (v46)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "It's unclear if the user literally wanted this number, or if they meant to call emergency services. Disambiguate between local and nonlocal emergency services.", buf, 2u);
            }

            v116 = [INPersonHandle alloc];
            personHandle11 = [v14 personHandle];
            value3 = [personHandle11 value];
            personHandle12 = [v14 personHandle];
            type3 = [personHandle12 type];
            personHandle13 = [v14 personHandle];
            label2 = [personHandle13 label];
            v31 = [v116 initWithValue:value3 type:type3 label:label2 emergencyType:2];

            v123 = [[INPerson alloc] initWithPersonHandle:v31 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
            v124 = [[INPersonHandle alloc] initWithValue:&stru_10004D950 type:2 label:0 emergencyType:1];
            v125 = [[INPerson alloc] initWithPersonHandle:v124 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
            v307[0] = v123;
            v307[1] = v125;
            v126 = [NSArray arrayWithObjects:v307 count:2];
            v127 = [INStartCallContactResolutionResult resolutionResultUnsupportedWithReason:v243 alternativeItems:v126];
            [v246 addObject:v127];

            v129 = IntentHandlerDefaultLog(v128);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v294 = v126;
              _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "Returning _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation with alternative items: %@", buf, 0xCu);
            }

            v10 = v252;
            value = v253;
            self = selfCopy;
            v12 = v255;
            v13 = v256;
            intentCopy = v258;
            v9 = v246;
          }
        }

        else
        {
          v47 = IntentHandlerDefaultLog(v17);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Attempting to resolve more than one call participant. Returning multiple contacts unsupported for each recipient.", buf, 2u);
          }

          v31 = [INStartCallContactResolutionResult unsupportedForReason:2];
          [v9 addObject:v31];
        }

LABEL_208:

        v13 = v13 + 1;
      }

      while (v13 != v12);
      v12 = [v10 countByEnumeratingWithState:&v286 objects:v308 count:16];
      if (!v12)
      {
LABEL_210:

        v216 = [v9 copy];
        contacts2 = [intentCopy contacts];
        v218 = [contacts2 count];

        if (v218 < 2)
        {
          goto LABEL_236;
        }

        v219 = objc_alloc_init(NSMutableArray);
        v266 = 0u;
        v267 = 0u;
        v268 = 0u;
        v269 = 0u;
        v220 = v9;
        v221 = [v220 countByEnumeratingWithState:&v266 objects:v291 count:16];
        if (!v221)
        {
          goto LABEL_223;
        }

        v222 = v221;
        LODWORD(v223) = 0;
        v224 = *v267;
        while (1)
        {
          v225 = 0;
          v223 = v223;
          do
          {
            if (*v267 != v224)
            {
              objc_enumerationMutation(v220);
            }

            v226 = *(*(&v266 + 1) + 8 * v225);
            if ([v226 resolutionResultCode])
            {
              if ([v252 count] <= v223)
              {
                goto LABEL_221;
              }

              resolvedValue = [v252 objectAtIndexedSubscript:v223];
            }

            else
            {
              resolvedValue = [v226 resolvedValue];
            }

            v228 = resolvedValue;
            [v219 addObject:resolvedValue];

LABEL_221:
            ++v223;
            v225 = v225 + 1;
          }

          while (v222 != v225);
          v222 = [v220 countByEnumeratingWithState:&v266 objects:v291 count:16];
          if (!v222)
          {
LABEL_223:
            v247 = v220;

            [intentCopy setValue:v219 forKey:@"contacts"];
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            contacts3 = [intentCopy contacts];
            v230 = [contacts3 countByEnumeratingWithState:&v262 objects:v290 count:16];
            if (v230)
            {
              v231 = v230;
              v232 = *v263;
              do
              {
                v233 = 0;
                do
                {
                  if (*v263 != v232)
                  {
                    objc_enumerationMutation(contacts3);
                  }

                  v234 = *(*(&v262 + 1) + 8 * v233);
                  v235 = IntentHandlerDefaultLog(v230);
                  if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v294 = v234;
                    _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "Updated contact in intent: %@", buf, 0xCu);
                  }

                  v233 = v233 + 1;
                }

                while (v231 != v233);
                v230 = [contacts3 countByEnumeratingWithState:&v262 objects:v290 count:16];
                v231 = v230;
              }

              while (v230);
            }

            intentCopy = v258;
            v9 = v247;
            goto LABEL_236;
          }
        }
      }
    }
  }

  v236 = IntentHandlerDefaultLog(0);
  if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Resolution needs a value for zero contacts", buf, 2u);
  }

  v9 = +[INStartCallContactResolutionResult needsValue];
  v309 = v9;
  v216 = [NSArray arrayWithObjects:&v309 count:1];
LABEL_236:

  v238 = IntentHandlerDefaultLog(v237);
  if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v294 = v216;
    _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "resolutionResults: %@", buf, 0xCu);
  }

  v239 = v216;
  return v216;
}

- (id)relayCRRRecommendationForPerson:(id)person intent:(id)intent
{
  personCopy = person;
  intentCopy = intent;
  v8 = IntentHandlerDefaultLog(intentCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "relaying CRR recommendations", buf, 2u);
  }

  scoredAlternatives = [personCopy scoredAlternatives];
  if ([scoredAlternatives count])
  {
    v10 = [scoredAlternatives count];
    if (v10 != 1)
    {
      v23 = IntentHandlerDefaultLog(v10);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [scoredAlternatives count];
        *buf = 134217984;
        v61 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found %ld candidates; returning disambiguate", buf, 0xCu);
      }

      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100018DB8;
      v59[3] = &unk_10004CFC0;
      v59[4] = self;
      person = [scoredAlternatives tu_mapObjectsUsingBlock:v59];
      v25 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:person];
      goto LABEL_44;
    }

    v11 = [scoredAlternatives objectAtIndexedSubscript:0];
    person = [v11 person];

    v13 = [scoredAlternatives objectAtIndexedSubscript:0];
    recommendation = [v13 recommendation];

    personHandle = [person personHandle];
    value = [personHandle value];

    if (value)
    {
      personHandle2 = [person personHandle];
      type = [personHandle2 type];

      personHandle3 = [person personHandle];
      v20 = [personHandle3 type] == 1 && objc_msgSend(intentCopy, "preferredCallProvider") == 2;

      if (type == 2 || v20)
      {
        dataSource = [(StartCallIntentHandler *)self dataSource];
        coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
        allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
        v42 = [person tu_personWithFormattedHandleForISOCountryCodes:allRelevantISOCountryCodes];

        dataSource2 = [(StartCallIntentHandler *)self dataSource];
        personHandle4 = [v42 personHandle];
        value2 = [personHandle4 value];
        LODWORD(coreTelephonyDataSource) = [dataSource2 isMMIOrUSSDNumber:value2];

        if (coreTelephonyDataSource)
        {
          v47 = IntentHandlerDefaultLog(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            personHandle5 = [v42 personHandle];
            value3 = [personHandle5 value];
            *buf = 138412290;
            v61 = value3;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Found 1 candidate with unsupported MMI or USSD handle %@", buf, 0xCu);
          }

          v50 = [INStartCallContactResolutionResult unsupportedForReason:5];
        }

        else
        {
          v56 = IntentHandlerDefaultLog(v46);
          v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          if (recommendation)
          {
            if (v57)
            {
              *buf = 138412290;
              v61 = v42;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Found 1 low-confidence candidate; returning confirm: %@", buf, 0xCu);
            }

            v50 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v42];
          }

          else
          {
            if (v57)
            {
              *buf = 138412290;
              v61 = v42;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Found 1 high-confidence candidate; returning success: %@", buf, 0xCu);
            }

            v50 = [INStartCallContactResolutionResult successWithResolvedPerson:v42];
          }
        }

        v22 = v50;
        person = v42;
        goto LABEL_45;
      }

      v37 = IntentHandlerDefaultLog(v36);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v61 = person;
      v38 = "Found 1 candidate with an invalid handle type; returning unsupported. Person: %@";
      goto LABEL_42;
    }

    personHandle6 = [personCopy personHandle];

    if (!personHandle6)
    {
      v37 = IntentHandlerDefaultLog(v27);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
LABEL_43:

        v25 = [INStartCallContactResolutionResult unsupportedForReason:3];
LABEL_44:
        v22 = v25;
LABEL_45:

        goto LABEL_46;
      }

      *buf = 138412290;
      v61 = person;
      v38 = "Found 1 candidate with a no handle; returning unsupported. Person: %@";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
      goto LABEL_43;
    }

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    contactsDataSource = [dataSource3 contactsDataSource];
    contactIdentifier = [person contactIdentifier];
    v31 = +[ContactResolver keysToFetch];
    v32 = [contactsDataSource contactForIdentifier:contactIdentifier keysToFetch:v31];

    personHandle7 = [personCopy personHandle];
    type2 = [personHandle7 type];

    if (type2 || [intentCopy preferredCallProvider] != 1)
    {
      if ([intentCopy preferredCallProvider] != 2)
      {
LABEL_33:
        v51 = -[StartCallIntentHandler getAlternativesForContact:forRequestedHandleType:forCallProvider:](self, "getAlternativesForContact:forRequestedHandleType:forCallProvider:", v32, type2, [intentCopy preferredCallProvider]);
        v52 = [v51 copy];
        v53 = [INPersonDeduplicator dedupeINPersons:v52];

        v55 = IntentHandlerDefaultLog(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found 1 candidate with no matching handle; offering other handles as alternatives", buf, 2u);
        }

        v22 = [INStartCallContactResolutionResult resolutionResultUnsupportedWithReason:3 alternativeItems:v53];

        goto LABEL_45;
      }

      v35 = IntentHandlerDefaultLog(2);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "PreferredCallProvider is faceTime. Inferring handle type of unknown to present both phone number and email address.", buf, 2u);
      }

      type2 = 0;
    }

    else
    {
      v35 = IntentHandlerDefaultLog(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        type2 = 2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Requested handle type is unknown, but preferredCallProvider is phone. Inferring handle type of phone number.", buf, 2u);
      }

      else
      {
        type2 = 2;
      }
    }

    goto LABEL_33;
  }

  v21 = IntentHandlerDefaultLog(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = personCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No candidates from CRR. Returning unsupported. Person: %@", buf, 0xCu);
  }

  v22 = [INStartCallContactResolutionResult unsupportedForReason:1];
LABEL_46:

  return v22;
}

- (void)parseEmergencyContacts:(id)contacts usingExistingResult:(id)result
{
  contactsCopy = contacts;
  resultCopy = result;
  if ([contactsCopy count] == 1)
  {
    v7 = [contactsCopy objectAtIndexedSubscript:0];
    displayName = [v7 displayName];
    if ([displayName isEqualToString:@"emergency contact"])
    {
      v9 = [contactsCopy objectAtIndexedSubscript:0];
      alternatives = [v9 alternatives];
      v11 = [alternatives count];
      disambiguationItems = [resultCopy disambiguationItems];
      v13 = [disambiguationItems count];

      if (v11 == v13)
      {
        v15 = IntentHandlerDefaultLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Emergency contacts detected. Inserting personHandles.", v27, 2u);
        }

        disambiguationItems2 = [resultCopy disambiguationItems];
        v17 = [disambiguationItems2 count];

        if (v17)
        {
          v18 = 0;
          do
          {
            disambiguationItems3 = [resultCopy disambiguationItems];
            v20 = [disambiguationItems3 objectAtIndexedSubscript:v18];

            v21 = [contactsCopy objectAtIndexedSubscript:0];
            alternatives2 = [v21 alternatives];
            v23 = [alternatives2 objectAtIndexedSubscript:v18];

            personHandle = [v23 personHandle];
            [v20 setPersonHandle:personHandle];

            ++v18;
            disambiguationItems4 = [resultCopy disambiguationItems];
            v26 = [disambiguationItems4 count];
          }

          while (v26 > v18);
        }
      }
    }

    else
    {
    }
  }
}

- (id)generateAdditionalMatchingHandles:(id)handles resolvedContacts:(id)contacts requestedHandleType:(int64_t)type requestedHandleLabel:(id)label
{
  contactsCopy = contacts;
  labelCopy = label;
  tu_matchingINPersonHandlesByContactIdentifier = [handles tu_matchingINPersonHandlesByContactIdentifier];
  v49 = objc_alloc_init(NSMutableArray);
  v43 = [INPersonHandleLabelMobile isEqualToString:labelCopy];
  v39 = labelCopy;
  v11 = [INPersonHandleLabeliPhone isEqualToString:labelCopy];
  v42 = v11;
  if ((v11 & 1) != 0 || v43)
  {
    v12 = IntentHandlerDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Either a mobile handle or an iPhone label was requested without any matching handle. Checking if an alternative for mobile or iPhone handles exists.", buf, 2u);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = contactsCopy;
  v45 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v45)
  {
    v41 = *v56;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v56 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v55 + 1) + 8 * i);
        identifier = [v50 identifier];
        v15 = [tu_matchingINPersonHandlesByContactIdentifier objectForKeyedSubscript:identifier];

        if (v15)
        {
          v46 = v15;
          v47 = i;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v52;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v52 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v51 + 1) + 8 * j);
                if (v21)
                {
                  label = [*(*(&v51 + 1) + 8 * j) label];

                  if (label)
                  {
                    label2 = [v21 label];
                    dataSource = [(StartCallIntentHandler *)self dataSource];
                    coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
                    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
                    v27 = [(StartCallIntentHandler *)self _inPersonsFromContact:v50 withRequestedType:type requestedLabel:label2 isoCountryCodes:allRelevantISOCountryCodes];

                    [v49 addObjectsFromArray:v27];
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v18);
          }

          v15 = v46;
          i = v47;
        }

        if (v42)
        {
          dataSource2 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource2 = [dataSource2 coreTelephonyDataSource];
          allRelevantISOCountryCodes2 = [coreTelephonyDataSource2 allRelevantISOCountryCodes];
          v31 = [(StartCallIntentHandler *)self _inPersonsFromContact:v50 withRequestedType:type requestedLabel:INPersonHandleLabelMobile isoCountryCodes:allRelevantISOCountryCodes2];

          [v49 addObjectsFromArray:v31];
        }

        if (v43)
        {
          dataSource3 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource3 = [dataSource3 coreTelephonyDataSource];
          allRelevantISOCountryCodes3 = [coreTelephonyDataSource3 allRelevantISOCountryCodes];
          v35 = [(StartCallIntentHandler *)self _inPersonsFromContact:v50 withRequestedType:type requestedLabel:INPersonHandleLabeliPhone isoCountryCodes:allRelevantISOCountryCodes3];

          [v49 addObjectsFromArray:v35];
        }
      }

      v45 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v45);
  }

  v36 = [v49 copy];
  v37 = [INPersonDeduplicator dedupeINPersons:v36];

  return v37;
}

- (id)resolutionResultForPersonWithResolvedHandleValue:(id)value
{
  valueCopy = value;
  personHandle = [valueCopy personHandle];
  value = [personHandle value];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  v8 = [dataSource isMMIOrUSSDNumber:value];

  if (v8)
  {
    v10 = IntentHandlerDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = value;
      v24 = 2112;
      v25 = valueCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handle %@ is MMI or USSD which is unsupported. Returning error for person: %@", &v22, 0x16u);
    }

    v11 = [INStartCallContactResolutionResult unsupportedForReason:5];
LABEL_9:
    v16 = v11;
    goto LABEL_13;
  }

  v12 = [(StartCallIntentHandler *)self shouldRequireInvalidNumberConfirmationForRecipient:valueCopy];
  v13 = v12;
  v14 = IntentHandlerDefaultLog(v12);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The user requested a potentially invalid phone number or email, returning confirmationRequired.", &v22, 2u);
    }

    v11 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:valueCopy forReason:1];
    goto LABEL_9;
  }

  if (v15)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "There is a handle on the single contact. Format the person handle and return success with that person.", &v22, 2u);
  }

  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v20 = [valueCopy tu_personWithFormattedHandleForISOCountryCodes:allRelevantISOCountryCodes];

  v16 = [INStartCallContactResolutionResult successWithResolvedPerson:v20];

LABEL_13:

  return v16;
}

- (id)resolutionResultForPersonWithResolvedContactName:(id)name resolvedPerson:(id)person resolvedContact:(id)contact contactIdentifiersRequiringConfirmation:(id)confirmation
{
  personCopy = person;
  contactCopy = contact;
  confirmationCopy = confirmation;
  v13 = [(StartCallIntentHandler *)self shouldRequireUnknownRecipientConfirmationForRequestedRecipient:name resolvedToRecipient:personCopy contact:contactCopy];
  if (v13)
  {
    v14 = IntentHandlerDefaultLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = personCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning confirmationRequired with person: %@", &v25, 0xCu);
    }

    v15 = personCopy;
    v16 = 4;
LABEL_9:
    v22 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v15 forReason:v16];
    goto LABEL_13;
  }

  identifier = [contactCopy identifier];
  v18 = [confirmationCopy containsObject:identifier];

  v20 = IntentHandlerDefaultLog(v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v21)
    {
      v25 = 138412290;
      v26 = personCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Returning confirmationRequired with person (as upstream contact resolver recommended): %@", &v25, 0xCu);
    }

    v15 = personCopy;
    v16 = 3;
    goto LABEL_9;
  }

  if (v21)
  {
    v25 = 138412290;
    v26 = personCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Returning success with person: %@", &v25, 0xCu);
  }

  v22 = [INStartCallContactResolutionResult successWithResolvedPerson:personCopy];
LABEL_13:
  v23 = v22;

  return v23;
}

- (id)resolvePreferredHandleFromHandles:(id)handles contactIdentifiersRequiringConfirmation:(id)confirmation telephonyOnly:(BOOL)only
{
  onlyCopy = only;
  handlesCopy = handles;
  confirmationCopy = confirmation;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  useLegacyHandleResolution = [dataSource useLegacyHandleResolution];

  v13 = IntentHandlerDefaultLog(v12);
  v14 = v13;
  if (useLegacyHandleResolution)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using legacy handle resolution.", buf, 2u);
    }

    v15 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:handlesCopy];
    goto LABEL_64;
  }

  v16 = os_signpost_id_generate(v13);

  v18 = IntentHandlerDefaultLog(v17);
  v19 = v18;
  v68 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "scoreBasedHandleResolution", "", buf, 2u);
  }

  spid = v16;

  v21 = IntentHandlerDefaultLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Beginning score based handle resolution.", buf, 2u);
  }

  v69 = confirmationCopy;

  v22 = objc_alloc_init(NSMutableOrderedSet);
  v23 = objc_alloc_init(NSMutableDictionary);
  v70 = handlesCopy;
  [StartCallIntentHandlerUtilities populatePersonsByTUHandleFrom:handlesCopy personsByTUHandle:v23 tuHandleOrderedSet:v22];
  v67 = v22;
  array = [v22 array];
  v25 = [[ScoreBasedResolver alloc] initWithEntities:array];
  [(ScoreBasedResolver *)v25 setConfirmationEnabled:0];
  [(ScoreBasedResolver *)v25 setConfirmationMargin:2];
  [(ScoreBasedResolver *)v25 setSuccessfulResolutionMargin:4];
  [(StartCallIntentHandler *)self updateScoreBasedHandleResolver:v25 forRecentCallsMatchingHandles:array telephonyOnly:onlyCopy];
  v66 = array;
  [(StartCallIntentHandler *)self updateScoreBasedHandleResolver:v25 forFavoritesAmongHandles:array];
  v65 = v25;
  result = [(ScoreBasedResolver *)v25 result];
  v27 = IntentHandlerDefaultLog(result);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Completed score based handle resolution.", buf, 2u);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v71 = result;
  resolutionSummary = [result resolutionSummary];
  v29 = [resolutionSummary countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v77;
    do
    {
      v32 = 0;
      do
      {
        if (*v77 != v31)
        {
          objc_enumerationMutation(resolutionSummary);
        }

        v33 = *(*(&v76 + 1) + 8 * v32);
        v34 = IntentHandlerDefaultLog(v29);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v29 = [resolutionSummary countByEnumeratingWithState:&v76 objects:v83 count:{16, spid}];
      v30 = v29;
    }

    while (v29);
  }

  v35 = v71;
  resolutionResultType = [v71 resolutionResultType];
  v15 = 0;
  if (resolutionResultType > 1)
  {
    confirmationCopy = v69;
    if (resolutionResultType == 2)
    {
      resolvedEntities = [v71 resolvedEntities];
      firstObject = [resolvedEntities firstObject];

      v56 = [v23 objectForKeyedSubscript:firstObject];
      if (!v56)
      {
        v57 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Persons matching handle to confirm should not be nil." userInfo:0];
        [v57 raise];
      }

      v58 = [v56 count];
      if (v58 >= 2)
      {
        v59 = IntentHandlerDefaultLog(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v56;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[WARN] More than one INPerson matches the same handle (e.g. multiple labels with the same number). As either handle will produce the same result, confirming just the first one. %@", buf, 0xCu);
        }
      }

      firstObject2 = [v56 firstObject];
      v15 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:firstObject2 forReason:2];

      goto LABEL_59;
    }

    if (resolutionResultType != 3)
    {
      goto LABEL_60;
    }

    firstObject = objc_alloc_init(NSMutableArray);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    resolvedEntities2 = [v71 resolvedEntities];
    v46 = [resolvedEntities2 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v73;
      do
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v73 != v48)
          {
            objc_enumerationMutation(resolvedEntities2);
          }

          v50 = [v23 objectForKeyedSubscript:{*(*(&v72 + 1) + 8 * i), spid}];
          if (!v50)
          {
            v51 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Persons matching handle to disambiguate should not be nil." userInfo:0];
            [v51 raise];
          }

          v52 = [v50 count];
          if (v52 >= 2)
          {
            v53 = IntentHandlerDefaultLog(v52);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v82 = v50;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[WARN] More than one INPerson matches the same handle (e.g. multiple labels with the same number). Including those multiples in the disambiguation list. %@", buf, 0xCu);
            }
          }

          [firstObject addObjectsFromArray:v50];
        }

        v47 = [resolvedEntities2 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v47);
    }

    v54 = [firstObject copy];
    v15 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v54];

    confirmationCopy = v69;
    handlesCopy = v70;
    goto LABEL_58;
  }

  confirmationCopy = v69;
  if (resolutionResultType)
  {
    if (resolutionResultType != 1)
    {
      goto LABEL_60;
    }

    resolvedEntities3 = [v71 resolvedEntities];
    firstObject = [resolvedEntities3 firstObject];

    v39 = [v23 objectForKeyedSubscript:firstObject];
    if (!v39)
    {
      v40 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Persons matching resolved handle should not be nil." userInfo:0];
      [v40 raise];
    }

    v41 = [v39 count];
    if (v41 >= 2)
    {
      v42 = IntentHandlerDefaultLog(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v82 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[WARN] More than one INPerson matches the same handle (e.g. multiple labels with the same number). As either handle will produce the same result, resolving to the first one. %@", buf, 0xCu);
      }
    }

    firstObject3 = [v39 firstObject];
    contactIdentifier = [firstObject3 contactIdentifier];
    if ([v69 containsObject:contactIdentifier])
    {
      [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:firstObject3 forReason:2];
    }

    else
    {
      [INStartCallContactResolutionResult successWithResolvedPerson:firstObject3];
    }
    v15 = ;

LABEL_58:
    v35 = v71;
    goto LABEL_59;
  }

  firstObject = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Unexpected score based handle resolution result type." userInfo:0];
  [firstObject raise];
  v15 = 0;
LABEL_59:

LABEL_60:
  v61 = IntentHandlerDefaultLog(resolutionResultType);
  v62 = v61;
  if (v68 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_END, spid, "scoreBasedHandleResolution", "", buf, 2u);
  }

LABEL_64:

  return v15;
}

- (id)allCountryCodesRelevantToCall:(id)call
{
  callCopy = call;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  isoCountryCode = [callCopy isoCountryCode];

  if ([isoCountryCode length])
  {
    [v5 addObject:isoCountryCode];
  }

  dataSource = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  [v5 addObjectsFromArray:allRelevantISOCountryCodes];

  array = [v5 array];

  return array;
}

- (void)updateScoreBasedHandleResolver:(id)resolver forRecentCallsMatchingHandles:(id)handles telephonyOnly:(BOOL)only
{
  onlyCopy = only;
  resolverCopy = resolver;
  handlesCopy = handles;
  v8 = IntentHandlerDefaultLog(handlesCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = IntentHandlerDefaultLog(v10);
  v12 = v11;
  v13 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "recentCallsMatchingHandles", "", buf, 2u);
  }

  v15 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning call recency for handles check.", buf, 2u);
  }

  v16 = [(StartCallIntentHandler *)self recentCallsWithHandles:handlesCopy telephonyOnly:onlyCopy];
  v17 = [v16 count];
  if (v17)
  {
    v41 = v9 - 1;
    v42 = v9;
    v43 = resolverCopy;
    v56 = objc_alloc_init(NSMutableOrderedSet);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v40 = v16;
    obj = v16;
    v47 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v47)
    {
      v45 = *v71;
      do
      {
        v18 = 0;
        do
        {
          if (*v71 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v18;
          v19 = *(*(&v70 + 1) + 8 * v18);
          v57 = [(StartCallIntentHandler *)self allCountryCodesRelevantToCall:v19, v40];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v54 = v19;
          remoteParticipantHandles = [v19 remoteParticipantHandles];
          v52 = [remoteParticipantHandles countByEnumeratingWithState:&v66 objects:v82 count:16];
          if (v52)
          {
            v51 = *v67;
            do
            {
              v20 = 0;
              do
              {
                if (*v67 != v51)
                {
                  objc_enumerationMutation(remoteParticipantHandles);
                }

                v53 = v20;
                tu_tuHandle = [*(*(&v66 + 1) + 8 * v20) tu_tuHandle];
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v55 = handlesCopy;
                v22 = [v55 countByEnumeratingWithState:&v62 objects:v81 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v63;
                  do
                  {
                    for (i = 0; i != v23; i = i + 1)
                    {
                      if (*v63 != v24)
                      {
                        objc_enumerationMutation(v55);
                      }

                      v26 = *(*(&v62 + 1) + 8 * i);
                      v58 = 0u;
                      v59 = 0u;
                      v60 = 0u;
                      v61 = 0u;
                      v27 = v57;
                      v28 = [v27 countByEnumeratingWithState:&v58 objects:v80 count:16];
                      if (v28)
                      {
                        v29 = v28;
                        v30 = *v59;
                        while (2)
                        {
                          for (j = 0; j != v29; j = j + 1)
                          {
                            if (*v59 != v30)
                            {
                              objc_enumerationMutation(v27);
                            }

                            v32 = *(*(&v58 + 1) + 8 * j);
                            v33 = [v26 isCanonicallyEqualToHandle:tu_tuHandle isoCountryCode:v32];
                            if (v33)
                            {
                              v34 = IntentHandlerDefaultLog(v33);
                              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412802;
                                v75 = v26;
                                v76 = 2112;
                                v77 = v54;
                                v78 = 2112;
                                v79 = v32;
                                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Handle %@ was a partipant in recent call %@ with country code %@.", buf, 0x20u);
                              }

                              [v56 addObject:v26];
                              goto LABEL_34;
                            }
                          }

                          v29 = [v27 countByEnumeratingWithState:&v58 objects:v80 count:16];
                          if (v29)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_34:
                    }

                    v23 = [v55 countByEnumeratingWithState:&v62 objects:v81 count:16];
                  }

                  while (v23);
                }

                v20 = v53 + 1;
              }

              while ((v53 + 1) != v52);
              v52 = [remoteParticipantHandles countByEnumeratingWithState:&v66 objects:v82 count:16];
            }

            while (v52);
          }

          v18 = v48 + 1;
        }

        while ((v48 + 1) != v47);
        v47 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v47);
    }

    array = [v56 array];
    resolverCopy = v43;
    [v43 addScore:6 forEntities:array reason:@"Call Recency"];

    v13 = v41;
    v9 = v42;
    v16 = v40;
  }

  v36 = IntentHandlerDefaultLog(v17);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Completed call recency for handles check.", buf, 2u);
  }

  v38 = IntentHandlerDefaultLog(v37);
  v39 = v38;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v9, "recentCallsMatchingHandles", "", buf, 2u);
  }
}

- (void)updateScoreBasedHandleResolver:(id)resolver forFavoritesAmongHandles:(id)handles
{
  resolverCopy = resolver;
  handlesCopy = handles;
  v7 = IntentHandlerDefaultLog(handlesCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = IntentHandlerDefaultLog(v9);
  v11 = v10;
  spid = v8;
  v32 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "favoritesAmongHandles", "", buf, 2u);
  }

  v13 = IntentHandlerDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning favorites for handles check.", buf, 2u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = handlesCopy;
  v14 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v35 = *v37;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        dataSource = [(StartCallIntentHandler *)self dataSource];
        favoritesDataSource = [dataSource favoritesDataSource];
        dataSource2 = [(StartCallIntentHandler *)self dataSource];
        coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
        allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
        v23 = [favoritesDataSource hasFavoritesEntryForTelephonyCallWithPhoneNumber:v17 isoCountryCodes:allRelevantISOCountryCodes];

        if (v23)
        {
          [resolverCopy addScore:4 forEntity:v17 reason:@"Favorites entry for telephony call with this handle"];
        }

        else
        {
          v25 = IntentHandlerDefaultLog(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v17;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No favorites entry for handle %@. No score adjustment.", buf, 0xCu);
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v15);
  }

  v27 = IntentHandlerDefaultLog(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Completed favorites for handles check.", buf, 2u);
  }

  v29 = IntentHandlerDefaultLog(v28);
  v30 = v29;
  if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, spid, "favoritesAmongHandles", "", buf, 2u);
  }
}

- (id)resolvePreferredContactFromContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = IntentHandlerDefaultLog(contactsCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = IntentHandlerDefaultLog(v7);
  v9 = v8;
  v41 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "scoreBasedContactResolution", "", buf, 2u);
  }

  spid = v6;

  v11 = IntentHandlerDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning score based contact resolution.", buf, 2u);
  }

  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableDictionary);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = contactsCopy;
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        identifier = [v19 identifier];
        [v12 addObject:identifier];
        [v13 setObject:v19 forKey:identifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v16);
  }

  v21 = [ScoreBasedResolver alloc];
  v22 = [v12 copy];
  v23 = [(ScoreBasedResolver *)v21 initWithEntities:v22];

  [(ScoreBasedResolver *)v23 setConfirmationEnabled:0];
  [(ScoreBasedResolver *)v23 setConfirmationMargin:2];
  [(ScoreBasedResolver *)v23 setSuccessfulResolutionMargin:4];
  [(StartCallIntentHandler *)self updateScoreBasedContactResolver:v23 forRecentCallsMatchingContacts:v14];
  v40 = v14;
  [(StartCallIntentHandler *)self updateScoreBasedContactResolver:v23 forFavoritesAmongContacts:v14];
  v39 = v23;
  result = [(ScoreBasedResolver *)v23 result];
  v25 = IntentHandlerDefaultLog(result);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Completed score based contact resolution.", buf, 2u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = result;
  resolutionSummary = [result resolutionSummary];
  v27 = [resolutionSummary countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      v30 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(resolutionSummary);
        }

        v31 = *(*(&v42 + 1) + 8 * v30);
        v32 = IntentHandlerDefaultLog(v27);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v27 = [resolutionSummary countByEnumeratingWithState:&v42 objects:v52 count:16];
      v28 = v27;
    }

    while (v27);
  }

  v34 = IntentHandlerDefaultLog(v33);
  v35 = v34;
  if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, spid, "scoreBasedContactResolution", "", buf, 2u);
  }

  return v38;
}

- (void)updateScoreBasedContactResolver:(id)resolver forRecentCallsMatchingContacts:(id)contacts
{
  resolverCopy = resolver;
  contactsCopy = contacts;
  v6 = IntentHandlerDefaultLog(contactsCopy);
  v7 = os_signpost_id_generate(v6);

  v9 = IntentHandlerDefaultLog(v8);
  v10 = v9;
  spid = v7;
  v52 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "contactCallRecency", "", buf, 2u);
  }

  v12 = IntentHandlerDefaultLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Beginning call recency for contacts check.", buf, 2u);
  }

  v62 = objc_alloc_init(NSMutableOrderedSet);
  v67 = objc_alloc_init(NSMutableDictionary);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = contactsCopy;
  v74 = [obj countByEnumeratingWithState:&v99 objects:v115 count:16];
  if (v74)
  {
    v72 = *v100;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v100 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v99 + 1) + 8 * i);
        allTUHandles = [v14 allTUHandles];
        if ([allTUHandles count])
        {
          [v62 addObjectsFromArray:allTUHandles];
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v16 = allTUHandles;
          v17 = [v16 countByEnumeratingWithState:&v95 objects:v114 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v96;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v96 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v95 + 1) + 8 * j);
                v22 = [v67 objectForKeyedSubscript:v21];
                if (!v22)
                {
                  v22 = objc_alloc_init(NSMutableArray);
                  [v67 setObject:v22 forKeyedSubscript:v21];
                }

                [v22 addObject:v14];
              }

              v18 = [v16 countByEnumeratingWithState:&v95 objects:v114 count:16];
            }

            while (v18);
          }
        }
      }

      v74 = [obj countByEnumeratingWithState:&v99 objects:v115 count:16];
    }

    while (v74);
  }

  array = [v62 array];
  v24 = [(StartCallIntentHandler *)self recentCallsWithHandles:array telephonyOnly:0];

  v25 = [v24 count];
  if (v25)
  {
    v26 = objc_alloc_init(NSMutableOrderedSet);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v54 = v24;
    v58 = [v54 countByEnumeratingWithState:&v91 objects:v113 count:16];
    if (v58)
    {
      v56 = *v92;
      do
      {
        v27 = 0;
        do
        {
          if (*v92 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v59 = v27;
          v28 = *(*(&v91 + 1) + 8 * v27);
          v68 = [(StartCallIntentHandler *)self allCountryCodesRelevantToCall:v28];
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          remoteParticipantHandles = [v28 remoteParticipantHandles];
          v63 = [remoteParticipantHandles countByEnumeratingWithState:&v87 objects:v112 count:16];
          if (v63)
          {
            v61 = *v88;
            do
            {
              v29 = 0;
              do
              {
                if (*v88 != v61)
                {
                  objc_enumerationMutation(remoteParticipantHandles);
                }

                v64 = v29;
                tu_tuHandle = [*(*(&v87 + 1) + 8 * v29) tu_tuHandle];
                v83 = 0u;
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v65 = v62;
                v70 = [v65 countByEnumeratingWithState:&v83 objects:v111 count:16];
                if (v70)
                {
                  v69 = *v84;
                  v66 = tu_tuHandle;
                  do
                  {
                    for (k = 0; k != v70; k = k + 1)
                    {
                      if (*v84 != v69)
                      {
                        objc_enumerationMutation(v65);
                      }

                      v32 = *(*(&v83 + 1) + 8 * k);
                      v79 = 0u;
                      v80 = 0u;
                      v81 = 0u;
                      v82 = 0u;
                      v73 = v68;
                      v33 = [v73 countByEnumeratingWithState:&v79 objects:v110 count:16];
                      if (v33)
                      {
                        v34 = v33;
                        v35 = *v80;
                        while (2)
                        {
                          for (m = 0; m != v34; m = m + 1)
                          {
                            if (*v80 != v35)
                            {
                              objc_enumerationMutation(v73);
                            }

                            v37 = *(*(&v79 + 1) + 8 * m);
                            if ([v32 isCanonicallyEqualToHandle:tu_tuHandle isoCountryCode:v37])
                            {
                              v71 = k;
                              v38 = [v67 objectForKeyedSubscript:v32];
                              v75 = 0u;
                              v76 = 0u;
                              v77 = 0u;
                              v78 = 0u;
                              v39 = [v38 countByEnumeratingWithState:&v75 objects:v109 count:16];
                              if (v39)
                              {
                                v40 = v39;
                                v41 = *v76;
                                do
                                {
                                  v42 = 0;
                                  do
                                  {
                                    if (*v76 != v41)
                                    {
                                      objc_enumerationMutation(v38);
                                    }

                                    v43 = *(*(&v75 + 1) + 8 * v42);
                                    v44 = IntentHandlerDefaultLog(v39);
                                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *buf = 138412802;
                                      v104 = v43;
                                      v105 = 2112;
                                      v106 = v28;
                                      v107 = 2112;
                                      v108 = v37;
                                      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Contact %@ was a partipant in recent call %@ with isoCountryCode %@.", buf, 0x20u);
                                    }

                                    identifier = [v43 identifier];
                                    [v26 addObject:identifier];

                                    v42 = v42 + 1;
                                  }

                                  while (v40 != v42);
                                  v39 = [v38 countByEnumeratingWithState:&v75 objects:v109 count:16];
                                  v40 = v39;
                                }

                                while (v39);
                              }

                              tu_tuHandle = v66;
                              k = v71;
                              goto LABEL_59;
                            }
                          }

                          v34 = [v73 countByEnumeratingWithState:&v79 objects:v110 count:16];
                          if (v34)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_59:
                    }

                    v70 = [v65 countByEnumeratingWithState:&v83 objects:v111 count:16];
                  }

                  while (v70);
                }

                v29 = v64 + 1;
              }

              while ((v64 + 1) != v63);
              v63 = [remoteParticipantHandles countByEnumeratingWithState:&v87 objects:v112 count:16];
            }

            while (v63);
          }

          v27 = v59 + 1;
        }

        while ((v59 + 1) != v58);
        v58 = [v54 countByEnumeratingWithState:&v91 objects:v113 count:16];
      }

      while (v58);
    }

    array2 = [v26 array];
    [resolverCopy addScore:6 forEntities:array2 reason:@"Call Recency"];
  }

  v47 = IntentHandlerDefaultLog(v25);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Completed call recency for contacts check.", buf, 2u);
  }

  v49 = IntentHandlerDefaultLog(v48);
  v50 = v49;
  if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, spid, "contactCallRecency", "", buf, 2u);
  }
}

- (id)recentCallsWithHandles:(id)handles telephonyOnly:(BOOL)only
{
  onlyCopy = only;
  handlesCopy = handles;
  v7 = IntentHandlerDefaultLog(handlesCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = IntentHandlerDefaultLog(v9);
  v11 = v10;
  v74 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "recentCallsWithHandles", "", buf, 2u);
  }

  spid = v8;

  v12 = objc_alloc_init(NSMutableArray);
  dataSource = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v16 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:handlesCopy isoCountryCodes:allRelevantISOCountryCodes];

  [v12 addObject:v16];
  if (onlyCopy)
  {
    +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
  }

  else
  {
    +[CallHistoryDataSourcePredicate predicateForTelephonyOrFaceTimeCalls];
  }
  v17 = ;
  [v12 addObject:v17];

  v18 = +[CallHistoryDataSourcePredicate predicateForCallsWithDurationLongerThanImmediateHangUp];
  [v12 addObject:v18];

  v19 = [v12 copy];
  v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v19];

  v22 = IntentHandlerDefaultLog(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v76 = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Searching call history for one call matching predicate: %@", buf, 0xCu);
  }

  v24 = IntentHandlerDefaultLog(v23);
  v25 = os_signpost_id_generate(v24);

  v27 = IntentHandlerDefaultLog(v26);
  v28 = v27;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v25, "callHistoryDBFirstRecencyCheck", "", buf, 2u);
  }

  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  callHistoryDataSource = [dataSource2 callHistoryDataSource];
  v31 = [callHistoryDataSource callsWithPredicate:v20 limit:1 offset:0 batchSize:1];
  firstObject = [v31 firstObject];

  v34 = IntentHandlerDefaultLog(v33);
  v35 = v34;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v25, "callHistoryDBFirstRecencyCheck", "", buf, 2u);
  }

  v37 = IntentHandlerDefaultLog(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v76 = firstObject;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Completed initial call history search with result: %@", buf, 0xCu);
  }

  if (firstObject)
  {
    date = [firstObject date];
    if (date)
    {
      dataSource3 = [(StartCallIntentHandler *)self dataSource];
      v41 = [dataSource3 now];
      [date timeIntervalSinceDate:v41];
      v43 = v42;
    }

    else
    {
      v43 = 0.0;
    }

    if (v43 * 4.0 <= -3600.0)
    {
      v45 = v43 * 4.0;
    }

    else
    {
      v45 = -3600.0;
    }

    dataSource4 = [(StartCallIntentHandler *)self dataSource];
    v47 = [dataSource4 now];
    v48 = [v47 dateByAddingTimeInterval:v45];

    v50 = IntentHandlerDefaultLog(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v76 = v48;
      v77 = 2048;
      v78 = v43;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Calculated oldest relevant date of %@ based on most recent matching call %.0f seconds ago", buf, 0x16u);
    }

    v51 = [CallHistoryDataSourcePredicate predicateForCallsAfterDate:v48 beforeDate:0];
    [v12 addObject:v51];

    v52 = [v12 copy];
    v53 = [NSCompoundPredicate andPredicateWithSubpredicates:v52];

    v55 = IntentHandlerDefaultLog(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v76 = 25;
      v77 = 2112;
      v78 = *&v53;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Searching call history for up to %ld calls matching predicate: %@", buf, 0x16u);
    }

    v57 = IntentHandlerDefaultLog(v56);
    v58 = os_signpost_id_generate(v57);

    v60 = IntentHandlerDefaultLog(v59);
    v61 = v60;
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_INTERVAL_BEGIN, v58, "callHistoryDBSecondRecencyCheck", "", buf, 2u);
    }

    dataSource5 = [(StartCallIntentHandler *)self dataSource];
    callHistoryDataSource2 = [dataSource5 callHistoryDataSource];
    v44 = [callHistoryDataSource2 callsWithPredicate:v53 limit:25 offset:0 batchSize:25];

    v65 = IntentHandlerDefaultLog(v64);
    v66 = v65;
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_END, v58, "callHistoryDBSecondRecencyCheck", "", buf, 2u);
    }

    v68 = IntentHandlerDefaultLog(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = v44;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Completed second call history search with result: %@", buf, 0xCu);
    }
  }

  else
  {
    date = IntentHandlerDefaultLog(v38);
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_DEFAULT, "No matching call history for any of the requested handles. No score adjustment.", buf, 2u);
    }

    v44 = &__NSArray0__struct;
  }

  v70 = IntentHandlerDefaultLog(v69);
  v71 = v70;
  if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_INTERVAL_END, spid, "recentCallsWithHandles", "", buf, 2u);
  }

  return v44;
}

- (void)updateScoreBasedContactResolver:(id)resolver forFavoritesAmongContacts:(id)contacts
{
  resolverCopy = resolver;
  contactsCopy = contacts;
  v7 = IntentHandlerDefaultLog(contactsCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = IntentHandlerDefaultLog(v9);
  v11 = v10;
  spid = v8;
  v31 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "favoritesAmongContacts", "", buf, 2u);
  }

  v13 = IntentHandlerDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning favorites for contacts check.", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = contactsCopy;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        dataSource = [(StartCallIntentHandler *)self dataSource];
        favoritesDataSource = [dataSource favoritesDataSource];
        v22 = [favoritesDataSource hasFavoritesEntryForContact:v19];

        if (v22)
        {
          identifier = [v19 identifier];
          [resolverCopy addScore:4 forEntity:identifier reason:@"Favorites entry for this contact"];
        }

        else
        {
          identifier = IntentHandlerDefaultLog(v23);
          if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v19;
            _os_log_impl(&_mh_execute_header, identifier, OS_LOG_TYPE_DEFAULT, "No favorites entry for contact %@. No score adjustment.", buf, 0xCu);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v16);
  }

  v26 = IntentHandlerDefaultLog(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Completed favorites for contacts check.", buf, 2u);
  }

  v28 = IntentHandlerDefaultLog(v27);
  v29 = v28;
  if (v31 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, spid, "favoritesAmongContacts", "", buf, 2u);
  }
}

- (void)updateHandlerStateForContactResolutionResults:(id)results
{
  resultsCopy = results;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 resolutionResultCode] == 3)
        {
          itemToConfirm = [v9 itemToConfirm];
          v11 = itemToConfirm;
          if (itemToConfirm)
          {
            personHandle = [itemToConfirm personHandle];
            if (personHandle)
            {
              v13 = [TUHandle handleWithPerson:v11];
              if (v13)
              {
                handlesConfirmed = [(StartCallIntentHandler *)self handlesConfirmed];
                [handlesConfirmed addObject:v13];
              }
            }

            contactIdentifier = [v11 contactIdentifier];
            if ([contactIdentifier length])
            {
              contactIdentifiersConfirmed = [(StartCallIntentHandler *)self contactIdentifiersConfirmed];
              [contactIdentifiersConfirmed addObject:contactIdentifier];
            }
          }
        }
      }

      v6 = [resultsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)getAlternativesForContact:(id)contact forRequestedHandleType:(int64_t)type forCallProvider:(int64_t)provider
{
  contactCopy = contact;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v12 = [(StartCallIntentHandler *)self _inPersonsFromContact:contactCopy withRequestedType:type requestedLabel:0 isoCountryCodes:allRelevantISOCountryCodes];

  v14 = IntentHandlerDefaultLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = [v12 count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found %ld alternatives when dropping label constraint.", &v23, 0xCu);
  }

  if (![v12 count])
  {
    if (type == 2 && provider == 1)
    {
      v15 = IntentHandlerDefaultLog(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not dropping handle type constraint because the user requested a telephony call.", &v23, 2u);
      }
    }

    else
    {
      dataSource2 = [(StartCallIntentHandler *)self dataSource];
      coreTelephonyDataSource2 = [dataSource2 coreTelephonyDataSource];
      allRelevantISOCountryCodes2 = [coreTelephonyDataSource2 allRelevantISOCountryCodes];
      v19 = [(StartCallIntentHandler *)self _inPersonsFromContact:contactCopy withRequestedType:0 requestedLabel:0 isoCountryCodes:allRelevantISOCountryCodes2];

      v15 = IntentHandlerDefaultLog(v20);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 count];
        v23 = 134217984;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %ld alternatives when dropping handle and label constraint.", &v23, 0xCu);
      }

      v12 = v19;
    }
  }

  return v12;
}

- (BOOL)anyContactsHaveSameName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = nameCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [CNContactFormatter stringFromContact:*(*(&v14 + 1) + 8 * i) style:0, v14];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_10004D950;
        }

        v12 = v11;

        if ([v4 containsObject:v12])
        {

          LOBYTE(v6) = 1;
          goto LABEL_14;
        }

        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (BOOL)isEmergencyHandle:(id)handle
{
  handleCopy = handle;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  providerManager = [dataSource providerManager];

  selfCopy = self;
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  senderIdentityClient = [dataSource2 senderIdentityClient];

  telephonyProvider = [providerManager telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = prioritizedSenderIdentities;
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v11);
        }

        uUID = [*(*(&v57 + 1) + 8 * i) UUID];
        v17 = [senderIdentityClient isEmergencyNumberForDigits:handleCopy senderIdentityUUID:uUID];

        if (v17)
        {
          v43 = IntentHandlerDefaultLog(v18);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = handleCopy;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the prioritizedSenderIdentities list", buf, 0xCu);
          }

          v42 = 1;
          emergencyLabeledHandles = v11;
          goto LABEL_38;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v47 = providerManager;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  dataSource3 = [(StartCallIntentHandler *)selfCopy dataSource];
  providerManager2 = [dataSource3 providerManager];
  emergencyProvider = [providerManager2 emergencyProvider];
  emergencyLabeledHandles = [emergencyProvider emergencyLabeledHandles];

  v23 = [emergencyLabeledHandles countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v54;
    while (2)
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v54 != v25)
        {
          objc_enumerationMutation(emergencyLabeledHandles);
        }

        handle = [*(*(&v53 + 1) + 8 * j) handle];
        value = [handle value];
        v29 = [handleCopy isEqualToString:value];

        if (v29)
        {
          v44 = IntentHandlerDefaultLog(v30);
          providerManager = v47;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = handleCopy;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the emergencyLabeledHandles list", buf, 0xCu);
          }

          v42 = 1;
          goto LABEL_38;
        }
      }

      v24 = [emergencyLabeledHandles countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  dataSource4 = [(StartCallIntentHandler *)selfCopy dataSource];
  providerManager3 = [dataSource4 providerManager];
  emergencyProvider2 = [providerManager3 emergencyProvider];
  emergencyLabeledHandles = [emergencyProvider2 emergencyHandles];

  v34 = [emergencyLabeledHandles countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    while (2)
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(emergencyLabeledHandles);
        }

        value2 = [*(*(&v49 + 1) + 8 * k) value];
        v39 = [handleCopy isEqualToString:value2];

        if (v39)
        {
          v45 = IntentHandlerDefaultLog(v40);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = handleCopy;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the unlabeled emergencyHandles list", buf, 0xCu);
          }

          v42 = 1;
          goto LABEL_37;
        }
      }

      v35 = [emergencyLabeledHandles countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  emergencyLabeledHandles = IntentHandlerDefaultLog(v41);
  if (os_log_type_enabled(emergencyLabeledHandles, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = handleCopy;
    _os_log_impl(&_mh_execute_header, emergencyLabeledHandles, OS_LOG_TYPE_DEFAULT, "Handle is not an emergency number: %@", buf, 0xCu);
  }

  v42 = 0;
LABEL_37:
  providerManager = v47;
LABEL_38:

  return v42;
}

- (id)localizedEmergencyString:(id)string
{
  stringCopy = string;
  v5 = [INDeferredLocalizedString alloc];
  v6 = [NSBundle bundleWithPath:@"/Applications/InCallService.app"];
  v7 = [v5 initWithDeferredFormat:stringCopy fromTable:@"InCallService" bundle:v6 arguments:0];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  siriLanguageCode = [dataSource siriLanguageCode];
  v10 = [v7 localizeForLanguage:siriLanguageCode];

  return v10;
}

- (id)_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:(id)contact requestedHandleType:(int64_t)type preferredCallProvider:(int64_t)provider
{
  contactCopy = contact;
  v9 = contactCopy;
  if (type)
  {
    v10 = IntentHandlerDefaultLog(contactCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not applying an implicit handle type filter to an intent with an explicit handle type specified";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (provider)
  {
    v10 = IntentHandlerDefaultLog(contactCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not applying an implicit handle type filter to an intent with an explicit call provider specified";
      goto LABEL_26;
    }

LABEL_27:

    v28 = v9;
    goto LABEL_28;
  }

  dataSource = [(StartCallIntentHandler *)self dataSource];
  supportsTelephonyCalls = [dataSource supportsTelephonyCalls];

  if ((supportsTelephonyCalls & 1) == 0)
  {
    v10 = IntentHandlerDefaultLog(v14);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not applying an implicit handle type = phone number filter on a device that doesn't support telephone calls";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allValues = [v9 allValues];
  v16 = [allValues countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v16)
  {

    goto LABEL_24;
  }

  v17 = v16;
  v18 = 0;
  v19 = *v33;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v33 != v19)
      {
        objc_enumerationMutation(allValues);
      }

      v18 += [*(*(&v32 + 1) + 8 * i) count];
    }

    v17 = [allValues countByEnumeratingWithState:&v32 objects:v38 count:16];
  }

  while (v17);

  if (v18 <= 1)
  {
LABEL_24:
    v10 = IntentHandlerDefaultLog(v21);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not applying an implicit handle type filter because there is already only one matching handle";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v22 = IntentHandlerDefaultLog(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Multiple handles match call request. Attempting to filter to just phone numbers to resolve ambiguity.", buf, 2u);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001D1AC;
  v30[3] = &unk_10004D028;
  v23 = objc_alloc_init(NSMutableDictionary);
  v31 = v23;
  [v9 enumerateKeysAndObjectsUsingBlock:v30];
  v24 = [v23 count];
  v25 = IntentHandlerDefaultLog(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    v27 = v23;
    if (v26)
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Filtered the results to only phone numbers. Remaining matches: %@", buf, 0xCu);
      v27 = v23;
    }
  }

  else
  {
    v27 = v9;
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Filtering results to only phone numbers would have produced no results, not filtering.", buf, 2u);
      v27 = v9;
    }
  }

  v28 = v27;
LABEL_28:

  return v28;
}

- (id)_inPersonsFromContact:(id)contact withRequestedType:(int64_t)type requestedLabel:(id)label isoCountryCodes:(id)codes
{
  contactCopy = contact;
  labelCopy = label;
  codesCopy = codes;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = v10;
  if (type == 2)
  {
    v36 = v10;
    v35 = 0;
  }

  else
  {
    if (type == 1)
    {
LABEL_16:
      emailAddresses = [contactCopy emailAddresses];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = [emailAddresses countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v29 = *(*(&v39 + 1) + 8 * i);
            v30 = INPersonHandleLabelForCNLabeledValue();
            if (![labelCopy length] || !objc_msgSend(labelCopy, "caseInsensitiveCompare:", v30))
            {
              value = [v29 value];
              v32 = [StartCallIntentHandlerUtilities inPersonFromContact:contactCopy handleValue:value handleType:1 handleLabel:v30];
              [v11 addObject:v32];
            }
          }

          v26 = [emailAddresses countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v26);
      }

      goto LABEL_27;
    }

    if (type)
    {
      goto LABEL_27;
    }

    v36 = v10;
    v35 = 1;
  }

  [contactCopy phoneNumbers];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v46 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * j);
        if (INPersonHandleLabelEqualsCNLabeledValue())
        {
          v18 = INPersonHandleLabelForCNLabeledValue();
          value2 = [v17 value];
          stringValue = [value2 stringValue];
          firstObject = [codesCopy firstObject];
          v22 = TUFormattedPhoneNumber();

          v23 = [StartCallIntentHandlerUtilities inPersonFromContact:contactCopy handleValue:v22 handleType:2 handleLabel:v18];
          [v36 addObject:v23];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v14);
  }

  v11 = v36;
  if (v35)
  {
    goto LABEL_16;
  }

LABEL_27:
  v33 = [v11 copy];

  return v33;
}

- (BOOL)haveAlreadyConfirmedRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [TUHandle handleWithPerson:recipientCopy];
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    handlesConfirmed = [(StartCallIntentHandler *)self handlesConfirmed];
    v7 = [handlesConfirmed countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(handlesConfirmed);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = TUHandlesAreCanonicallyEqual();
        if (v12)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [handlesConfirmed countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      contactIdentifier3 = IntentHandlerDefaultLog(v12);
      if (!os_log_type_enabled(contactIdentifier3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v29 = v11;
      v20 = "Have previously confirmed recipient with handle %@";
      v21 = contactIdentifier3;
      goto LABEL_18;
    }

LABEL_10:
  }

  contactIdentifier = [recipientCopy contactIdentifier];
  v14 = [contactIdentifier length];

  if (v14)
  {
    contactIdentifiersConfirmed = [(StartCallIntentHandler *)self contactIdentifiersConfirmed];
    contactIdentifier2 = [recipientCopy contactIdentifier];
    v17 = [contactIdentifiersConfirmed containsObject:contactIdentifier2];

    if (v17)
    {
      handlesConfirmed = IntentHandlerDefaultLog(v18);
      if (!os_log_type_enabled(handlesConfirmed, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v22 = 1;
        goto LABEL_21;
      }

      contactIdentifier3 = [recipientCopy contactIdentifier];
      *buf = 138412290;
      v29 = contactIdentifier3;
      v20 = "Have previously confirmed recipient with contactIdentifier: %@";
      v21 = handlesConfirmed;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
LABEL_19:

      goto LABEL_20;
    }
  }

  v22 = 0;
LABEL_21:

  return v22;
}

- (BOOL)shouldRequireInvalidNumberConfirmationForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = IntentHandlerDefaultLog(recipientCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = IntentHandlerDefaultLog(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "shouldRequireInvalidNumberConfirmation", "", buf, 2u);
  }

  v11 = [TUHandle handleWithPerson:recipientCopy];
  v12 = [(StartCallIntentHandler *)self haveAlreadyConfirmedRecipient:recipientCopy];
  v13 = v12;
  if (v12)
  {
    v14 = IntentHandlerDefaultLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because recipient has already been confirmed.", buf, 2u);
    }
  }

  personHandle = [recipientCopy personHandle];
  emergencyType = [personHandle emergencyType];

  if (emergencyType == 2)
  {
    v18 = IntentHandlerDefaultLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because recipient has a nonlocal emergency handle type and has already been confirmed.", buf, 2u);
    }

    goto LABEL_38;
  }

  if ((v13 & 1) == 0)
  {
    dataSource = [(StartCallIntentHandler *)self dataSource];
    coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = allRelevantISOCountryCodes;
    v23 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v62;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(v18);
          }

          v27 = *(*(&v61 + 1) + 8 * i);
          v28 = [v11 isValidForISOCountryCode:v27];
          if (v28)
          {
            v53 = IntentHandlerDefaultLog(v28);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v68 = v27;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because handle is valid for country code %@", buf, 0xCu);
            }

            goto LABEL_38;
          }
        }

        v24 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v30 = IntentHandlerDefaultLog(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v68 = v11;
      v69 = 2112;
      v70 = v18;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Requested handle %@ is not valid for any of the following country codes: %@", buf, 0x16u);
    }

    v60 = v6;

    v32 = IntentHandlerDefaultLog(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Examining call history to determine if there is existing call history with the invalid number.", buf, 2u);
    }

    v65 = v11;
    v58 = [NSArray arrayWithObjects:&v65 count:1];
    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    coreTelephonyDataSource2 = [dataSource2 coreTelephonyDataSource];
    allRelevantISOCountryCodes2 = [coreTelephonyDataSource2 allRelevantISOCountryCodes];
    v35 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v58 isoCountryCodes:allRelevantISOCountryCodes2];
    v66[0] = v35;
    v36 = +[CallHistoryDataSourcePredicate predicateForCallsWithDurationLongerThanImmediateHangUp];
    v66[1] = v36;
    v37 = [NSArray arrayWithObjects:v66 count:2];
    v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v37];

    v39 = IntentHandlerDefaultLog(v38);
    v40 = os_signpost_id_generate(v39);

    v42 = IntentHandlerDefaultLog(v41);
    v43 = v42;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_BEGIN, v40, "callHistoryDBForInvalidNumber", "", buf, 2u);
    }

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    callHistoryDataSource = [dataSource3 callHistoryDataSource];
    v46 = [callHistoryDataSource callCountWithPredicate:v18];

    v48 = IntentHandlerDefaultLog(v47);
    v49 = v48;
    v6 = v60;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_END, v40, "callHistoryDBForInvalidNumber", "", buf, 2u);
    }

    v51 = IntentHandlerDefaultLog(v50);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v46 < 1)
    {
      if (v52)
      {
        *buf = 138412290;
        v68 = v11;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Did not find any matching calls with: %@", buf, 0xCu);
      }

      v18 = IntentHandlerDefaultLog(v57);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Returning YES for shouldRequireInvalidNumberConfirmationForRecipient.", buf, 2u);
      }

      v19 = 1;
      goto LABEL_39;
    }

    if (v52)
    {
      *buf = 134218242;
      v68 = v46;
      v69 = 2112;
      v70 = v11;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because there are %ld recents call with %@", buf, 0x16u);
    }

LABEL_38:
    v19 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v19 = 0;
LABEL_40:
  v54 = IntentHandlerDefaultLog(v17);
  v55 = v54;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, v6, "shouldRequireInvalidNumberConfirmation", "", buf, 2u);
  }

  return v19;
}

- (BOOL)shouldRequireUnknownRecipientConfirmationForRequestedRecipient:(id)recipient resolvedToRecipient:(id)toRecipient contact:(id)contact
{
  recipientCopy = recipient;
  toRecipientCopy = toRecipient;
  contactCopy = contact;
  v11 = IntentHandlerDefaultLog(contactCopy);
  v12 = os_signpost_id_generate(v11);

  v14 = IntentHandlerDefaultLog(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "shouldRequireUnknownRecipientConfirmation", "", buf, 2u);
  }

  _userInput = [recipientCopy _userInput];
  displayName = [recipientCopy displayName];
  v18 = [(StartCallIntentHandler *)self haveAlreadyConfirmedRecipient:recipientCopy];
  if (v18)
  {
    allTUHandles = IntentHandlerDefaultLog(v18);
    if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, allTUHandles, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because recipient has already been confirmed.", buf, 2u);
    }

    goto LABEL_15;
  }

  relationship = [recipientCopy relationship];
  v21 = [relationship length];

  if (v21)
  {
    allTUHandles = IntentHandlerDefaultLog(v22);
    if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
    {
      relationship2 = [recipientCopy relationship];
      *buf = 138412290;
      v96 = relationship2;
      v24 = "Not requiring unknown recipient confirmation because requested recipient was a relation: %@";
      v25 = allTUHandles;
      v26 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_14:
    }

LABEL_15:
    v32 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v94 = contactCopy;
  personHandle = [recipientCopy personHandle];
  value = [personHandle value];
  v29 = [value length];

  if (v29)
  {
    allTUHandles = IntentHandlerDefaultLog(v30);
    contactCopy = v94;
    if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
    {
      relationship2 = [recipientCopy personHandle];
      value2 = [relationship2 value];
      *buf = 138412290;
      v96 = value2;
      _os_log_impl(&_mh_execute_header, allTUHandles, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested recipient was a manually dictated handle: %@", buf, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([_userInput length])
  {
    displayName2 = [toRecipientCopy displayName];
    v41 = [_userInput isEqualToIgnoringCase:displayName2];

    if (v41)
    {
      allTUHandles = IntentHandlerDefaultLog(v42);
      contactCopy = v94;
      if (!os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      relationship2 = [toRecipientCopy displayName];
      *buf = 138412546;
      v96 = _userInput;
      v97 = 2112;
      v98 = relationship2;
      v24 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients full displayName: %@";
      v25 = allTUHandles;
      v26 = 22;
      goto LABEL_10;
    }
  }

  if ([displayName length])
  {
    displayName3 = [toRecipientCopy displayName];
    v44 = [displayName isEqualToIgnoringCase:displayName3];

    if (v44)
    {
      allTUHandles = IntentHandlerDefaultLog(v45);
      if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
      {
        displayName4 = [toRecipientCopy displayName];
        *buf = 138412546;
        v96 = displayName;
        v97 = 2112;
        v98 = displayName4;
        _os_log_impl(&_mh_execute_header, allTUHandles, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested displayName %@ matches resolved recipients displayName: %@", buf, 0x16u);
      }

      v32 = 0;
      contactCopy = v94;
      goto LABEL_16;
    }
  }

  nameComponents = [toRecipientCopy nameComponents];

  if (nameComponents)
  {
    nameComponents2 = [toRecipientCopy nameComponents];
    allTUHandles = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents2 style:3 options:0];

    if ([_userInput length])
    {
      v49 = [_userInput isEqualToIgnoringCase:allTUHandles];
      if (v49)
      {
        relationship2 = IntentHandlerDefaultLog(v49);
        if (os_log_type_enabled(relationship2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v96 = _userInput;
          v97 = 2112;
          v98 = allTUHandles;
          v50 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients long format name: %@";
LABEL_43:
          _os_log_impl(&_mh_execute_header, relationship2, OS_LOG_TYPE_DEFAULT, v50, buf, 0x16u);
          goto LABEL_44;
        }

        goto LABEL_44;
      }
    }

    if ([displayName length])
    {
      v51 = [displayName isEqualToIgnoringCase:allTUHandles];
      if (v51)
      {
        relationship2 = IntentHandlerDefaultLog(v51);
        if (os_log_type_enabled(relationship2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v96 = displayName;
          v97 = 2112;
          v98 = allTUHandles;
          v50 = "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved recipients long format name: %@";
          goto LABEL_43;
        }

LABEL_44:
        contactCopy = v94;
        goto LABEL_14;
      }
    }
  }

  nameComponents3 = [toRecipientCopy nameComponents];

  if (nameComponents3)
  {
    nameComponents4 = [toRecipientCopy nameComponents];
    v54 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents4 style:2 options:0];

    if ([_userInput length] && (v55 = objc_msgSend(_userInput, "isEqualToIgnoringCase:", v54), v55))
    {
      v56 = IntentHandlerDefaultLog(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v96 = _userInput;
        v97 = 2112;
        v98 = v54;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients medium format name: %@", buf, 0x16u);
      }

      contactCopy = v94;
    }

    else
    {
      if (![displayName length])
      {
        v32 = 1;
        contactCopy = v94;
        goto LABEL_60;
      }

      v57 = [displayName isEqualToIgnoringCase:v54];
      contactCopy = v94;
      if (!v57)
      {
        v32 = 1;
        goto LABEL_60;
      }

      v56 = IntentHandlerDefaultLog(v57);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v96 = displayName;
        v97 = 2112;
        v98 = v54;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved recipients medium format name: %@", buf, 0x16u);
      }
    }

    v32 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v32 = 1;
  contactCopy = v94;
LABEL_61:
  if (contactCopy && v32)
  {
    v58 = [CNContactFormatter stringFromContact:contactCopy style:0];
    if ([_userInput length] && (v59 = objc_msgSend(_userInput, "isEqualToIgnoringCase:", v58), v59))
    {
      v60 = IntentHandlerDefaultLog(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v96 = _userInput;
        v97 = 2112;
        v98 = v58;
        v61 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved contact formatted name: %@";
LABEL_71:
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 0x16u);
      }
    }

    else if ([displayName length] && (v62 = objc_msgSend(displayName, "isEqualToIgnoringCase:", v58), v62))
    {
      v60 = IntentHandlerDefaultLog(v62);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v96 = displayName;
        v97 = 2112;
        v98 = v58;
        v61 = "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved contact formatted name: %@";
        goto LABEL_71;
      }
    }

    else
    {
      v92 = v58;
      dataSource = [(StartCallIntentHandler *)self dataSource];
      favoritesDataSource = [dataSource favoritesDataSource];
      v65 = contactCopy;
      v66 = favoritesDataSource;
      v67 = [favoritesDataSource hasFavoritesEntryForContact:v65];

      if (!v67)
      {
        v32 = 1;
        v58 = v92;
        contactCopy = v94;
LABEL_79:

        goto LABEL_80;
      }

      v60 = IntentHandlerDefaultLog(v68);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        contactCopy = v94;
        v96 = v94;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because resolved contact is a favorite. Contact: %@", buf, 0xCu);
      }

      else
      {
        contactCopy = v94;
      }

      v58 = v92;
    }

    v32 = 0;
    goto LABEL_79;
  }

LABEL_80:
  if (contactCopy && v32)
  {
    allTUHandles = [contactCopy allTUHandles];
    if (![allTUHandles count])
    {
      v32 = 1;
      goto LABEL_16;
    }

    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
    v93 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:allTUHandles isoCountryCodes:allRelevantISOCountryCodes];

    v72 = IntentHandlerDefaultLog(v71);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v96 = v93;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Searching for recent calls using predicate: %@", buf, 0xCu);
    }

    v74 = IntentHandlerDefaultLog(v73);
    v75 = os_signpost_id_generate(v74);

    v77 = IntentHandlerDefaultLog(v76);
    v78 = v77;
    v91 = v75 - 1;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_BEGIN, v75, "callHistoryDBForUnknownRecipient", "", buf, 2u);
    }

    spid = v75;

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    callHistoryDataSource = [dataSource3 callHistoryDataSource];
    v81 = [callHistoryDataSource callCountWithPredicate:v93];

    v83 = IntentHandlerDefaultLog(v82);
    v84 = v83;
    if (v91 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v84, OS_SIGNPOST_INTERVAL_END, spid, "callHistoryDBForUnknownRecipient", "", buf, 2u);
    }

    v86 = IntentHandlerDefaultLog(v85);
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
    v32 = v81 < 1;
    if (v81 < 1)
    {
      contactCopy = v94;
      if (v87)
      {
        *buf = 138412290;
        v96 = allTUHandles;
        v88 = "Did not find a recent calls with any of the following handles: %@";
        goto LABEL_97;
      }
    }

    else
    {
      contactCopy = v94;
      if (v87)
      {
        *buf = 138412290;
        v96 = allTUHandles;
        v88 = "Not requiring unknown recipient confirmation because there is a recent call with one of the following handles: %@";
LABEL_97:
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, v88, buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v34 = IntentHandlerDefaultLog(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = @"false";
    if (v32)
    {
      v35 = @"true";
    }

    *buf = 138543362;
    v96 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Returning %{public}@ for shouldRequireUnknownRecipientConfirmationForRequestedRecipient.", buf, 0xCu);
  }

  v37 = IntentHandlerDefaultLog(v36);
  v38 = v37;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v12, "shouldRequireUnknownRecipientConfirmation", "", buf, 2u);
  }

  return v32;
}

- (id)resolveContactsFromCallGroups:(id)groups
{
  groupsCopy = groups;
  contacts = [groupsCopy contacts];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = IntentHandlerDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    callGroups = [groupsCopy callGroups];
    *buf = 138412290;
    v36 = callGroups;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "group facetime message callGroups for intent: %@", buf, 0xCu);
  }

  callGroups2 = [groupsCopy callGroups];
  firstObject = [callGroups2 firstObject];
  groupId = [firstObject groupId];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  v13 = [dataSource fetchSPIHandlesForGroupID:groupId];

  v14 = [v13 count];
  if (v14)
  {
    v28 = contacts;
    v29 = groupsCopy;
    v15 = IntentHandlerDefaultLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fetching handles from spiChat: %@", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [INPersonHandle alloc];
          address = [v21 address];
          v24 = [v22 initWithValue:address type:0 label:0 emergencyType:2];

          v25 = [[INPerson alloc] initWithPersonHandle:v24 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
          [v6 addObject:v25];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    contacts = [v6 copy];
    groupsCopy = v29;
  }

  v26 = IntentHandlerDefaultLog(v14);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = contacts;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "updated contacts: %@", buf, 0xCu);
  }

  return contacts;
}

@end