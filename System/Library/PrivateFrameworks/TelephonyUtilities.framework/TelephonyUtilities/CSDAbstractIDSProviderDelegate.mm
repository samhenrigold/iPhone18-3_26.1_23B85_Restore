@interface CSDAbstractIDSProviderDelegate
+ (id)handleByFullyQualifyingHandle:(id)handle usingCountryCode:(id)code;
- (BOOL)isCellularDataAllowedForChat:(id)chat;
- (BOOL)isCellularDataPreferredForChat:(id)chat;
- (BOOL)isWiFiAllowedForChat:(id)chat;
- (BOOL)shouldAcceptIncomingInvite;
- (CGSize)localPortraitAspectRatioForChat:(id)chat;
- (CSDAbstractIDSProviderDelegate)init;
- (CSDAbstractIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue;
- (id)callUpdateForChat:(id)chat;
- (id)callUpdateForPendingChat:(id)chat;
- (id)chatWithUUID:(id)d;
- (id)chats;
- (id)waitingChatWithHandle:(id)handle isOutgoing:(BOOL)outgoing;
- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state;
- (void)chat:(id)chat changedBytesOfDataUsed:(int64_t)used;
- (void)chat:(id)chat inputFrequencyLevelChangedTo:(id)to;
- (void)chat:(id)chat inputLevelChangedTo:(float)to;
- (void)chat:(id)chat outputFrequencyLevelChangedTo:(id)to;
- (void)chat:(id)chat outputLevelChangedTo:(float)to;
- (void)chatConnected:(id)connected;
- (void)chatEnded:(id)ended;
- (void)chatSentInvitation:(id)invitation;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEnableVideoCallAction:(id)action;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)updateCacheWithChat:(id)chat;
@end

@implementation CSDAbstractIDSProviderDelegate

- (CSDAbstractIDSProviderDelegate)init
{
  v3 = objc_alloc_init(CSDIDSProviderDelegateCapabilities);
  v4 = [(CSDAbstractIDSProviderDelegate *)self initWithCapabilities:v3 queue:&_dispatch_main_q];

  return v4;
}

- (CSDAbstractIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue
{
  capabilitiesCopy = capabilities;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = CSDAbstractIDSProviderDelegate;
  v9 = [(CSDAbstractIDSProviderDelegate *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capabilities, capabilities);
    objc_storeStrong(&v10->_queue, queue);
    v11 = +[NSMutableOrderedSet orderedSet];
    mutableChats = v10->_mutableChats;
    v10->_mutableChats = v11;

    incomingSessionProviderGenerator = v10->_incomingSessionProviderGenerator;
    v10->_incomingSessionProviderGenerator = &stru_10061B9F0;

    objc_initWeak(&location, v10);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000FD63C;
    v21 = &unk_10061BA18;
    objc_copyWeak(&v22, &location);
    v14 = objc_retainBlock(&v18);
    incomingChatGenerator = v10->_incomingChatGenerator;
    v10->_incomingChatGenerator = v14;

    v16 = [NSUserDefaults tu_defaults:v18];
    v10->_shouldOverrideNetworkAsAvailable = [v16 BOOLForKey:@"NetworkAvailabilityCheckOverrideValue"];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)chats
{
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  array = [mutableChats array];
  v4 = [array copy];

  return v4;
}

- (id)chatWithUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v6 = [mutableChats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(mutableChats);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [mutableChats countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateCacheWithChat:(id)chat
{
  chatCopy = chat;
  dateEnded = [chatCopy dateEnded];

  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v7 = mutableChats;
  if (dateEnded)
  {
    [mutableChats removeObject:chatCopy];
  }

  else
  {
    [mutableChats addObject:chatCopy];
  }
}

+ (id)handleByFullyQualifyingHandle:(id)handle usingCountryCode:(id)code
{
  handleCopy = handle;
  codeCopy = code;
  v7 = handleCopy;
  v8 = v7;
  if ([v7 type] == 2)
  {
    value = [v7 value];
    v10 = [TUPhoneNumber phoneNumberWithDigits:value countryCode:codeCopy];

    unformattedInternationalRepresentation = [v10 unformattedInternationalRepresentation];
    v12 = sub_100004778(unformattedInternationalRepresentation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = codeCopy;
      v16 = 2112;
      v17 = unformattedInternationalRepresentation;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Used country code '%@' to determine international phone number representation: %@", &v14, 0x16u);
    }

    v8 = v7;
    if (unformattedInternationalRepresentation)
    {
      v8 = [[TUHandle alloc] initWithType:objc_msgSend(v7 value:{"type"), unformattedInternationalRepresentation}];
    }
  }

  return v8;
}

- (BOOL)shouldAcceptIncomingInvite
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isWiFiAvailable = [capabilities isWiFiAvailable];

  capabilities2 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isWiFiAllowed = [capabilities2 isWiFiAllowed];

  capabilities3 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataAvailable = [capabilities3 isCellularDataAvailable];

  capabilities4 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataAllowed = [capabilities4 isCellularDataAllowed];

  v12 = 1;
  if ((isWiFiAvailable & isWiFiAllowed & 1) == 0 && (isCellularDataAvailable & isCellularDataAllowed & 1) == 0)
  {
    shouldOverrideNetworkAsAvailable = [(CSDAbstractIDSProviderDelegate *)self shouldOverrideNetworkAsAvailable];
    if (!shouldOverrideNetworkAsAvailable)
    {
      v12 = 0;
    }
  }

  v13 = sub_100004778(shouldOverrideNetworkAsAvailable);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v14 = @"allowed";
    }

    else
    {
      v14 = @"ignored";
    }

    v16 = 138413570;
    v17 = v14;
    v18 = 1024;
    v19 = isWiFiAvailable;
    v20 = 1024;
    v21 = isWiFiAllowed & 1;
    v22 = 1024;
    v23 = isCellularDataAvailable;
    v24 = 1024;
    v25 = isCellularDataAllowed & 1;
    v26 = 1024;
    shouldOverrideNetworkAsAvailable2 = [(CSDAbstractIDSProviderDelegate *)self shouldOverrideNetworkAsAvailable];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Determined that invite should be %@ - (isWiFiAvailable=%d isWiFiAllowed=%d isCellularDataAvailable=%d isCellularDataAllowed=%d shouldOverrideNetworkAsAvailable=%d)", &v16, 0x2Au);
  }

  return v12;
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v16 = sub_100004778(contextCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    typeCopy2 = serviceCopy;
    v36 = 2112;
    v37 = accountCopy;
    v38 = 2112;
    v39 = dCopy;
    v40 = 2112;
    v41 = contextCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for service %@ account %@ from (fromID=%@) with context: %@", buf, 0x2Au);
  }

  v18 = sub_100004778(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v31 = serviceCopy;
    if (v19)
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Recieved pending message of type %ld", buf, 0xCu);
    }

    v20 = IDSCopyAddressDestinationForDestination();
    v18 = IDSCopyRawAddressForDestination();

    v21 = [TUHandle handleWithDestinationID:v18];
    v22 = [CSDIDSPendingChat alloc];
    v23 = +[NSUUID UUID];
    serviceIdentifier = [contextCopy serviceIdentifier];
    v25 = -[CSDIDSPendingChat initWithUUID:isVideo:handle:](v22, "initWithUUID:isVideo:handle:", v23, [serviceIdentifier containsString:@"audio"] ^ 1, v21);

    if (type == 6)
    {
      if (![(CSDAbstractIDSProviderDelegate *)self shouldAcceptIncomingInvite])
      {
LABEL_13:

        serviceCopy = v31;
        goto LABEL_14;
      }

      provider2 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForPendingChat:v25];
      provider = [(CSDAbstractIDSProviderDelegate *)self provider];
      uuid = [(CSDIDSPendingChat *)v25 uuid];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000FDFC4;
      v32[3] = &unk_10061A4C0;
      v33 = v25;
      [provider reportNewIncomingCallWithUUID:uuid update:provider2 completion:v32];

      uuid2 = v33;
    }

    else
    {
      provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
      uuid2 = [(CSDIDSPendingChat *)v25 uuid];
      v30 = +[NSDate date];
      [provider2 reportCallWithUUID:uuid2 endedAtDate:v30 reason:3];
    }

    goto LABEL_13;
  }

  if (v19)
  {
    *buf = 134217984;
    typeCopy2 = type;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not handling pending message of type: %ld", buf, 0xCu);
  }

LABEL_14:
}

- (id)callUpdateForPendingChat:(id)chat
{
  chatCopy = chat;
  v4 = objc_alloc_init(CXCallUpdate);
  [v4 setHasVideo:{objc_msgSend(chatCopy, "isVideo")}];
  handle = [chatCopy handle];

  v6 = [CXHandle handleWithTUHandle:handle];
  [v4 setRemoteHandle:v6];

  [v4 setRequiresAuthentication:1];

  return v4;
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  v15 = [[CSDMessagingCallMessage alloc] initWithData:contextCopy];
  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = sessionCopy;
    v97 = 2112;
    v98 = accountCopy;
    v99 = 2112;
    v100 = dCopy;
    v101 = 2112;
    v102 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for session %@ account %@ from (fromID=%@) with data: %@", buf, 0x2Au);
  }

  type = [(CSDMessagingCallMessage *)v15 type];
  if (type != 1)
  {
    v21 = sub_100004778(type);
    v63 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v63)
      {
        type2 = [(CSDMessagingCallMessage *)v15 type];
        if (type2 >= 3)
        {
          v65 = [NSString stringWithFormat:@"(unknown: %i)", type2];
        }

        else
        {
          v65 = off_10061BA38[type2];
        }

        *buf = 138412290;
        *&buf[4] = v65;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring incoming invite since message with type=%@ was not an invite.", buf, 0xCu);
      }

      goto LABEL_35;
    }

    if (!v63)
    {
      goto LABEL_35;
    }

    *buf = 0;
    v66 = "[WARN] Ignoring incoming invite since accompanying message was nil";
    v67 = v21;
    v68 = 2;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v66, buf, v68);
    goto LABEL_35;
  }

  shouldAcceptIncomingInvite = [(CSDAbstractIDSProviderDelegate *)self shouldAcceptIncomingInvite];
  if (!shouldAcceptIncomingInvite)
  {
    v21 = sub_100004778(shouldAcceptIncomingInvite);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 67109120;
    v66 = "Ignoring incoming invite since shouldAcceptIncomingInvite is %d";
    v67 = v21;
    v68 = 8;
    goto LABEL_25;
  }

  incomingSessionProviderGenerator = [(CSDAbstractIDSProviderDelegate *)self incomingSessionProviderGenerator];
  queue = [(CSDAbstractIDSProviderDelegate *)self queue];
  v21 = (incomingSessionProviderGenerator)[2](incomingSessionProviderGenerator, sessionCopy, queue);

  v22 = [[CSDExternalIDSDualSession alloc] initAsReceiverWithSessionProvider:v21 remoteFromID:dCopy remoteProtocolVersion:[(CSDMessagingCallMessage *)v15 protocolVersion]];
  [v22 setInvitationTimeout:TUIncomingInvitationTimeout()];
  v23 = IDSCopyAddressDestinationForDestination();
  v24 = IDSCopyRawAddressForDestination();

  v84 = v24;
  v86 = [[CXHandle alloc] initWithDestinationID:v24];
  v25 = [CSDAbstractIDSProviderDelegate waitingChatWithHandle:"waitingChatWithHandle:isOutgoing:" isOutgoing:?];
  v26 = v25;
  selfCopy = self;
  v85 = v22;
  if (v25 && ([v25 sessionUUID], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "UUID"), v28 = contextCopy, v29 = v15, v30 = dCopy, v31 = accountCopy, v32 = sessionCopy, v33 = v26, v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v27, "caseInsensitiveCompare:", v34), v34, v26 = v33, sessionCopy = v32, accountCopy = v31, dCopy = v30, v15 = v29, contextCopy = v28, v22 = v85, v27, v37 = v35 + 1 == 0, self = selfCopy, v37))
  {
    v75 = sub_100004778(v36);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Declining this invite because we found a sending chat with the same destination: %@", buf, 0xCu);
    }

    [v85 declineInvitation];
  }

  else
  {
    v81 = v26;
    v82 = v21;
    v83 = contextCopy;
    incomingChatGenerator = [(CSDAbstractIDSProviderDelegate *)self incomingChatGenerator];
    tuHandle = [v86 tuHandle];
    protoWantsVideo = [(CSDMessagingCallMessage *)v15 protoWantsVideo];
    inviteData = [(CSDMessagingCallMessage *)v15 inviteData];
    faceTimeInviteDictionary = [inviteData faceTimeInviteDictionary];
    v43 = v22;
    v44 = selfCopy;
    v45 = (incomingChatGenerator)[2](incomingChatGenerator, v43, tuHandle, protoWantsVideo, faceTimeInviteDictionary);

    [v45 setDelegate:selfCopy];
    [v45 setRemoteMomentsAvailable:{-[CSDMessagingCallMessage isMomentsAvailable](v15, "isMomentsAvailable")}];
    [v45 setShouldSuppressInCallUI:{-[CSDMessagingCallMessage shouldSuppressInCallUI](v15, "shouldSuppressInCallUI")}];
    v46 = [(CSDAbstractIDSProviderDelegate *)selfCopy callUpdateForChat:v45];
    loginID = [accountCopy loginID];
    v48 = [loginID length];

    if (v48)
    {
      v79 = accountCopy;
      v80 = v46;
      v76 = v45;
      v77 = dCopy;
      v78 = sessionCopy;
      loginID2 = [accountCopy loginID];
      v50 = TUHandleForIDSCanonicalAddress();

      provider = [(CSDAbstractIDSProviderDelegate *)selfCopy provider];
      configuration = [provider configuration];
      prioritizedSenderIdentities = [configuration prioritizedSenderIdentities];

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v54 = prioritizedSenderIdentities;
      v55 = [v54 countByEnumeratingWithState:&v91 objects:v95 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v92;
        while (2)
        {
          for (i = 0; i != v56; i = i + 1)
          {
            if (*v92 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v91 + 1) + 8 * i);
            handle = [v59 handle];
            tuHandle2 = [handle tuHandle];
            v62 = [tuHandle2 isEqualToHandle:v50];

            if (v62)
            {
              uUID = [v59 UUID];
              [v80 setLocalSenderIdentityUUID:uUID];

              account = [v59 account];
              uUID2 = [account UUID];
              [v80 setLocalSenderIdentityAccountUUID:uUID2];

              goto LABEL_29;
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v91 objects:v95 count:16];
          if (v56)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      sessionCopy = v78;
      accountCopy = v79;
      v45 = v76;
      dCopy = v77;
      v44 = selfCopy;
      v46 = v80;
    }

    provider2 = [(CSDAbstractIDSProviderDelegate *)v44 provider];
    uUID3 = [v45 UUID];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_1000FE8BC;
    v88[3] = &unk_10061A6A0;
    v88[4] = v44;
    v89 = v45;
    v22 = v85;
    v90 = v85;
    v74 = v45;
    [provider2 reportNewIncomingCallWithUUID:uUID3 update:v46 completion:v88];

    v21 = v82;
    contextCopy = v83;
    v26 = v81;
  }

LABEL_35:
}

- (id)waitingChatWithHandle:(id)handle isOutgoing:(BOOL)outgoing
{
  outgoingCopy = outgoing;
  handleCopy = handle;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v8 = [mutableChats countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *v19;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(mutableChats);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      dateStartedConnecting = [v12 dateStartedConnecting];
      if (dateStartedConnecting)
      {
        goto LABEL_11;
      }

      dateStartedConnecting = [v12 handle];
      tuHandle = [handleCopy tuHandle];
      if ((TUHandlesAreCanonicallyEqual() & 1) == 0)
      {

LABEL_11:
        continue;
      }

      isOutgoing = [v12 isOutgoing];

      if (isOutgoing == outgoingCopy)
      {
        v16 = v12;
        goto LABEL_15;
      }
    }

    v9 = [mutableChats countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
LABEL_14:
  v16 = 0;
LABEL_15:

  return v16;
}

- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

- (id)callUpdateForChat:(id)chat
{
  chatCopy = chat;
  v4 = [[CXCallUpdate alloc] initWithIDSChat:chatCopy];

  return v4;
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  v5 = sub_100004778(beginCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = beginCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", &v8, 0xCu);
  }

  [(CSDAbstractIDSProviderDelegate *)self setProvider:beginCopy];
  providerDidBegin = [(CSDAbstractIDSProviderDelegate *)self providerDidBegin];

  if (providerDidBegin)
  {
    providerDidBegin2 = [(CSDAbstractIDSProviderDelegate *)self providerDidBegin];
    providerDidBegin2[2]();
  }
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  v5 = sub_100004778(resetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v7 = [mutableChats countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(mutableChats);
        }

        [*(*(&v11 + 1) + 8 * v10) end];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [mutableChats countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v14, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  dateConnected = [v8 dateConnected];

  if (dateConnected)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100474A2C(v8, v11);
    }

    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fail];
    }
  }

  else
  {
    downgradeToAudio = [actionCopy downgradeToAudio];
    if (downgradeToAudio)
    {
      [v8 setVideo:0];
      downgradeToAudio = [v8 setSendingVideo:0];
    }

    v13 = sub_100004778(downgradeToAudio);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling answer on chat %@", &v14, 0xCu);
    }

    [v8 answerWithVideoAspectRatioDescriptor:actionCopy];
  }
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v11, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling end on chat %@", &v11, 0xCu);
  }

  [v8 end];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v17, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  dateConnected = [v8 dateConnected];

  if (dateConnected)
  {
    isOnHold = [actionCopy isOnHold];
    v12 = isOnHold;
    v13 = sub_100004778(isOnHold);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v17 = 138412290;
      v18 = v8;
      v15 = "Setting sendingAudio to NO for chat %@";
    }

    else
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v17 = 138412290;
      v18 = v8;
      v15 = "Setting sendingAudio to YES for chat %@";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v17, 0xCu);
LABEL_14:

    [v8 setSendingAudio:v12 ^ 1u];
    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fulfill];
    }

    goto LABEL_16;
  }

  v16 = sub_100004778(v10);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100474AA4(v8, v16);
  }

  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fail];
  }

LABEL_16:
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13[0] = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v12, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    isSendingVideo = [actionCopy isSendingVideo];
    v12 = 67109378;
    LODWORD(v13[0]) = isSendingVideo;
    WORD2(v13[0]) = 2112;
    *(v13 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling setIsSendingVideo with %d for chat %@", &v12, 0x12u);
  }

  [v8 setSendingVideo:{objc_msgSend(actionCopy, "isSendingVideo")}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action
{
  actionCopy = action;
  v5 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performEnableVideoCallAction:(id)action
{
  actionCopy = action;
  v5 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [actionCopy videoPresentationSize];
  [v8 setRemoteVideoPresentationSize:?];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [v8 setRemoteVideoPresentationState:{-[CSDAbstractIDSProviderDelegate TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:](self, "TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(actionCopy, "videoPresentationState"))}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [v8 setRelaying:{objc_msgSend(actionCopy, "isRelaying")}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [v8 setMuted:{objc_msgSend(actionCopy, "isMuted")}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (BOOL)isWiFiAllowedForChat:(id)chat
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isWiFiAllowed = [capabilities isWiFiAllowed];

  return isWiFiAllowed;
}

- (BOOL)isCellularDataAllowedForChat:(id)chat
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataAllowed = [capabilities isCellularDataAllowed];

  return isCellularDataAllowed;
}

- (BOOL)isCellularDataPreferredForChat:(id)chat
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataPreferred = [capabilities isCellularDataPreferred];

  return isCellularDataPreferred;
}

- (CGSize)localPortraitAspectRatioForChat:(id)chat
{
  mainDisplay = [CUTWeakLinkClass() mainDisplay];
  [mainDisplay bounds];
  if (v4 <= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = TUBinaryGCD();
  v9 = v6 / v8;
  v10 = v7 / v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)chatSentInvitation:(id)invitation
{
  invitationCopy = invitation;
  if ([invitationCopy isOutgoing])
  {
    provider = [(CSDAbstractIDSProviderDelegate *)self provider];
    uUID = [invitationCopy UUID];
    [provider reportOutgoingCallWithUUID:uUID sentInvitationAtDate:0];

    v6 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForChat:invitationCopy];
    [v6 setMayRequireBreakBeforeMake:{objc_msgSend(invitationCopy, "mayRequireBreakBeforeMake")}];
    provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
    uUID2 = [invitationCopy UUID];
    [provider2 reportCallWithUUID:uUID2 updated:v6];
  }
}

- (void)chatConnected:(id)connected
{
  connectedCopy = connected;
  v5 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForChat:connectedCopy];
  [v5 setVideoStreamToken:{objc_msgSend(connectedCopy, "videoStreamToken")}];
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [connectedCopy UUID];
  [provider reportCallWithUUID:uUID updated:v5];

  LODWORD(uUID) = [connectedCopy isOutgoing];
  provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
  if (uUID)
  {
    uUID2 = [connectedCopy UUID];
    dateConnected = [connectedCopy dateConnected];
    [provider2 reportOutgoingCallWithUUID:uUID2 connectedAtDate:dateConnected];
  }

  else
  {
    v11 = objc_opt_class();
    uUID3 = [connectedCopy UUID];
    v13 = [provider2 pendingCallActionsOfClass:v11 withCallUUID:uUID3];

    if ([v13 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v13;
      isComplete = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (isComplete)
      {
        v16 = isComplete;
        v24 = v5;
        v17 = *v26;
        do
        {
          v18 = 0;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            v20 = sub_100004778(isComplete);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Chat with matching UUID connected; attempting to fulfill pending answer call action %@", buf, 0xCu);
            }

            isComplete = [v19 isComplete];
            if ((isComplete & 1) == 0)
            {
              dateConnected2 = [connectedCopy dateConnected];
              if (dateConnected2)
              {
                [v19 fulfillWithDateConnected:dateConnected2];
              }

              else
              {
                v22 = sub_100004778(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v30 = v19;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Chat did not provide a connection date; Failing answer call action %@", buf, 0xCu);
                }

                [v19 fail];
              }
            }

            ++v18;
          }

          while (v16 != v18);
          isComplete = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
          v16 = isComplete;
        }

        while (isComplete);
        v5 = v24;
      }
    }

    else
    {
      v14 = sub_100004778(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        uUID4 = [connectedCopy UUID];
        *buf = 138412290;
        v30 = uUID4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] No pending answer call actions found with UUID: %@", buf, 0xCu);
      }
    }
  }
}

- (void)chatEnded:(id)ended
{
  endedCopy = ended;
  [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:endedCopy];
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  v6 = objc_opt_class();
  uUID = [endedCopy UUID];
  v8 = [provider pendingCallActionsOfClass:v6 withCallUUID:uUID];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  isComplete = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (isComplete)
  {
    v11 = isComplete;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = sub_100004778(isComplete);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = endedCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failing answer call action for call because it disconnected before connecting: %@", buf, 0xCu);
        }

        isComplete = [v14 isComplete];
        if ((isComplete & 1) == 0)
        {
          isComplete = [v14 fail];
        }

        ++v13;
      }

      while (v11 != v13);
      isComplete = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
      v11 = isComplete;
    }

    while (isComplete);
  }
}

- (void)chat:(id)chat changedBytesOfDataUsed:(int64_t)used
{
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];
  crossDeviceIdentifier = [chatCopy crossDeviceIdentifier];

  [provider reportCallWithUUID:uUID crossDeviceIdentifier:crossDeviceIdentifier changedBytesOfDataUsed:used];
}

- (void)chat:(id)chat inputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  [provider reportCallWithUUID:uUID changedFrequencyData:toCopy forDirection:2];
}

- (void)chat:(id)chat outputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  [provider reportCallWithUUID:uUID changedFrequencyData:toCopy forDirection:1];
}

- (void)chat:(id)chat inputLevelChangedTo:(float)to
{
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  *&v8 = to;
  [provider reportCallWithUUID:uUID changedMeterLevel:2 forDirection:v8];
}

- (void)chat:(id)chat outputLevelChangedTo:(float)to
{
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  *&v8 = to;
  [provider reportCallWithUUID:uUID changedMeterLevel:1 forDirection:v8];
}

@end