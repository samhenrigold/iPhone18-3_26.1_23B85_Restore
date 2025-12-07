@interface CSDCall
+ (id)cxScreenShareAttributesForCallAttributes:(id)attributes;
- (BOOL)hasStartedOutgoing;
- (BOOL)isConversation;
- (BOOL)isEmergency;
- (BOOL)isOutgoing;
- (BOOL)isSOS;
- (BOOL)isUplinkMuted;
- (BOOL)isVoicemail;
- (BOOL)launchInBackground;
- (BOOL)needsConversationOrVideoRelaySupport;
- (BOOL)needsConversationRelaySupport;
- (BOOL)setAudioSessionMuted:(BOOL)muted error:(id *)error;
- (BOOL)shouldHandleMuteRequests;
- (BOOL)shouldOwnMuteHandler;
- (CSDAudioSessionProtocol)audioSession;
- (CSDCall)initWithUniqueProxyIdentifier:(id)identifier configuration:(id)configuration;
- (CSDCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center;
- (CSDCallDataSource)dataSource;
- (CSDCallDelegate)delegate;
- (CSDConversationCallCoordinator)conversationCoordinator;
- (CXCall)cxCall;
- (NSDictionary)silencingUserInfo;
- (NSError)recordingAllowedError;
- (NSError)recordingDisabledError;
- (NSError)translationAllowedError;
- (NSError)translationDisabledError;
- (TUCallDisplayContext)displayContext;
- (id)getAudioSessionBlock;
- (id)handle;
- (int)callRelaySupport;
- (int)callStatus;
- (int)faceTimeIDStatus;
- (int)recordingAvailability;
- (int)translationAvailability;
- (void)_refreshFaceTimeIDSStatus;
- (void)_refreshFaceTimeIDSStatusIfNecessary;
- (void)dealloc;
- (void)dialWithRequest:(id)request displayContext:(id)context;
- (void)disconnectCallWithReason:(int)reason;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)handleUpdatedPropertiesAfterChangesInBlock:(id)block;
- (void)idStatusUpdatedForDestinations:(id)destinations service:(id)service;
- (void)propertiesChanged;
- (void)setAnsweringMachineStreamToken:(int64_t)token;
- (void)setCurrentRecordingSession:(id)session;
- (void)setDateConnected:(id)connected;
- (void)setDateEnded:(id)ended;
- (void)setDateSentInvitation:(id)invitation;
- (void)setDateStartedConnecting:(id)connecting;
- (void)setDateStartedOutgoing:(id)outgoing;
- (void)setDisconnectedReason:(int)reason;
- (void)setDisplayContext:(id)context;
- (void)setEndpointOnCurrentDevice:(BOOL)device;
- (void)setFaceTimeIDStatus:(int)status;
- (void)setHasAudioInterruption:(BOOL)interruption;
- (void)setIsKnownCaller:(BOOL)caller;
- (void)setLastReceptionistMessage:(id)message;
- (void)setModel:(id)model;
- (void)setReceptionistSession:(id)session;
- (void)setReceptionistState:(int)state;
- (void)setRelayClientTransport:(id)transport;
- (void)setRemoteActiveTranslating:(BOOL)translating;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setScreening:(BOOL)screening;
- (void)setScreeningAnnouncementHasFinished:(BOOL)finished;
- (void)setSharingScreen:(BOOL)screen;
- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes;
- (void)setShouldSuppressRingtone:(BOOL)ringtone;
- (void)setSmartHoldingSession:(id)session;
- (void)setSoundRegion:(int64_t)region;
- (void)setSupportsDTMFUpdates:(BOOL)updates;
- (void)setTimeoutTimer:(id)timer;
- (void)setTransitionStatus:(int)status;
- (void)setTranslationDisclosureLocation:(id)location;
- (void)setTranslationSession:(id)session;
- (void)setTransmissionState:(int64_t)state;
- (void)setUplinkMuted:(BOOL)muted userInitiated:(BOOL)initiated;
- (void)setWantsHoldMusic:(BOOL)music;
- (void)setWasDialAssisted:(BOOL)assisted;
- (void)unsuppressRingtoneIfNecessary;
- (void)updatePredictedNameFromReceptionist:(id)receptionist;
- (void)updateWithOverrideCallProperties:(id)properties;
- (void)updateWithProxyCall:(id)call;
@end

@implementation CSDCall

- (BOOL)hasStartedOutgoing
{
  temporaryDateStartedOutgoing = [(CSDCall *)self temporaryDateStartedOutgoing];
  if (temporaryDateStartedOutgoing)
  {
    v4 = 1;
  }

  else
  {
    dateStartedOutgoing = [(CSDCall *)self dateStartedOutgoing];
    v4 = dateStartedOutgoing != 0;
  }

  return v4;
}

- (BOOL)isVoicemail
{
  dialRequest = [(CSDCall *)self dialRequest];
  if (dialRequest)
  {
    dialRequest2 = [(CSDCall *)self dialRequest];
    isVoicemail = [dialRequest2 dialType] == 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    isVoicemail = [(CSDCall *)&v7 isVoicemail];
  }

  return isVoicemail;
}

- (CSDCallDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)propertiesChanged
{
  delegate = [(CSDCall *)self delegate];
  [delegate propertiesChangedForCall:self];
}

- (NSError)translationDisabledError
{
  isAppleIntelligenceEnabled = [(CSDCall *)self isAppleIntelligenceEnabled];
  v4 = isAppleIntelligenceEnabled[2]();

  if ((v4 & 1) == 0)
  {
    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 19;
LABEL_5:
    recordingSession = [v6 initWithDomain:v7 code:v8 userInfo:{0, *v43, *&v43[8]}];
    goto LABEL_6;
  }

  featureFlags = [(CSDCall *)self featureFlags];
  if ([featureFlags audioCallTranslationEnabled])
  {
  }

  else
  {
    featureFlags2 = [(CSDCall *)self featureFlags];
    videoCallTranslationEnabled = [featureFlags2 videoCallTranslationEnabled];

    if ((videoCallTranslationEnabled & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUTranslationErrorDomain;
      v8 = 2;
      goto LABEL_5;
    }
  }

  provider = [(CSDCall *)self provider];
  if ([provider isFaceTimeProvider])
  {
    isOneToOneModeEnabled = [(CSDCall *)self isOneToOneModeEnabled];

    if ((isOneToOneModeEnabled & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUTranslationErrorDomain;
      v8 = 7;
      goto LABEL_5;
    }
  }

  else
  {
  }

  featureFlags3 = [(CSDCall *)self featureFlags];
  if ([featureFlags3 thirdPartyTranslationEnabled])
  {
    goto LABEL_17;
  }

  provider2 = [(CSDCall *)self provider];
  if ([provider2 isFaceTimeProvider])
  {

LABEL_17:
    goto LABEL_18;
  }

  provider3 = [(CSDCall *)self provider];
  isTelephonyProvider = [provider3 isTelephonyProvider];

  if ((isTelephonyProvider & 1) == 0)
  {
    v30 = sub_100004778(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      provider4 = [(CSDCall *)self provider];
      *v43 = 138412290;
      *&v43[4] = provider4;
      v32 = "provider %@ doesn't support translation";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v32, v43, 0xCu);
    }

LABEL_49:

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 13;
    goto LABEL_5;
  }

LABEL_18:
  featureFlags4 = [(CSDCall *)self featureFlags];
  if (![featureFlags4 thirdPartyTranslationEnabled])
  {
LABEL_23:

    goto LABEL_24;
  }

  provider5 = [(CSDCall *)self provider];
  if ([provider5 isTelephonyProvider])
  {
LABEL_22:

    goto LABEL_23;
  }

  provider6 = [(CSDCall *)self provider];
  if ([provider6 isFaceTimeProvider])
  {

    goto LABEL_22;
  }

  provider7 = [(CSDCall *)self provider];
  supportsAudioTranslation = [provider7 supportsAudioTranslation];

  if ((supportsAudioTranslation & 1) == 0)
  {
    v30 = sub_100004778(v38);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      provider4 = [(CSDCall *)self provider];
      *v43 = 138412290;
      *&v43[4] = provider4;
      v32 = "3P provider %@ doesn't support translation";
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_24:
  featureFlags5 = [(CSDCall *)self featureFlags];
  if (![featureFlags5 thirdPartyTranslationEnabled])
  {
LABEL_29:

    goto LABEL_30;
  }

  provider8 = [(CSDCall *)self provider];
  if ([provider8 isTelephonyProvider])
  {
LABEL_28:

    goto LABEL_29;
  }

  provider9 = [(CSDCall *)self provider];
  if ([provider9 isFaceTimeProvider])
  {

    goto LABEL_28;
  }

  isVideo = [(CSDCall *)self isVideo];

  if (isVideo)
  {
    v41 = sub_100004778(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      provider10 = [(CSDCall *)self provider];
      *v43 = 138412290;
      *&v43[4] = provider10;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "3P call %@ doesn't support video call translation", v43, 0xCu);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 9;
    goto LABEL_5;
  }

LABEL_30:
  isScreening = [(CSDCall *)self isScreening];
  if (isScreening)
  {
    v24 = sub_100004778(isScreening);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "translation doesn't support when is screening", v43, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 16;
    goto LABEL_5;
  }

  isEmergency = [(CSDCall *)self isEmergency];
  if (isEmergency)
  {
    v26 = sub_100004778(isEmergency);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Translation is not allowed for emergency calls", v43, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 18;
    goto LABEL_5;
  }

  recordingSession = [(CSDCall *)self recordingSession];
  if (recordingSession)
  {
    v33 = recordingSession;
    recordingSession2 = [(CSDCall *)self recordingSession];
    recordingState = [recordingSession2 recordingState];

    if (recordingState != 5)
    {
      v6 = [NSError alloc];
      v7 = TUTranslationErrorDomain;
      v8 = 17;
      goto LABEL_5;
    }

    recordingSession = 0;
  }

LABEL_6:

  return recordingSession;
}

- (BOOL)isSOS
{
  dialRequest = [(CSDCall *)self dialRequest];
  if (dialRequest)
  {
    dialRequest2 = [(CSDCall *)self dialRequest];
    isSOS = [dialRequest2 isSOS];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    isSOS = [(CSDCall *)&v7 isSOS];
  }

  return isSOS;
}

- (BOOL)isUplinkMuted
{
  featureFlags = [(CSDCall *)self featureFlags];
  sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

  if (sessionBasedMutingEnabled)
  {
    return self->_uplinkMuted;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    return [(CSDCall *)&v7 isUplinkMuted];
  }
}

- (int)callStatus
{
  if ([(CSDCall *)self shouldOverrideCallStatus])
  {

    return [(CSDCall *)self callStatusFromOverride];
  }

  else
  {

    return [(CSDCall *)self callStatusFromUnderlyingSource];
  }
}

- (int)translationAvailability
{
  translationAllowedError = [(CSDCall *)self translationAllowedError];
  translationDisabledError = [(CSDCall *)self translationDisabledError];
  v5 = translationDisabledError;
  if (translationDisabledError)
  {
    v6 = sub_100004778(translationDisabledError);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "translationAvailability disabled: %@", &v9, 0xCu);
    }

    v7 = 1;
  }

  else if (translationAllowedError)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (NSError)translationAllowedError
{
  translationDisabledError = [(CSDCall *)self translationDisabledError];
  v4 = translationDisabledError;
  if (translationDisabledError)
  {
    v5 = translationDisabledError;
LABEL_17:
    v13 = v5;
    goto LABEL_18;
  }

  if ([(CSDCall *)self status]!= 1)
  {
    v14 = [NSError alloc];
    v15 = TUTranslationErrorDomain;
    v16 = 5;
    goto LABEL_16;
  }

  if (([(CSDCall *)self isEndpointOnCurrentDevice]& 1) == 0)
  {
    v14 = [NSError alloc];
    v15 = TUTranslationErrorDomain;
    v16 = 15;
    goto LABEL_16;
  }

  if (![(CSDCall *)self isConferenced])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_18;
  }

  featureFlags = [(CSDCall *)self featureFlags];
  if (![featureFlags thirdPartyTranslationEnabled])
  {
    goto LABEL_9;
  }

  provider = [(CSDCall *)self provider];
  if (![provider isTelephonyProvider])
  {
    provider2 = [(CSDCall *)self provider];
    isFaceTimeProvider = [provider2 isFaceTimeProvider];

    if (isFaceTimeProvider)
    {
      goto LABEL_10;
    }

    v23 = sub_100004778(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "3P Translation is not allowed for conference calls", buf, 2u);
    }

    v14 = [NSError alloc];
    v15 = TUTranslationErrorDomain;
    v16 = 6;
LABEL_16:
    v5 = [v14 initWithDomain:v15 code:v16 userInfo:0];
    goto LABEL_17;
  }

LABEL_9:
LABEL_10:
  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 activeConversationForCall:self];

  if (!v9 || ([v9 provider], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isTelephonyWithSharePlayProvider"), v10, (v11 & 1) != 0))
  {

    goto LABEL_13;
  }

  v18 = sub_100004778(v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Translation is not allowed for conference calls", v24, 2u);
  }

  v19 = [NSError alloc];
  v13 = [v19 initWithDomain:TUTranslationErrorDomain code:6 userInfo:0];

LABEL_18:

  return v13;
}

- (CXCall)cxCall
{
  v3 = [CXCall alloc];
  uniqueProxyIdentifierUUID = [(CSDCall *)self uniqueProxyIdentifierUUID];
  v5 = [v3 initWithUUID:uniqueProxyIdentifierUUID];

  [v5 setOutgoing:{-[CSDCall isOutgoing](self, "isOutgoing")}];
  [v5 setOnHold:{-[CSDCall isOnHold](self, "isOnHold")}];
  [v5 setHasConnected:{-[CSDCall isConnected](self, "isConnected")}];
  [v5 setHasEnded:{-[CSDCall status](self, "status") == 6}];
  provider = [(CSDCall *)self provider];
  identifier = [provider identifier];
  [v5 setProviderIdentifier:identifier];

  [v5 setEndpointOnCurrentDevice:{-[CSDCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice")}];
  [v5 setHostedOnCurrentDevice:{-[CSDCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")}];
  if (([(CSDCall *)self isVideo]& 1) != 0)
  {
    isThirdPartyVideo = 1;
  }

  else
  {
    isThirdPartyVideo = [(CSDCall *)self isThirdPartyVideo];
  }

  [v5 setVideo:isThirdPartyVideo];
  [v5 setScreening:{-[CSDCall isScreening](self, "isScreening")}];

  return v5;
}

- (CSDConversationCallCoordinator)conversationCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationCoordinator);

  return WeakRetained;
}

- (int)faceTimeIDStatus
{
  [(CSDCall *)self _refreshFaceTimeIDSStatusIfNecessary];
  v4.receiver = self;
  v4.super_class = CSDCall;
  return [(CSDCall *)&v4 faceTimeIDStatus];
}

- (void)_refreshFaceTimeIDSStatusIfNecessary
{
  if (![(CSDCall *)self faceTimeIDStatusRefreshed])
  {
    [(CSDCall *)self setFaceTimeIDStatusRefreshed:1];

    [(CSDCall *)self _refreshFaceTimeIDSStatus];
  }
}

- (void)_refreshFaceTimeIDSStatus
{
  provider = [(CSDCall *)self provider];
  isFaceTimeProvider = [provider isFaceTimeProvider];

  if (isFaceTimeProvider)
  {
    selfCopy2 = self;
    v6 = 2;
  }

  else
  {
    handle = [(CSDCall *)self handle];
    value = [handle value];
    v9 = [value length];

    if (v9)
    {
      idQueryController = [(CSDCall *)self idQueryController];
      handle2 = [(CSDCall *)self handle];
      v12 = TUCopyIDSCanonicalAddressForHandle();
      v13 = IDSServiceNameFaceTime;
      queue = [(CSDCall *)self queue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100026BEC;
      v15[3] = &unk_10061C850;
      v15[4] = self;
      [idQueryController currentIDStatusForDestination:v12 service:v13 listenerID:@"com.apple.TUCallCenter" queue:queue completionBlock:v15];

      return;
    }

    selfCopy2 = self;
    v6 = 0;
  }

  [(CSDCall *)selfCopy2 setFaceTimeIDStatus:v6];
}

- (int)recordingAvailability
{
  recordingAllowedError = [(CSDCall *)self recordingAllowedError];
  recordingDisabledError = [(CSDCall *)self recordingDisabledError];
  if (recordingAllowedError)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (recordingDisabledError)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (NSError)recordingAllowedError
{
  recordingDisabledError = [(CSDCall *)self recordingDisabledError];
  v4 = recordingDisabledError;
  if (recordingDisabledError)
  {
    v5 = recordingDisabledError;
LABEL_12:
    v11 = v5;
    goto LABEL_13;
  }

  if ([(CSDCall *)self status]!= 1)
  {
    v8 = [NSError alloc];
    v9 = TUStartRecordingErrorDomain;
    v10 = 5;
LABEL_11:
    v5 = [v8 initWithDomain:v9 code:v10 userInfo:0];
    goto LABEL_12;
  }

  if (([(CSDCall *)self isEndpointOnCurrentDevice]& 1) == 0)
  {
    v8 = [NSError alloc];
    v9 = TUStartRecordingErrorDomain;
    v10 = 8;
    goto LABEL_11;
  }

  isConferenced = [(CSDCall *)self isConferenced];
  if (isConferenced)
  {
    v7 = sub_100004778(isConferenced);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recording is not allowed for conference calls", v13, 2u);
    }

    v8 = [NSError alloc];
    v9 = TUStartRecordingErrorDomain;
    v10 = 10;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (NSError)recordingDisabledError
{
  featureFlags = [(CSDCall *)self featureFlags];
  callRecordingEnabled = [featureFlags callRecordingEnabled];

  if ((callRecordingEnabled & 1) == 0)
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 2;
LABEL_32:
    v24 = [v6 initWithDomain:v7 code:v8 userInfo:0];
    goto LABEL_33;
  }

  if (![(CSDCall *)self isCallRecordingEnabled])
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 14;
    goto LABEL_32;
  }

  provider = [(CSDCall *)self provider];
  if ([provider isTelephonyProvider])
  {
  }

  else
  {
    provider2 = [(CSDCall *)self provider];
    isFaceTimeProvider = [provider2 isFaceTimeProvider];

    if ((isFaceTimeProvider & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUStartRecordingErrorDomain;
      v8 = 3;
      goto LABEL_32;
    }
  }

  isEmergency = [(CSDCall *)self isEmergency];
  if (isEmergency)
  {
    v12 = sub_100004778(isEmergency);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Recording is not allowed for emergency calls", buf, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 11;
    goto LABEL_32;
  }

  if ([(CSDCall *)self isVideo])
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 6;
    goto LABEL_32;
  }

  delegate = [(CSDCall *)self delegate];
  multipleCallsActiveOrHeld = [delegate multipleCallsActiveOrHeld];

  if (multipleCallsActiveOrHeld)
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 13;
    goto LABEL_32;
  }

  provider3 = [(CSDCall *)self provider];
  if ([provider3 isFaceTimeProvider])
  {
    isOneToOneModeEnabled = [(CSDCall *)self isOneToOneModeEnabled];

    if ((isOneToOneModeEnabled & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUStartRecordingErrorDomain;
      v8 = 7;
      goto LABEL_32;
    }
  }

  else
  {
  }

  if ([(CSDCall *)self isScreening])
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 15;
    goto LABEL_32;
  }

  translationSession = [(CSDCall *)self translationSession];
  if (translationSession)
  {
    v18 = translationSession;
    translationSession2 = [(CSDCall *)self translationSession];
    if ([translationSession2 translationState])
    {
      translationSession3 = [(CSDCall *)self translationSession];
      translationState = [translationSession3 translationState];

      if (translationState != 5)
      {
        v6 = [NSError alloc];
        v7 = TUTranslationErrorDomain;
        v8 = 16;
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  isRemoteActiveTranslating = [(CSDCall *)self isRemoteActiveTranslating];
  if (isRemoteActiveTranslating)
  {
    v23 = sub_100004778(isRemoteActiveTranslating);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Recording is not allowed when remote starts translation", v26, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 17;
    goto LABEL_32;
  }

  v24 = 0;
LABEL_33:

  return v24;
}

- (TUCallDisplayContext)displayContext
{
  dynamicDisplayContext = [(CSDCall *)self dynamicDisplayContext];
  if (!dynamicDisplayContext)
  {
    queue = [(CSDCall *)self queue];

    if (!queue)
    {
      goto LABEL_5;
    }

    v5 = [TUDynamicCallDisplayContext alloc];
    dialRequest = [(CSDCall *)self dialRequest];
    contactIdentifier = [dialRequest contactIdentifier];
    queue2 = [(CSDCall *)self queue];
    v9 = [v5 initWithCall:self contactIdentifier:contactIdentifier serialQueue:queue2 cacheOnly:{-[CSDCall isIncoming](self, "isIncoming") ^ 1}];
    [(CSDCall *)self setDynamicDisplayContext:v9];

    dynamicDisplayContext = [(CSDCall *)self dynamicDisplayContext];
    [dynamicDisplayContext setDelegate:self];
  }

LABEL_5:
  dynamicDisplayContext2 = [(CSDCall *)self dynamicDisplayContext];
  v11 = [dynamicDisplayContext2 copy];

  return v11;
}

- (int)callRelaySupport
{
  if (([(CSDCall *)self lockdownModeEnabled]& 1) != 0)
  {
    return 0;
  }

  if (-[CSDCall isConversation](self, "isConversation") && (-[CSDCall provider](self, "provider"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isTelephonyProvider], v4, (v5 & 1) == 0))
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 activeConversationForCall:self];

    activitySessions = [v7 activitySessions];
    anyObject = [activitySessions anyObject];

    if (anyObject)
    {
      if ([anyObject state] == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  else if ([(CSDCall *)self isVideo])
  {
    return 1;
  }

  else
  {
    return 2;
  }

  return v3;
}

- (BOOL)needsConversationOrVideoRelaySupport
{
  if (![(CSDCall *)self isConversation])
  {
    return 0;
  }

  remoteParticipantHandles = [(CSDCall *)self remoteParticipantHandles];
  if ([remoteParticipantHandles count] <= 1)
  {
    isVideo = [(CSDCall *)self isVideo];
  }

  else
  {
    isVideo = 1;
  }

  return isVideo;
}

- (CSDAudioSessionProtocol)audioSession
{
  getAudioSessionBlock = [(CSDCall *)self getAudioSessionBlock];
  v3 = getAudioSessionBlock[2]();

  return v3;
}

- (id)getAudioSessionBlock
{
  getAudioSessionBlock = self->_getAudioSessionBlock;
  if (!getAudioSessionBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003F2C0;
    v8[3] = &unk_10061C828;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_getAudioSessionBlock;
    self->_getAudioSessionBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    getAudioSessionBlock = self->_getAudioSessionBlock;
  }

  v6 = objc_retainBlock(getAudioSessionBlock);

  return v6;
}

- (CSDCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center
{
  v12.receiver = self;
  v12.super_class = CSDCall;
  v5 = [(CSDCall *)&v12 initWithUniqueProxyIdentifier:identifier endpointOnCurrentDevice:device notificationCenter:center];
  if (v5)
  {
    v6 = +[IDSIDQueryController sharedInstance];
    idQueryController = v5->_idQueryController;
    v5->_idQueryController = v6;

    v8 = v5->_idQueryController;
    v9 = IDSServiceNameFaceTime;
    queue = [(CSDCall *)v5 queue];
    [(IDSIDQueryController *)v8 addDelegate:v5 forService:v9 listenerID:@"com.apple.TUCallCenter" queue:queue];
  }

  return v5;
}

- (CSDCall)initWithUniqueProxyIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CSDCall;
  v8 = -[CSDCall initWithUniqueProxyIdentifier:endpointOnCurrentDevice:](&v11, "initWithUniqueProxyIdentifier:endpointOnCurrentDevice:", identifierCopy, [configurationCopy isEndpointOnCurrentDevice]);

  if (v8)
  {
    featureFlags = [configurationCopy featureFlags];
    v8->_isCallRecordingEnabled = TUCallRecordingEnabled();

    v8->_isUnderlyingLinksConnected = 1;
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call is being deallocated", buf, 2u);
  }

  [(CSDCall *)self setTimeoutTimer:0];
  v4.receiver = self;
  v4.super_class = CSDCall;
  [(CSDCall *)&v4 dealloc];
}

- (BOOL)needsConversationRelaySupport
{
  if (![(CSDCall *)self isConversation])
  {
    return 0;
  }

  remoteParticipantHandles = [(CSDCall *)self remoteParticipantHandles];
  v4 = [remoteParticipantHandles count] > 1;

  return v4;
}

- (BOOL)isConversation
{
  overridePropertiesUpdate = [(CSDCall *)self overridePropertiesUpdate];
  hasSet = [overridePropertiesUpdate hasSet];

  if ((hasSet & 0x1000000000000000) != 0)
  {
    overridePropertiesUpdate2 = [(CSDCall *)self overridePropertiesUpdate];
    isConversation = [overridePropertiesUpdate2 isConversation];

    return isConversation;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSDCall;
    return [(CSDCall *)&v8 isConversation];
  }
}

- (void)dialWithRequest:(id)request displayContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  isValid = [requestCopy isValid];
  if ((isValid & 1) == 0)
  {
    sub_1004764B4(a2, self, requestCopy);
  }

  v10 = sub_100004778(isValid);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = requestCopy;
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dialRequest: %@ displayContext: %@", &v17, 0x16u);
  }

  [(CSDCall *)self setDialRequest:requestCopy];
  -[CSDCall setWasDialAssisted:](self, "setWasDialAssisted:", [requestCopy isDialAssisted]);
  audioSourceIdentifier = [requestCopy audioSourceIdentifier];
  [(CSDCall *)self setSourceIdentifier:audioSourceIdentifier];

  upgradedFromCallUUID = [requestCopy upgradedFromCallUUID];
  [(CSDCall *)self setUpgradedFromCallUUID:upgradedFromCallUUID];

  if (contextCopy)
  {
    v13 = [TUDynamicCallDisplayContext alloc];
    queue = [(CSDCall *)self queue];
    v15 = [v13 initWithDisplayContext:contextCopy call:self serialQueue:queue];
    [(CSDCall *)self setDynamicDisplayContext:v15];

    dynamicDisplayContext = [(CSDCall *)self dynamicDisplayContext];
    [dynamicDisplayContext setDelegate:self];
  }
}

- (void)setSharingScreen:(BOOL)screen
{
  screenCopy = screen;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = screenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDCall] setSharingScreen: %d", buf, 8u);
  }

  v10.receiver = self;
  v10.super_class = CSDCall;
  [(CSDCall *)&v10 setSharingScreen:screenCopy];
  featureFlags = [(CSDCall *)self featureFlags];
  sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled)
  {
    conversationCoordinator = [(CSDCall *)self conversationCoordinator];
    uniqueProxyIdentifierUUID = [(CSDCall *)self uniqueProxyIdentifierUUID];
    [conversationCoordinator handleSetSharingScreen:uniqueProxyIdentifierUUID sharingScreen:screenCopy];
  }
}

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = sub_100004778(attributesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = attributesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDCall] setScreenShareAttributes: %@", &v10, 0xCu);
  }

  featureFlags = [(CSDCall *)self featureFlags];
  sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled)
  {
    conversationCoordinator = [(CSDCall *)self conversationCoordinator];
    uniqueProxyIdentifierUUID = [(CSDCall *)self uniqueProxyIdentifierUUID];
    [conversationCoordinator handleSetScreenShareAttributes:uniqueProxyIdentifierUUID tuAttributes:attributesCopy];
  }
}

- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes
{
  screenCopy = screen;
  attributesCopy = attributes;
  v7 = sub_100004778(attributesCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = screenCopy;
    v15 = 2112;
    v16 = attributesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CSDCall] setSharingScreen: %d attributes: %@", buf, 0x12u);
  }

  v12.receiver = self;
  v12.super_class = CSDCall;
  [(CSDCall *)&v12 setSharingScreen:screenCopy attributes:attributesCopy];
  featureFlags = [(CSDCall *)self featureFlags];
  sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled)
  {
    conversationCoordinator = [(CSDCall *)self conversationCoordinator];
    uniqueProxyIdentifierUUID = [(CSDCall *)self uniqueProxyIdentifierUUID];
    [conversationCoordinator handleSetSharingScreen:uniqueProxyIdentifierUUID sharingScreen:screenCopy tuAttributes:attributesCopy];
  }
}

- (void)disconnectCallWithReason:(int)reason
{
  v3 = *&reason;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "diconnectCallWithReason: %lu", &v6, 0xCu);
  }

  [(CSDCall *)self disconnectWithReason:v3];
}

- (void)unsuppressRingtoneIfNecessary
{
  if ([(CSDCall *)self shouldSuppressRingtone])
  {
    v3 = objc_alloc_init(CUTWeakLinkClass());
    [v3 setType:2];
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001501B4;
    v6[3] = &unk_10061C800;
    objc_copyWeak(&v8, &location);
    v4 = v3;
    v7 = v4;
    v5 = sub_100004778([v4 setCompletionHandler:v6]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting coordinated alert request to determine ringtone un-suppression: %@", buf, 0xCu);
    }

    [v4 start];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)updateWithProxyCall:(id)call
{
  callCopy = call;
  -[CSDCall setDisconnectedReason:](self, "setDisconnectedReason:", [callCopy disconnectedReason]);
  -[CSDCall setShouldSuppressRingtone:](self, "setShouldSuppressRingtone:", [callCopy shouldSuppressRingtone]);
  -[CSDCall setWantsHoldMusic:](self, "setWantsHoldMusic:", [callCopy wantsHoldMusic]);
  reminderUUID = [callCopy reminderUUID];

  [(CSDCall *)self setReminderUUID:reminderUUID];
}

- (void)updateWithOverrideCallProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = sub_100004778(propertiesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDCall] Overriding call with properties: %@", &v29, 0xCu);
  }

  overridePropertiesUpdate = [(CSDCall *)self overridePropertiesUpdate];

  if (!overridePropertiesUpdate)
  {
    v7 = objc_alloc_init(CXCallUpdate);
    overridePropertiesUpdate = self->_overridePropertiesUpdate;
    self->_overridePropertiesUpdate = v7;
  }

  overridePropertiesUpdate2 = [(CSDCall *)self overridePropertiesUpdate];
  [overridePropertiesUpdate2 updateWithUpdate:propertiesCopy];

  overridePropertiesUpdate3 = [(CSDCall *)self overridePropertiesUpdate];
  [overridePropertiesUpdate3 hasSet];
  v12 = v11;

  if ((v12 & 0x80000) != 0)
  {
    overridePropertiesUpdate4 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setIsSharePlayCapable:](self, "setIsSharePlayCapable:", [overridePropertiesUpdate4 isSharePlayCapable]);
  }

  overridePropertiesUpdate5 = [(CSDCall *)self overridePropertiesUpdate];
  hasSet = [overridePropertiesUpdate5 hasSet];

  if ((hasSet & 0x1000000000000000) != 0)
  {
    overridePropertiesUpdate6 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setConversation:](self, "setConversation:", [overridePropertiesUpdate6 isConversation]);
  }

  overridePropertiesUpdate7 = [(CSDCall *)self overridePropertiesUpdate];
  [overridePropertiesUpdate7 hasSet];
  v19 = v18;

  if ((v19 & 0x1000000) != 0)
  {
    overridePropertiesUpdate8 = [(CSDCall *)self overridePropertiesUpdate];
    conversationGroupUUID = [overridePropertiesUpdate8 conversationGroupUUID];
    [(CSDCall *)self setConversationGroupUUID:conversationGroupUUID];
  }

  overridePropertiesUpdate9 = [(CSDCall *)self overridePropertiesUpdate];
  hasSet2 = [overridePropertiesUpdate9 hasSet];

  if ((hasSet2 & 0x2000000000000000) != 0)
  {
    overridePropertiesUpdate10 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setMixesVoiceWithMedia:](self, "setMixesVoiceWithMedia:", [overridePropertiesUpdate10 mixesVoiceWithMedia]);
  }

  overridePropertiesUpdate11 = [(CSDCall *)self overridePropertiesUpdate];
  [overridePropertiesUpdate11 hasSet];
  v27 = v26;

  if ((v27 & 0x100000) != 0)
  {
    overridePropertiesUpdate12 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setAnyRemoteSupportsRequestToScreenShare:](self, "setAnyRemoteSupportsRequestToScreenShare:", [overridePropertiesUpdate12 anyRemoteSupportsRequestToScreenShare]);
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)setHasAudioInterruption:(BOOL)interruption
{
  if (self->_hasAudioInterruption != interruption)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100150774;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    interruptionCopy = interruption;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setRelayClientTransport:(id)transport
{
  transportCopy = transport;
  relayClientTransport = [(CSDCall *)self relayClientTransport];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100150858;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = transportCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setTransitionStatus:(int)status
{
  if ([(CSDCall *)self transitionStatus]!= status)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150904;
    v5[3] = &unk_100619EF8;
    statusCopy = status;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setWantsHoldMusic:(BOOL)music
{
  if ([(CSDCall *)self wantsHoldMusic]!= music)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001509DC;
    v5[3] = &unk_100619EA8;
    musicCopy = music;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setWasDialAssisted:(BOOL)assisted
{
  if ([(CSDCall *)self wasDialAssisted]!= assisted)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150AB4;
    v5[3] = &unk_100619EA8;
    assistedCopy = assisted;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setScreeningAnnouncementHasFinished:(BOOL)finished
{
  if ([(CSDCall *)self screeningAnnouncementHasFinished]!= finished)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150B8C;
    v5[3] = &unk_100619EA8;
    finishedCopy = finished;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDisconnectedReason:(int)reason
{
  if ([(CSDCall *)self disconnectedReason]!= reason)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150C64;
    v5[3] = &unk_100619EF8;
    reasonCopy = reason;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setFaceTimeIDStatus:(int)status
{
  if ([(CSDCall *)self faceTimeIDStatus]!= status)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150D3C;
    v5[3] = &unk_100619EF8;
    statusCopy = status;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSoundRegion:(int64_t)region
{
  if ([(CSDCall *)self soundRegion]!= region)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150E10;
    v5[3] = &unk_100619D60;
    v5[4] = self;
    v5[5] = region;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setModel:(id)model
{
  modelCopy = model;
  model = [(CSDCall *)self model];

  if (model != modelCopy)
  {
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100150F0C;
    v9 = &unk_100619D88;
    v10 = modelCopy;
    selfCopy = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v6];
    [(CSDCall *)self propertiesChanged:v6];
  }
}

- (void)setAnsweringMachineStreamToken:(int64_t)token
{
  if ([(CSDCall *)self answeringMachineStreamToken]!= token)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150FDC;
    v5[3] = &unk_100619D60;
    v5[4] = self;
    v5[5] = token;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSupportsDTMFUpdates:(BOOL)updates
{
  if ([(CSDCall *)self supportsDTMFUpdates]!= updates)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001510B0;
    v5[3] = &unk_100619EA8;
    updatesCopy = updates;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setShouldSuppressRingtone:(BOOL)ringtone
{
  if ([(CSDCall *)self shouldSuppressRingtone]!= ringtone)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100151188;
    v5[3] = &unk_100619EA8;
    ringtoneCopy = ringtone;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setEndpointOnCurrentDevice:(BOOL)device
{
  if ([(CSDCall *)self isEndpointOnCurrentDevice]!= device)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001512A0;
    v5[3] = &unk_100619EA8;
    deviceCopy = device;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  if ([(CSDCall *)self isScreening]!= screening)
  {
    [(CSDCall *)self setWasScreened:[(CSDCall *)self wasScreened]| screeningCopy];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001513E0;
    v7[3] = &unk_100619EA8;
    v8 = screeningCopy;
    v7[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v7];
    v5 = +[CSDRelayConferenceInterface sharedInstance];
    uniqueProxyIdentifier = [(CSDCall *)self uniqueProxyIdentifier];
    [v5 updateConferenceForIdentifier:uniqueProxyIdentifier isUsingBaseband:-[CSDCall isUsingBaseband](self disableAudio:"isUsingBaseband") isTinCan:{0, 0}];

    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setReceptionistState:(int)state
{
  if ([(CSDCall *)self receptionistState]!= state)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001514B8;
    v5[3] = &unk_100619EF8;
    stateCopy = state;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setLastReceptionistMessage:(id)message
{
  messageCopy = message;
  lastReceptionistMessage = [(CSDCall *)self lastReceptionistMessage];
  v6 = [lastReceptionistMessage isEqualToString:messageCopy];

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1001515C0;
    v10 = &unk_100619D88;
    v11 = messageCopy;
    selfCopy = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setReceptionistSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting TUReceptionistSession %@", &v7, 0xCu);
  }

  receptionistSession = self->_receptionistSession;
  self->_receptionistSession = sessionCopy;

  [(CSDCall *)self propertiesChanged];
}

- (void)setDateSentInvitation:(id)invitation
{
  invitationCopy = invitation;
  dateSentInvitation = [(CSDCall *)self dateSentInvitation];
  v6 = TUObjectsAreEqualOrNil();

  if (v6)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(CSDCall *)self dateSentInvitation];
      v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "self.dateSentInvitation: %@, dateSentInvitation: %@", buf, 0x16u);
    }
  }

  else
  {
    if ([(CSDCall *)self isOutgoing])
    {
      dateStartedOutgoing = [(CSDCall *)self dateStartedOutgoing];

      if (!dateStartedOutgoing)
      {
        [(CSDCall *)self setDateStartedOutgoing:invitationCopy];
      }
    }

    v16.receiver = self;
    v16.super_class = CSDCall;
    [(CSDCall *)&v16 setDateSentInvitation:invitationCopy];
    dateCreated = [(CSDCall *)self dateCreated];
    [invitationCopy timeIntervalSinceDate:dateCreated];
    v13 = v12;

    v15 = sub_10022AEEC(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v13 * 1000.0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "csdcall_durationToSendInvitation=%f", buf, 0xCu);
    }

    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDateStartedConnecting:(id)connecting
{
  connectingCopy = connecting;
  dateStartedConnecting = [(CSDCall *)self dateStartedConnecting];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    if ([(CSDCall *)self isOutgoing])
    {
      dateSentInvitation = [(CSDCall *)self dateSentInvitation];

      if (!dateSentInvitation)
      {
        [(CSDCall *)self setDateSentInvitation:connectingCopy];
      }
    }

    v8.receiver = self;
    v8.super_class = CSDCall;
    [(CSDCall *)&v8 setDateStartedConnecting:connectingCopy];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDateConnected:(id)connected
{
  connectedCopy = connected;
  dateConnected = [(CSDCall *)self dateConnected];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    dateStartedConnecting = [(CSDCall *)self dateStartedConnecting];

    if (!dateStartedConnecting)
    {
      [(CSDCall *)self setDateStartedConnecting:connectedCopy];
    }

    v14.receiver = self;
    v14.super_class = CSDCall;
    [(CSDCall *)&v14 setDateConnected:connectedCopy];
    dateStartedConnecting2 = [(CSDCall *)self dateStartedConnecting];

    if (dateStartedConnecting2)
    {
      dateStartedConnecting3 = [(CSDCall *)self dateStartedConnecting];
      [connectedCopy timeIntervalSinceDate:dateStartedConnecting3];
      v11 = v10;

      v13 = sub_10022AEEC(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v11 * 1000.0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "csdcall_durationToConnect=%f", buf, 0xCu);
      }
    }

    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setCurrentRecordingSession:(id)session
{
  sessionCopy = session;
  v6 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting recording session %@", &v11, 0xCu);
  }

  objc_storeStrong(&self->_currentRecordingSession, session);
  if (!sessionCopy)
  {
    recordingSession = self->_recordingSession;
    self->_recordingSession = 0;

    podcastRecordingSession = self->_podcastRecordingSession;
    self->_podcastRecordingSession = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self->_currentRecordingSession;
    podcastRecordingSession = self->_recordingSession;
    self->_recordingSession = v7;
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self->_currentRecordingSession;
    podcastRecordingSession = self->_podcastRecordingSession;
    self->_podcastRecordingSession = v10;
    goto LABEL_9;
  }

LABEL_10:
  [(CSDCall *)self propertiesChanged];
}

- (void)setTranslationSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting translation session %@", &v7, 0xCu);
  }

  translationSession = self->_translationSession;
  self->_translationSession = sessionCopy;

  [(CSDCall *)self propertiesChanged];
}

- (void)setRemoteActiveTranslating:(BOOL)translating
{
  if (self->_remoteActiveTranslating != translating)
  {
    translatingCopy = translating;
    v5 = sub_100004778(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (translatingCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting remote active translating to %@", &v7, 0xCu);
    }

    self->_remoteActiveTranslating = translatingCopy;
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setTranslationDisclosureLocation:(id)location
{
  locationCopy = location;
  v5 = sub_100004778(locationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = locationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting translation disclosure location %@", &v7, 0xCu);
  }

  translationDisclosureLocation = self->_translationDisclosureLocation;
  self->_translationDisclosureLocation = locationCopy;
}

- (void)setSmartHoldingSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting smart holding session %@", &v9, 0xCu);
  }

  smartHoldingSession = self->_smartHoldingSession;
  self->_smartHoldingSession = sessionCopy;
  v7 = sessionCopy;

  if ([(TUSmartHoldingSession *)v7 state]== 2)
  {
    self->_smartHoldingTipPresented = 1;
  }

  state = [(TUSmartHoldingSession *)v7 state];

  if (!state)
  {
    [(CSDCall *)self setShouldSuppressRingtone:0];
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)setDateEnded:(id)ended
{
  endedCopy = ended;
  dateEnded = [(CSDCall *)self dateEnded];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    [(CSDCall *)&v7 setDateEnded:endedCopy];
    [(CSDCall *)self updateForDisconnection];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDateStartedOutgoing:(id)outgoing
{
  outgoingCopy = outgoing;
  dateStartedOutgoing = [(CSDCall *)self dateStartedOutgoing];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100152148;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = outgoingCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setIsKnownCaller:(BOOL)caller
{
  if ([(CSDCall *)self isKnownCaller]!= caller)
  {
    self->_isKnownCaller = caller;

    [(CSDCall *)self propertiesChanged];
  }
}

- (BOOL)setAudioSessionMuted:(BOOL)muted error:(id *)error
{
  mutedCopy = muted;
  v7 = sub_100004778(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (mutedCopy)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    uniqueProxyIdentifier = [(CSDCall *)self uniqueProxyIdentifier];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = uniqueProxyIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting audioSessionMuted %@ for call %@", &v13, 0x16u);
  }

  audioSession = [(CSDCall *)self audioSession];
  v11 = [audioSession setMuted:mutedCopy error:error];

  return v11;
}

- (void)setUplinkMuted:(BOOL)muted userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  mutedCopy = muted;
  featureFlags = [(CSDCall *)self featureFlags];
  sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

  if (sessionBasedMutingEnabled)
  {
    if (!initiatedCopy)
    {
LABEL_10:
      [(CSDCall *)self setUplinkWasExplicitlyMuted:1];
      self->_audioResolverShouldIgnoreUplinkMuted = 1;
      self->_uplinkMuted = mutedCopy;
      [(CSDCall *)self propertiesChanged];
      self->_audioResolverShouldIgnoreUplinkMuted = 0;
      return;
    }

    v15 = 0;
    v9 = [(CSDCall *)self setAudioSessionMuted:mutedCopy error:&v15];
    v10 = v15;
    v11 = sub_100004778(v10);
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (mutedCopy)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        uniqueProxyIdentifier = [(CSDCall *)self uniqueProxyIdentifier];
        *buf = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = uniqueProxyIdentifier;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully set uplinkMuted with value %@ for call %@", buf, 0x16u);
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100476534(mutedCopy, self, v12);
    }
  }

  else if (mutedCopy)
  {

    [(CSDCall *)self setUplinkWasExplicitlyMuted:1];
  }
}

- (BOOL)shouldOwnMuteHandler
{
  isOnHold = [(CSDCall *)self isOnHold];
  if (isOnHold)
  {
    v4 = sub_100004778(isOnHold);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [(CSDCall *)self uniqueProxyIdentifier];
      v7 = 138412290;
      v8 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ cannot own mute handler since it is held", &v7, 0xCu);
    }

    return 0;
  }

  else
  {

    return [(CSDCall *)self shouldHandleMuteRequests];
  }
}

- (BOOL)shouldHandleMuteRequests
{
  if ([(CSDCall *)self status]!= 1 && [(CSDCall *)self status]!= 3)
  {
    status = [(CSDCall *)self status];
    if (status != 2)
    {
      v5 = sub_100004778(status);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [(CSDCall *)self uniqueProxyIdentifier];
        v11 = 138412546;
        v12 = uniqueProxyIdentifier;
        v13 = 1024;
        status2 = [(CSDCall *)self status];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ cannot handle mute control requests since the call status is not eligible for mute control %d", &v11, 0x12u);
      }

      goto LABEL_8;
    }
  }

  isScreening = [(CSDCall *)self isScreening];
  if (isScreening)
  {
    v5 = sub_100004778(isScreening);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:

      return 0;
    }

    uniqueProxyIdentifier2 = [(CSDCall *)self uniqueProxyIdentifier];
    v11 = 138412290;
    v12 = uniqueProxyIdentifier2;
    v7 = "Call with UPI %@ cannot handle mute control requests since it is screening";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);

    goto LABEL_8;
  }

  if (([(CSDCall *)self isEndpointOnCurrentDevice]& 1) == 0)
  {
    isHostedOnCurrentDevice = [(CSDCall *)self isHostedOnCurrentDevice];
    if ((isHostedOnCurrentDevice & 1) == 0)
    {
      v5 = sub_100004778(isHostedOnCurrentDevice);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      uniqueProxyIdentifier2 = [(CSDCall *)self uniqueProxyIdentifier];
      v11 = 138412290;
      v12 = uniqueProxyIdentifier2;
      v7 = "Call with UPI %@ cannot handle mute control requests since it is not endpoint for the call";
      goto LABEL_7;
    }
  }

  return 1;
}

- (void)setTimeoutTimer:(id)timer
{
  timerCopy = timer;
  timeoutTimer = self->_timeoutTimer;
  v8 = timerCopy;
  if (timeoutTimer != timerCopy)
  {
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
    }

    objc_storeStrong(&self->_timeoutTimer, timer);
    v7 = self->_timeoutTimer;
    if (v7)
    {
      dispatch_activate(v7);
    }
  }
}

- (void)setTransmissionState:(int64_t)state
{
  if (self->_transmissionState != state)
  {
    v6[8] = v3;
    v6[9] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100152910;
    v6[3] = &unk_100619D60;
    v6[4] = self;
    v6[5] = state;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (id)handle
{
  dialRequest = [(CSDCall *)self dialRequest];
  if (dialRequest)
  {
    dialRequest2 = [(CSDCall *)self dialRequest];
    handle = [dialRequest2 handle];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    handle = [(CSDCall *)&v7 handle];
  }

  return handle;
}

- (BOOL)isOutgoing
{
  dialRequest = [(CSDCall *)self dialRequest];
  if (dialRequest)
  {
    isOutgoing = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CSDCall;
    isOutgoing = [(CSDCall *)&v6 isOutgoing];
  }

  return isOutgoing;
}

- (BOOL)isEmergency
{
  dialRequest = [(CSDCall *)self dialRequest];
  if (dialRequest)
  {
    dialRequest2 = [(CSDCall *)self dialRequest];
    isEmergency = [dialRequest2 dialType] == 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    isEmergency = [(CSDCall *)&v7 isEmergency];
  }

  return isEmergency;
}

- (BOOL)launchInBackground
{
  dialRequest = [(CSDCall *)self dialRequest];
  if (dialRequest)
  {
    v4 = dialRequest;
    dialRequest2 = [(CSDCall *)self dialRequest];
    launchInBackground = [dialRequest2 launchInBackground];

    if (launchInBackground)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = CSDCall;
  return [(CSDCall *)&v8 launchInBackground];
}

- (NSDictionary)silencingUserInfo
{
  silencingUserInfo = self->_silencingUserInfo;
  if (!silencingUserInfo)
  {
    v4 = objc_alloc_init(NSDictionary);
    v5 = self->_silencingUserInfo;
    self->_silencingUserInfo = v4;

    silencingUserInfo = self->_silencingUserInfo;
  }

  return silencingUserInfo;
}

- (void)setDisplayContext:(id)context
{
  contextCopy = context;
  displayContext = [(CSDCall *)self displayContext];
  v6 = [displayContext isEqual:contextCopy];

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100152C90;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = contextCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)updatePredictedNameFromReceptionist:(id)receptionist
{
  receptionistCopy = receptionist;
  dynamicDisplayContext = [(CSDCall *)self dynamicDisplayContext];
  [dynamicDisplayContext updatePredictedNameFromReceptionist:receptionistCopy];
}

+ (id)cxScreenShareAttributesForCallAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_alloc_init(CXScreenShareAttributes);
  [v4 setDeviceFamily:{objc_msgSend(attributesCopy, "deviceFamily")}];
  [v4 setDeviceHomeButtonType:{objc_msgSend(attributesCopy, "deviceHomeButtonType")}];
  [v4 setStyle:{objc_msgSend(attributesCopy, "style")}];
  displayID = [attributesCopy displayID];
  [v4 setDisplayID:displayID];

  frameRate = [attributesCopy frameRate];
  [v4 setFrameRate:frameRate];

  [v4 setWindowed:{objc_msgSend(attributesCopy, "isWindowed")}];
  windowUUID = [attributesCopy windowUUID];
  [v4 setWindowUUID:windowUUID];

  displayScale = [attributesCopy displayScale];
  [v4 setDisplayScale:displayScale];

  cornerRadius = [attributesCopy cornerRadius];
  [v4 setCornerRadius:cornerRadius];

  scaleFactor = [attributesCopy scaleFactor];
  [v4 setScaleFactor:scaleFactor];

  systemRootLayerTransform = [attributesCopy systemRootLayerTransform];
  [v4 setSystemRootLayerTransform:systemRootLayerTransform];

  originalResolution = [attributesCopy originalResolution];

  v13 = [originalResolution copy];
  [v4 setOriginalResolution:v13];

  return v4;
}

- (void)handleUpdatedPropertiesAfterChangesInBlock:(id)block
{
  blockCopy = block;
  handle = [(CSDCall *)self handle];
  callerNameFromNetwork = [(CSDCall *)self callerNameFromNetwork];
  isInternational = [(CSDCall *)self isInternational];
  relayClientTransport = [(CSDCall *)self relayClientTransport];
  mayRequireBreakBeforeMake = [(CSDCall *)self mayRequireBreakBeforeMake];
  hasStartedOutgoing = [(CSDCall *)self hasStartedOutgoing];
  hasAudioInterruption = [(CSDCall *)self hasAudioInterruption];
  isEmergency = [(CSDCall *)self isEmergency];
  isVoicemail = [(CSDCall *)self isVoicemail];
  activeRemoteParticipants = [(CSDCall *)self activeRemoteParticipants];
  isOneToOneModeEnabled = [(CSDCall *)self isOneToOneModeEnabled];
  mediaPlaybackOnExternalDevice = [(CSDCall *)self mediaPlaybackOnExternalDevice];
  transmissionState = [(CSDCall *)self transmissionState];
  prefersToPlayDuringWombat = [(CSDCall *)self prefersToPlayDuringWombat];
  remoteParticipantHandles = [(CSDCall *)self remoteParticipantHandles];
  displayContext = [(CSDCall *)self displayContext];
  audioInterruptionProviderType = [(CSDCall *)self audioInterruptionProviderType];
  blockCopy[2](blockCopy);

  handle2 = [(CSDCall *)self handle];
  callerNameFromNetwork2 = [(CSDCall *)self callerNameFromNetwork];
  isInternational2 = [(CSDCall *)self isInternational];
  relayClientTransport2 = [(CSDCall *)self relayClientTransport];
  mayRequireBreakBeforeMake2 = [(CSDCall *)self mayRequireBreakBeforeMake];
  hasStartedOutgoing2 = [(CSDCall *)self hasStartedOutgoing];
  hasAudioInterruption2 = [(CSDCall *)self hasAudioInterruption];
  isEmergency2 = [(CSDCall *)self isEmergency];
  isVoicemail2 = [(CSDCall *)self isVoicemail];
  activeRemoteParticipants2 = [(CSDCall *)self activeRemoteParticipants];
  isOneToOneModeEnabled2 = [(CSDCall *)self isOneToOneModeEnabled];
  mediaPlaybackOnExternalDevice2 = [(CSDCall *)self mediaPlaybackOnExternalDevice];
  transmissionState2 = [(CSDCall *)self transmissionState];
  prefersToPlayDuringWombat2 = [(CSDCall *)self prefersToPlayDuringWombat];
  remoteParticipantHandles2 = [(CSDCall *)self remoteParticipantHandles];
  displayContext2 = [(CSDCall *)self displayContext];
  isUnderlyingLinksConnected = [(CSDCall *)self isUnderlyingLinksConnected];
  audioInterruptionProviderType2 = [(CSDCall *)self audioInterruptionProviderType];
  dynamicDisplayContext = [(CSDCall *)self dynamicDisplayContext];
  if (dynamicDisplayContext)
  {
    v14 = dynamicDisplayContext;
    if (!TUObjectsAreEqualOrNil() || !TUStringsAreEqualOrNil() || ((isEmergency ^ isEmergency2) & 1) != 0 || ((isInternational ^ isInternational2) & 1) != 0 || ((isVoicemail ^ isVoicemail2) & 1) != 0)
    {
    }

    else
    {
      v15 = [remoteParticipantHandles isEqualToSet:remoteParticipantHandles2];

      if (v15)
      {
        goto LABEL_13;
      }
    }

    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Invalidating display context for %@", buf, 0xCu);
    }

    [(CSDCall *)self setDynamicDisplayContext:0];
  }

LABEL_13:
  v18 = relayClientTransport;
  v19 = TUObjectsAreEqualOrNil();
  if ((v19 & 1) == 0)
  {
    v20 = sub_100004778(v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    v22 = TUCallCenterCallContinuityStateChangedNotification;
    if (v21)
    {
      *buf = 138413058;
      selfCopy = TUCallCenterCallContinuityStateChangedNotification;
      v87 = 2112;
      *v88 = relayClientTransport;
      *&v88[8] = 2112;
      *v89 = relayClientTransport2;
      *&v89[8] = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Posting %@ because relayClientTransport changed from %@ to %@ for %@", buf, 0x2Au);
    }

    notificationCenter = [(CSDCall *)self notificationCenter];
    [notificationCenter postNotificationName:v22 object:self];
  }

  v24 = TUObjectsAreEqualOrNil();
  if ((v24 & 1) == 0)
  {
    v25 = sub_100004778(v24);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    v27 = TUCallDisplayContextChangedNotification;
    if (v26)
    {
      *buf = 138413058;
      selfCopy = TUCallDisplayContextChangedNotification;
      v87 = 2112;
      *v88 = displayContext;
      *&v88[8] = 2112;
      *v89 = displayContext2;
      *&v89[8] = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Posting %@ because DisplayContext changed from %@ to %@ for %@", buf, 0x2Au);
    }

    notificationCenter2 = [(CSDCall *)self notificationCenter];
    [notificationCenter2 postNotificationName:v27 object:self];
  }

  if (mayRequireBreakBeforeMake != mayRequireBreakBeforeMake2)
  {
    v29 = sub_100004778(v24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = @"CSDCallMayRequireBreakBeforeMakeChangedNotification";
      v87 = 1024;
      *v88 = mayRequireBreakBeforeMake;
      *&v88[4] = 1024;
      *&v88[6] = mayRequireBreakBeforeMake2;
      *v89 = 2112;
      *&v89[2] = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Posting %@ because mayRequireBreakBeforeMake changed from %d to %d for %@", buf, 0x22u);
    }

    notificationCenter3 = [(CSDCall *)self notificationCenter];
    [notificationCenter3 postNotificationName:@"CSDCallMayRequireBreakBeforeMakeChangedNotification" object:self];
  }

  if (hasStartedOutgoing != hasStartedOutgoing2)
  {
    v31 = sub_100004778(v24);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = @"CSDCallHasStartedOutgoingChangedNotification";
      v87 = 1024;
      *v88 = hasStartedOutgoing;
      *&v88[4] = 1024;
      *&v88[6] = hasStartedOutgoing2;
      *v89 = 2112;
      *&v89[2] = self;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Posting %@ because hasStartedOutgoing changed from %d to %d for %@", buf, 0x22u);
    }

    notificationCenter4 = [(CSDCall *)self notificationCenter];
    [notificationCenter4 postNotificationName:@"CSDCallHasStartedOutgoingChangedNotification" object:self];
  }

  if (hasAudioInterruption != hasAudioInterruption2)
  {
    v33 = sub_100004778(v24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = @"CSDCallHasAudioInterruptionChangedNotification";
      v87 = 1024;
      *v88 = hasAudioInterruption;
      *&v88[4] = 1024;
      *&v88[6] = hasAudioInterruption2;
      *v89 = 2112;
      *&v89[2] = self;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Posting %@ because hasAudioInterruption changed from %d to %d for %@", buf, 0x22u);
    }

    notificationCenter5 = [(CSDCall *)self notificationCenter];
    [notificationCenter5 postNotificationName:@"CSDCallHasAudioInterruptionChangedNotification" object:self];
  }

  v35 = [(__CFString *)activeRemoteParticipants isEqualToSet:activeRemoteParticipants2];
  if ((v35 & 1) == 0)
  {
    v36 = sub_100004778(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = activeRemoteParticipants;
      v87 = 2112;
      *v88 = activeRemoteParticipants2;
      *&v88[8] = 2112;
      *v89 = self;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "activeRemoteParticipants changed from %@ to %@ for %@", buf, 0x20u);
    }

    v37 = [activeRemoteParticipants2 mutableCopy];
    [v37 minusSet:activeRemoteParticipants];
    v38 = [v37 count];
    if (v38)
    {
      v39 = sub_100004778(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = @"CSDCallRemoteParticipantJoinedNotification";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
      }

      notificationCenter6 = [(CSDCall *)self notificationCenter];
      [notificationCenter6 postNotificationName:@"CSDCallRemoteParticipantJoinedNotification" object:self];
    }

    v41 = [(__CFString *)activeRemoteParticipants mutableCopy];
    [v41 minusSet:activeRemoteParticipants2];
    v42 = [v41 count];
    if (v42)
    {
      v43 = sub_100004778(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = @"CSDCallRemoteParticipantLeftNotification";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
      }

      notificationCenter7 = [(CSDCall *)self notificationCenter];
      [notificationCenter7 postNotificationName:@"CSDCallRemoteParticipantLeftNotification" object:self];

      v18 = relayClientTransport;
    }
  }

  if (isOneToOneModeEnabled != isOneToOneModeEnabled2)
  {
    v45 = sub_100004778(v35);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = @"CSDCallOneToOneModeChangedNotification";
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    notificationCenter8 = [(CSDCall *)self notificationCenter];
    [notificationCenter8 postNotificationName:@"CSDCallOneToOneModeChangedNotification" object:self];
  }

  if (mediaPlaybackOnExternalDevice != mediaPlaybackOnExternalDevice2)
  {
    v47 = sub_100004778(v35);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = @"CSDMediaPlaybackOnExternalDeviceChangedNotification";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    notificationCenter9 = [(CSDCall *)self notificationCenter];
    [notificationCenter9 postNotificationName:@"CSDMediaPlaybackOnExternalDeviceChangedNotification" object:self];
  }

  if (transmissionState != transmissionState2)
  {
    v49 = sub_100004778(v35);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = @"CSDCallTransmissionStateChangedNotification";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    notificationCenter10 = [(CSDCall *)self notificationCenter];
    [notificationCenter10 postNotificationName:@"CSDCallTransmissionStateChangedNotification" object:self];
  }

  if (prefersToPlayDuringWombat != prefersToPlayDuringWombat2)
  {
    v51 = sub_100004778(v35);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = @"CSDCallPrefersToPlayDuringWombatChangedNotification";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    notificationCenter11 = [(CSDCall *)self notificationCenter];
    [notificationCenter11 postNotificationName:@"CSDCallPrefersToPlayDuringWombatChangedNotification" object:self];
  }

  isUnderlyingLinksConnected2 = [(CSDCall *)self isUnderlyingLinksConnected];
  if (isUnderlyingLinksConnected != isUnderlyingLinksConnected2)
  {
    v54 = sub_100004778(isUnderlyingLinksConnected2);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = @"CSDCallUnderlyingLinksConnectionChangedNotification";
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    notificationCenter12 = [(CSDCall *)self notificationCenter];
    [notificationCenter12 postNotificationName:@"CSDCallUnderlyingLinksConnectionChangedNotification" object:self];
  }

  if (audioInterruptionProviderType != audioInterruptionProviderType2)
  {
    v56 = sub_100004778(isUnderlyingLinksConnected2);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = @"CSDCallAudioInterruptionProviderTypeChangedNotification";
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    notificationCenter13 = [(CSDCall *)self notificationCenter];
    [notificationCenter13 postNotificationName:@"CSDCallAudioInterruptionProviderTypeChangedNotification" object:self];
  }
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  -[CSDCall setHasAudioInterruption:](self, "setHasAudioInterruption:", [to BOOLValue]);
  notificationCenter = [(CSDCall *)self notificationCenter];
  [notificationCenter postNotificationName:@"CSDCallAudioInterruptionPropertiesChangedNotification" object:self];
}

- (void)idStatusUpdatedForDestinations:(id)destinations service:(id)service
{
  serviceCopy = service;
  queue = [(CSDCall *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Received update about new query cache on service %@", &v9, 0x16u);
  }

  [(CSDCall *)self _refreshFaceTimeIDSStatus];
}

- (CSDCallDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end