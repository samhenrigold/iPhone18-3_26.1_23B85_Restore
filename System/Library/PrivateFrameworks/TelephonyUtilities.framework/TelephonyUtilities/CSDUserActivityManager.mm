@interface CSDUserActivityManager
+ (id)allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:(id)d participantIdentifier:(unint64_t)identifier;
+ (id)sharedInstanceWithQueue:(id)queue;
- (CSDUserActivityManager)initWithQueue:(id)queue activityCommunicator:(id)communicator callCenter:(id)center featureFlags:(id)flags;
- (TUCallCenter)callCenter;
- (id)dynamicIdentifierForConversation:(id)conversation uplinkMuted:(BOOL)muted sendingVideo:(BOOL)video;
- (void)callConnected:(id)connected;
- (void)callContinuityChanged:(id)changed;
- (void)callIsSendingVideoChanged:(id)changed;
- (void)callIsUplinkMutedChanged:(id)changed;
- (void)callStartedConnecting:(id)connecting;
- (void)callStatusChanged:(id)changed;
- (void)checkForSmartHoldingCallForSuppressRingtone:(id)ringtone;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager screeningChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)dealloc;
- (void)deregisterHandoffIdentifiersForConversation:(id)conversation;
- (void)endHandoffActivity;
- (void)processStatusChangeAsHandedOffIfNecessaryForCall:(id)call;
- (void)providersChangedForProviderManager:(id)manager;
- (void)receivedBroadcastedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier originatingDeviceType:(id)deviceType;
- (void)shouldSuppressRingtoneChanged:(id)changed;
- (void)smartHoldingSessionChanged:(id)changed;
- (void)startSuppressRingtoneActivityBroadcastingForCall:(id)call;
- (void)startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:(id)change;
- (void)stopAdvertisingForRemovedConversationIfNecessary:(id)necessary;
- (void)stoppedReceivingActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)updateAppHistoryActivityForCall;
- (void)updateAudioVideoHandoffPreferencesForCall:(id)call;
- (void)updateCallHandoffRegistration;
- (void)updateHandoffActivityStateForCall:(id)call;
- (void)updateHandoffAdvertisementForCall:(id)call;
- (void)updateHandoffAdvertisementForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)updateHandoffAdvertisementForConversation:(id)conversation fromOldConversation:(id)oldConversation uplinkMuted:(BOOL)muted sendingVideo:(BOOL)video;
- (void)updateHandoffRegistrationForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)updateSuppressRingtoneActivityListeningState;
@end

@implementation CSDUserActivityManager

- (void)updateAppHistoryActivityForCall
{
  callCenter = [(CSDUserActivityManager *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];
  firstObject = [currentAudioAndVideoCalls firstObject];

  if ([firstObject isHostedOnCurrentDevice] && (objc_msgSend(firstObject, "status") == 3 || objc_msgSend(firstObject, "status") == 4))
  {
    localizedLabel = [firstObject localizedLabel];
    handle = [firstObject handle];
    value = [handle value];
    isoCountryCode = [firstObject isoCountryCode];
    v10 = TUFormattedPhoneNumber();
    v11 = [NSString stringWithFormat:@"%@ – %@", localizedLabel, v10];

    v12 = [NSMutableArray arrayWithCapacity:2];
    handle2 = [firstObject handle];
    value2 = [handle2 value];

    if (value2)
    {
      handle3 = [firstObject handle];
      value3 = [handle3 value];
      [v12 addObject:value3];
    }

    displayName = [firstObject displayName];

    if (displayName)
    {
      displayName2 = [firstObject displayName];
      [v12 addObject:displayName2];
    }

    v19 = [NSMutableDictionary dictionaryWithCapacity:4];
    v20 = TUCallUserActivityDestinationIDKey;
    if (TUCallUserActivityDestinationIDKey)
    {
      handle4 = [firstObject handle];
      value4 = [handle4 value];

      if (value4)
      {
        handle5 = [firstObject handle];
        value5 = [handle5 value];
        [v19 setObject:value5 forKeyedSubscript:v20];
      }
    }

    v25 = TUCallUserActivityHandleKey;
    if (TUCallUserActivityHandleKey)
    {
      handle6 = [firstObject handle];
      dictionaryRepresentation = [handle6 dictionaryRepresentation];

      if (dictionaryRepresentation)
      {
        handle7 = [firstObject handle];
        dictionaryRepresentation2 = [handle7 dictionaryRepresentation];
        [v19 setObject:dictionaryRepresentation2 forKeyedSubscript:v25];
      }
    }

    v30 = TUCallUserActivityProviderIdentifierKey;
    if (TUCallUserActivityProviderIdentifierKey)
    {
      provider = [firstObject provider];
      identifier = [provider identifier];

      if (identifier)
      {
        provider2 = [firstObject provider];
        identifier2 = [provider2 identifier];
        [v19 setObject:identifier2 forKeyedSubscript:v30];
      }
    }

    displayName3 = [firstObject displayName];
    v36 = [CSDUserActivity appHistoryActivityWithTitle:displayName3 subtitle:v11 keywords:v12 userInfo:v19];

    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    [activityCommunicator broadcastActivity:v36 withTimeout:1 shouldPrioritize:0.0];

    v39 = sub_100004778(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v36;
      v42 = 2112;
      v43 = firstObject;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Began app history activity %@ for call %@", buf, 0x16u);
    }
  }
}

- (TUCallCenter)callCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_callCenter);

  return WeakRetained;
}

- (void)updateSuppressRingtoneActivityListeningState
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  callCenter = [(CSDUserActivityManager *)self callCenter];
  v8 = [callCenter callPassingTest:&stru_10061A018];

  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  if (v8)
  {
    handle = [v8 handle];
    value = [handle value];
    [activityCommunicator listenForActivityType:3 dynamicIdentifier:value];
  }

  else
  {
    [activityCommunicator stopListeningForActivityType:3 dynamicIdentifier:0];
  }
}

+ (id)sharedInstanceWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076A40;
  block[3] = &unk_100619D38;
  queueCopy = queue;
  v3 = qword_1006ACAE8;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACAE8, block);
  }

  v5 = qword_1006ACAE0;
  v6 = qword_1006ACAE0;

  return v5;
}

- (CSDUserActivityManager)initWithQueue:(id)queue activityCommunicator:(id)communicator callCenter:(id)center featureFlags:(id)flags
{
  queueCopy = queue;
  communicatorCopy = communicator;
  centerCopy = center;
  flagsCopy = flags;
  v26.receiver = self;
  v26.super_class = CSDUserActivityManager;
  v15 = [(CSDUserActivityManager *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_featureFlags, flags);
    objc_storeStrong(&v16->_activityCommunicator, communicator);
    [(CSDUserActivityCommunicatorProtocol *)v16->_activityCommunicator setDelegate:v16];
    objc_storeWeak(&v16->_callCenter, centerCopy);
    lockdownModeEnabled = v16->_lockdownModeEnabled;
    v16->_lockdownModeEnabled = &stru_100619FD8;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v16 selector:"callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v18 addObserver:v16 selector:"callStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v18 addObserver:v16 selector:"callContinuityChanged:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    [v18 addObserver:v16 selector:"shouldSuppressRingtoneChanged:" name:TUCallShouldSuppressRingingChangedNotification object:0];
    [v18 addObserver:v16 selector:"callStartedConnecting:" name:TUCallCenterCallStartedConnectingNotification object:0];
    [v18 addObserver:v16 selector:"callConnected:" name:TUCallCenterCallConnectedNotification object:0];
    [v18 addObserver:v16 selector:"callIsUplinkMutedChanged:" name:TUCallIsUplinkMutedChangedNotification object:0];
    [v18 addObserver:v16 selector:"callIsSendingVideoChanged:" name:TUCallIsSendingVideoChangedNotification object:0];
    [v18 addObserver:v16 selector:"smartHoldingSessionChanged:" name:TUCallSmartHoldingSessionChangedNotification object:0];
    callCenter = [(CSDUserActivityManager *)v16 callCenter];
    providerManager = [callCenter providerManager];
    [providerManager addDelegate:v16 queue:v16->_queue];

    conversationManager = [callCenter conversationManager];
    [conversationManager addDelegate:v16 queue:v16->_queue];

    [(CSDUserActivityManager *)v16 updateCallHandoffRegistration];
    [(CSDUserActivityManager *)v16 updateAppHistoryActivityForCall];
    [(CSDUserActivityManager *)v16 updateSuppressRingtoneActivityListeningState];
    currentCalls = [callCenter currentCalls];
    firstObject = [currentCalls firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = sub_100004778([(CSDUserActivityManager *)v16 updateHandoffActivityStateForCall:firstObject]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = firstObject;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "It's interesting that we have a call here when we don't really expect one %@", buf, 0xCu);
        }
      }
    }
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  callCenter = [(CSDUserActivityManager *)self callCenter];
  conversationManager = [callCenter conversationManager];
  [conversationManager removeDelegate:self];

  TURemoveEveryTelephonyCenterObserver();
  v6.receiver = self;
  v6.super_class = CSDUserActivityManager;
  [(CSDUserActivityManager *)&v6 dealloc];
}

- (void)updateCallHandoffRegistration
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    [activityCommunicator stopListeningForActivityType:2 dynamicIdentifier:0];

    callCenter = [(CSDUserActivityManager *)self callCenter];
    providerManager = [callCenter providerManager];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [providerManager providers];
    v18 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v18)
    {
      v17 = *v25;
      do
      {
        v6 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = v6;
          v7 = *(*(&v24 + 1) + 8 * v6);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          handoffIdentifiers = [v7 handoffIdentifiers];
          v9 = [handoffIdentifiers countByEnumeratingWithState:&v20 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              v12 = 0;
              do
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(handoffIdentifiers);
                }

                v13 = *(*(&v20 + 1) + 8 * v12);
                v14 = sub_100004778(v9);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v29 = v13;
                  v30 = 2112;
                  v31 = v7;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registering to handle call handoff activity type with dynamic identifier %@ for provider %@", buf, 0x16u);
                }

                activityCommunicator2 = [(CSDUserActivityManager *)self activityCommunicator];
                [activityCommunicator2 listenForActivityType:2 dynamicIdentifier:v13];

                v12 = v12 + 1;
              }

              while (v10 != v12);
              v9 = [handoffIdentifiers countByEnumeratingWithState:&v20 objects:v32 count:16];
              v10 = v9;
            }

            while (v9);
          }

          v6 = v19 + 1;
        }

        while ((v19 + 1) != v18);
        v18 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v18);
    }
  }
}

- (void)updateHandoffActivityStateForCall:(id)call
{
  callCopy = call;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  isHostedOnCurrentDevice = [callCopy isHostedOnCurrentDevice];
  if (!isHostedOnCurrentDevice)
  {
LABEL_28:
    handoffActivity = [(CSDUserActivityManager *)self handoffActivity];

    if (handoffActivity)
    {
      [(CSDUserActivityManager *)self endHandoffActivity];
    }

    goto LABEL_30;
  }

  v7 = sub_100004778(isHostedOnCurrentDevice);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Frontmost call is hosted here ...", &v24, 2u);
  }

  isEndpointOnCurrentDevice = [callCopy isEndpointOnCurrentDevice];
  v9 = isEndpointOnCurrentDevice;
  v10 = sub_100004778(isEndpointOnCurrentDevice);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "... and it is an endpoint here ...", &v24, 2u);
    }

    v12 = +[TUCallCapabilities supportsPrimaryCalling];
    v13 = v12;
    v14 = sub_100004778(v12);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "... but we are a primary device. Not broadcasting frontmost call", &v24, 2u);
      }

      goto LABEL_28;
    }

    if (v15)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "... and we are a secondary device ...", &v24, 2u);
    }

    handoffDynamicIdentifier = [callCopy handoffDynamicIdentifier];
    handoffActivityUserInfo = [callCopy handoffActivityUserInfo];
    v21 = sub_100004778(handoffActivityUserInfo);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (handoffDynamicIdentifier && handoffActivityUserInfo)
    {
      if (v22)
      {
        v24 = 138412290;
        *v25 = handoffDynamicIdentifier;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "... using a broadcast activity with dynamic identifier: %@.", &v24, 0xCu);
      }

      v16 = [CSDUserActivity activityWithType:2 dynamicIdentifier:handoffDynamicIdentifier userInfo:handoffActivityUserInfo originatingDeviceType:0];
    }

    else
    {
      if (v22)
      {
        v24 = 67109376;
        *v25 = handoffDynamicIdentifier == 0;
        *&v25[4] = 1024;
        *&v25[6] = handoffActivityUserInfo == 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] ... but no dynamic identifier could be found (%d) or no handoff user info exists (%d). Not broadcasting frontmost call", &v24, 0xEu);
      }

      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v11)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "... and it is being relayed elsewhere. Using a local activity", &v24, 2u);
    }

    v16 = [CSDUserActivity activityWithType:1 dynamicIdentifier:0 userInfo:0 originatingDeviceType:0];
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  v17 = sub_100004778([(CSDUserActivityManager *)self endHandoffActivity]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    *v25 = v16;
    *&v25[8] = 2112;
    v26 = callCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Beginning handoff activity %@ for call %@", &v24, 0x16u);
  }

  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  [activityCommunicator broadcastActivity:v16];

  [(CSDUserActivityManager *)self setHandoffActivity:v16];
LABEL_30:
}

- (void)endHandoffActivity
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  handoffActivity = [(CSDUserActivityManager *)self handoffActivity];

  if (handoffActivity)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      handoffActivity2 = [(CSDUserActivityManager *)self handoffActivity];
      v10 = 138412290;
      v11 = handoffActivity2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ending handoff activity: %@", &v10, 0xCu);
    }

    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    handoffActivity3 = [(CSDUserActivityManager *)self handoffActivity];
    [activityCommunicator stopBroadcastingActivity:handoffActivity3];

    [(CSDUserActivityManager *)self setHandoffActivity:0];
  }
}

- (void)startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:(id)change
{
  changeCopy = change;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (changeCopy)
  {
    if ([changeCopy status] == 6)
    {
      wasDeclined = [changeCopy wasDeclined];
      if (wasDeclined)
      {
        v7 = sub_100004778(wasDeclined);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412290;
          v9 = changeCopy;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for declined call: %@", &v8, 0xCu);
        }

        [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:changeCopy];
      }
    }
  }
}

- (void)startSuppressRingtoneActivityBroadcastingForCall:(id)call
{
  callCopy = call;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  handle = [callCopy handle];

  value = [handle value];
  v8 = [CSDUserActivity activityWithType:3 dynamicIdentifier:value userInfo:0 originatingDeviceType:0];
  [activityCommunicator broadcastActivity:v8 withTimeout:1 shouldPrioritize:2.0];
}

- (void)updateHandoffAdvertisementForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  callCenter = [(CSDUserActivityManager *)self callCenter];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007799C;
  v13[3] = &unk_10061A040;
  v14 = conversationCopy;
  v9 = conversationCopy;
  v10 = [callCenter callPassingTest:v13];

  if (v10)
  {
    isUplinkMuted = [v10 isUplinkMuted];
    isSendingVideo = [v10 isSendingVideo];
  }

  else
  {
    isUplinkMuted = 0;
    isSendingVideo = 1;
  }

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:v9 fromOldConversation:oldConversationCopy uplinkMuted:isUplinkMuted sendingVideo:isSendingVideo];
}

- (void)updateHandoffAdvertisementForCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (!callCopy || (callCopy = [callCopy isConversation], !callCopy) || (objc_msgSend(v5, "callGroupUUID"), (callCopy = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = callCopy, v7 = objc_msgSend(v5, "status"), v6, v7 != 1))
  {
    v13 = sub_100004778(callCopy);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    if ([v5 isUplinkMuted])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if ([v5 isSendingVideo])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if (v5)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    if (!v5)
    {
      *buf = 138413570;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2112;
      v48 = @"NO";
      v49 = 2112;
      v50 = @"NO";
      v51 = 2112;
      v52 = @"NO";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)", buf, 0x3Eu);
      goto LABEL_39;
    }

    if ([v5 isConversation])
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v35 = v25;
    callGroupUUID = [v5 callGroupUUID];
    if (callGroupUUID)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    *buf = 138413570;
    if ([v5 status] == 1)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v42 = v22;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    v47 = 2112;
    v48 = v35;
    v49 = 2112;
    v50 = v27;
    v51 = 2112;
    v52 = v28;
    v29 = "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)";
    v30 = v13;
    v31 = 62;
LABEL_37:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);

    goto LABEL_39;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  callCenter = [(CSDUserActivityManager *)self callCenter];
  conversationManager = [callCenter conversationManager];
  activeConversations = [conversationManager activeConversations];

  v11 = [activeConversations countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v11)
  {

LABEL_41:
    v13 = sub_100004778(v21);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v32 = @"YES";
    if ([v5 isUplinkMuted])
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    if (![v5 isSendingVideo])
    {
      v32 = @"NO";
    }

    callGroupUUID = [v5 callGroupUUID];
    *buf = 138412802;
    v42 = v33;
    v43 = 2112;
    v44 = v32;
    v45 = 2112;
    v46 = callGroupUUID;
    v29 = "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but could not find conversation for call with groupUUID: %@";
    v30 = v13;
    v31 = 32;
    goto LABEL_37;
  }

  v12 = v11;
  selfCopy = self;
  v13 = 0;
  v14 = *v37;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(activeConversations);
      }

      v16 = *(*(&v36 + 1) + 8 * i);
      callGroupUUID2 = [v5 callGroupUUID];
      groupUUID = [v16 groupUUID];
      v19 = [callGroupUUID2 isEqual:groupUUID];

      if (v19)
      {
        v20 = v16;

        v13 = v20;
      }
    }

    v12 = [activeConversations countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v12);

  if (!v13)
  {
    goto LABEL_41;
  }

  -[CSDUserActivityManager updateHandoffAdvertisementForConversation:fromOldConversation:uplinkMuted:sendingVideo:](selfCopy, "updateHandoffAdvertisementForConversation:fromOldConversation:uplinkMuted:sendingVideo:", v13, 0, [v5 isUplinkMuted], objc_msgSend(v5, "isSendingVideo"));
LABEL_39:
}

- (void)updateHandoffAdvertisementForConversation:(id)conversation fromOldConversation:(id)oldConversation uplinkMuted:(BOOL)muted sendingVideo:(BOOL)video
{
  videoCopy = video;
  mutedCopy = muted;
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    lockdownModeEnabled = [(CSDUserActivityManager *)self lockdownModeEnabled];
    v14 = lockdownModeEnabled[2]();

    if (v14)
    {
      v16 = sub_100004778(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not updating handoff advertisement because lockdown mode is enabled", buf, 2u);
      }
    }

    else
    {
      v16 = [(CSDUserActivityManager *)self dynamicIdentifierForConversation:conversationCopy uplinkMuted:mutedCopy sendingVideo:videoCopy];
      if (v16)
      {
        shouldAdvertiseConversationHandoff = [conversationCopy shouldAdvertiseConversationHandoff];
      }

      else
      {
        shouldAdvertiseConversationHandoff = 0;
      }

      selfCopy = self;
      activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
      v18 = [activityCommunicator queuedActivitiesOfType:5];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v18;
      v19 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            dynamicIdentifier = [v23 dynamicIdentifier];
            v25 = [dynamicIdentifier isEqual:v16];

            if (v25)
            {
              shouldAdvertiseConversationHandoff = 0;
            }

            else
            {
              dynamicIdentifier2 = [v23 dynamicIdentifier];
              v27 = conversationCopy;
              groupUUID = [conversationCopy groupUUID];
              uUIDString = [groupUUID UUIDString];
              v30 = [dynamicIdentifier2 containsString:uUIDString];

              if (v30)
              {
                activityCommunicator2 = [(CSDUserActivityManager *)selfCopy activityCommunicator];
                [activityCommunicator2 stopBroadcastingActivity:v23];
              }

              conversationCopy = v27;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v20);
      }

      if (shouldAdvertiseConversationHandoff)
      {
        v32 = [CSDUserActivity activityWithType:5 dynamicIdentifier:v16 userInfo:0 originatingDeviceType:0];
        activityCommunicator3 = [(CSDUserActivityManager *)selfCopy activityCommunicator];
        [activityCommunicator3 broadcastActivity:v32 withTimeout:1 shouldPrioritize:-1.0];
      }
    }
  }
}

- (void)processStatusChangeAsHandedOffIfNecessaryForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [callCopy provider];
  if (![provider isFaceTimeProvider] || objc_msgSend(callCopy, "status") != 6 || objc_msgSend(callCopy, "disconnectedReason") != 7)
  {

    goto LABEL_29;
  }

  handoffRecipientParticipant = [callCopy handoffRecipientParticipant];

  if (handoffRecipientParticipant)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    callCenter = [(CSDUserActivityManager *)self callCenter];
    conversationManager = [callCenter conversationManager];
    activeConversations = [conversationManager activeConversations];

    v11 = [activeConversations countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (!v11)
    {

      goto LABEL_31;
    }

    v12 = v11;
    v37 = 0;
    v13 = *v43;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(activeConversations);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        callGroupUUID = [callCopy callGroupUUID];
        groupUUID = [v15 groupUUID];
        if ([callGroupUUID isEqual:groupUUID])
        {
          provider2 = [v15 provider];
          isDefaultProvider = [provider2 isDefaultProvider];

          if (!isDefaultProvider)
          {
            continue;
          }

          callGroupUUID = v37;
          v37 = v15;
        }

        else
        {
        }
      }

      v12 = [activeConversations countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (!v12)
      {

        if (v37)
        {
          handoffRecipientParticipant2 = [callCopy handoffRecipientParticipant];
          unsignedLongLongValue = [handoffRecipientParticipant2 unsignedLongLongValue];

          groupUUID2 = [v37 groupUUID];
          v24 = [CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:groupUUID2 participantIdentifier:unsignedLongLongValue];

          v26 = sub_100004778(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [v37 UUID];
            *buf = 138412546;
            v48 = uUID;
            v49 = 2048;
            v50 = unsignedLongLongValue;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "After conversation %@ was handed off elsewhere, re-registering for handoff advertisement for participant %llu so that it can be handed off back", buf, 0x16u);
          }

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v28 = v24;
          v29 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v39;
            do
            {
              for (j = 0; j != v30; j = j + 1)
              {
                if (*v39 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v38 + 1) + 8 * j);
                activityCommunicator = [(CSDUserActivityManager *)selfCopy activityCommunicator];
                [activityCommunicator listenForActivityType:5 dynamicIdentifier:v33];
              }

              v30 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v30);
          }

          v35 = v37;
          goto LABEL_33;
        }

LABEL_31:
        v35 = sub_100004778(v20);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100471690(callCopy, v35);
        }

LABEL_33:

        break;
      }
    }
  }

LABEL_29:
}

- (void)updateHandoffRegistrationForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    lockdownModeEnabled = [(CSDUserActivityManager *)self lockdownModeEnabled];
    v10 = lockdownModeEnabled[2]();

    if (v10)
    {
      v12 = sub_100004778(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not updating handoff registration because lockdown mode is enabled", buf, 2u);
      }
    }

    else
    {
      v13 = +[NSMutableSet set];
      v46 = +[NSMutableSet set];
      if ([conversationCopy isAnyOtherAccountDeviceActive])
      {
        provider = [conversationCopy provider];
        isDefaultProvider = [provider isDefaultProvider];

        if (isDefaultProvider)
        {
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
          v17 = [activeRemoteParticipants countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v62;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v62 != v19)
                {
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                v21 = *(*(&v61 + 1) + 8 * i);
                if ([v21 isLocalAccountHandle])
                {
                  groupUUID = [conversationCopy groupUUID];
                  v23 = +[CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:](CSDUserActivityManager, "allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:", groupUUID, [v21 identifier]);
                  [v13 unionSet:v23];
                }
              }

              v18 = [activeRemoteParticipants countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v18);
          }
        }
      }

      if (oldConversationCopy && [oldConversationCopy isAnyOtherAccountDeviceActive])
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        activeRemoteParticipants2 = [oldConversationCopy activeRemoteParticipants];
        v25 = [activeRemoteParticipants2 countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v58;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v58 != v27)
              {
                objc_enumerationMutation(activeRemoteParticipants2);
              }

              v29 = *(*(&v57 + 1) + 8 * j);
              if ([v29 isLocalAccountHandle])
              {
                groupUUID2 = [oldConversationCopy groupUUID];
                v31 = +[CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:](CSDUserActivityManager, "allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:", groupUUID2, [v29 identifier]);

                anyObject = [v31 anyObject];
                LOBYTE(groupUUID2) = [v13 containsObject:anyObject];

                if ((groupUUID2 & 1) == 0)
                {
                  [v46 unionSet:v31];
                }
              }
            }

            v26 = [activeRemoteParticipants2 countByEnumeratingWithState:&v57 objects:v68 count:16];
          }

          while (v26);
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v12 = v13;
      v33 = [v12 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v54;
        do
        {
          for (k = 0; k != v34; k = k + 1)
          {
            if (*v54 != v35)
            {
              objc_enumerationMutation(v12);
            }

            v37 = *(*(&v53 + 1) + 8 * k);
            activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
            [activityCommunicator listenForActivityType:5 dynamicIdentifier:v37];
          }

          v34 = [v12 countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v34);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v39 = v46;
      v40 = [v39 countByEnumeratingWithState:&v49 objects:v66 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v50;
        do
        {
          for (m = 0; m != v41; m = m + 1)
          {
            if (*v50 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v49 + 1) + 8 * m);
            activityCommunicator2 = [(CSDUserActivityManager *)self activityCommunicator];
            [activityCommunicator2 stopListeningForActivityType:5 dynamicIdentifier:v44];
          }

          v41 = [v39 countByEnumeratingWithState:&v49 objects:v66 count:16];
        }

        while (v41);
      }
    }
  }
}

- (void)deregisterHandoffIdentifiersForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    groupUUID = [conversationCopy groupUUID];
    uUIDString = [groupUUID UUIDString];
    [activityCommunicator stopListeningForActivityType:5 matchingDynamicIdentifierSubstring:uUIDString];
  }
}

+ (id)allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:(id)d participantIdentifier:(unint64_t)identifier
{
  dCopy = d;
  v6 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:0 sendingVideo:0];
  v13[0] = v6;
  v7 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:0 sendingVideo:1];
  v13[1] = v7;
  v8 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:1 sendingVideo:0];
  v13[2] = v8;
  v9 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:1 sendingVideo:1];

  v13[3] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = [NSSet setWithArray:v10];

  return v11;
}

- (void)callStatusChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:object2];

    [(CSDUserActivityManager *)self updateAppHistoryActivityForCall];
    object3 = [changedCopy object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:object3];

    [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
    object4 = [changedCopy object];
    [(CSDUserActivityManager *)self processStatusChangeAsHandedOffIfNecessaryForCall:object4];
  }

  else
  {
    v12 = sub_100004778(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      object5 = [changedCopy object];
      v15 = 138412546;
      v16 = object5;
      v17 = 2112;
      v18 = objc_opt_class();
      v14 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v15, 0x16u);
    }
  }
}

- (void)callContinuityChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:object2];
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      object3 = [changedCopy object];
      v13 = 138412546;
      v14 = object3;
      v15 = 2112;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v13, 0x16u);
    }
  }
}

- (void)shouldSuppressRingtoneChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
  object = [changedCopy object];

  if ([object shouldSuppressRingtone])
  {
    ringtoneSuppressedRemotely = [object ringtoneSuppressedRemotely];
    if ((ringtoneSuppressedRemotely & 1) == 0)
    {
      v8 = sub_100004778(ringtoneSuppressedRemotely);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = object;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for call that suppressed its ringtone: %@", &v9, 0xCu);
      }

      [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:object];
    }
  }
}

- (void)callStartedConnecting:(id)connecting
{
  connectingCopy = connecting;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [connectingCopy object];

  isOutgoing = [object isOutgoing];
  if ((isOutgoing & 1) == 0)
  {
    v8 = sub_100004778(isOutgoing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = object;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for incoming call that started connecting: %@", &v9, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:object];
  }
}

- (void)callConnected:(id)connected
{
  connectedCopy = connected;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [connectedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [connectedCopy object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:object2];
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      object3 = [connectedCopy object];
      v13 = 138412546;
      v14 = object3;
      v15 = 2112;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v13, 0x16u);
    }
  }
}

- (void)callIsUplinkMutedChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    object = [changedCopy object];
    [(CSDUserActivityManager *)self updateAudioVideoHandoffPreferencesForCall:object];
  }
}

- (void)callIsSendingVideoChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    object = [changedCopy object];
    [(CSDUserActivityManager *)self updateAudioVideoHandoffPreferencesForCall:object];
  }
}

- (void)smartHoldingSessionChanged:(id)changed
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  smartHoldingRelayEnabled = [featureFlags smartHoldingRelayEnabled];

  if (smartHoldingRelayEnabled)
  {

    [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
  }
}

- (void)updateAudioVideoHandoffPreferencesForCall:(id)call
{
  callCopy = call;
  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    if (callCopy && (v7 = [callCopy isConversation], v7) && (objc_msgSend(callCopy, "callGroupUUID"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = objc_msgSend(callCopy, "status"), v8, v9 == 1))
    {
      [(CSDUserActivityManager *)self updateHandoffAdvertisementForCall:callCopy];
    }

    else
    {
      v10 = sub_100004778(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ([callCopy isUplinkMuted])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if ([callCopy isSendingVideo])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if (callCopy)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (callCopy)
        {
          if ([callCopy isConversation])
          {
            v14 = @"YES";
          }

          else
          {
            v14 = @"NO";
          }

          callGroupUUID = [callCopy callGroupUUID];
          if (callGroupUUID)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v18 = 138413570;
          if ([callCopy status] == 1)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v19 = v11;
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v13;
          v24 = 2112;
          v25 = v14;
          v26 = 2112;
          v27 = v16;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)", &v18, 0x3Eu);
        }

        else
        {
          v18 = 138413570;
          v19 = v11;
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v13;
          v24 = 2112;
          v25 = @"NO";
          v26 = 2112;
          v27 = @"NO";
          v28 = 2112;
          v29 = @"NO";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)", &v18, 0x3Eu);
        }
      }
    }
  }
}

- (void)providersChangedForProviderManager:(id)manager
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateCallHandoffRegistration];
}

- (void)receivedBroadcastedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier originatingDeviceType:(id)deviceType
{
  identifierCopy = identifier;
  deviceTypeCopy = deviceType;
  queue = [(CSDUserActivityManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000797B8;
  v13[3] = &unk_10061A068;
  typeCopy = type;
  v14 = identifierCopy;
  selfCopy = self;
  v16 = deviceTypeCopy;
  v11 = deviceTypeCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (void)stoppedReceivingActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v6 = [(CSDUserActivityManager *)self queue:*&type];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079C10;
  v7[3] = &unk_100619EF8;
  typeCopy = type;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (void)checkForSmartHoldingCallForSuppressRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  callCenter = [(CSDUserActivityManager *)self callCenter];
  frontmostCall = [callCenter frontmostCall];

  if (frontmostCall)
  {
    handle = [frontmostCall handle];
    value = [handle value];
    if (([value isEqualToString:ringtoneCopy] & 1) != 0 && (objc_msgSend(frontmostCall, "smartHoldingSession"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      smartHoldingSession = [frontmostCall smartHoldingSession];
      state = [smartHoldingSession state];

      if (state == 3)
      {
        v14 = sub_100004778(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = frontmostCall;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received suppress ringtone activity broadcast. Suppressing ringtone due to smart holding requires user attention state for call %@", &v15, 0xCu);
        }

        [frontmostCall suppressRingtoneDueToRemoteSuppression];
      }
    }

    else
    {
    }
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  oldConversationCopy = oldConversation;
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:conversationCopy fromOldConversation:oldConversationCopy];
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  oldConversationCopy = oldConversation;
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:conversationCopy fromOldConversation:oldConversationCopy];
}

- (void)conversationManager:(id)manager screeningChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:conversationCopy fromOldConversation:0];
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v11 = 136315394;
    v12 = "[CSDUserActivityManager conversationManager:activeRemoteParticipantsChangedForConversation:fromOldConversation:]";
    v13 = 2112;
    v14 = uUID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Updating handoff registration for conversation UUID %@", &v11, 0x16u);
  }

  [(CSDUserActivityManager *)self updateHandoffRegistrationForConversation:conversationCopy fromOldConversation:conversationCopy];
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v10 = 136315394;
    v11 = "[CSDUserActivityManager conversationManager:addedActiveConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Updating handoff registration for conversation UUID %@", &v10, 0x16u);
  }

  [(CSDUserActivityManager *)self updateHandoffRegistrationForConversation:conversationCopy fromOldConversation:0];
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  managerCopy = manager;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activeConversations = [managerCopy activeConversations];

  v10 = [activeConversations count];
  if (v10)
  {
    [(CSDUserActivityManager *)self deregisterHandoffIdentifiersForConversation:conversationCopy];
  }

  else
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No more conversations, unregistering all conversation handoff dynamic identifiers", v14, 2u);
    }

    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    [activityCommunicator stopListeningForActivityType:5 dynamicIdentifier:0];
  }

  [(CSDUserActivityManager *)self stopAdvertisingForRemovedConversationIfNecessary:conversationCopy];
}

- (void)stopAdvertisingForRemovedConversationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  v7 = [activityCommunicator queuedActivitiesOfType:5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        dynamicIdentifier = [v13 dynamicIdentifier];
        groupUUID = [necessaryCopy groupUUID];
        uUIDString = [groupUUID UUIDString];
        v17 = [dynamicIdentifier containsString:uUIDString];

        if (v17)
        {
          activityCommunicator2 = [(CSDUserActivityManager *)selfCopy activityCommunicator];
          [activityCommunicator2 stopBroadcastingActivity:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (id)dynamicIdentifierForConversation:(id)conversation uplinkMuted:(BOOL)muted sendingVideo:(BOOL)video
{
  videoCopy = video;
  mutedCopy = muted;
  conversationCopy = conversation;
  if ([conversationCopy state] != 3)
  {
    goto LABEL_6;
  }

  provider = [conversationCopy provider];
  if (![provider isDefaultProvider])
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v10 = [activeRemoteParticipants count];
  if (v10 >= +[TUConversationManager maximumNumberOfInvitedMembers])
  {

    goto LABEL_8;
  }

  avMode = [conversationCopy avMode];

  if (!avMode)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  provider = [conversationCopy groupUUID];
  v12 = +[NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:participantIdentifier:uplinkMuted:sendingVideo:](NSString, "tu_conversationHandoffDynamicIdentifierWithGroupUUID:participantIdentifier:uplinkMuted:sendingVideo:", provider, [conversationCopy localParticipantIdentifier], mutedCopy, videoCopy);
LABEL_9:

LABEL_10:

  return v12;
}

@end