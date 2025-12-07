@interface CSDRelayClientController
- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer;
- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer featureFlags:(id)flags;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (void)handleAnnouncementHasFinishedChangedFromHost:(id)host;
- (void)handleCallAnsweredElsewhereMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleCallConnectedMessageFromHost:(id)host;
- (void)handleCallDialedMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleCallDisconnectedMessageFromHost:(id)host;
- (void)handleCallStartedConnectingMessageFromHost:(id)host;
- (void)handleCaptionsResultFromHost:(id)host;
- (void)handleConversationProminenceMessageFromHost:(id)host;
- (void)handleDeviceUnavailableMessageFromHost:(id)host;
- (void)handleHardPauseDigitsAvailabilityMessageFromHost:(id)host;
- (void)handleIncomingCallMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleInvitationSentMessageFromHost:(id)host;
- (void)handleLastReceptionistMessageChangedFromHost:(id)host;
- (void)handleNeedsManualInCallSoundsChangeMessageFromHost:(id)host;
- (void)handleOngoingConversationMessageFromHost:(id)host;
- (void)handlePullRelayingCallsMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handlePushHostedCallsMessageFromHost:(id)host completion:(id)completion;
- (void)handleReceivedDTMFUpdateMessageFromHost:(id)host;
- (void)handleReceptionistSessionChangedFromHost:(id)host;
- (void)handleReceptionistStateChangedFromHost:(id)host;
- (void)handleResetStateMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleResetWantsHoldMusicFromHost:(id)host;
- (void)handleScreeningChangedFromHost:(id)host;
- (void)handleSmartHoldingSessionChangedFromHost:(id)host;
- (void)handleUpdateCallContextAvailableMessageFromHost:(id)host;
- (void)handleUpdateCallDisplayContextMessageFromHost:(id)host;
- (void)handleUpdateCallModelMessageFromHost:(id)host;
- (void)handleUpdateConversationsMessageFromHost:(id)host;
- (void)handleUpdateFailureExpectedMessageFromHost:(id)host;
- (void)handleUpdateRemoteCallStateMessageFromHost:(id)host;
- (void)handleUpdateRemoteUplinkMutedMessageFromHost:(id)host;
- (void)handleUpdateRoutesMessageFromHost:(id)host;
- (void)handleUpdateSupportsDTMFUpdatesMessageFromHost:(id)host;
- (void)handleUpdateSupportsEmergencyFallbackMessageFromHost:(id)host;
- (void)handleUpdateSupportsTTYWithVoiceMessageFromHost:(id)host;
- (void)pullRemotelyHostedCallsForMessage:(id)message completion:(id)completion;
@end

@implementation CSDRelayClientController

- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer
{
  observerCopy = observer;
  queueCopy = queue;
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [(CSDRelayClientController *)self initWithQueue:queueCopy assistantServicesObserver:observerCopy featureFlags:v8];

  return v9;
}

- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer featureFlags:(id)flags
{
  queueCopy = queue;
  observerCopy = observer;
  flagsCopy = flags;
  v15.receiver = self;
  v15.super_class = CSDRelayClientController;
  v12 = [(CSDRelayClientController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_assistantServicesObserver, observer);
    objc_storeStrong(&v13->_featureFlags, flags);
  }

  return v13;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayClientController *)self queue];
  dispatch_assert_queue_V2(queue);

  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  v8 = [callContainer callWithUniqueProxyIdentifier:identifierCopy];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [CSDCrashReporter simulateCrashReportWithFormat:@"Call is not of type CSDRelayCall, this should not be happening.  Please file a bug to [FaceTime | (New Bugs)]"];
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)handleIncomingCallMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v8 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v8)
  {
    v12 = [[CSDRelayCall alloc] initWithRelayMessage:hostCopy outgoing:0];
    callStateController = [(CSDRelayController *)self callStateController];
    [callStateController setCallDelegatesIfNeeded:v12];

    assistantServicesObserver = [(CSDRelayClientController *)self assistantServicesObserver];
    announceCallsProviderIdentifier = [assistantServicesObserver announceCallsProviderIdentifier];
    [(CSDRelayCall *)v12 setAnnounceProviderIdentifier:announceCallsProviderIdentifier];

    [hostCopy hostCallCreationTime];
    [(CSDRelayCall *)v12 setHostCreationTime:?];
    [hostCopy messageSendTime];
    [(CSDRelayCall *)v12 setHostMessageSendTime:?];
    v16 = +[NSDate date];
    [v16 timeIntervalSince1970];
    [(CSDRelayCall *)v12 setClientMessageReceiveTime:?];

    if (deviceCopy)
    {
      -[CSDCall setEndpointOnCurrentDevice:](v12, "setEndpointOnCurrentDevice:", [hostCopy cannotBeAnswered] ^ 1);
      -[CSDRelayCall setCannotRelayAudioOrVideo:](v12, "setCannotRelayAudioOrVideo:", [hostCopy cannotRelayAudioOrVideoOnPairedDevice]);
    }

    callStateController2 = [(CSDRelayController *)self callStateController];
    [callStateController2 propertiesChangedForCall:v12];

    displayContext = [(CSDCall *)v12 displayContext];
    displayContext2 = [hostCopy displayContext];
    v20 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
    [(CSDCall *)v12 setDisplayContext:v20];

    imageURL = [(CSDRelayCall *)v12 imageURL];

    if (!imageURL)
    {
      goto LABEL_20;
    }

    image = [hostCopy image];
    featureFlags = [(CSDRelayClientController *)self featureFlags];
    callerIDSyncMacEnabled = [featureFlags callerIDSyncMacEnabled];

    if (callerIDSyncMacEnabled)
    {
      v26 = +[NSFileManager defaultManager];
      imageURL2 = [(CSDRelayCall *)v12 imageURL];
      uRLByDeletingLastPathComponent = [imageURL2 URLByDeletingLastPathComponent];

      absoluteString = [uRLByDeletingLastPathComponent absoluteString];
      v30 = [v26 fileExistsAtPath:absoluteString isDirectory:0];

      if ((v30 & 1) == 0)
      {
        [v26 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
      }
    }

    if (image)
    {
      imageURL3 = [(CSDRelayCall *)v12 imageURL];
      v32 = [image writeToURL:imageURL3 atomically:1];

      if (v32)
      {
LABEL_19:

LABEL_20:
        v36 = dispatch_time(0, 90000000000);
        queue = [(CSDRelayClientController *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000AC810;
        block[3] = &unk_100619F48;
        block[4] = self;
        v39 = v12;
        v40 = deviceCopy;
        v10 = v12;
        dispatch_after(v36, queue, block);

        goto LABEL_21;
      }

      v34 = sub_100004778(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v35 = "Failed to persist business image";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
      }
    }

    else
    {
      v34 = sub_100004778(v25);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v35 = "Got an imageURL but no imageData to persist";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [hostCopy typeString];
    *buf = 138412546;
    v42 = typeString;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring %@ message because we already have a call with this uniqueProxyIdentifier: %@", buf, 0x16u);
  }

LABEL_21:
}

- (void)handleConversationProminenceMessageFromHost:(id)host
{
  hostCopy = host;
  v4 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = hostCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleConversationProminenceMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleUpdateConversationsMessageFromHost:(id)host
{
  hostCopy = host;
  v4 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = hostCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleUpdateConversationsMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleOngoingConversationMessageFromHost:(id)host
{
  hostCopy = host;
  v4 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = hostCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleOngoingConversationMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleCallDialedMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v8 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  v10 = sub_100004778(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (deviceCopy)
    {
      if (v11)
      {
        typeString = [hostCopy typeString];
        v17 = 138412290;
        v18 = typeString;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating new call for %@ message", &v17, 0xCu);
      }

      v10 = [[CSDRelayCall alloc] initWithRelayMessage:hostCopy outgoing:1];
      callStateController = [(CSDRelayController *)self callStateController];
      [callStateController setCallDelegatesIfNeeded:v10];

      [v10 setEndpointOnCurrentDevice:0];
      callStateController2 = [(CSDRelayController *)self callStateController];
      [callStateController2 propertiesChangedForCall:v10];
    }

    else
    {
      if (!v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      callStateController2 = [hostCopy typeString];
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      v17 = 138412546;
      v18 = callStateController2;
      v19 = 2112;
      v20 = uniqueProxyIdentifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring %@ message because no call exists for %@ and the message is not from the paired device", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  if (v11)
  {
    typeString2 = [hostCopy typeString];
    v17 = 138412546;
    v18 = typeString2;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We already have a call for this %@ message: %@. Updating it with new values", &v17, 0x16u);
  }

  [v8 updateWithRelayMessage:hostCopy];
LABEL_13:
}

- (void)handleCallAnsweredElsewhereMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
    callController = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier2];

    if (callController)
    {
      v36 = callController;
      callsHostedElsewhere = [NSArray arrayWithObjects:&v36 count:1];
    }

    else
    {
      v15 = sub_100004778(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier3 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        *buf = 138412546;
        v33 = uniqueProxyIdentifier3;
        v34 = 2112;
        v35 = allCalls;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
      }

      callsHostedElsewhere = 0;
    }
  }

  else
  {
    v13 = sub_100004778(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Call answered elsewhere message had no uniqueProxyIdentifier set. Using current calls", buf, 2u);
    }

    callController = [(CSDRelayController *)self callController];
    callContainer = [callController callContainer];
    callsHostedElsewhere = [callContainer callsHostedElsewhere];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = callsHostedElsewhere;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        if (device || (([*(*(&v27 + 1) + 8 * v22) isScreening] & 1) != 0 || objc_msgSend(hostCopy, "isScreening")) && (-[CSDRelayClientController featureFlags](self, "featureFlags"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "LVMEverywhere"), v24, (v25 & 1) != 0))
        {
          if ([v23 isScreening] & 1) != 0 || (objc_msgSend(hostCopy, "isScreening"))
          {
            featureFlags = [(CSDRelayClientController *)self featureFlags];
            [v23 setScreening:{objc_msgSend(featureFlags, "LVMEverywhere")}];
          }

          else
          {
            [v23 setScreening:0];
          }

          [v23 setCallStatus:1];
          [v23 setEndpointOnCurrentDevice:{objc_msgSend(v23, "isScreening")}];
        }

        else
        {
          [v23 setLocallyDisconnectedWithReasonIfNone:1];
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }
}

- (void)handleCallDisconnectedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v5 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v5)
  {
    [v5 setLocallyDisconnectedWithReasonIfNone:objc_msgSend(hostCopy stopConference:{"disconnectedReason"), 1}];
  }

  else
  {
    v6 = +[CSDRelayConferenceInterface sharedInstance];
    uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
    [v6 stopConferenceForIdentifier:uniqueProxyIdentifier2];
  }
}

- (void)handleCallConnectedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setLocallyConnected];
    callModel = [hostCopy callModel];
    [v6 setModel:callModel];
  }

  else
  {
    callModel = sub_100004778(v7);
    if (os_log_type_enabled(callModel, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, callModel, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handlePullRelayingCallsMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  otherUniqueProxyIdentifiers = [host otherUniqueProxyIdentifiers];
  v7 = [NSSet setWithArray:otherUniqueProxyIdentifiers];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v11 = [callsHostedElsewhere countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v15 isHostedOnCurrentDevice] & 1) == 0)
        {
          if (!deviceCopy || ([v15 uniqueProxyIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "containsObject:", v16), v16, v17))
          {
            [v15 setLocallyDisconnectedWithReasonIfNone:7];
          }

          [v15 setEndpointOnCurrentDevice:0];
          v18 = +[CSDRelayConferenceInterface sharedInstance];
          uniqueProxyIdentifier = [v15 uniqueProxyIdentifier];
          [v18 stopConferenceForIdentifier:uniqueProxyIdentifier];
        }
      }

      v12 = [callsHostedElsewhere countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)handleResetWantsHoldMusicFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setWantsHoldMusic:0];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleCaptionsResultFromHost:(id)host
{
  hostCopy = host;
  featureFlags = [(CSDRelayClientController *)self featureFlags];
  lVMEverywhere = [featureFlags LVMEverywhere];

  if (lVMEverywhere)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v7 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    captionsResult = [hostCopy captionsResult];
    tuCaptionsResult = [captionsResult tuCaptionsResult];

    callStateController = [(CSDRelayController *)self callStateController];
    [callStateController updateClientsWithCaptionsResults:tuCaptionsResult forCall:v7];
  }
}

- (void)handleUpdateCallModelMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
    callsHostedElsewhere = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier2];

    if (callsHostedElsewhere)
    {
      callModel = [hostCopy callModel];
      [callsHostedElsewhere setModel:callModel];
    }

    else
    {
      v18 = sub_100004778(v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier3 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        *buf = 138412546;
        v27 = uniqueProxyIdentifier3;
        v28 = 2112;
        v29 = allCalls;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    callController = [(CSDRelayController *)self callController];
    callContainer = [callController callContainer];
    callsHostedElsewhere = [callContainer callsHostedElsewhere];

    v12 = [callsHostedElsewhere countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(callsHostedElsewhere);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          callModel2 = [hostCopy callModel];
          [v16 setModel:callModel2];
        }

        v13 = [callsHostedElsewhere countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

- (void)handleDeviceUnavailableMessageFromHost:(id)host
{
  hostCopy = host;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v8 = [callsHostedElsewhere countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 isEndpointOnCurrentDevice])
        {
          [v12 setLocallyDisconnectedWithReasonIfNone:{objc_msgSend(hostCopy, "disconnectedReason")}];
        }
      }

      v9 = [callsHostedElsewhere countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)handleResetStateMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  hostCopy = host;
  v6 = +[TUCallCenter sharedInstance];
  callsHostedElsewhere = [v6 callsHostedElsewhere];
  v8 = [NSMutableSet setWithArray:callsHostedElsewhere];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = hostCopy;
  protoCalls = [hostCopy protoCalls];
  v10 = [protoCalls countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(protoCalls);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        uniqueProxyIdentifier = [(CSDRelayCall *)v14 uniqueProxyIdentifier];
        v16 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

        if (v16)
        {
          [v8 removeObject:v16];
          v18 = [(CSDRelayCall *)v14 isEqualToCall:v16];
          v19 = v18;
          v20 = sub_100004778(v18);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            if (v21)
            {
              *buf = 138412546;
              v47 = v16;
              v48 = 2112;
              v49 = v14;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not resetting call %@ with protoCall %@ because they are equal", buf, 0x16u);
            }
          }

          else
          {
            if (v21)
            {
              *buf = 138412546;
              v47 = v16;
              v48 = 2112;
              v49 = v14;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Resetting call %@ with protoCall %@", buf, 0x16u);
            }

            [(CSDRelayCall *)v14 updateRelayCall:v16];
          }
        }

        else
        {
          if (!deviceCopy)
          {
            continue;
          }

          v22 = sub_100004778(v17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v14;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Creating new call with protoCall %@", buf, 0xCu);
          }

          v23 = [CSDRelayCall alloc];
          uniqueProxyIdentifier2 = [(CSDRelayCall *)v14 uniqueProxyIdentifier];
          v16 = [(CSDRelayCall *)v23 initWithUniqueProxyIdentifier:uniqueProxyIdentifier2 endpointOnCurrentDevice:0];

          callStateController = [(CSDRelayController *)self callStateController];
          [callStateController setCallDelegatesIfNeeded:v16];

          [(CSDRelayCall *)v14 updateRelayCall:v16];
          callStateController2 = [(CSDRelayController *)self callStateController];
          [callStateController2 propertiesChangedForCall:v16];
        }
      }

      v11 = [protoCalls countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v11);
  }

  if (deviceCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = v8;
    v28 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v38;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v37 + 1) + 8 * j);
          status = [(CSDRelayCall *)v32 status];
          if (status != 3)
          {
            v34 = sub_100004778(status);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v47 = v32;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Existing call no longer exists and is not sending: %@", buf, 0xCu);
            }

            [(CSDRelayCall *)v32 setLocallyDisconnectedWithReasonIfNone:0];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v29);
    }
  }
}

- (void)handleHardPauseDigitsAvailabilityMessageFromHost:(id)host
{
  hostCopy = host;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v8 = [callsHostedElsewhere countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        hardPauseDigits = [hostCopy hardPauseDigits];
        [v12 setHardPauseDigits:hardPauseDigits];

        [v12 setHardPauseDigitsState:{objc_msgSend(hostCopy, "hardPauseDigitsState")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [callsHostedElsewhere countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)handleUpdateSupportsDTMFUpdatesMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setSupportsDTMFUpdates:{objc_msgSend(hostCopy, "supportsDTMFUpdates")}];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleReceivedDTMFUpdateMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v11 = sub_100004778(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v16 = 138412546;
      v17 = uniqueProxyIdentifier2;
      v18 = 2112;
      v19 = allCalls;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v16, 0x16u);
    }

    goto LABEL_6;
  }

  hasDtmfUpdateDigits = [hostCopy hasDtmfUpdateDigits];
  if (hasDtmfUpdateDigits)
  {
    v9 = [TUCallDTMFUpdate alloc];
    dtmfUpdateDigits = [hostCopy dtmfUpdateDigits];
    v11 = [v9 initWithDigits:dtmfUpdateDigits];

    callStateController = [(CSDRelayController *)self callStateController];
    [callStateController handleReceivedCallDTMFUpdate:v11 forCall:v6];

LABEL_6:
    goto LABEL_10;
  }

  v15 = sub_100004778(hasDtmfUpdateDigits);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100472AB8(hostCopy, v15);
  }

LABEL_10:
}

- (void)handleScreeningChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138412290;
    v50 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleScreeningChangedFromHost %@", &v49, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  lVMEverywhere = [featureFlags LVMEverywhere];

  if (lVMEverywhere)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v10 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    isScreening = [hostCopy isScreening];
    if (v10)
    {
      if (isScreening)
      {
        -[NSObject setScreening:](v10, "setScreening:", [hostCopy isScreening]);
      }

      else
      {
        isScreening2 = [v10 isScreening];
        -[NSObject setScreening:](v10, "setScreening:", [hostCopy isScreening]);
        if (isScreening2)
        {
          [v10 setLocallyDisconnectedWithReasonIfNone:1 stopConference:1];
        }
      }

      goto LABEL_44;
    }

    if (!isScreening)
    {
      goto LABEL_41;
    }

    featureFlags2 = [(CSDRelayClientController *)self featureFlags];
    if (([featureFlags2 LVMEverywhere] & 1) == 0)
    {
      featureFlags3 = [(CSDRelayClientController *)self featureFlags];
      if (![featureFlags3 receptionistEnabled])
      {
        featureFlags4 = [(CSDRelayClientController *)self featureFlags];
        smartHoldingRelayEnabled = [featureFlags4 smartHoldingRelayEnabled];

        if ((smartHoldingRelayEnabled & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_14:
        v14 = [[CSDRelayCall alloc] initWithRelayMessage:hostCopy outgoing:0];
        [(CSDCall *)v14 setEndpointOnCurrentDevice:0];
        callStateController = [(CSDRelayController *)self callStateController];
        [callStateController setCallDelegatesIfNeeded:v14];

        assistantServicesObserver = [(CSDRelayClientController *)self assistantServicesObserver];
        announceCallsProviderIdentifier = [assistantServicesObserver announceCallsProviderIdentifier];
        [(CSDRelayCall *)v14 setAnnounceProviderIdentifier:announceCallsProviderIdentifier];

        [hostCopy hostCallCreationTime];
        [(CSDRelayCall *)v14 setHostCreationTime:?];
        [hostCopy messageSendTime];
        [(CSDRelayCall *)v14 setHostMessageSendTime:?];
        v18 = +[NSDate date];
        [v18 timeIntervalSince1970];
        [(CSDRelayCall *)v14 setClientMessageReceiveTime:?];

        [(CSDCall *)v14 setScreening:1];
        [(CSDRelayCall *)v14 setCallStatus:1];
        [(CSDCall *)v14 setEndpointOnCurrentDevice:1];
        smartHoldingSession = [hostCopy smartHoldingSession];

        if (smartHoldingSession)
        {
          smartHoldingSession2 = [hostCopy smartHoldingSession];
          smartHoldingSession = [smartHoldingSession2 tuSmartHoldingSession];
        }

        smartHoldingSession3 = [(CSDCall *)v14 smartHoldingSession];

        if (smartHoldingSession3 && smartHoldingSession)
        {
          smartHoldingSession4 = [(CSDCall *)v14 smartHoldingSession];
          if ([smartHoldingSession4 state])
          {
            state = [smartHoldingSession state];

            if (!state)
            {
              [(CSDCall *)v14 setSmartHoldingActiveSessionCount:[(CSDCall *)v14 smartHoldingActiveSessionCount]+ 1];
            }
          }

          else
          {
          }
        }

        [(CSDCall *)v14 setSmartHoldingSession:smartHoldingSession];
        callStateController2 = [(CSDRelayController *)self callStateController];
        [callStateController2 propertiesChangedForCall:v14];

        displayContext = [(CSDCall *)v14 displayContext];
        displayContext2 = [hostCopy displayContext];
        v30 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
        [(CSDCall *)v14 setDisplayContext:v30];

        imageURL = [(CSDRelayCall *)v14 imageURL];

        if (!imageURL)
        {
          goto LABEL_40;
        }

        image = [hostCopy image];
        featureFlags5 = [(CSDRelayClientController *)self featureFlags];
        callerIDSyncMacEnabled = [featureFlags5 callerIDSyncMacEnabled];

        if (callerIDSyncMacEnabled)
        {
          v36 = +[NSFileManager defaultManager];
          imageURL2 = [(CSDRelayCall *)v14 imageURL];
          uRLByDeletingLastPathComponent = [imageURL2 URLByDeletingLastPathComponent];

          absoluteString = [uRLByDeletingLastPathComponent absoluteString];
          v40 = [v36 fileExistsAtPath:absoluteString isDirectory:0];

          if ((v40 & 1) == 0)
          {
            [v36 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
          }
        }

        if (image)
        {
          imageURL3 = [(CSDRelayCall *)v14 imageURL];
          v42 = [image writeToURL:imageURL3 atomically:1];

          if (v42)
          {
LABEL_39:

LABEL_40:
LABEL_41:
            v46 = sub_100004778(isScreening);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
              allCalls = [(CSDRelayController *)self allCalls];
              v49 = 138412546;
              v50 = uniqueProxyIdentifier2;
              v51 = 2112;
              v52 = allCalls;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v49, 0x16u);
            }

            goto LABEL_44;
          }

          v44 = sub_100004778(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v49) = 0;
            v45 = "Failed to persist business image";
LABEL_37:
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v45, &v49, 2u);
          }
        }

        else
        {
          v44 = sub_100004778(v35);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v49) = 0;
            v45 = "Got an imageURL but no imageData to persist";
            goto LABEL_37;
          }
        }

        goto LABEL_39;
      }
    }

    goto LABEL_14;
  }

  v10 = sub_100004778(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v49) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LVMEverywhere is not enabled, ignoring handleScreeningChangedFromHost message", &v49, 2u);
  }

LABEL_44:
}

- (void)handleReceptionistStateChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistStateChangedFromHost %@", &v15, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v10 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v10)
    {
      -[NSObject setReceptionistState:](v10, "setReceptionistState:", [hostCopy receptionistState]);
    }

    else
    {
      v12 = sub_100004778(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v15 = 138412546;
        v16 = uniqueProxyIdentifier2;
        v17 = 2112;
        v18 = allCalls;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistStateChangedFromHost message", &v15, 2u);
    }
  }
}

- (void)handleLastReceptionistMessageChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleLastReceptionistMessageChangedFromHost %@", &v15, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v10 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v10)
    {
      lastReceptionistMessage = [hostCopy lastReceptionistMessage];
      [v10 setLastReceptionistMessage:lastReceptionistMessage];
    }

    else
    {
      lastReceptionistMessage = sub_100004778(v11);
      if (os_log_type_enabled(lastReceptionistMessage, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v15 = 138412546;
        v16 = uniqueProxyIdentifier2;
        v17 = 2112;
        v18 = allCalls;
        _os_log_impl(&_mh_execute_header, lastReceptionistMessage, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleLastReceptionistMessageChangedFromHost message", &v15, 2u);
    }
  }
}

- (void)handleReceptionistSessionChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistSessionChangedFromHost %@", &v19, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v10 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v10)
    {
      receptionistSession = [hostCopy receptionistSession];
      v13 = [TUReceptionistSession alloc];
      summary = [receptionistSession summary];
      predictedName = [receptionistSession predictedName];
      v16 = [v13 initWithSummary:summary predictedName:predictedName];

      [v10 setReceptionistSession:v16];
    }

    else
    {
      receptionistSession = sub_100004778(v11);
      if (os_log_type_enabled(receptionistSession, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v19 = 138412546;
        v20 = uniqueProxyIdentifier2;
        v21 = 2112;
        v22 = allCalls;
        _os_log_impl(&_mh_execute_header, receptionistSession, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v19, 0x16u);
      }
    }
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistSessionChangedFromHost message", &v19, 2u);
    }
  }
}

- (void)handleSmartHoldingSessionChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleSmartHoldingSessionChangedFromHost %@", &v19, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

  if (waitOnHoldEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v10 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v10)
    {
      smartHoldingSession = [hostCopy smartHoldingSession];

      if (smartHoldingSession)
      {
        smartHoldingSession2 = [hostCopy smartHoldingSession];
        smartHoldingSession = [smartHoldingSession2 tuSmartHoldingSession];
      }

      smartHoldingSession3 = [v10 smartHoldingSession];

      if (smartHoldingSession3 && smartHoldingSession)
      {
        smartHoldingSession4 = [v10 smartHoldingSession];
        if ([smartHoldingSession4 state])
        {
          state = [smartHoldingSession state];

          if (!state)
          {
            [v10 setSmartHoldingActiveSessionCount:[v10 smartHoldingActiveSessionCount]+ 1];
          }
        }

        else
        {
        }
      }

      [v10 setSmartHoldingSession:smartHoldingSession];
    }

    else
    {
      smartHoldingSession = sub_100004778(v11);
      if (os_log_type_enabled(smartHoldingSession, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v19 = 138412546;
        v20 = uniqueProxyIdentifier2;
        v21 = 2112;
        v22 = allCalls;
        _os_log_impl(&_mh_execute_header, smartHoldingSession, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v19, 0x16u);
      }
    }
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "smart holding is not enabled, ignoring handleSmartHoldingSessionChangedFromHost message", &v19, 2u);
    }
  }
}

- (void)handleAnnouncementHasFinishedChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleAnnouncementHasFinishedChangedFromHost %@", &v15, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v10 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v10)
    {
      -[NSObject setScreeningAnnouncementHasFinished:](v10, "setScreeningAnnouncementHasFinished:", [hostCopy announcementHasFinished]);
    }

    else
    {
      v12 = sub_100004778(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v15 = 138412546;
        v16 = uniqueProxyIdentifier2;
        v17 = 2112;
        v18 = allCalls;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleAnnouncementHasFinishedChangedFromHost message", &v15, 2u);
    }
  }
}

- (void)handleUpdateRemoteCallStateMessageFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778(hostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleUpdateRemoteCallStateMessageFromHost %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = hostCopy;
  protoCalls = [hostCopy protoCalls];
  v7 = [protoCalls countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(protoCalls);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        uniqueProxyIdentifier = [v11 uniqueProxyIdentifier];
        v13 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

        if (!v13)
        {
          v17 = sub_100004778(v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            uniqueProxyIdentifier2 = [v11 uniqueProxyIdentifier];
            allCalls = [(CSDRelayController *)self allCalls];
            *buf = 138412546;
            v27 = uniqueProxyIdentifier2;
            v28 = 2112;
            v29 = allCalls;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
          }

          goto LABEL_14;
        }

        v15 = [v11 isEqualToCall:v13];
        v16 = v15;
        v17 = sub_100004778(v15);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          if (v18)
          {
            *buf = 138412546;
            v27 = v13;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not updating call %@ with protoCall %@ because they are equal", buf, 0x16u);
          }

LABEL_14:

          goto LABEL_18;
        }

        if (v18)
        {
          *buf = 138412546;
          v27 = v13;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating call %@ with protoCall %@", buf, 0x16u);
        }

        [v11 updateRelayCall:v13];
LABEL_18:
      }

      v8 = [protoCalls countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }
}

- (void)handleCallStartedConnectingMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setLocallyConnecting];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handlePushHostedCallsMessageFromHost:(id)host completion:(id)completion
{
  hostCopy = host;
  selfCopy = self;
  completionCopy = completion;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v9 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = sub_100004778(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if ([v13 isScreening])
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          receptionistState = [v13 receptionistState];
          isAnswerFromScreening = [v13 isAnswerFromScreening];
          *buf = 138412802;
          if (isAnswerFromScreening)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v37 = v15;
          v38 = 1024;
          v39 = receptionistState;
          v40 = 2112;
          v41 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] handlePushHostedCallsMessageFromHost: isScreening: %@, receptionistState: %d, isAnswerFromScreening: %@", buf, 0x1Cu);
        }

        if ([v13 isScreening] & 1) == 0 && objc_msgSend(v13, "receptionistState") || (v9 = objc_msgSend(v13, "isAnswerFromScreening"), (v9))
        {
          [v13 setLocallyConnected];

          v19 = selfCopy;
          goto LABEL_24;
        }

        ++v12;
      }

      while (v10 != v12);
      v9 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v32 objects:v42 count:16];
      v10 = v9;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = selfCopy;
  callController2 = [(CSDRelayController *)selfCopy callController];
  callContainer2 = [callController2 callContainer];
  hasCurrentCalls = [callContainer2 hasCurrentCalls];

  if (hasCurrentCalls)
  {
    v24 = sub_100004778(v23);
    v26 = completionCopy;
    v25 = hostCopy;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [hostCopy typeString];
      *buf = 138412290;
      v37 = typeString;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some calls", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
LABEL_24:
    v28 = v19;
    v26 = completionCopy;
    v25 = hostCopy;
    [(CSDRelayClientController *)v28 pullRemotelyHostedCallsForMessage:hostCopy completion:completionCopy];
  }
}

- (void)handleUpdateCallContextAvailableMessageFromHost:(id)host
{
  hostCopy = host;
  callCapabilitiesState = [hostCopy callCapabilitiesState];

  if (callCapabilitiesState)
  {
    v5 = +[CSDCallCapabilities sharedInstance];
    callCapabilitiesState2 = [hostCopy callCapabilitiesState];
    [v5 updatePairedHostDeviceCallCapabilitiesState:callCapabilitiesState2];
  }

  providers = [hostCopy providers];

  if (providers)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    callProviderManager = [callStateController callProviderManager];
    tuProviders = [hostCopy tuProviders];
    [callProviderManager registerPairedHostDeviceProviders:tuProviders];
  }
}

- (void)handleNeedsManualInCallSoundsChangeMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setNeedsManualInCallSounds:{objc_msgSend(hostCopy, "needsManualInCallSounds")}];
    [v6 setSoundRegion:{objc_msgSend(hostCopy, "soundRegion")}];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleInvitationSentMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setLocallyHasSentInvitation];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleUpdateCallDisplayContextMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    tuHandle = [hostCopy tuHandle];
    [v6 setHandle:tuHandle];

    displayContext = [v6 displayContext];
    displayContext2 = [hostCopy displayContext];
    v11 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
    [v6 setDisplayContext:v11];
  }

  else
  {
    displayContext = sub_100004778(v7);
    if (os_log_type_enabled(displayContext, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v14 = 138412546;
      v15 = uniqueProxyIdentifier2;
      v16 = 2112;
      v17 = allCalls;
      _os_log_impl(&_mh_execute_header, displayContext, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v14, 0x16u);
    }
  }
}

- (void)handleUpdateRemoteUplinkMutedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v14 = sub_100004778(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v20 = 138412546;
      v21 = uniqueProxyIdentifier2;
      v22 = 2112;
      v23 = allCalls;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v20, 0x16u);
    }

    goto LABEL_10;
  }

  provider = [v6 provider];
  isTinCanProvider = [provider isTinCanProvider];

  if (!isTinCanProvider)
  {
    [v6 setRemoteUplinkMuted:{objc_msgSend(hostCopy, "isRemoteUplinkMuted")}];
    goto LABEL_11;
  }

  [hostCopy messageSendTime];
  v11 = v10;
  remoteUplinkMutedSetTime = [v6 remoteUplinkMutedSetTime];
  if (v11 <= v13)
  {
    v14 = sub_100004778(remoteUplinkMutedSetTime);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [hostCopy messageSendTime];
      v18 = v17;
      [v6 remoteUplinkMutedSetTime];
      v20 = 138412802;
      v21 = hostCopy;
      v22 = 2048;
      v23 = v18;
      v24 = 2048;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because messageSendTime (%f) <= call.remoteUplinkMutedSetTime (%f)", &v20, 0x20u);
    }

LABEL_10:

    goto LABEL_11;
  }

  [v6 setRemoteUplinkMuted:{objc_msgSend(hostCopy, "isRemoteUplinkMuted")}];
  [hostCopy messageSendTime];
  [v6 setRemoteUplinkMutedSetTime:?];
LABEL_11:
}

- (void)handleUpdateRoutesMessageFromHost:(id)host
{
  hostCopy = host;
  routes = [hostCopy routes];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [routes count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  routes2 = [hostCopy routes];
  v8 = [routes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(routes2);
        }

        tuRoute = [*(*(&v16 + 1) + 8 * v11) tuRoute];
        [v6 addObject:tuRoute];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [routes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  callStateController = [(CSDRelayController *)self callStateController];
  pairedHostDeviceRouteController = [callStateController pairedHostDeviceRouteController];
  v15 = [v6 copy];
  [pairedHostDeviceRouteController handleUpdatedPairedHostDeviceRoutes:v15];
}

- (void)handleUpdateFailureExpectedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setFailureExpected:{objc_msgSend(hostCopy, "isFailureExpected")}];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleUpdateSupportsEmergencyFallbackMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setSupportsEmergencyFallback:{objc_msgSend(hostCopy, "supportsEmergencyFallback")}];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleUpdateSupportsTTYWithVoiceMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setSupportsTTYWithVoice:{objc_msgSend(hostCopy, "supportsTTYWithVoice")}];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)pullRemotelyHostedCallsForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1000285E8;
  v29[4] = sub_10003288C;
  completionCopy = completion;
  v30 = objc_retainBlock(completionCopy);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  protoCalls = [messageCopy protoCalls];
  v7 = [protoCalls countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = *v26;
    obj = protoCalls;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [CSDRelayConferenceConnection alloc];
        uniqueProxyIdentifier = [v10 uniqueProxyIdentifier];
        v13 = [(CSDRelayConferenceConnection *)v11 initWithIdentifier:uniqueProxyIdentifier];

        v14 = +[CSDRelayConferenceInterface sharedInstance];
        inviteData = [messageCopy inviteData];
        relayInviteDictionary = [inviteData relayInviteDictionary];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000B096C;
        v21[3] = &unk_10061A888;
        v24 = v29;
        v21[4] = self;
        v21[5] = v10;
        v17 = v13;
        v22 = v17;
        v23 = messageCopy;
        [v14 prepareConferenceConnection:v17 remoteInviteDictionary:relayInviteDictionary completion:v21];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      protoCalls = obj;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(v29, 8);
}

@end