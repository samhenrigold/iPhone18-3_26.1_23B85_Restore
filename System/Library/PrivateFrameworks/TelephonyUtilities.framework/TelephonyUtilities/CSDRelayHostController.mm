@interface CSDRelayHostController
- (BOOL)_endCallWithActiveReceptionistState:(id)state reason:(int)reason;
- (BOOL)_updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:(id)request;
- (CSDRelayHostController)initWithQueue:(id)queue conversationManager:(id)manager featureFlags:(id)flags;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (void)_answerHostedCall:(id)call completionHandler:(id)handler;
- (void)_conferenceTransport:(id)transport didStopForCall:(id)call cleanly:(BOOL)cleanly error:(id)error;
- (void)_launchInCallApplicationForOutgoingCallOnHostIfNecessary;
- (void)handleAddMemberMessageFromClient:(id)client;
- (void)handleAnswerCallMessageFromClient:(id)client destination:(id)destination device:(id)device;
- (void)handleBuzzMemberMessageFromClient:(id)client;
- (void)handleDialCallMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion;
- (void)handleDisconnectAllCallsMessageFromClient:(id)client;
- (void)handleDisconnectCallMessageFromClient:(id)client;
- (void)handleDisconnectCurrentCallMessageFromClient:(id)client;
- (void)handleEndActiveAndAnswerMessageFromClient:(id)client;
- (void)handleEndHeldAndAnswerMessageFromClient:(id)client;
- (void)handleGroupCallMessageFromClient:(id)client;
- (void)handleHoldActiveAndAnswerMessageFromClient:(id)client;
- (void)handleHoldCallMessageFromClient:(id)client;
- (void)handleJoinConversationMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion;
- (void)handlePerformSmartHoldingRequestFromClient:(id)client;
- (void)handlePickRouteMessageFromClient:(id)client;
- (void)handlePullHostedCallsMessageFromClient:(id)client destination:(id)destination fromPairedDevice:(BOOL)device completion:(id)completion;
- (void)handlePushRelayingCallsMessageFromClient:(id)client;
- (void)handleReceptionistCustomReplyFromClient:(id)client;
- (void)handleRequestCallContextMessageFromClient:(id)client fromDevice:(id)device;
- (void)handleSendHardPauseDigitsMessageFromClient:(id)client;
- (void)handleStartReceptionistReplyFromClient:(id)client;
- (void)handleSwapCallsMessageFromClient:(id)client;
- (void)handleUngroupCallMessageFromClient:(id)client;
- (void)handleUnholdCallMessageFromClient:(id)client;
- (void)pushHostedCallsForRemoteInviteDictionary:(id)dictionary destination:(id)destination toPairedDevice:(BOOL)device completion:(id)completion;
@end

@implementation CSDRelayHostController

- (CSDRelayHostController)initWithQueue:(id)queue conversationManager:(id)manager featureFlags:(id)flags
{
  queueCopy = queue;
  managerCopy = manager;
  flagsCopy = flags;
  v15.receiver = self;
  v15.super_class = CSDRelayHostController;
  v12 = [(CSDRelayHostController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_featureFlags, flags);
    objc_storeStrong(&v13->_conversationManager, manager);
  }

  return v13;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callWithUniqueProxyIdentifier:identifierCopy];

  return v7;
}

- (void)_answerHostedCall:(id)call completionHandler:(id)handler
{
  callCopy = call;
  handlerCopy = handler;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([callCopy isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100204FC8;
    v11[3] = &unk_10061E7D8;
    v12 = callCopy;
    selfCopy = self;
    v14 = handlerCopy;
    uniqueProxyIdentifier = [v12 uniqueProxyIdentifier];
    [relayMessagingController performBlockOnTransportAvailability:v11 forIdentifier:uniqueProxyIdentifier];
  }
}

- (void)_conferenceTransport:(id)transport didStopForCall:(id)call cleanly:(BOOL)cleanly error:(id)error
{
  cleanlyCopy = cleanly;
  transportCopy = transport;
  callCopy = call;
  errorCopy = error;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  status = [callCopy status];
  if (status == 5 || (status = [callCopy status], status == 6))
  {
    v15 = sub_100004778(status);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received did stop for call that is already disconnecting/disconnected", &v21, 2u);
    }
  }

  else
  {
    relayClientTransport = [callCopy relayClientTransport];
    v17 = [relayClientTransport isEqualToTransport:transportCopy];

    v19 = sub_100004778(v18);
    v15 = v19;
    if (v17)
    {
      if (cleanlyCopy)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = callCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Conference connection ended for call %@. Disconnecting call normally", &v21, 0xCu);
        }

        v15 = +[TUCallCenter sharedInstance];
        [v15 disconnectCall:callCopy];
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10047BB7C();
        }

        v15 = +[TUCallCenter sharedInstance];
        [v15 disconnectCall:callCopy withReason:8];
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      relayClientTransport2 = [callCopy relayClientTransport];
      v21 = 138412546;
      v22 = transportCopy;
      v23 = 2112;
      v24 = relayClientTransport2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not disconnecting call because this conference transport is %@ but the call's current relay client transport is %@", &v21, 0x16u);
    }
  }
}

- (void)_launchInCallApplicationForOutgoingCallOnHostIfNecessary
{
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_launchInCallApplicationForOutgoingCallOnHostIfNecessary", v6, 2u);
  }

  v5 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v5, &stru_10061E7F8);
}

- (BOOL)_updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:(id)request
{
  requestCopy = request;
  provider = [requestCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if ((isTelephonyProvider & 1) == 0)
  {
    v9 = sub_100004778(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dial Request isn't for not telephony provider", buf, 2u);
    }

    goto LABEL_7;
  }

  localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
  if (!localSenderIdentityAccountUUID)
  {
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];

    if (localSenderIdentityUUID)
    {
      goto LABEL_7;
    }

    callStateController = [(CSDRelayController *)self callStateController];
    callProviderManager = [callStateController callProviderManager];
    v15 = [callProviderManager localProvidersByIdentifierForRemoteClients:0];

    v16 = [v15 objectForKeyedSubscript:@"com.apple.coretelephony"];
    prioritizedSenderIdentities = [v16 prioritizedSenderIdentities];
    if ([prioritizedSenderIdentities count] <= 1)
    {
    }

    else
    {
      handle = [requestCopy handle];

      if (handle)
      {
        handle2 = [requestCopy handle];
        v20 = [CNContact tu_contactHandlesForHandle:handle2];
        v21 = [CNContact predicateForContactsMatchingHandleStrings:v20];

        v22 = +[CNGeminiManager descriptorForRequiredKeys];
        v47 = v22;
        v23 = [NSArray arrayWithObjects:&v47 count:1];

        v24 = +[TUCallCenter sharedInstance];
        contactStore = [v24 contactStore];
        v44 = 0;
        v26 = [contactStore unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:&v44];
        v27 = v44;

        if ([v26 count])
        {
          v42 = v23;
          firstObject = [v26 firstObject];
          contactGeminiManager = [requestCopy contactGeminiManager];
          v43 = v27;
          v30 = [contactGeminiManager bestSenderIdentityForContact:firstObject error:&v43];
          v41 = v43;

          v32 = sub_100004778(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Fetched sender identifity for Contact  %@", buf, 0xCu);
          }

          v10 = v30 != 0;
          if (v30)
          {
            v40 = v21;
            accountUUID = [v30 accountUUID];
            v35 = sub_100004778(accountUUID);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = accountUUID;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Contact preferred accountUUIDData %@", buf, 0xCu);
            }

            [requestCopy setLocalSenderIdentityAccountUUID:accountUUID];
            prioritizedSenderIdentities2 = [v16 prioritizedSenderIdentities];
            provider2 = [requestCopy provider];
            [provider2 setPrioritizedSenderIdentities:prioritizedSenderIdentities2];

            v21 = v40;
            v38 = v41;
          }

          else
          {
            accountUUID = sub_100004778(v33);
            v39 = os_log_type_enabled(accountUUID, OS_LOG_TYPE_ERROR);
            v38 = v41;
            if (v41)
            {
              if (v39)
              {
                sub_10047BC04();
              }
            }

            else if (v39)
            {
              sub_10047BC6C(requestCopy);
            }
          }

          v23 = v42;
        }

        else
        {
          firstObject = sub_100004778(0);
          if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
          {
            sub_10047BCF0(requestCopy);
          }

          v10 = 0;
          v38 = v27;
        }

        goto LABEL_31;
      }
    }

    v10 = 0;
LABEL_31:

    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

- (void)handleDialCallMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion
{
  clientCopy = client;
  destinationCopy = destination;
  deviceCopy = device;
  completionCopy = completion;
  dialRequest = [clientCopy dialRequest];
  isSOS = [dialRequest isSOS];

  if (isSOS)
  {
    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "For received dial call message, the dial request is SOS, so disconnecting all existing calls immediately.", buf, 2u);
    }

    v18 = +[TUCallCenter sharedInstance];
    [v18 disconnectAllCalls];
  }

  if (deviceCopy)
  {
    v19 = +[CSDRelayIDSService sharedInstance];
    pairedDevice = [v19 pairedDevice];
    v21 = [pairedDevice isEqual:deviceCopy];

    v22 = v21 ^ 1;
  }

  else
  {
    v22 = 1;
  }

  v23 = +[CSDRouteManager sharedInstance];
  isEligibleRouteAvailable = [v23 isEligibleRouteAvailable];

  tuProvider = [clientCopy tuProvider];
  isTinCanProvider = [tuProvider isTinCanProvider];

  if ((isTinCanProvider & 1) == 0)
  {
    hasSourceIdentifier = [clientCopy hasSourceIdentifier];
    if (((hasSourceIdentifier | v22) & 1) == 0)
    {
      hasSourceIdentifier = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
      if ((hasSourceIdentifier | isEligibleRouteAvailable))
      {
        v28 = sub_100004778(hasSourceIdentifier);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          cannotRelayAudioOrVideoOnPairedDevice = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
          *buf = 67109376;
          *v59 = cannotRelayAudioOrVideoOnPairedDevice;
          *&v59[4] = 1024;
          *&v59[6] = isEligibleRouteAvailable;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Dialing without relay because cannotRelayAudioOrVideoOnPairedDevice is set (%d) or an eligible route is available (%d)", buf, 0xEu);
        }

        dialRequest2 = [clientCopy dialRequest];
        [(CSDRelayConferenceConnection *)dialRequest2 setEndpointOnCurrentDevice:1];
        v31 = +[TUCallCenter sharedInstance];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100206060;
        v54[3] = &unk_10061E840;
        v55 = clientCopy;
        v56 = destinationCopy;
        selfCopy = self;
        [v31 dialWithRequest:dialRequest2 completion:v54];

        (*(completionCopy + 2))(completionCopy, 0, 0);
        goto LABEL_26;
      }
    }
  }

  v32 = sub_100004778(hasSourceIdentifier);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    hasSourceIdentifier2 = [clientCopy hasSourceIdentifier];
    cannotRelayAudioOrVideoOnPairedDevice2 = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
    *buf = 67109888;
    *v59 = isTinCanProvider;
    *&v59[4] = 1024;
    *&v59[6] = hasSourceIdentifier2;
    v60 = 1024;
    v61 = cannotRelayAudioOrVideoOnPairedDevice2;
    v62 = 1024;
    v63 = isEligibleRouteAvailable;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Dialing with relay. isTinCanProvider: %d, message.hasSourceIdentifier: %d, message.cannotRelayAudioOrVideoOnPairedDevice: %d, eligibleRouteAvailable: %d", buf, 0x1Au);
  }

  v35 = +[TUCallCenter sharedInstance];
  if (([v35 anyCallIsEndpointOnCurrentDevice] & 1) == 0)
  {

    goto LABEL_22;
  }

  dialRequest3 = [clientCopy dialRequest];
  isSOS2 = [dialRequest3 isSOS];

  if (isSOS2)
  {
LABEL_22:
    uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
    dialRequest2 = [[CSDRelayConferenceConnection alloc] initWithIdentifier:uniqueProxyIdentifier];
    [(CSDRelayConferenceConnection *)dialRequest2 setHost:1];
    [(CSDRelayConferenceConnection *)dialRequest2 setAudioDisabled:1];
    tuProvider2 = [clientCopy tuProvider];
    if ([tuProvider2 isTelephonyProvider])
    {
      v45 = +[TUCallCapabilities isWiFiCallingCurrentlyAvailable]^ 1;
    }

    else
    {
      v45 = 0;
    }

    [(CSDRelayConferenceConnection *)dialRequest2 setUsingBaseband:v45];

    v46 = +[CSDRelayConferenceInterface sharedInstance];
    inviteData = [clientCopy inviteData];
    relayInviteDictionary = [inviteData relayInviteDictionary];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100206154;
    v50[3] = &unk_10061E8E0;
    v50[4] = self;
    v51 = clientCopy;
    v52 = uniqueProxyIdentifier;
    v53 = completionCopy;
    v49 = uniqueProxyIdentifier;
    [v46 prepareConferenceConnection:dialRequest2 remoteInviteDictionary:relayInviteDictionary completion:v50];

LABEL_26:
    goto LABEL_27;
  }

  v39 = sub_100004778(v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [clientCopy typeString];
    *buf = 138412290;
    *v59 = typeString;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some non-relaying calls. Sending device busy message.", buf, 0xCu);
  }

  relayMessagingController = [(CSDRelayController *)self relayMessagingController];
  uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
  [relayMessagingController sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:uniqueProxyIdentifier2];

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_27:
}

- (void)handleJoinConversationMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion
{
  clientCopy = client;
  destinationCopy = destination;
  completionCopy = completion;
  joinConversationRequest = [clientCopy joinConversationRequest];
  [joinConversationRequest setEndpointOnCurrentDevice:0];
  [joinConversationRequest setHostedOnCurrentDevice:1];
  v13 = [NSUUID alloc];
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v15 = [v13 initWithUUIDString:uniqueProxyIdentifier];
  [joinConversationRequest setUUID:v15];

  v16 = +[TUCallCenter sharedInstance];
  LODWORD(uniqueProxyIdentifier) = [v16 anyCallIsEndpointOnCurrentDevice];

  if (uniqueProxyIdentifier)
  {
    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [clientCopy typeString];
      *buf = 138412290;
      v40 = typeString;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some non-relaying calls. Sending device busy message.", buf, 0xCu);
    }

    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    [relayMessagingController sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:uniqueProxyIdentifier2];

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  uUID = [joinConversationRequest UUID];
  uUIDString = [uUID UUIDString];

  v24 = [[CSDRelayConferenceConnection alloc] initWithIdentifier:uUIDString];
  [(CSDRelayConferenceConnection *)v24 setHost:1];
  [(CSDRelayConferenceConnection *)v24 setAudioDisabled:1];
  v25 = +[CSDRelayConferenceInterface sharedInstance];
  inviteData = [clientCopy inviteData];
  relayInviteDictionary = [inviteData relayInviteDictionary];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100206B28;
  v33[3] = &unk_10061E930;
  v33[4] = self;
  v34 = joinConversationRequest;
  v35 = destinationCopy;
  v36 = uUIDString;
  v37 = clientCopy;
  v38 = completionCopy;
  v28 = completionCopy;
  v29 = clientCopy;
  v30 = uUIDString;
  v31 = destinationCopy;
  v32 = joinConversationRequest;
  [v25 prepareConferenceConnection:v24 remoteInviteDictionary:relayInviteDictionary completion:v33];
}

- (void)handleAnswerCallMessageFromClient:(id)client destination:(id)destination device:(id)device
{
  clientCopy = client;
  destinationCopy = destination;
  deviceCopy = device;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v12 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v12)
  {
    v17 = sub_100004778(v13);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_46:

      goto LABEL_47;
    }

    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    allCalls = [(CSDRelayController *)self allCalls];
    *buf = 138412546;
    *v46 = uniqueProxyIdentifier2;
    *&v46[8] = 2112;
    v47 = allCalls;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);

LABEL_45:
    goto LABEL_46;
  }

  if (deviceCopy)
  {
    v14 = +[CSDRelayIDSService sharedInstance];
    pairedDevice = [v14 pairedDevice];
    v16 = [pairedDevice isEqual:deviceCopy];
  }

  else
  {
    v16 = 0;
  }

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  if ([featureFlags LVMEverywhere] && (objc_msgSend(clientCopy, "isScreening") & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v16)
  {
    if ([clientCopy cannotRelayAudioOrVideoOnPairedDevice])
    {
LABEL_11:

LABEL_12:
      v22 = sub_100004778(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v46 = [clientCopy wantsHoldMusic];
        *&v46[4] = 1024;
        *&v46[6] = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
        LOWORD(v47) = 1024;
        *(&v47 + 2) = [clientCopy isScreening];
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Answering without relay because wantsHoldMusic is set (%d) or cannotRelayAudioOrVideoOnPairedDevice is set (%d) or screening (%d)", buf, 0x14u);
      }

      v23 = +[CSDRouteManager sharedInstance];
      v17 = [v23 preferredRouteForCall:v12];

      uniqueProxyIdentifier2 = [[TUAnswerRequest alloc] initWithCall:v12];
      if (v17)
      {
        [v17 uniqueIdentifier];
      }

      else
      {
        [clientCopy sourceIdentifier];
      }
      v28 = ;
      [uniqueProxyIdentifier2 setSourceIdentifier:v28];

      [uniqueProxyIdentifier2 setWantsHoldMusic:{objc_msgSend(clientCopy, "wantsHoldMusic")}];
      [uniqueProxyIdentifier2 setPauseVideoToStart:{objc_msgSend(clientCopy, "wantsHoldMusic")}];
      if ([clientCopy receptionistState] && objc_msgSend(v12, "isReceptionistCapable") && (-[CSDRelayHostController featureFlags](self, "featureFlags"), v29 = objc_claimAutoreleasedReturnValue(), v30 = TUReceptionistAvailable(), v29, (v30 & 1) != 0))
      {
        isScreening = 2;
      }

      else
      {
        receptionistState = [clientCopy receptionistState];
        if (receptionistState)
        {
          v33 = sub_100004778(receptionistState);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Downgrading to LVM because receptionist is not available", buf, 2u);
          }
        }

        isScreening = [clientCopy isScreening];
      }

      [uniqueProxyIdentifier2 setScreeningType:isScreening];
      if ([v12 isVideo])
      {
        if ([clientCopy hasProtoVideo])
        {
          v34 = +[FTDeviceSupport sharedInstance];
          isGreenTea = [v34 isGreenTea];

          if ((isGreenTea & 1) == 0)
          {
            v37 = sub_100004778(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Requesting downgrade to audio because paired device requested to answer call and we are not green tea", buf, 2u);
            }

            [uniqueProxyIdentifier2 setBehavior:4];
          }
        }
      }

      v38 = +[TUCallCenter sharedInstance];
      [v38 answerWithRequest:uniqueProxyIdentifier2];

      if ([clientCopy isExpectedEndpointOnMessagingDevice])
      {
        [v12 setExpectedRelayClientDestination:destinationCopy];
      }

      goto LABEL_45;
    }

    wantsHoldMusic = [clientCopy wantsHoldMusic];

    if (wantsHoldMusic)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  featureFlags2 = [(CSDRelayHostController *)self featureFlags];
  if (![featureFlags2 LVMEverywhere] || !objc_msgSend(v12, "isScreening"))
  {

    goto LABEL_26;
  }

  isScreening2 = [clientCopy isScreening];

  if (isScreening2)
  {
LABEL_26:
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1002077F0;
    v42[3] = &unk_100619D88;
    v43 = v12;
    v44 = clientCopy;
    [(CSDRelayHostController *)self _answerHostedCall:v43 completionHandler:v42];

    goto LABEL_47;
  }

  isKindOfClass = [v12 isHostedOnCurrentDevice];
  if ((isKindOfClass & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v40 = sub_100004778(isKindOfClass);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "set screening to NO", buf, 2u);
    }

    [v12 setScreening:0];
    [v12 setReceptionistState:7];
    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    [relayMessagingController sendPushCallsMessageToClientDestination:destinationCopy];
  }

  else
  {
    v27 = sub_100004778(isKindOfClass);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v46 = v12;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ignoring request to answer call since this message was meant for the primary host device. Marking the call as answeredElsewhere: %@", buf, 0xCu);
    }

    [v12 setLocallyDisconnectedWithReasonIfNone:1];
  }

LABEL_47:
}

- (void)handleDisconnectCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 disconnectCall:v6 withReason:{objc_msgSend(clientCopy, "disconnectedReason")}];

    v9 = +[CSDRelayConferenceInterface sharedInstance];
    uniqueProxyIdentifier2 = [v6 uniqueProxyIdentifier];
    [v9 stopConferenceForIdentifier:uniqueProxyIdentifier2];
  }

  else
  {
    v9 = sub_100004778(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier3 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v13 = 138412546;
      v14 = uniqueProxyIdentifier3;
      v15 = 2112;
      v16 = allCalls;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
    }
  }
}

- (void)handleHoldCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 holdCall:v6];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleUnholdCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 unholdCall:v6];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleGroupCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v10 = sub_100004778(v7);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    allCalls = [(CSDRelayController *)self allCalls];
    *buf = 138412546;
    v28 = uniqueProxyIdentifier2;
    v29 = 2112;
    v30 = allCalls;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);

    goto LABEL_13;
  }

  if ([clientCopy otherUniqueProxyIdentifiersCount])
  {
    otherUniqueProxyIdentifiers = [clientCopy otherUniqueProxyIdentifiers];
    firstObject = [otherUniqueProxyIdentifiers firstObject];
    v10 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:firstObject];

    if (v10)
    {
      v12 = +[TUCallCenter sharedInstance];
      [v12 groupCall:v6 withOtherCall:v10];

      goto LABEL_17;
    }

    uniqueProxyIdentifier2 = sub_100004778(v11);
    if (os_log_type_enabled(uniqueProxyIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      otherUniqueProxyIdentifiers2 = [clientCopy otherUniqueProxyIdentifiers];
      firstObject2 = [otherUniqueProxyIdentifiers2 firstObject];
      allCalls2 = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v28 = firstObject2;
      v29 = 2112;
      v30 = allCalls2;
      _os_log_impl(&_mh_execute_header, uniqueProxyIdentifier2, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with other uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_17;
  }

  v15 = sub_100004778(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No other unique proxy identifiers included. Assuming legacy behavior", buf, 2u);
  }

  v16 = +[TUCallCenter sharedInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100208060;
  v25[3] = &unk_10061A040;
  v17 = v6;
  v26 = v17;
  v18 = [v16 callPassingTest:v25];

  if (v18)
  {
    v20 = +[TUCallCenter sharedInstance];
    [v20 groupCall:v17 withOtherCall:v18];
  }

  else
  {
    v20 = sub_100004778(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      allCalls3 = [(CSDRelayController *)self allCalls];
      *buf = 138412290;
      v28 = allCalls3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find another call to group with. All calls: %@", buf, 0xCu);
    }
  }

  v10 = v26;
LABEL_17:
}

- (void)handleUngroupCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 ungroupCall:v6];
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleSwapCallsMessageFromClient:(id)client
{
  v3 = +[TUCallCenter sharedInstance];
  [v3 swapCalls];
}

- (void)handleEndActiveAndAnswerMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002083C0;
    v11[3] = &unk_100619D38;
    v12 = v6;
    [(CSDRelayHostController *)self _answerHostedCall:v12 completionHandler:v11];
    v8 = v12;
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v14 = uniqueProxyIdentifier2;
      v15 = 2112;
      v16 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleEndHeldAndAnswerMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002085A8;
    v11[3] = &unk_100619D38;
    v12 = v6;
    [(CSDRelayHostController *)self _answerHostedCall:v12 completionHandler:v11];
    v8 = v12;
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v14 = uniqueProxyIdentifier2;
      v15 = 2112;
      v16 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleHoldActiveAndAnswerMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100208790;
    v11[3] = &unk_100619D38;
    v12 = v6;
    [(CSDRelayHostController *)self _answerHostedCall:v12 completionHandler:v11];
    v8 = v12;
  }

  else
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v14 = uniqueProxyIdentifier2;
      v15 = 2112;
      v16 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleDisconnectCurrentCallMessageFromClient:(id)client
{
  clientCopy = client;
  automaticCallActivationDisabled = [clientCopy automaticCallActivationDisabled];
  v5 = +[TUCallCenter sharedInstance];
  v6 = v5;
  if (automaticCallActivationDisabled)
  {
    [v5 disconnectCurrentCall];
  }

  else
  {
    [v5 disconnectCurrentCallAndActivateHeld];
  }

  v8 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];

  [v8 stopConferenceForIdentifier:uniqueProxyIdentifier];
}

- (void)handleDisconnectAllCallsMessageFromClient:(id)client
{
  clientCopy = client;
  v4 = +[TUCallCenter sharedInstance];
  [v4 disconnectAllCalls];

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];

  [v6 stopConferenceForIdentifier:uniqueProxyIdentifier];
}

- (void)handleSendHardPauseDigitsMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    v8 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier2];
LABEL_3:

    [v8 sendHardPauseDigits];
    goto LABEL_4;
  }

  v9 = sub_100004778(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No call was specified with SendHardPauseDigits message...", &v13, 2u);
  }

  v10 = +[TUCallCenter sharedInstance];
  v8 = [v10 callPassingTest:&stru_10061E950];

  v12 = sub_100004778(v11);
  uniqueProxyIdentifier2 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, uniqueProxyIdentifier2, OS_LOG_TYPE_DEFAULT, "...so sending hard pause digits for call %@", &v13, 0xCu);
    }

    goto LABEL_3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10047BFA8(uniqueProxyIdentifier2);
  }

LABEL_4:
}

- (void)handleRequestCallContextMessageFromClient:(id)client fromDevice:(id)device
{
  deviceCopy = device;
  relayMessagingController = [(CSDRelayController *)self relayMessagingController];
  [relayMessagingController sendResetStateMessageToClient];

  relayMessagingController2 = [(CSDRelayController *)self relayMessagingController];
  callStateController = [(CSDRelayController *)self callStateController];
  callProviderManager = [callStateController callProviderManager];
  [relayMessagingController2 sendUpdateCallContextMessageToClientForCallProviderManager:callProviderManager];

  LODWORD(relayMessagingController2) = [deviceCopy canReceiveRelayedGFTCalls];
  if (relayMessagingController2)
  {
    relayMessagingController3 = [(CSDRelayController *)self relayMessagingController];
    v10 = +[TUCallCenter sharedInstance];
    conversationManager = [v10 conversationManager];
    activeConversations = [conversationManager activeConversations];
    allObjects = [activeConversations allObjects];
    [relayMessagingController3 sendUpdateConversationsMessageToClient:allObjects];
  }
}

- (void)handlePullHostedCallsMessageFromClient:(id)client destination:(id)destination fromPairedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  destinationCopy = destination;
  clientCopy = client;
  relayMessagingController = [(CSDRelayController *)self relayMessagingController];
  [relayMessagingController sendUpdateRemoteCallStateMessageToClient:1];

  inviteData = [clientCopy inviteData];

  relayInviteDictionary = [inviteData relayInviteDictionary];
  [(CSDRelayHostController *)self pushHostedCallsForRemoteInviteDictionary:relayInviteDictionary destination:destinationCopy toPairedDevice:deviceCopy completion:completionCopy];
}

- (void)handlePushRelayingCallsMessageFromClient:(id)client
{
  clientCopy = client;
  v4 = +[TUCallCenter sharedInstance];
  callsWithAnEndpointElsewhere = [v4 callsWithAnEndpointElsewhere];
  firstObject = [callsWithAnEndpointElsewhere firstObject];

  if (firstObject)
  {
    sourceIdentifier = [clientCopy sourceIdentifier];
    if (sourceIdentifier && (v9 = sourceIdentifier, +[CSDRouteManager sharedInstance](CSDRouteManager, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), [clientCopy sourceIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isAnyRouteAvailableWithUniqueIdentifier:forCall:", v11, firstObject), v11, v10, v9, !v12))
    {
      v26 = sub_100004778(v13);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        sourceIdentifier2 = [clientCopy sourceIdentifier];
        *buf = 138412290;
        v37 = sourceIdentifier2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find any audio route with source identifier %@. Ignoring push relaying calls request", buf, 0xCu);
      }
    }

    else
    {
      sourceIdentifier3 = [clientCopy sourceIdentifier];

      if (sourceIdentifier3)
      {
        v16 = sub_100004778(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sourceIdentifier4 = [clientCopy sourceIdentifier];
          *buf = 138412290;
          v37 = sourceIdentifier4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting sourceIdentifier to %@ for all calls before pulling", buf, 0xCu);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v18 = +[TUCallCenter sharedInstance];
        currentAudioAndVideoCalls = [v18 currentAudioAndVideoCalls];

        v20 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(currentAudioAndVideoCalls);
              }

              v24 = *(*(&v31 + 1) + 8 * i);
              sourceIdentifier5 = [clientCopy sourceIdentifier];
              [v24 setSourceIdentifier:sourceIdentifier5];
            }

            v21 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v21);
        }
      }

      else
      {
        currentAudioAndVideoCalls = +[NSURL faceTimeShowInCallUIURL];
        v30 = sub_100004778(currentAudioAndVideoCalls);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = currentAudioAndVideoCalls;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Opening URL for handled pushRelayingCalls message from client: %@", buf, 0xCu);
        }

        TUOpenURL();
      }

      v26 = +[TUCallCenter sharedInstance];
      [v26 pullRelayingCallsFromClient];
    }
  }

  else
  {
    v26 = sub_100004778(v7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = +[TUCallCenter sharedInstance];
      _allCalls = [v27 _allCalls];
      *buf = 138412290;
      v37 = _allCalls;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to pull relaying calls from client when no calls with an endpoint elsewhere exist. All calls: %@", buf, 0xCu);
    }
  }
}

- (void)handlePickRouteMessageFromClient:(id)client
{
  route = [client route];
  tuRoute = [route tuRoute];

  v4 = +[TUCallCenter sharedInstance];
  routeController = [v4 routeController];
  [routeController pickRoute:tuRoute];
}

- (void)pushHostedCallsForRemoteInviteDictionary:(id)dictionary destination:(id)destination toPairedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  dictionaryCopy = dictionary;
  destinationCopy = destination;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_1000286F4;
  v34[4] = sub_100032904;
  completionCopy = completion;
  v35 = objc_retainBlock(completionCopy);
  v12 = +[TUCallCenter sharedInstance];
  if ([v12 hasCurrentVideoCalls] & deviceCopy)
  {
    v13 = +[FTDeviceSupport sharedInstance];
    isGreenTea = [v13 isGreenTea];

    if (isGreenTea)
    {
      v16 = sub_100004778(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] We cannot send video calls to audio only device in china", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0);
      goto LABEL_24;
    }
  }

  else
  {
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCalls = [v17 currentAudioAndVideoCalls];

  v19 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        v23 = [v22 hasRelaySupport:2];
        if (v23)
        {
          v24 = sub_100004778(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            receptionistState = [v22 receptionistState];
            *buf = 67109120;
            LODWORD(v37) = receptionistState;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] call.receptionistState: %d", buf, 8u);
          }

          if ([v22 receptionistState])
          {
            [v22 setUplinkMuted:1];
          }

          [v22 setEndpointOnCurrentDevice:0];
          [v22 setExpectedRelayClientDestination:destinationCopy];
          v26 = +[CSDRelayConferenceInterface sharedInstance];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100209570;
          v29[3] = &unk_10061E9A0;
          v29[5] = self;
          v29[6] = v34;
          v29[4] = v22;
          [v26 prepareConferenceForCall:v22 remoteInviteDictionary:dictionaryCopy completion:v29];
        }

        else
        {
          v27 = sub_100004778(v23);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v22;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to push relaying calls to client but current call: %@ does not support audio+video relay", buf, 0xCu);
          }
        }
      }

      v19 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

LABEL_24:
  _Block_object_dispose(v34, 8);
}

- (void)handleBuzzMemberMessageFromClient:(id)client
{
  clientCopy = client;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    conversationMembers = [clientCopy conversationMembers];
    firstObject = [conversationMembers firstObject];
    tuConversationMember = [firstObject tuConversationMember];

    v11 = [NSUUID alloc];
    conversationUUIDString = [clientCopy conversationUUIDString];
    v13 = [v11 initWithUUIDString:conversationUUIDString];

    conversationManager = [(CSDRelayHostController *)self conversationManager];
    v15 = [conversationManager activeConversationWithUUID:v13];

    if (v15 && tuConversationMember)
    {
      conversationManager2 = [(CSDRelayHostController *)self conversationManager];
      [conversationManager2 buzzMember:tuConversationMember destinationID:0 invitationContext:0 conversation:v15];
    }

    else
    {
      conversationManager2 = sub_100004778(v16);
      if (os_log_type_enabled(conversationManager2, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412802;
        v19 = v13;
        v20 = 2112;
        v21 = tuConversationMember;
        v22 = 2112;
        v23 = clientCopy;
        _os_log_error_impl(&_mh_execute_header, conversationManager2, OS_LOG_TYPE_ERROR, "No active conversation with UUID: %@ or member: %@ found for buzz member message %@", &v18, 0x20u);
      }
    }
  }
}

- (void)handleAddMemberMessageFromClient:(id)client
{
  clientCopy = client;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    v8 = +[NSMutableSet set];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    conversationMembers = [clientCopy conversationMembers];
    v10 = [conversationMembers countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        v13 = 0;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(conversationMembers);
          }

          tuConversationMember = [*(*(&v33 + 1) + 8 * v13) tuConversationMember];
          [v8 addObject:tuConversationMember];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [conversationMembers countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    v15 = +[NSMutableSet set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    handlesToInvites = [clientCopy handlesToInvites];
    v17 = [handlesToInvites countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        v20 = 0;
        do
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(handlesToInvites);
          }

          tuHandle = [*(*(&v29 + 1) + 8 * v20) tuHandle];
          [v15 addObject:tuHandle];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [handlesToInvites countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);
    }

    v22 = [NSUUID alloc];
    conversationUUIDString = [clientCopy conversationUUIDString];
    v24 = [v22 initWithUUIDString:conversationUUIDString];

    conversationManager = [(CSDRelayHostController *)self conversationManager];
    v26 = [conversationManager activeConversationWithUUID:v24];

    if (v26 && ([v15 count] || (v27 = objc_msgSend(v8, "count")) != 0))
    {
      conversationManager2 = [(CSDRelayHostController *)self conversationManager];
      [conversationManager2 addRemoteMembers:v8 otherInvitedHandles:v15 invitationPreferences:0 toConversation:v26];
    }

    else
    {
      conversationManager2 = sub_100004778(v27);
      if (os_log_type_enabled(conversationManager2, OS_LOG_TYPE_ERROR))
      {
        sub_10047C124();
      }
    }
  }
}

- (void)handleReceptionistCustomReplyFromClient:(id)client
{
  clientCopy = client;
  v5 = sub_100004778(clientCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistCustomReplyFromClient", buf, 2u);
  }

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if ((receptionistEnabled & 1) == 0)
  {
    callStateController = sub_100004778(v8);
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistCustomReplyFromClient message", v13, 2u);
    }

    goto LABEL_8;
  }

  customReply = [clientCopy customReply];

  if (customReply)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    answeringMachineController = [callStateController answeringMachineController];
    customReply2 = [clientCopy customReply];
    [answeringMachineController setCustomReply:customReply2];

LABEL_8:
  }
}

- (void)handleStartReceptionistReplyFromClient:(id)client
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleStartReceptionistReplyFromClient", buf, 2u);
  }

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    answeringMachineController = [callStateController answeringMachineController];
    [answeringMachineController startReceptionistReply];
  }

  else
  {
    callStateController = sub_100004778(v7);
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleStartReceptionistReplyFromClient message", v10, 2u);
    }
  }
}

- (void)handlePerformSmartHoldingRequestFromClient:(id)client
{
  clientCopy = client;
  v5 = sub_100004778(clientCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handlePerformSmartHoldingRequestFromClient", buf, 2u);
  }

  smartHoldingRequest = [clientCopy smartHoldingRequest];
  if (smartHoldingRequest)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    callContainer = [callStateController callContainer];
    callUUID = [smartHoldingRequest callUUID];
    v10 = [callContainer callWithUniqueProxyIdentifier:callUUID];

    if (v10)
    {
      callStateController2 = [(CSDRelayController *)self callStateController];
      smartHoldingController = [callStateController2 smartHoldingController];

      if (smartHoldingController)
      {
        callStateController3 = [(CSDRelayController *)self callStateController];
        smartHoldingController2 = [callStateController3 smartHoldingController];
        tuSmartHoldingRequest = [smartHoldingRequest tuSmartHoldingRequest];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10020A30C;
        v16[3] = &unk_10061A4C0;
        v17 = smartHoldingRequest;
        [smartHoldingController2 performRequest:tuSmartHoldingRequest call:v10 completion:v16];
      }
    }
  }

  else
  {
    v10 = sub_100004778(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C198();
    }
  }
}

- (BOOL)_endCallWithActiveReceptionistState:(id)state reason:(int)reason
{
  stateCopy = state;
  receptionistState = [stateCopy receptionistState];
  v8 = receptionistState;
  if (receptionistState)
  {
    v9 = sub_100004778(receptionistState);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      receptionistState2 = [stateCopy receptionistState];
      v16 = 1024;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ending call with receptionistState %lu, reason: %d", &v14, 0x12u);
    }

    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    [relayMessagingController sendCallDisconnectedMessageToClientForCall:stateCopy];

    isKindOfClass = [stateCopy isHostedOnCurrentDevice];
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      [stateCopy disconnectWithReason:54];
    }

    else
    {
      v12 = sub_100004778(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "not a CSDProviderCall class or not hosted on current device", &v14, 2u);
      }
    }
  }

  return v8 != 0;
}

@end