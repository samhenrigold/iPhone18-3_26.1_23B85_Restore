@interface CSDFaceTimeConversationProviderDelegate
+ (id)callScreenShareAttributesForAction:(id)action;
- (BOOL)_actionIsDisallowedByGreenTea:(id)tea;
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isUnansweredOutgoingOneToOneConversation:(id)conversation;
- (BOOL)isWaitingForRemoteJoinForConversationUUID:(id)d;
- (BOOL)linkContainsValidLocalHandle:(id)handle;
- (BOOL)shouldHandleProvider:(id)provider;
- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier;
- (CSDFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver;
- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver;
- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver idsService:(id)service;
- (NSMutableSet)conversationUUIDsUpgradedFromAVLess;
- (NSMutableSet)conversationUUIDsWaitingForRemoteJoin;
- (id)_findPendingConversationWithCallUUID:(id)d;
- (id)activatedLinkForJoinCallAction:(id)action withError:(id *)error;
- (id)deletedLinkForJoinCallAction:(id)action withError:(id *)error;
- (id)linkForJoinCallAction:(id)action inLinks:(id)links;
- (id)linkForJoinCallAction:(id)action withError:(id *)error;
- (id)validateLinkForJoinCallActionIfNecessary:(id)necessary withError:(id *)error;
- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state;
- (void)_failConversation:(id)conversation failureReason:(int64_t)reason providerEndedReason:(int64_t)endedReason;
- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context;
- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation;
- (void)conversationManager:(id)manager connectionDidStartForConversation:(id)conversation;
- (void)conversationManager:(id)manager conversation:(id)conversation addedActiveParticipant:(id)participant;
- (void)conversationManager:(id)manager conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used;
- (void)conversationManager:(id)manager conversation:(id)conversation failedWithContext:(id)context;
- (void)conversationManager:(id)manager conversation:(id)conversation receivedMessage:(id)message fromHandle:(id)handle withUpdate:(id)update shouldRing:(BOOL)ring;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)conversationManager:(id)manager conversationScreenSharingChanged:(id)changed forParticipant:(id)participant;
- (void)conversationManager:(id)manager joinConversationWithRequest:(id)request;
- (void)conversationManager:(id)manager remoteMembersChanged:(id)changed forConversation:(id)conversation;
- (void)conversationManager:(id)manager removedConversationWithUUID:(id)d;
- (void)conversationManager:(id)manager reportedHandedOffConversation:(id)conversation replacedByIdentifier:(unint64_t)identifier localizedHandoffRecipientDeviceCategory:(id)category;
- (void)conversationManager:(id)manager reportedInvalidLinkForPendingConversation:(id)conversation;
- (void)conversationManager:(id)manager reportedLetMeInRejectedForPendingConversation:(id)conversation;
- (void)conversationManager:(id)manager reportedRemoteDoesHandedOffForConversation:(id)conversation;
- (void)declineConversation:(id)conversation reason:(int64_t)reason destinations:(id)destinations idsService:(id)service;
- (void)declineRemoteDevicesForConversation:(id)conversation reason:(int64_t)reason;
- (void)declineRemoteMembersForConversation:(id)conversation reason:(int64_t)reason;
- (void)handleDeclineMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)handleInvitationMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle shouldRing:(BOOL)ring;
- (void)handleInvitationMessageForLetMeIn:(id)in forConversation:(id)conversation pendingConversation:(id)pendingConversation link:(id)link fromHandle:(id)handle;
- (void)handleMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update shouldRing:(BOOL)ring;
- (void)handleNicknameUpdateMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)handleReceivedVideoUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle;
- (void)handleRemoveMembersMessage:(id)message forConversation:(id)conversation;
- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle;
- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withAliases:(id)aliases;
- (void)handleScreenShareMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)handleUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason;
- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason;
- (void)performJoinCallAction:(id)action;
- (void)proceedToNewPendingConversationForLink:(id)link action:(id)action;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEnableVideoCallAction:(id)action;
- (void)provider:(id)provider performSetAllowUplinkAudioInjectionAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetScreenShareAttributesCallAction:(id)action;
- (void)provider:(id)provider performSetScreeningCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action;
- (void)setCallUUID:(id)d forConversationUUID:(id)iD;
- (void)setWaitingForRemoteJoin:(BOOL)join forConversationUUID:(id)d;
- (void)startOutgoingOneToOneTimeoutIfNecessary:(id)necessary;
@end

@implementation CSDFaceTimeConversationProviderDelegate

- (CSDFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver
{
  v14.receiver = self;
  v14.super_class = CSDFaceTimeConversationProviderDelegate;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v14 initWithConversationManager:manager queue:queue invitationResolver:resolver];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    recentlyDeletedCallUUIDsByConversationUUID = v5->_recentlyDeletedCallUUIDsByConversationUUID;
    v5->_recentlyDeletedCallUUIDsByConversationUUID = v6;

    v8 = +[NSMutableSet set];
    conversationUUIDsWaitingForRemoteJoin = v5->_conversationUUIDsWaitingForRemoteJoin;
    v5->_conversationUUIDsWaitingForRemoteJoin = v8;

    v10 = objc_alloc_init(CSDBlockUtilities);
    blockUtilities = v5->_blockUtilities;
    v5->_blockUtilities = v10;

    allowsScreenSharingBlock = v5->_allowsScreenSharingBlock;
    v5->_allowsScreenSharingBlock = &stru_10061E5D0;
  }

  return v5;
}

- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver
{
  resolverCopy = resolver;
  flagsCopy = flags;
  bagCopy = bag;
  supportCopy = support;
  managerCopy = manager;
  queueCopy = queue;
  v20 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  v21 = [(CSDFaceTimeConversationProviderDelegate *)self initWithQueue:queueCopy conversationManager:managerCopy networkSupport:supportCopy serverBag:bagCopy featureFlags:flagsCopy invitationResolver:resolverCopy idsService:v20];

  return v21;
}

- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver idsService:(id)service
{
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = CSDFaceTimeConversationProviderDelegate;
  v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v20 initWithQueue:queue conversationManager:manager networkSupport:support serverBag:bag featureFlags:flags invitationResolver:resolver];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_idsService, service);
  }

  return v18;
}

- (void)setCallUUID:(id)d forConversationUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v9 = [callUUIDsByConversationUUID objectForKeyedSubscript:iDCopy];

    if (v9)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        callUUIDsByConversationUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        v13 = [callUUIDsByConversationUUID2 objectForKeyedSubscript:iDCopy];
        *buf = 138412802;
        v24 = 0;
        v25 = 2112;
        v26 = iDCopy;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "callUUID: %@, callUUIDsByConversationUUID[%@]: %@", buf, 0x20u);
      }

      callUUIDsByConversationUUID3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      v15 = [callUUIDsByConversationUUID3 objectForKeyedSubscript:iDCopy];
      recentlyDeletedCallUUIDsByConversationUUID = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
      [recentlyDeletedCallUUIDsByConversationUUID setObject:v15 forKeyedSubscript:iDCopy];

      objc_initWeak(buf, self);
      v17 = dispatch_time(0, 5000000000);
      queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001F6088;
      block[3] = &unk_10061A600;
      objc_copyWeak(&v22, buf);
      v21 = iDCopy;
      dispatch_after(v17, queue, block);

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  v19.receiver = self;
  v19.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v19 setCallUUID:dCopy forConversationUUID:iDCopy];
}

- (BOOL)isWaitingForRemoteJoinForConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingForRemoteJoin = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingForRemoteJoin];
  LOBYTE(queue) = [conversationUUIDsWaitingForRemoteJoin containsObject:dCopy];

  return queue;
}

- (NSMutableSet)conversationUUIDsWaitingForRemoteJoin
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingForRemoteJoin = self->_conversationUUIDsWaitingForRemoteJoin;

  return conversationUUIDsWaitingForRemoteJoin;
}

- (void)setWaitingForRemoteJoin:(BOOL)join forConversationUUID:(id)d
{
  joinCopy = join;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dCopy)
  {
    conversationUUIDsWaitingForRemoteJoin = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingForRemoteJoin];
    v8 = conversationUUIDsWaitingForRemoteJoin;
    if (joinCopy)
    {
      [conversationUUIDsWaitingForRemoteJoin addObject:dCopy];
    }

    else
    {
      [conversationUUIDsWaitingForRemoteJoin removeObject:dCopy];
    }
  }
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

+ (id)callScreenShareAttributesForAction:(id)action
{
  actionCopy = action;
  v4 = objc_alloc_init(TUCallScreenShareAttributes);
  if (actionCopy)
  {
    [v4 setDeviceFamily:{objc_msgSend(actionCopy, "deviceFamily")}];
    [v4 setDeviceHomeButtonType:{objc_msgSend(actionCopy, "deviceHomeButtonType")}];
    [v4 setStyle:{objc_msgSend(actionCopy, "style")}];
    displayID = [actionCopy displayID];
    [v4 setDisplayID:displayID];

    frameRate = [actionCopy frameRate];
    [v4 setFrameRate:frameRate];

    [v4 setWindowed:{objc_msgSend(actionCopy, "isWindowed")}];
    windowUUID = [actionCopy windowUUID];
    [v4 setWindowUUID:windowUUID];

    displayScale = [actionCopy displayScale];
    [v4 setDisplayScale:displayScale];

    cornerRadius = [actionCopy cornerRadius];
    [v4 setCornerRadius:cornerRadius];

    scaleFactor = [actionCopy scaleFactor];
    [v4 setScaleFactor:scaleFactor];

    systemRootLayerTransform = [actionCopy systemRootLayerTransform];
    [v4 setSystemRootLayerTransform:systemRootLayerTransform];

    originalResolution = [actionCopy originalResolution];
    v13 = [originalResolution copy];
    [v4 setOriginalResolution:v13];
  }

  return v4;
}

- (BOOL)linkContainsValidLocalHandle:(id)handle
{
  handleCopy = handle;
  isLocallyCreated = [handleCopy isLocallyCreated];
  if (isLocallyCreated && (-[CSDAbstractFaceTimeConversationProviderDelegate conversationManager](self, "conversationManager"), v6 = objc_claimAutoreleasedReturnValue(), [handleCopy originatorHandle], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isValidLocalHandle:", v7), v7, v6, v8))
  {
    invitedMemberHandles = sub_100004778(v9);
    if (os_log_type_enabled(invitedMemberHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = @"YES";
      v31 = 2112;
      v32 = @"YES";
      _os_log_impl(&_mh_execute_header, invitedMemberHandles, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@, using valid local handle: %@", buf, 0x16u);
    }

LABEL_23:
    v20 = 1;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    invitedMemberHandles = [handleCopy invitedMemberHandles];
    v11 = [invitedMemberHandles countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(invitedMemberHandles);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          LODWORD(v15) = [conversationManager isValidLocalHandle:v15];

          if (v15)
          {
            v21 = sub_100004778(v17);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = @"NO";
              if (isLocallyCreated)
              {
                v22 = @"YES";
              }

              *buf = 138412290;
              v30 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@ using valid local handle (YES)", buf, 0xCu);
            }

            goto LABEL_23;
          }
        }

        v12 = [invitedMemberHandles countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    invitedMemberHandles = sub_100004778(v18);
    if (os_log_type_enabled(invitedMemberHandles, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"YES";
      if (!isLocallyCreated)
      {
        v19 = @"NO";
      }

      *buf = 138412546;
      v30 = v19;
      v31 = 2112;
      v32 = @"NO";
      _os_log_impl(&_mh_execute_header, invitedMemberHandles, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@, using valid local handle: %@", buf, 0x16u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v9.receiver = self;
  v9.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v9 cleanUpConversationIfNecessaryForConversationUUID:dCopy failureContext:contextCopy];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:dCopy];
}

- (void)handleMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update shouldRing:(BOOL)ring
{
  ringCopy = ring;
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  updateCopy = update;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    type = [messageCopy type];
    if (type < 0x26 && ((0x3FFFE9FF7FuLL >> type) & 1) != 0)
    {
      v20 = *(&off_10061E668 + type);
    }

    else
    {
      v20 = [NSString stringWithFormat:@"(unknown: %i)", type];
    }

    uUID = [conversationCopy UUID];
    *buf = 138412546;
    v24 = v20;
    v25 = 2112;
    v26 = uUID;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received %@ conversation message for %@", buf, 0x16u);
  }

  type2 = [messageCopy type];
  if (type2 > 8)
  {
    if (type2 <= 18)
    {
      if (type2 != 9)
      {
        if (type2 != 12)
        {
          goto LABEL_25;
        }

        [(CSDFaceTimeConversationProviderDelegate *)self handleNicknameUpdateMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy withUpdate:updateCopy];
      }

      [(CSDFaceTimeConversationProviderDelegate *)self handleDeclineMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy withUpdate:updateCopy];
      goto LABEL_25;
    }

    if (type2 == 19)
    {
      [(CSDFaceTimeConversationProviderDelegate *)self handleRemoveMembersMessage:messageCopy forConversation:conversationCopy];
    }

    else if (type2 == 22)
    {
      [(CSDFaceTimeConversationProviderDelegate *)self handleReceivedVideoUpgradeMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy];
    }
  }

  else
  {
    if (type2 <= 2)
    {
      if (type2 != 1)
      {
        if (type2 == 2)
        {
          [(CSDFaceTimeConversationProviderDelegate *)self handleUpgradeMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy withUpdate:updateCopy];
        }

        goto LABEL_25;
      }

LABEL_23:
      [(CSDFaceTimeConversationProviderDelegate *)self handleInvitationMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy shouldRing:ringCopy];
      goto LABEL_25;
    }

    if (type2 == 3)
    {
      goto LABEL_23;
    }

    if (type2 == 6)
    {
      [(CSDFaceTimeConversationProviderDelegate *)self handleRespondedElsewhereMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy];
    }
  }

LABEL_25:
}

- (void)handleDeclineMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  conversationCopy = conversation;
  handleCopy = handle;
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  if ([featureFlags nearbyFaceTimeEnabled])
  {
    isNearbySession = [conversationCopy isNearbySession];

    if (isNearbySession)
    {
      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID = [conversationCopy UUID];
      [conversationManager removeNearbyMemberWithHandle:handleCopy onConversationWithUUID:uUID];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([conversationCopy state] == 3)
  {
    conversationManager = sub_100004778(3);
    if (!os_log_type_enabled(conversationManager, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_13;
    }

    uUID = [conversationCopy UUID];
    v21 = 138412546;
    v22 = handleCopy;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&_mh_execute_header, conversationManager, OS_LOG_TYPE_DEFAULT, "[WARN] Not handling received Decline message from %@ since we are already in a joined conversation with UUID: %@", &v21, 0x16u);
LABEL_8:

    goto LABEL_9;
  }

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  uUID2 = [conversationCopy UUID];
  [conversationManager2 leaveConversationWithUUID:uUID2];

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID3 = [conversationCopy UUID];
  v18 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID3];

  if (v18)
  {
    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v20 = +[NSDate now];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v18 endedAtDate:v20 withReason:2 failureContext:0];
  }

LABEL_13:
}

- (void)handleNicknameUpdateMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  hasNickname = [messageCopy hasNickname];
  if (hasNickname)
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    nickname = [messageCopy nickname];
    uUID = [conversationCopy UUID];
    [conversationManager processUpdatedNickname:nickname forHandle:handleCopy conversationUUID:uUID];
  }

  else
  {
    conversationManager = sub_100004778(hasNickname);
    if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = messageCopy;
      _os_log_impl(&_mh_execute_header, conversationManager, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring nickname update message %@ because message doesn't have a nickname set.", &v16, 0xCu);
    }
  }
}

- (void)handleScreenShareMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Not honoring screen sharing message", v7, 2u);
  }
}

- (void)handleReceivedVideoUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = TUCopyIDSCanonicalAddressForHandle();
  v11 = v10;
  if (!v10)
  {
    v22 = sub_100004778(0);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    v43 = handleCopy;
    v32 = "[WARN] Could not convert %@ to IDS destination";
    v33 = v22;
    v34 = 12;
    goto LABEL_21;
  }

  v36 = v10;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = conversationCopy;
  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v14 = [activeRemoteParticipants countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v14)
  {
LABEL_10:

LABEL_17:
    v22 = sub_100004778(v21);
    v11 = v36;
    conversationCopy = v12;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v32 = "[WARN] Dropping video upgrade message, since member is not part of conversation.";
    v33 = v22;
    v34 = 2;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    goto LABEL_28;
  }

  v15 = v14;
  v16 = *v38;
LABEL_4:
  v17 = 0;
  while (1)
  {
    if (*v38 != v16)
    {
      objc_enumerationMutation(activeRemoteParticipants);
    }

    v18 = *(*(&v37 + 1) + 8 * v17);
    handle = [v18 handle];
    v20 = [handle isEqualToHandle:handleCopy];

    if (v20)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [activeRemoteParticipants countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v22 = v18;

  if (!v22)
  {
    goto LABEL_17;
  }

  conversationCopy = v12;
  v11 = v36;
  if (([v12 state] == 3 || (v23 = objc_msgSend(v12, "state"), v23 == 2)) && (objc_msgSend(v12, "remoteMembers"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v25 == 1))
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [v12 UUID];
    v28 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (v28)
    {
      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID2 = [v12 UUID];
      [conversationManager setVideo:1 forConversationWithUUID:uUID2];
    }

    else
    {
      conversationManager = sub_100004778(v29);
      if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v12;
        _os_log_impl(&_mh_execute_header, conversationManager, OS_LOG_TYPE_DEFAULT, "[WARN] No call is being tracked, dropping message for conversation: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v35 = sub_100004778(v23);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[WARN] Conversation %@ is not in the correct state. Dropping message.", buf, 0xCu);
    }
  }

LABEL_28:
}

- (void)handleUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  updateCopy = update;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag];
  isAutomaticUpgradingEnabled = [serverBag isAutomaticUpgradingEnabled];

  if ((isAutomaticUpgradingEnabled & 1) == 0)
  {
    v22 = sub_100004778(v17);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v26 = "[WARN] Not handling upgrade message for conversation since upgrades are currently disabled.";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    goto LABEL_16;
  }

  if (!updateCopy)
  {
    v22 = sub_100004778(v17);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v26 = "[WARN] Not upgrading conversation since there was no join update attached.";
    goto LABEL_15;
  }

  participantUpdateSubtype = [updateCopy participantUpdateSubtype];
  if (participantUpdateSubtype != 1)
  {
    v22 = sub_100004778(participantUpdateSubtype);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v26 = "[WARN] Not upgrading conversation since the join update has an incorrect subtype.";
    goto LABEL_15;
  }

  hasProtoUpgradeSessionUUID = [messageCopy hasProtoUpgradeSessionUUID];
  if ((hasProtoUpgradeSessionUUID & 1) == 0)
  {
    v22 = sub_100004778(hasProtoUpgradeSessionUUID);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v26 = "[WARN] Not upgrading conversation as message is missing upgrade token.";
    goto LABEL_15;
  }

  participantDestinationID = [updateCopy participantDestinationID];
  v33 = 0;
  v21 = [participantDestinationID _stripPotentialTokenURIWithToken:&v33];
  v22 = v33;

  if (v22)
  {
    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001F751C;
    v27[3] = &unk_10061E5F8;
    v28 = messageCopy;
    v29 = handleCopy;
    v30 = updateCopy;
    selfCopy = self;
    v32 = conversationCopy;
    [faceTimeDemuxerDelegate providerDelegate:self requestedUpgradeToExistingCallForConversation:v32 withSessionToken:v22 completion:v27];

    v25 = v28;
  }

  else
  {
    v25 = sub_100004778(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Not upgrading conversation as message is missing remote token.", buf, 2u);
    }
  }

LABEL_16:
}

- (void)handleRemoveMembersMessage:(id)message forConversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  removedMembers = [messageCopy removedMembers];
  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [removedMembers count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  removedMembers2 = [messageCopy removedMembers];
  v12 = [removedMembers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(removedMembers2);
        }

        tuConversationMember = [*(*(&v19 + 1) + 8 * v15) tuConversationMember];
        [v10 addObject:tuConversationMember];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [removedMembers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  uUID = [conversationCopy UUID];
  [conversationManager removeRemoteMembers:v10 fromConversationWithUUID:uUID];
}

- (void)handleInvitationMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle shouldRing:(BOOL)ring
{
  ringCopy = ring;
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  tuConversationLink = [messageCopy tuConversationLink];
  if (!tuConversationLink)
  {
    goto LABEL_8;
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  pseudonym = [tuConversationLink pseudonym];
  v17 = [conversationManager removePendingConversationWithPseudonym:pseudonym];

  if (!v17)
  {
    if ([messageCopy hasIsLetMeInApproved])
    {
      isLetMeInApproved = [messageCopy isLetMeInApproved];
      if (isLetMeInApproved)
      {
        v19 = sub_100004778(isLetMeInApproved);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          uUID = [conversationCopy UUID];
          v30 = 138412290;
          v31 = uUID;
          v21 = "Not ringing for incoming invitation message for %@ since message is a LMI approval";
          v22 = v19;
          v23 = 12;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v30, v23);
LABEL_16:

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

LABEL_8:
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID2 = [conversationCopy UUID];
    v17 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID2];

    if (v17)
    {
      v19 = sub_100004778(v26);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [conversationCopy UUID];
        v30 = 138412546;
        v31 = uUID;
        v32 = 2112;
        v33 = v17;
        v21 = "Ignoring incoming invitation message for %@ since we are already tracking this with call %@";
        v22 = v19;
        v23 = 22;
        goto LABEL_11;
      }
    }

    else
    {
      if (ringCopy)
      {
        tuInvitationContext = [messageCopy tuInvitationContext];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy isReRing:0 invitationContext:tuInvitationContext];

        goto LABEL_18;
      }

      v19 = sub_100004778(v26);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [conversationCopy UUID];
        invitationPreferences = [conversationCopy invitationPreferences];
        tuInvitationPreferences = [messageCopy tuInvitationPreferences];
        v30 = 138412802;
        v31 = uUID;
        v32 = 2114;
        v33 = invitationPreferences;
        v34 = 2114;
        v35 = tuInvitationPreferences;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation message for %@ because shouldRing is set to NO. conversation.invitationPreferences=%{public}@, message.tuInvitationPreferences=%{public}@", &v30, 0x20u);

        goto LABEL_16;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  [(CSDFaceTimeConversationProviderDelegate *)self handleInvitationMessageForLetMeIn:messageCopy forConversation:conversationCopy pendingConversation:v17 link:tuConversationLink fromHandle:handleCopy];
LABEL_18:
}

- (void)handleInvitationMessageForLetMeIn:(id)in forConversation:(id)conversation pendingConversation:(id)pendingConversation link:(id)link fromHandle:(id)handle
{
  inCopy = in;
  conversationCopy = conversation;
  pendingConversationCopy = pendingConversation;
  linkCopy = link;
  handleCopy = handle;
  conversationGroupUUID = [pendingConversationCopy conversationGroupUUID];
  conversationGroupUUID2 = [inCopy conversationGroupUUID];
  v19 = [conversationGroupUUID isEqual:conversationGroupUUID2];

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v22 = sub_100004778(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      conversationGroupUUID3 = [inCopy conversationGroupUUID];
      conversationGroupUUID4 = [pendingConversationCopy conversationGroupUUID];
      *buf = 138412802;
      v64 = conversationGroupUUID3;
      v65 = 2112;
      v66 = conversationGroupUUID4;
      v67 = 2112;
      v68 = linkCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because message's group UUID %@ did not match the pending conversation's expected group UUID %@. (link: %@)", buf, 0x20u);
    }

    v21 = 522;
  }

  approverHandle = [pendingConversationCopy approverHandle];
  v26 = [approverHandle isEquivalentToHandle:handleCopy];

  if (v26)
  {
    v28 = v19 ^ 1;
  }

  else
  {
    v29 = sub_100004778(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      approverHandle2 = [pendingConversationCopy approverHandle];
      *buf = 138412546;
      v64 = handleCopy;
      v65 = 2112;
      v66 = approverHandle2;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because it was sent from handle %@ instead of expected approverHandle %@", buf, 0x16u);
    }

    v28 = 1;
    v21 = 524;
  }

  link = [pendingConversationCopy link];
  v32 = [link isEquivalentToConversationLink:linkCopy];

  if ((v32 & 1) == 0)
  {
    v52 = sub_100004778(v33);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v64 = linkCopy;
      v65 = 2112;
      v66 = pendingConversationCopy;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because message's link %@ did not match the link the user tapped (pendingConversation: %@)", buf, 0x16u);
    }

    v21 = 523;
    goto LABEL_27;
  }

  if (v28)
  {
LABEL_27:
    v44 = objc_alloc_init(CXCallFailureContext);
    [v44 setFailureReason:0];
    [v44 setProviderEndedReason:v21];
    uUID = [conversationCopy UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID failureContext:v44];
    goto LABEL_37;
  }

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID2 = [conversationCopy UUID];
  v36 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID2];

  if (!v36)
  {
    callUUIDsByConversationUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    temporaryGroupUUID = [pendingConversationCopy temporaryGroupUUID];
    v36 = [callUUIDsByConversationUUID2 objectForKeyedSubscript:temporaryGroupUUID];
  }

  if ([inCopy type] == 1 && (objc_msgSend(conversationCopy, "letMeInRequestState") == 2 || objc_msgSend(pendingConversationCopy, "letMeInRequestState") == 2))
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID3 = [conversationCopy UUID];
    [conversationManager updateLetMeInRequestState:3 addLink:linkCopy forConversationWithUUID:uUID3];
  }

  uUID4 = [conversationCopy UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v36 withConversationUUID:uUID4 waitingToJoin:1];

  v42 = +[TUCallCenter sharedInstance];
  queue = [v42 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F894C;
  block[3] = &unk_100619D38;
  v44 = v36;
  v62 = v44;
  dispatch_async(queue, block);

  v46 = sub_100004778(v45);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = v44;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "LMI: Shuttling in to new conversation and stopping the pending one (moving callUUID %@ to new conversation).", buf, 0xCu);
  }

  v47 = objc_alloc_init(CSDConversationJoinContext);
  [(CSDConversationJoinContext *)v47 setWantsStagingArea:1];
  [(CSDConversationJoinContext *)v47 setRepresentsTransitionFromPending:1];
  [(CSDConversationJoinContext *)v47 setAvMode:2];
  provider = [conversationCopy provider];
  [(CSDConversationJoinContext *)v47 setProvider:provider];

  -[CSDConversationJoinContext setVideoEnabled:](v47, "setVideoEnabled:", [pendingConversationCopy isVideoEnabled]);
  -[CSDConversationJoinContext setVideo:](v47, "setVideo:", [pendingConversationCopy isVideo]);
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags avLessSharePlayEnabled];

  if (avLessSharePlayEnabled)
  {
    if ([inCopy hasAvMode])
    {
      avMode = [inCopy avMode];
    }

    else if ([(CSDConversationJoinContext *)v47 isVideo])
    {
      avMode = 2;
    }

    else
    {
      avMode = 1;
    }

    [(CSDConversationJoinContext *)v47 setAvMode:avMode];
  }

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  uUID5 = [conversationCopy UUID];
  [conversationManager2 joinExistingConversationWithUUID:uUID5 context:v47];

  isUplinkMuted = [pendingConversationCopy isUplinkMuted];
  if (isUplinkMuted)
  {
    v57 = sub_100004778(isUplinkMuted);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v64 = conversationCopy;
      v65 = 2112;
      v66 = pendingConversationCopy;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Setting uplinkMuted for conversation: %@ since pendingConversation:%@ has uplinkMuted", buf, 0x16u);
    }

    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID6 = [conversationCopy UUID];
    [conversationManager3 setUplinkMuted:1 forConversationWithUUID:uUID6];
  }

  uUID7 = [conversationCopy UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:uUID7];

  uUID = v62;
LABEL_37:
}

- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withAliases:(id)aliases
{
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  aliasesCopy = aliases;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  value = [handleCopy value];
  v16 = [value length];
  v17 = sub_100004778(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      LOWORD(v36) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring responded elsewhere message since it was not sent from a valid handle.", &v36, 2u);
    }

    goto LABEL_22;
  }

  if (v18)
  {
    initiator = [conversationCopy initiator];
    remoteMembers = [conversationCopy remoteMembers];
    v36 = 138413058;
    v37 = initiator;
    v38 = 2112;
    v39 = handleCopy;
    v40 = 2048;
    v41 = [remoteMembers count];
    v42 = 2112;
    v43 = aliasesCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleRespondedElsewhereMessage: initiator: %@, handle: %@, remotemember count: %lu, allAliases: %@", &v36, 0x2Au);
  }

  remoteMembers2 = [conversationCopy remoteMembers];
  if ([remoteMembers2 count] != 1)
  {
    v23 = [aliasesCopy containsObject:value];

    if (v23)
    {
      goto LABEL_10;
    }

LABEL_15:
    v17 = sub_100004778(v24);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    initiator2 = [conversationCopy initiator];
    normalizedValue = [initiator2 normalizedValue];
    normalizedValue2 = [handleCopy normalizedValue];
    v36 = 138412802;
    v37 = normalizedValue;
    v38 = 2112;
    v39 = normalizedValue2;
    v40 = 2112;
    v41 = aliasesCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring responded elsewhere message since this did not come from the originator (%@), handle: %@, or one of our aliases: %@.", &v36, 0x20u);

    goto LABEL_20;
  }

  initiator3 = [conversationCopy initiator];
  if (![initiator3 isEquivalentToHandle:handleCopy])
  {
    v27 = [aliasesCopy containsObject:value];

    if (v27)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_10:
  state = [conversationCopy state];
  if (state != 2)
  {
    state = [conversationCopy state];
    if (state != 3)
    {
      callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      uUID = [conversationCopy UUID];
      v17 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

      if (!v17)
      {
        goto LABEL_22;
      }

      uUID2 = [conversationCopy UUID];
      [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID2];

      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v17];
      uUID3 = [conversationCopy UUID];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:uUID3];

      [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
      disconnectedReason = [messageCopy disconnectedReason];
      provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [provider reportCallWithUUID:v17 endedAtDate:0 privateReason:disconnectedReason];

      if ([conversationCopy state] != 1)
      {
        goto LABEL_22;
      }

      initiator2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      normalizedValue = [conversationCopy UUID];
      [initiator2 leaveConversationWithUUID:normalizedValue];
LABEL_20:

      goto LABEL_21;
    }
  }

  v17 = sub_100004778(state);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    initiator2 = [conversationCopy UUID];
    v36 = 138412290;
    v37 = initiator2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring message that we've responded elsewhere for conversation %@ since the conversation is already joining or is joined.", &v36, 0xCu);
LABEL_21:
  }

LABEL_22:
}

- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle
{
  handleCopy = handle;
  conversationCopy = conversation;
  messageCopy = message;
  v12 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  allAliases = [v12 allAliases];
  [(CSDFaceTimeConversationProviderDelegate *)self handleRespondedElsewhereMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy withAliases:allAliases];
}

- (void)startOutgoingOneToOneTimeoutIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [conversationUUIDsByCallUUID objectForKeyedSubscript:necessaryCopy];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v10 = [conversationsByUUID objectForKeyedSubscript:v7];

  if (![(CSDFaceTimeConversationProviderDelegate *)self isWaitingForRemoteJoinForConversationUUID:v7])
  {
    if ([(CSDFaceTimeConversationProviderDelegate *)self isUnansweredOutgoingOneToOneConversation:v10])
    {
      invitationResolver = [(CSDAbstractFaceTimeConversationProviderDelegate *)self invitationResolver];
      localMember = [v10 localMember];
      handle = [localMember handle];
      v14 = [invitationResolver shouldStartRingingTimeoutForConversation:v10 handle:handle];

      if (v14)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self setWaitingForRemoteJoin:1 forConversationUUID:v7];
        v15 = dispatch_time(0, 30000000000);
        queue2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001F9104;
        v17[3] = &unk_10061A450;
        v17[4] = self;
        v18 = v7;
        v19 = necessaryCopy;
        v20 = v10;
        dispatch_after(v15, queue2, v17);
      }
    }
  }
}

- (BOOL)isUnansweredOutgoingOneToOneConversation:(id)conversation
{
  conversationCopy = conversation;
  if (![conversationCopy isLocallyCreated] || !objc_msgSend(conversationCopy, "isOneToOneModeEnabled"))
  {
    goto LABEL_17;
  }

  if ([conversationCopy state] != 2 && objc_msgSend(conversationCopy, "state") != 1)
  {
    if ([conversationCopy state] == 3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      v6 = [activeRemoteParticipants countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(activeRemoteParticipants);
            }

            if ([*(*(&v11 + 1) + 8 * i) audioVideoMode])
            {
              v5 = 0;
              goto LABEL_6;
            }
          }

          v7 = [activeRemoteParticipants countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v5 = 1;
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v5 = [activeRemoteParticipants count] == 0;
LABEL_6:

LABEL_18:
  return v5;
}

- (void)declineRemoteDevicesForConversation:(id)conversation reason:(int64_t)reason
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  idsService = [(CSDFaceTimeConversationProviderDelegate *)self idsService];
  devices = [idsService devices];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [devices count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = devices;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = IDSCopyIDForDevice();
        if ([v15 length])
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  allAliases = [idsService allAliases];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [allAliases countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(allAliases);
        }

        v21 = TUCopyIDSCanonicalAddressForDestinationID();
        if ([v21 length])
        {
          [v9 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [allAliases countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  [(CSDFaceTimeConversationProviderDelegate *)self declineConversation:conversationCopy reason:reason destinations:v9 idsService:idsService];
}

- (void)declineRemoteMembersForConversation:(id)conversation reason:(int64_t)reason
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteMembers = [conversationCopy remoteMembers];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = remoteMembers;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        idsDestination = [*(*(&v17 + 1) + 8 * v14) idsDestination];
        if ([idsDestination length])
        {
          [v9 addObject:idsDestination];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  idsService = [(CSDFaceTimeConversationProviderDelegate *)self idsService];
  [(CSDFaceTimeConversationProviderDelegate *)self declineConversation:conversationCopy reason:reason destinations:v9 idsService:idsService];
}

- (void)declineConversation:(id)conversation reason:(int64_t)reason destinations:(id)destinations idsService:(id)service
{
  destinationsCopy = destinations;
  serviceCopy = service;
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v16 = [(CSDMessagingConversationMessage *)v14 initWithType:6 groupUUID:groupUUID link:0];

  [(CSDMessagingConversationMessage *)v16 setDisconnectedReason:reason];
  localMember = [conversationCopy localMember];

  handle = [localMember handle];
  value = [handle value];

  v20 = [serviceCopy accountWithCallerID:value];
  v40[0] = IDSSendMessageOptionFromIDKey;
  v21 = TUCopyIDSCanonicalAddressForDestinationID();
  v40[1] = IDSSendMessageOptionAlwaysSkipSelfKey;
  v41[0] = v21;
  v41[1] = &__kCFBooleanTrue;
  v22 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

  v24 = sub_100004778(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    reasonCopy = reason;
    v36 = 2048;
    v37 = [destinationsCopy count];
    v38 = 2112;
    v39 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "declineConversation: reason: %ld, destinations count: %lu, destinations: %@", buf, 0x20u);
  }

  data = [(CSDMessagingConversationMessage *)v16 data];
  v32 = 0;
  v33 = 0;
  v26 = [serviceCopy sendData:data fromAccount:v20 toDestinations:destinationsCopy priority:300 options:v22 identifier:&v33 error:&v32];
  v27 = v33;
  v28 = v32;

  v30 = sub_100004778(v29);
  v31 = v30;
  if (v26)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      reasonCopy = v27;
      v36 = 2112;
      v37 = value;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Successfully sent message with identifier: %@ handle:%@ account: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_10047B04C();
  }
}

- (void)conversationManager:(id)manager joinConversationWithRequest:(id)request
{
  requestCopy = request;
  provider = [requestCopy provider];
  v6 = [(CSDFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  if (v6)
  {
    joinCallAction = [requestCopy joinCallAction];
    [(CSDFaceTimeConversationProviderDelegate *)self performJoinCallAction:joinCallAction];
  }
}

- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation
{
  conversationCopy = conversation;
  v10 = sub_100004778(conversationCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 134218498;
    changedCopy = changed;
    v59 = 2048;
    modeCopy = mode;
    v61 = 2112;
    v62 = uUID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Mode changing fromMode %lu, toMode: %lu, conversationUUID: %@", buf, 0x20u);
  }

  if (!changed && mode)
  {
    v12 = +[NSUUID UUID];
    uUID2 = [conversationCopy UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v12 withConversationUUID:uUID2 waitingToJoin:1];

    conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    uUID3 = [conversationCopy UUID];
    [conversationUUIDsAwaitingActiveAudioSession addObject:uUID3];

    state = [conversationCopy state];
    if (state == 3)
    {
      remoteMembers = [conversationCopy remoteMembers];
      if ([remoteMembers count] != 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      if (![activeRemoteParticipants count])
      {

LABEL_17:
        remoteMembers = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsUpgradedFromAVLess];
        uUID4 = [conversationCopy UUID];
        [remoteMembers addObject:uUID4];

        goto LABEL_18;
      }

      activeRemoteParticipants2 = [conversationCopy activeRemoteParticipants];
      anyObject = [activeRemoteParticipants2 anyObject];
      audioVideoMode = [anyObject audioVideoMode];

      if (!audioVideoMode)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v33 = sub_100004778(state);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      uUID5 = [conversationCopy UUID];
      *buf = 138412546;
      changedCopy = v12;
      v59 = 2112;
      modeCopy = uUID5;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Mode changing from None, Started tracking callUUID: %@ conversationUUID: %@", buf, 0x16u);
    }

    conversationUUIDsAwaitingActiveAudioSession2 = [[CXCallUpdate alloc] initWithTUConversation:conversationCopy];
    remoteParticipantHandles = [conversationUUIDsAwaitingActiveAudioSession2 remoteParticipantHandles];
    anyObject2 = [remoteParticipantHandles anyObject];
    [conversationUUIDsAwaitingActiveAudioSession2 setRemoteMember:anyObject2];

    if (([conversationUUIDsAwaitingActiveAudioSession2 hasVideo] & 1) == 0)
    {
      [conversationUUIDsAwaitingActiveAudioSession2 updatePropertiesForVideo:mode == 2];
    }

    handoffContext = [conversationCopy handoffContext];
    setUplinkMuted = [handoffContext setUplinkMuted];

    if (setUplinkMuted)
    {
      v40 = sub_100004778(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Muting remote uplink during continuity session pullback due to handoff context.", buf, 2u);
      }

      [conversationUUIDsAwaitingActiveAudioSession2 setRemoteUplinkMuted:1];
    }

    remoteMembers2 = [conversationCopy remoteMembers];
    v42 = [remoteMembers2 count];

    if (v42 == 1)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      activeRemoteParticipants3 = [conversationCopy activeRemoteParticipants];
      v44 = [activeRemoteParticipants3 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v53;
        while (2)
        {
          v47 = 0;
          do
          {
            if (*v53 != v46)
            {
              objc_enumerationMutation(activeRemoteParticipants3);
            }

            if ([*(*(&v52 + 1) + 8 * v47) audioVideoMode])
            {

              goto LABEL_38;
            }

            v47 = v47 + 1;
          }

          while (v45 != v47);
          v45 = [activeRemoteParticipants3 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [provider reportNewOutgoingCallWithUUID:v12 update:conversationUUIDsAwaitingActiveAudioSession2];

      provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [provider2 reportOutgoingCallWithUUID:v12 sentInvitationAtDate:0];

      [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v12];
      goto LABEL_40;
    }

LABEL_38:
    provider3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider3 reportNewOutgoingCallWithUUID:v12 update:conversationUUIDsAwaitingActiveAudioSession2];

    provider4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v51 = +[NSDate date];
    [provider4 reportOutgoingCallWithUUID:v12 connectedAtDate:v51];

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  if (changed && !mode)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID6 = [conversationCopy UUID];
    v12 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID6];

    if (!v12)
    {
LABEL_41:

      goto LABEL_42;
    }

    v25 = sub_100004778(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      uUID7 = [conversationCopy UUID];
      *buf = 138412546;
      changedCopy = v12;
      v59 = 2112;
      modeCopy = uUID7;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Mode changing to None, Stopping tracking callUUID: %@ conversationUUID: %@", buf, 0x16u);
    }

    provider5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v28 = +[NSDate date];
    [provider5 reportCallWithUUID:v12 endedAtDate:v28 reason:0];

    uUID8 = [conversationCopy UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID8];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v12];
    conversationUUIDsAwaitingActiveAudioSession2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    provider4 = [conversationCopy UUID];
    [conversationUUIDsAwaitingActiveAudioSession2 removeObject:provider4];
    goto LABEL_39;
  }

LABEL_42:
}

- (void)conversationManager:(id)manager remoteMembersChanged:(id)changed forConversation:(id)conversation
{
  managerCopy = manager;
  changedCopy = changed;
  conversationCopy = conversation;
  if ([conversationCopy state] == 3)
  {
    blockUtilities = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
    v11 = [blockUtilities blockListContainsMembers:changedCopy providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

    if (v11)
    {
      callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      uUID = [conversationCopy UUID];
      v14 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

      if (v14)
      {
        uUID2 = [conversationCopy UUID];
        [managerCopy leaveConversationWithUUID:uUID2];

        blockUtilities2 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
        provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        [blockUtilities2 reportFailureForReason:16 provider:provider callUUID:v14 actionToFail:0];
      }
    }
  }
}

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  managerCopy = manager;
  changedCopy = changed;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [changedCopy UUID];
  v10 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  remoteMembers = [changedCopy remoteMembers];
  if ([remoteMembers count] != 1 && objc_msgSend(changedCopy, "avMode") == 1)
  {
    resolvedAudioVideoMode = [changedCopy resolvedAudioVideoMode];

    if (resolvedAudioVideoMode != 2)
    {
      goto LABEL_8;
    }

    v14 = sub_100004778(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found that a remote user had upgraded to video, upgrading our local conversation to video", buf, 2u);
    }

    remoteMembers = [changedCopy UUID];
    [managerCopy setVideo:1 forConversationWithUUID:remoteMembers];
  }

LABEL_8:
  v15 = [[CXCallUpdate alloc] initWithTUConversation:changedCopy];
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  v92 = v10;
  if (![featureFlags avLessSharePlayEnabled])
  {
LABEL_18:

    goto LABEL_19;
  }

  mergedRemoteMembers = [changedCopy mergedRemoteMembers];
  if ([mergedRemoteMembers count] != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

  mergedActiveRemoteParticipants = [changedCopy mergedActiveRemoteParticipants];
  if ([mergedActiveRemoteParticipants count] != 1)
  {

    goto LABEL_17;
  }

  avMode = [changedCopy avMode];

  if (!avMode)
  {
    activeRemoteParticipants = [changedCopy activeRemoteParticipants];
    featureFlags = [activeRemoteParticipants anyObject];

    if ([featureFlags audioVideoMode] == 2)
    {
      v21 = sub_100004778(2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "conversationChanged for U+1 call with avMode=video remote participant, upgrading CXCallUpdate to video=1", buf, 2u);
      }

      [v15 updatePropertiesForVideo:1];
    }

    goto LABEL_18;
  }

LABEL_19:
  if ([changedCopy isVideoEnabled] && (objc_msgSend(changedCopy, "isVideoPaused") & 1) == 0)
  {
    [v15 setSendingVideo:1];
  }

  if ([changedCopy state] >= 1 && objc_msgSend(changedCopy, "avMode") && (objc_msgSend(changedCopy, "isVideoEnabled") & 1) == 0)
  {
    [v15 setSendingVideo:0];
  }

  remoteMembers2 = [changedCopy remoteMembers];
  v23 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers2 count]);

  remoteMembers3 = [changedCopy remoteMembers];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_1001FB274;
  v103[3] = &unk_10061A200;
  v25 = v23;
  v104 = v25;
  [remoteMembers3 enumerateObjectsUsingBlock:v103];

  [v15 setRemoteParticipantHandles:v25];
  activeRemoteParticipantCXHandles = [changedCopy activeRemoteParticipantCXHandles];
  v27 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipantCXHandles count]);

  activeRemoteParticipantCXHandles2 = [changedCopy activeRemoteParticipantCXHandles];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_1001FB328;
  v101[3] = &unk_10061E620;
  v29 = v27;
  v102 = v29;
  [activeRemoteParticipantCXHandles2 enumerateObjectsUsingBlock:v101];

  [v15 setActiveRemoteParticipantHandles:v29];
  [v15 setOneToOneModeEnabled:{objc_msgSend(changedCopy, "isOneToOneModeEnabled")}];
  [v15 setScreenSharingType:{objc_msgSend(changedCopy, "screenSharingType")}];
  mergedRemoteMembers2 = [changedCopy mergedRemoteMembers];
  if ([mergedRemoteMembers2 count] == 1)
  {
    mergedActiveRemoteParticipants2 = [changedCopy mergedActiveRemoteParticipants];
    if ([mergedActiveRemoteParticipants2 count] == 1)
    {
      mergedActiveRemoteParticipants3 = [changedCopy mergedActiveRemoteParticipants];
      anyObject = [mergedActiveRemoteParticipants3 anyObject];
      streamToken = [anyObject streamToken];

      v35 = v92;
      if (!streamToken)
      {
        goto LABEL_32;
      }

      mergedRemoteMembers2 = [changedCopy mergedActiveRemoteParticipants];
      mergedActiveRemoteParticipants2 = [mergedRemoteMembers2 anyObject];
      [v15 setVideoStreamToken:{objc_msgSend(mergedActiveRemoteParticipants2, "streamToken")}];
    }
  }

  v35 = v92;

LABEL_32:
  state = [changedCopy state];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v35];
        state = [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v35];
        if (!v35)
        {
          goto LABEL_69;
        }

        goto LABEL_61;
      }

      goto LABEL_60;
    }

    uUID2 = [changedCopy UUID];
    v53 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _isWaitingToJoinForConversationUUID:uUID2];

    if ((v53 & 1) == 0)
    {
      if ([changedCopy isScreening] && (v54 = objc_msgSend(changedCopy, "isOneToOneModeEnabled"), v54))
      {
        failureContext = sub_100004778(v54);
        if (os_log_type_enabled(failureContext, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, failureContext, OS_LOG_TYPE_DEFAULT, "Screening enabled, already ends the session, no need to cleanup conversation", buf, 2u);
        }
      }

      else
      {
        failureContext = [changedCopy failureContext];
        if (!failureContext)
        {
          failureContext = objc_alloc_init(CXCallFailureContext);
          [failureContext setFailureReason:0];
          [failureContext setProviderEndedReason:504];
        }

        uUID3 = [changedCopy UUID];
        [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID3 failureContext:failureContext];
      }
    }

    if (!v35)
    {
      goto LABEL_69;
    }

    state = [v15 hasVideo];
    if (!state)
    {
      goto LABEL_61;
    }

    remoteParticipantHandles = [v15 remoteParticipantHandles];
    v69 = [remoteParticipantHandles count];

    if (v69 < 2)
    {
      goto LABEL_61;
    }

    state = [changedCopy resolvedAudioVideoMode];
    if (state == 2)
    {
      goto LABEL_61;
    }

    v48 = sub_100004778([v15 setSendingVideo:0]);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      isSendingVideo = [v15 isSendingVideo];
      v71 = @"NO";
      if (isSendingVideo)
      {
        v71 = @"YES";
      }

      *buf = 138412290;
      v106 = v71;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Setting sendingVideo=%@ for conversationChanged", buf, 0xCu);
    }

LABEL_58:

    goto LABEL_61;
  }

  if (state == 2)
  {
    if (!v35)
    {
      conversationManager = sub_100004778(2);
      if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_ERROR))
      {
        sub_10047B0BC();
      }

      goto LABEL_68;
    }

    if ([changedCopy isLocallyCreated])
    {
      if (([changedCopy isOneToOneModeEnabled] & 1) == 0)
      {
        [v15 setRequiresInCallSounds:0];
        provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        v43 = +[NSDate date];
        [provider reportOutgoingCallWithUUID:v35 startedConnectingAtDate:v43];
      }

      provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v45 = +[NSDate date];
      [provider2 reportOutgoingCallWithUUID:v35 sentInvitationAtDate:v45];
    }

    v46 = +[TUCallCenter sharedInstance];
    uUIDString = [(__CFString *)v35 UUIDString];
    v48 = [v46 callWithCallUUID:uUIDString];

    -[NSObject setStartAsOneToOneMode:](v48, "setStartAsOneToOneMode:", [changedCopy isOneToOneModeEnabled]);
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v35];
    goto LABEL_58;
  }

  if (state == 4)
  {
    state = [v15 setMixesVoiceWithMedia:0];
LABEL_60:
    if (!v35)
    {
      goto LABEL_69;
    }

    goto LABEL_61;
  }

  if (state != 3)
  {
    goto LABEL_60;
  }

  if (!v35)
  {
    isEligibleForCall = [changedCopy isEligibleForCall];
    if (!isEligibleForCall)
    {
      goto LABEL_69;
    }

    v73 = sub_100004778(isEligibleForCall);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10047B12C();
    }

    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID4 = [changedCopy UUID];
    [conversationManager leaveConversationWithUUID:uUID4];

    goto LABEL_68;
  }

  if ([changedCopy avMode])
  {
    if ([changedCopy isOneToOneModeEnabled])
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      activeRemoteParticipants2 = [changedCopy activeRemoteParticipants];
      v38 = [activeRemoteParticipants2 countByEnumeratingWithState:&v97 objects:v108 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v98;
        while (2)
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v98 != v40)
            {
              objc_enumerationMutation(activeRemoteParticipants2);
            }

            if ([*(*(&v97 + 1) + 8 * i) audioVideoMode])
            {

              activeRemoteParticipants2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
              v77 = +[NSDate date];
              v35 = v92;
              [activeRemoteParticipants2 providerDelegate:self callWithUUID:v92 connectedAtDate:v77];

              goto LABEL_105;
            }
          }

          v39 = [activeRemoteParticipants2 countByEnumeratingWithState:&v97 objects:v108 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      v35 = v92;
LABEL_105:

      v78 = +[TUCallCenter sharedInstance];
      uUIDString2 = [(__CFString *)v35 UUIDString];
      provider3 = [v78 callWithCallUUID:uUIDString2];

      if (provider3)
      {
        [provider3 setOneToOneFaceTimeMyself:{objc_msgSend(changedCopy, "isOneToOneFaceTimeMyself")}];
      }
    }

    else
    {
      provider3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v76 = +[NSDate date];
      [provider3 reportOutgoingCallWithUUID:v35 connectedAtDate:v76];
    }
  }

  if ([changedCopy isOneToOneModeEnabled])
  {
    [v15 setConversation:1];
  }

  provider4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
  v81 = [provider4 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v35];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v82 = v81;
  v83 = [v82 countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v94;
    do
    {
      for (j = 0; j != v84; j = j + 1)
      {
        if (*v94 != v85)
        {
          objc_enumerationMutation(v82);
        }

        [*(*(&v93 + 1) + 8 * j) fulfill];
      }

      v84 = [v82 countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v84);
  }

  [v15 setSharingScreen:{objc_msgSend(changedCopy, "isScreenEnabled")}];
  if ([v15 mixesVoiceWithMedia])
  {
    v87 = +[TUCallCenter sharedInstance];
    uUIDString3 = [(__CFString *)v92 UUIDString];
    v89 = [v87 callWithCallUUID:uUIDString3];

    sourceIdentifier = [v89 sourceIdentifier];
    [v15 setIgnoresBluetoothDeviceUID:sourceIdentifier != 0];
  }

  v35 = v92;
  if ([changedCopy avMode])
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v92];
  }

  if (v92)
  {
LABEL_61:
    v49 = sub_100004778(state);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v106 = v35;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "conversationProviderDelegate: report conversationChanged for call with uuid: %@", buf, 0xCu);
    }

    featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags2 uplevelFTAEnabled] && (objc_msgSend(v15, "hasSet") & 0x2000) != 0 && (objc_msgSend(v15, "hasVideo") & 1) == 0)
    {
      remoteParticipantHandles2 = [v15 remoteParticipantHandles];
      v57 = [remoteParticipantHandles2 count];

      if (v57 != 1)
      {
        goto LABEL_67;
      }

      v58 = +[TUCallCenter sharedInstance];
      uUIDString4 = [(__CFString *)v35 UUIDString];
      featureFlags2 = [v58 callWithCallUUID:uUIDString4];

      isVideo = [featureFlags2 isVideo];
      if (isVideo)
      {
        v61 = sub_100004778(isVideo);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Downgrading from FTV -> FTA, make sure Phone App is launched", buf, 2u);
        }

        v62 = +[NSURL phoneAppShowInCallUIURL];
        v63 = TUOpenURLWithError();
        v64 = 0;
        v65 = v64;
        if (!v63 || v64)
        {
          v66 = sub_100004778(v64);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_10047B19C();
          }
        }

        v35 = v92;
      }
    }

LABEL_67:
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [conversationManager reportCallWithUUID:v35 updated:v15];
LABEL_68:
  }

LABEL_69:
}

- (void)conversationManager:(id)manager conversationScreenSharingChanged:(id)changed forParticipant:(id)participant
{
  changedCopy = changed;
  participantCopy = participant;
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  screenSharingDeskViewEnabled = [featureFlags screenSharingDeskViewEnabled];

  if ((screenSharingDeskViewEnabled & 1) == 0 && [participantCopy isScreenEnabled])
  {
    v11 = sub_100004778([(CSDFaceTimeConversationProviderDelegate *)self launchScreenSharingAppIfNecessary]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = changedCopy;
      v14 = 2112;
      v15 = participantCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Conversation screen sharing changed: %@ \n participant: %@", &v12, 0x16u);
    }
  }
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v10 = [conversationsByUUID objectForKeyedSubscript:v7];

  if (v10)
  {
    provider = [v10 provider];
    isDefaultProvider = [provider isDefaultProvider];
  }

  else
  {
    isDefaultProvider = 1;
  }

  v15.receiver = self;
  v15.super_class = CSDFaceTimeConversationProviderDelegate;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v15 isManagingCallWithUUID:dCopy];

  return v13 & isDefaultProvider;
}

- (void)conversationManager:(id)manager conversation:(id)conversation receivedMessage:(id)message fromHandle:(id)handle withUpdate:(id)update shouldRing:(BOOL)ring
{
  ringCopy = ring;
  updateCopy = update;
  handleCopy = handle;
  messageCopy = message;
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeConversationProviderDelegate *)self handleMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy withUpdate:updateCopy shouldRing:ringCopy];
}

- (void)conversationManager:(id)manager conversation:(id)conversation failedWithContext:(id)context
{
  conversationCopy = conversation;
  contextCopy = context;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v14 = 138412546;
    v15 = uUID;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Conversation with UUID %@ failed with context: %@", &v14, 0x16u);
  }

  uUID2 = [conversationCopy UUID];
  [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID2 failureContext:contextCopy];
}

- (void)conversationManager:(id)manager conversation:(id)conversation addedActiveParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  uUID = [conversationCopy UUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:uUID];

  if (!v13)
  {
    v17 = sub_100004778(v14);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    uUID2 = [conversationCopy UUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID2 = [conversationManager2 conversationsByUUID];
    allValues = [conversationsByUUID2 allValues];
    v34 = 138412546;
    v35 = uUID2;
    v36 = 2112;
    v37 = allValues;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Exiting addedActiveParticipant callback early since conversation with UUID %@ has been removed - current conversations are %@", &v34, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  if ([v13 state] == 1)
  {
    letMeInRequestState = [v13 letMeInRequestState];
    isOneToOneModeEnabled = [v13 isOneToOneModeEnabled];
    if (isOneToOneModeEnabled)
    {
      if (letMeInRequestState == 3)
      {
        v17 = sub_100004778(isOneToOneModeEnabled);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          state = [v13 state];
          letMeInRequestState2 = [v13 letMeInRequestState];
          uUID3 = [v13 UUID];
          v34 = 134218754;
          v35 = state;
          v36 = 2048;
          v37 = letMeInRequestState2;
          v38 = 2112;
          v39 = uUID3;
          v40 = 2112;
          v41 = participantCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not reporting a U+1 call as connecting when active participant is added since it is going through LMI flow (state %ld and LMI state %ld) and should not connect until user presses join in the staging area; conversation UUID %@: addedActiveParticipant %@.", &v34, 0x2Au);
        }

        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  else
  {
    isOneToOneModeEnabled = [v13 isOneToOneModeEnabled];
    if (isOneToOneModeEnabled)
    {
LABEL_10:
      v25 = sub_100004778(isOneToOneModeEnabled);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state2 = [v13 state];
        letMeInRequestState3 = [v13 letMeInRequestState];
        uUID4 = [v13 UUID];
        v34 = 134218754;
        v35 = state2;
        v36 = 2048;
        v37 = letMeInRequestState3;
        v38 = 2112;
        v39 = uUID4;
        v40 = 2112;
        v41 = participantCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Reporting call as connecting and isConversation=true since conversation (state: %ld LMI state: %ld) with UUID %@: addedActiveParticipant %@.", &v34, 0x2Au);
      }

      callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      uUID5 = [v13 UUID];
      v17 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID5];

      uUID2 = [[CXCallUpdate alloc] initWithTUConversation:v13];
      if (v17)
      {
        provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        [provider reportCallWithUUID:v17 updated:uUID2];

        if ([v13 isLocallyCreated])
        {
          faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
          v33 = +[NSDate date];
          [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v17 startedConnectingAtDate:v33];
        }
      }

      goto LABEL_15;
    }
  }

LABEL_17:
}

- (void)conversationManager:(id)manager removedConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [callUUIDsByConversationUUID objectForKeyedSubscript:dCopy];

  if (v8)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ending callUUID:%@ with conversation with UUID %@:", &v13, 0x16u);
    }

    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v8];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self removeActiveAudioSessionObjectForConversationWithUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v12 = +[NSDate date];
    [provider reportCallWithUUID:v8 endedAtDate:v12 reason:2];
  }
}

- (void)conversationManager:(id)manager conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v11 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v11)
  {
    goto LABEL_5;
  }

  recentlyDeletedCallUUIDsByConversationUUID = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
  uUID2 = [conversationCopy UUID];
  v11 = [recentlyDeletedCallUUIDsByConversationUUID objectForKeyedSubscript:uUID2];

  v15 = sub_100004778(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CallUUID: %@ is fetched from recentlyDeletedCallUUIDsByConversationUUID since the call was ended and we could not find it in callUUIDsByConversationUUID", &v20, 0xCu);
  }

  if (v11)
  {
LABEL_5:
    recentlyDeletedCallUUIDsByConversationUUID2 = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
    uUID3 = [conversationCopy UUID];
    [recentlyDeletedCallUUIDsByConversationUUID2 setObject:0 forKeyedSubscript:uUID3];

    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    uUIDString = [v11 UUIDString];
    [provider reportCallWithUUID:v11 crossDeviceIdentifier:uUIDString changedBytesOfDataUsed:used];
  }
}

- (void)conversationManager:(id)manager reportedLetMeInRejectedForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:conversationCopy failureReason:8 providerEndedReason:521];
}

- (void)conversationManager:(id)manager reportedInvalidLinkForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:conversationCopy failureReason:9 providerEndedReason:526];
}

- (void)_failConversation:(id)conversation failureReason:(int64_t)reason providerEndedReason:(int64_t)endedReason
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v12 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v12)
  {
    [(CSDFaceTimeConversationProviderDelegate *)self leaveConversation:conversationCopy withCallUUID:v12 reason:1];
    v14 = objc_alloc_init(CXCallFailureContext);
    [v14 setFailureReason:reason];
    [v14 setProviderEndedReason:endedReason];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v12 failedAtDate:0 withContext:v14];

    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v17 = +[NSDate now];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v12 endedAtDate:v17 withReason:2 failureContext:0];
  }

  else
  {
    v18 = sub_100004778(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v20 = 134218242;
      reasonCopy = reason;
      v22 = 2112;
      v23 = uUID2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not fail conversation with reason %ld callUUID not found for conversation UUID %@", &v20, 0x16u);
    }
  }
}

- (void)conversationManager:(id)manager reportedHandedOffConversation:(id)conversation replacedByIdentifier:(unint64_t)identifier localizedHandoffRecipientDeviceCategory:(id)category
{
  conversationCopy = conversation;
  categoryCopy = category;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v14 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v14)
  {
    v16 = +[TUCallCenter sharedInstance];
    uUIDString = [v14 UUIDString];
    v18 = [v16 callWithCallUUID:uUIDString];

    [v18 setEndDueToHandoff:1];
    v19 = [[CXCallUpdate alloc] initWithTUConversation:conversationCopy];
    [v19 setLocalizedHandoffRecipientDeviceCategory:categoryCopy];
    v20 = [NSNumber numberWithUnsignedLongLong:identifier];
    [v19 setHandoffRecipientParticipant:v20];

    [(CSDFaceTimeConversationProviderDelegate *)self leaveConversation:conversationCopy withCallUUID:v14 reason:102];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v14 updated:v19];

    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v23 = +[NSDate now];
    [provider2 reportCallWithUUID:v14 endedAtDate:v23 privateReason:102];

    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v25 = +[NSDate now];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v14 endedAtDate:v25 withReason:102 failureContext:0];
  }

  else
  {
    v26 = sub_100004778(v15);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v28 = 138412290;
      v29 = uUID2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Could not report conversation as continued as could not find call for conversation UUID %@", &v28, 0xCu);
    }
  }
}

- (void)conversationManager:(id)manager reportedRemoteDoesHandedOffForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v9 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v9)
  {
    v11 = +[TUCallCenter sharedInstance];
    uUIDString = [v9 UUIDString];
    v13 = [v11 callWithCallUUID:uUIDString];

    uUID2 = sub_100004778([v13 setRemoteDoesHandoff:1]);
    if (!os_log_type_enabled(uUID2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v17 = 138412290;
    v18 = v13;
    v15 = "reportedRemoteDoesHandedOffForConversation: for call: %@";
    v16 = uUID2;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v17, 0xCu);
    goto LABEL_7;
  }

  v13 = sub_100004778(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUID2 = [conversationCopy UUID];
    v17 = 138412290;
    v18 = uUID2;
    v15 = "[WARN] Could not report conversation: not find call for conversation UUID %@";
    v16 = v13;
    goto LABEL_6;
  }

LABEL_8:
}

- (void)conversationManager:(id)manager connectionDidStartForConversation:(id)conversation
{
  conversationCopy = conversation;
  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];

  v8 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v8)
  {
    [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v8];
  }

  else
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047B20C();
    }
  }
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412290;
    v40 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Joining conversation for answer call action: %@", &v39, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  blockUtilities = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
  remoteMembers = [v14 remoteMembers];
  v17 = [blockUtilities blockListContainsMembers:remoteMembers providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v17)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [v14 UUID];
    v20 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (!v20)
    {
LABEL_33:

      goto LABEL_34;
    }

    blockUtilities2 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [(CSDConversationJoinContext *)blockUtilities2 reportFailureForReason:16 provider:provider callUUID:v20 actionToFail:actionCopy];

LABEL_32:
    goto LABEL_33;
  }

  link = [v14 link];
  if (!link || (v24 = link, v25 = TULockdownModeEnabled(), v24, !v25))
  {
    v28 = +[TUCallCenter sharedInstance];
    callUUID2 = [actionCopy callUUID];
    uUIDString = [callUUID2 UUIDString];
    v20 = [v28 callWithCallUUID:uUIDString];

    if (!v14)
    {
      v33 = sub_100004778(v31);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10047B284();
      }

      [actionCopy fail];
      goto LABEL_33;
    }

    if ([v14 endpointOnCurrentDevice])
    {
      v32 = [actionCopy downgradeToAudio] ^ 1;
    }

    else
    {
      v32 = 0;
    }

    blockUtilities2 = objc_alloc_init(CSDConversationJoinContext);
    if (([v14 isVideo] & 1) != 0 || objc_msgSend(v20, "isVideo"))
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    [(CSDConversationJoinContext *)blockUtilities2 setVideo:v34];
    if (-[CSDConversationJoinContext isVideo](blockUtilities2, "isVideo") && [v20 isSendingVideo])
    {
      v35 = ([actionCopy pauseVideoToStart] ^ 1) & v32;
    }

    else
    {
      v35 = 0;
    }

    [(CSDConversationJoinContext *)blockUtilities2 setVideoEnabled:v35];
    if ([(CSDConversationJoinContext *)blockUtilities2 isVideo])
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    [(CSDConversationJoinContext *)blockUtilities2 setAvMode:v36];
    provider2 = [v14 provider];
    [(CSDConversationJoinContext *)blockUtilities2 setProvider:provider2];

    -[CSDConversationJoinContext setScreening:](blockUtilities2, "setScreening:", [actionCopy screening]);
    -[CSDConversationJoinContext setSpatialPersonaEnabled:](blockUtilities2, "setSpatialPersonaEnabled:", [v14 isSpatialPersonaEnabled]);
    -[CSDConversationJoinContext setIsNearbySharePlay:](blockUtilities2, "setIsNearbySharePlay:", [v14 isNearbySharePlay]);
    if (+[AVAudioClient hasActiveAudioSession])
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:1];
    }

    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 joinExistingConversationWithUUID:v11 context:blockUtilities2];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:v11];
    [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteDevicesForConversation:v14 reason:4];
    goto LABEL_32;
  }

  v27 = sub_100004778(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_10047B248();
  }

  [actionCopy fail];
LABEL_34:
}

- (id)linkForJoinCallAction:(id)action inLinks:(id)links
{
  actionCopy = action;
  linksCopy = links;
  v7 = sub_100004778(linksCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = actionCopy;
    v30 = 2112;
    v31 = linksCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching link in join call action %@ %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = linksCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        pseudonym = [actionCopy pseudonym];
        publicKey = [actionCopy publicKey];
        v16 = [v13 isEquivalentToPseudonym:pseudonym andPublicKey:publicKey];

        if (v16)
        {
          v21 = sub_100004778(v17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = actionCopy;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found matching link for join call action %@ %@", buf, 0x16u);
          }

          v20 = [v13 copy];
          v19 = v8;
          goto LABEL_17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = sub_100004778(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = actionCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Couldn't find a matching link in join call action %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (id)activatedLinkForJoinCallAction:(id)action withError:(id *)error
{
  actionCopy = action;
  v7 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching activated link in join call action %@", &v14, 0xCu);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [conversationManager activatedConversationLinksWithError:error];

  if (*error)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047B2F4();
    }

    v12 = 0;
  }

  else
  {
    v12 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:actionCopy inLinks:v9];
  }

  return v12;
}

- (id)deletedLinkForJoinCallAction:(id)action withError:(id *)error
{
  actionCopy = action;
  v7 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching deleted link in join call action %@", &v16, 0xCu);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [conversationManager deletedConversationLinksWithError:error];

  v10 = *error;
  v12 = sub_100004778(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047B36C();
    }

    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted links: %@", &v16, 0xCu);
    }

    v14 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:actionCopy inLinks:v9];
  }

  return v14;
}

- (id)linkForJoinCallAction:(id)action withError:(id *)error
{
  actionCopy = action;
  v7 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding activated link in join call action %@", &v15, 0xCu);
  }

  v8 = [(CSDFaceTimeConversationProviderDelegate *)self activatedLinkForJoinCallAction:actionCopy withError:error];
  v9 = v8;
  if (*error)
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047B3E4();
    }

LABEL_7:
    v11 = 0;
    goto LABEL_12;
  }

  v12 = sub_100004778(v8);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v13)
    {
      v15 = 138412546;
      v16 = actionCopy;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find activated link for join call action %@, link: %@", &v15, 0x16u);
    }

    goto LABEL_7;
  }

  if (v13)
  {
    v15 = 138412546;
    v16 = actionCopy;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found activated link for join call action %@, link: %@", &v15, 0x16u);
  }

  v11 = v9;
LABEL_12:

  return v11;
}

- (id)validateLinkForJoinCallActionIfNecessary:(id)necessary withError:(id *)error
{
  necessaryCopy = necessary;
  v7 = sub_100004778(necessaryCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = necessaryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating link for join call action %@", buf, 0xCu);
  }

  pseudonym = [necessaryCopy pseudonym];
  if (![pseudonym length])
  {

    goto LABEL_12;
  }

  publicKey = [necessaryCopy publicKey];
  v10 = [publicKey length];

  if (!v10)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = TULockdownModeEnabled();
  if (v12)
  {
    v13 = sub_100004778(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047B248();
    }

    if (error)
    {
      v14 = 3;
LABEL_10:
      [NSError errorWithDomain:@"com.apple.calls.callservicesd.links" code:v14 userInfo:0];
      *error = v15 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:necessaryCopy withError:error];
  v15 = v11;
  if (*error)
  {
    v17 = sub_100004778(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10047B45C();
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (!v11)
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    pseudonym2 = [necessaryCopy pseudonym];
    v21 = [conversationManager isHandleStringLocalPseudonym:pseudonym2];

    if (v21)
    {
      v23 = sub_100004778(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        pseudonym3 = [necessaryCopy pseudonym];
        *buf = 138412290;
        v39 = pseudonym3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "LMI: This pseudonym is mine, but couldn't find the link - triggering link recovery and failing the action {pseudonym: %@}", buf, 0xCu);
      }

      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      pseudonym4 = [necessaryCopy pseudonym];
      v42 = pseudonym4;
      v27 = [NSArray arrayWithObjects:&v42 count:1];
      [conversationManager2 recoverLinksForPseudonyms:v27];

      v14 = 1;
      goto LABEL_10;
    }

    v37 = 0;
    v28 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:necessaryCopy withError:&v37];
    v29 = v37;
    v30 = sub_100004778(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v28;
      v40 = 2112;
      v41 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No link was found, find deleted link: %@, error: %@", buf, 0x16u);
    }

    v31 = [TUConversationLink alloc];
    pseudonym5 = [necessaryCopy pseudonym];
    publicKey2 = [necessaryCopy publicKey];
    v15 = [v31 initWithPseudonym:pseudonym5 publicKey:publicKey2 groupUUID:0 originatorHandle:0];

    if (!v15)
    {
      v34 = sub_100004778(v11);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        pseudonym6 = [necessaryCopy pseudonym];
        publicKey3 = [necessaryCopy publicKey];
        *buf = 138412546;
        v39 = pseudonym6;
        v40 = 2112;
        v41 = publicKey3;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LMI: Could not assemble link for pseudonym %@ and publicKey %@", buf, 0x16u);
      }

      v14 = 2;
      goto LABEL_10;
    }
  }

LABEL_13:
  v16 = sub_100004778(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = necessaryCopy;
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Validated link for join call action %@ link: %@", buf, 0x16u);
  }

LABEL_21:

  return v15;
}

- (BOOL)_actionIsDisallowedByGreenTea:(id)tea
{
  teaCopy = tea;
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![teaCopy avMode])
  {
    presentationMode = [teaCopy presentationMode];

    if (presentationMode == 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      remoteMembers = [teaCopy remoteMembers];
      v7 = [remoteMembers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v10 = 0;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(remoteMembers);
            }

            handle = [*(*(&v16 + 1) + 8 * i) handle];
            value = [handle value];
            destinationIdIsPseudonym = [value destinationIdIsPseudonym];

            v10 += destinationIdIsPseudonym ^ 1;
            if (v10 > 2)
            {
              LOBYTE(v7) = 1;
              goto LABEL_6;
            }
          }

          v7 = [remoteMembers countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  if (![teaCopy isVideo])
  {
    LOBYTE(v7) = 1;
    goto LABEL_8;
  }

  remoteMembers = [teaCopy remoteMembers];
  LOBYTE(v7) = [remoteMembers count] > 1;
LABEL_6:

LABEL_8:
  return v7;
}

- (void)performJoinCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [actionCopy UUID];
    *buf = 138412290;
    v278 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "performJoinCallAction UUID: %@", buf, 0xCu);
  }

  deviceSupport = [(CSDAbstractFaceTimeConversationProviderDelegate *)self deviceSupport];
  if ([deviceSupport isGreenTea])
  {
    v10 = [(CSDFaceTimeConversationProviderDelegate *)self _actionIsDisallowedByGreenTea:actionCopy];

    if (v10)
    {
      v12 = sub_100004778(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "[WARN] GFT/FTA calls are not allowed on GreenTea devices";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (([actionCopy isValidScreenSharingRequest] & 1) != 0 || (-[CSDAbstractFaceTimeConversationProviderDelegate featureFlags](self, "featureFlags"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "usesModernScreenSharingFromMessages"), v14, !v15))
  {
    v269 = 0;
    v17 = [(CSDFaceTimeConversationProviderDelegate *)self validateLinkForJoinCallActionIfNecessary:actionCopy withError:&v269];
    v18 = v269;
    v19 = v18;
    if (v18)
    {
      v20 = sub_100004778(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10047B4CC();
      }

      v268 = 0;
      v21 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:actionCopy withError:&v268];
      v22 = v268;
      v23 = sub_100004778(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v278 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Retrieve deleted link: %@", buf, 0xCu);
      }

      [actionCopy fail];
      goto LABEL_138;
    }

    if (v17)
    {
      isScreening = [actionCopy isScreening];
      if (isScreening)
      {
        v25 = sub_100004778(isScreening);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot join a call with screening that is link based", buf, 2u);
        }

        [actionCopy fail];
        goto LABEL_138;
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      pseudonym = [v17 pseudonym];
      callUUID = [actionCopy callUUID];
      [conversationManager addPseudonym:pseudonym forCallUUID:callUUID];

      isJoiningConversationWithLink = [actionCopy isJoiningConversationWithLink];
      if ((isJoiningConversationWithLink & 1) == 0)
      {
        v37 = sub_100004778(isJoiningConversationWithLink);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v278 = actionCopy;
          v279 = 2112;
          v280 = v17;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "letMeIn: %@, link: %@", buf, 0x16u);
        }

        conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        pseudonym2 = [v17 pseudonym];
        v40 = [conversationManager2 conversationLinkForPseudonym:pseudonym2];

        if (v40)
        {
          v41 = [v40 isEquivalentToConversationLink:v17];
          if (v41)
          {
            v42 = sub_100004778(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v278 = v40;
              v279 = 2112;
              v280 = v17;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "get resolved link: %@ for link: %@", buf, 0x16u);
            }

            v43 = v40;
            v17 = v43;
          }
        }

        conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        pseudonym3 = [v17 pseudonym];
        v46 = [conversationManager3 pendingConversationUUIDWithPseudonym:pseudonym3];

        v214 = v46;
        if (v46)
        {
          if (TUDisableLinks())
          {
            conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            conversationsByUUID = [conversationManager4 conversationsByUUID];
            v49 = [conversationsByUUID objectForKeyedSubscript:v46];

            v51 = sub_100004778(v50);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v278 = v49;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Joining from links is disabled by server bag value, failing pending conversation %@", buf, 0xCu);
            }

            [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:v49 failureReason:10 providerEndedReason:527];
            conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            [conversationManager5 removeAllPendingConversations];
LABEL_45:

            [actionCopy fail];
LABEL_130:

LABEL_131:
LABEL_137:
            v19 = 0;
LABEL_138:

            goto LABEL_139;
          }

          isLetMeIn = [actionCopy isLetMeIn];
          if (isLetMeIn)
          {
            v141 = sub_100004778(isLetMeIn);
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              pseudonym4 = [v17 pseudonym];
              *buf = 138412290;
              v278 = pseudonym4;
              _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "LMI: Asking CSDConversationManager to request let me in approval for pseudonym: %@", buf, 0xCu);
            }

            conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            pseudonym5 = [v17 pseudonym];
            [conversationManager6 requestLetMeInApprovalForPseudonym:pseudonym5];
          }

          v145 = sub_100004778(isLetMeIn);
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v278 = v46;
            _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Use existing pendingConversationUUID: %@", buf, 0xCu);
          }

          callUUID2 = [actionCopy callUUID];
          callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
          [callUUIDsByConversationUUID setObject:callUUID2 forKeyedSubscript:v46];

          [actionCopy fulfill];
LABEL_129:
          conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v246[0] = _NSConcreteStackBlock;
          v246[1] = 3221225472;
          v246[2] = sub_1001FF384;
          v246[3] = &unk_10061E648;
          v17 = v17;
          v247 = v17;
          [conversationManager7 renewLinkIfNeeded:v17 completionHandler:v246];

          v49 = v247;
          goto LABEL_130;
        }

        if (![v17 canCreateConversations])
        {
          [(CSDFaceTimeConversationProviderDelegate *)self proceedToNewPendingConversationForLink:v17 action:actionCopy];
          goto LABEL_129;
        }

        conversationManager8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        [conversationManager8 removeAllPendingConversations];

        conversationManager9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        conversationsByGroupUUID = [conversationManager9 conversationsByGroupUUID];
        groupUUID = [v17 groupUUID];
        v49 = [conversationsByGroupUUID objectForKeyedSubscript:groupUUID];

        if (v49)
        {
          link = [v49 link];
          v118 = [link isEquivalentToConversationLink:v17];

          if (!v118)
          {
            conversationManager5 = sub_100004778(v119);
            if (os_log_type_enabled(conversationManager5, OS_LOG_TYPE_ERROR))
            {
              sub_10047B540(v49, v17, conversationManager5);
            }

            goto LABEL_45;
          }

          isLocallyCreated = [v49 isLocallyCreated];
          if (isLocallyCreated & 1) != 0 || ([v49 initiator], v121 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "originatorHandle"), v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v121, "isEquivalentToHandle:", v122), v122, v121, (v123))
          {
LABEL_200:
            v201 = sub_100004778(isLocallyCreated);
            if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v278 = v49;
              _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "canUseExistingConversation, proceedToJoinForConversation: %@", buf, 0xCu);
            }

            [(CSDAbstractFaceTimeConversationProviderDelegate *)self proceedToJoinForConversation:v49 action:actionCopy];
            [actionCopy fulfill];
            goto LABEL_130;
          }

          v213 = v40;
          selfCopy = self;
          v266 = 0u;
          v267 = 0u;
          v264 = 0u;
          v265 = 0u;
          v124 = v17;
          invitedMemberHandles = [v17 invitedMemberHandles];
          v126 = [invitedMemberHandles countByEnumeratingWithState:&v264 objects:v285 count:16];
          if (v126)
          {
            v127 = v126;
            v128 = *v265;
            while (2)
            {
              for (i = 0; i != v127; i = i + 1)
              {
                if (*v265 != v128)
                {
                  objc_enumerationMutation(invitedMemberHandles);
                }

                v130 = *(*(&v264 + 1) + 8 * i);
                initiator = [v49 initiator];
                LOBYTE(v130) = [initiator isEquivalentToHandle:v130];

                if (v130)
                {

                  v17 = v124;
                  self = selfCopy;
                  v40 = v213;
                  goto LABEL_200;
                }
              }

              v127 = [invitedMemberHandles countByEnumeratingWithState:&v264 objects:v285 count:16];
              if (v127)
              {
                continue;
              }

              break;
            }
          }

          v133 = sub_100004778(v132);
          v17 = v124;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            initiator2 = [v49 initiator];
            value = [initiator2 value];
            originatorHandle = [v124 originatorHandle];
            invitedMemberHandles2 = [v124 invitedMemberHandles];
            *buf = 138413058;
            v278 = v49;
            v279 = 2112;
            v280 = value;
            v281 = 2112;
            v282 = originatorHandle;
            v283 = 2112;
            v284 = invitedMemberHandles2;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "Can't use existing conversation %@ because its initiator %@ is not us, not the link creator %@, and not an invited handle to the link %@. Falling back to LMI request/response flow.", buf, 0x2Au);
          }

          v138 = selfCopy;
          v139 = v124;
LABEL_194:
          [(CSDFaceTimeConversationProviderDelegate *)v138 proceedToNewPendingConversationForLink:v139 action:actionCopy];
          v40 = v213;
          goto LABEL_130;
        }

        conversationManager10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        originatorHandle2 = [v17 originatorHandle];
        v154 = [conversationManager10 isValidLocalHandle:originatorHandle2];

        v155 = v17;
        selfCopy2 = self;
        v213 = v40;
        v156 = actionCopy;
        if (v154)
        {
          originatorHandle3 = [v155 originatorHandle];
          v158 = [originatorHandle3 copy];
        }

        else
        {
          v158 = 0;
        }

        v49 = +[NSMutableSet set];
        v260 = 0u;
        v261 = 0u;
        v262 = 0u;
        v263 = 0u;
        v218 = v155;
        invitedMemberHandles3 = [v155 invitedMemberHandles];
        v160 = [invitedMemberHandles3 countByEnumeratingWithState:&v260 objects:v276 count:16];
        if (v160)
        {
          v161 = v160;
          v162 = *v261;
          do
          {
            for (j = 0; j != v161; j = j + 1)
            {
              if (*v261 != v162)
              {
                objc_enumerationMutation(invitedMemberHandles3);
              }

              v164 = *(*(&v260 + 1) + 8 * j);
              if (!v158)
              {
                conversationManager11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 conversationManager];
                v166 = [conversationManager11 isValidLocalHandle:v164];

                if (v166)
                {
                  v158 = [v164 copy];
                }

                else
                {
                  v158 = 0;
                }
              }

              v167 = [[TUConversationMember alloc] initWithHandle:v164 nickname:0];
              [v49 addObject:v167];
            }

            v161 = [invitedMemberHandles3 countByEnumeratingWithState:&v260 objects:v276 count:16];
          }

          while (v161);
        }

        isLocallyCreated2 = [v218 isLocallyCreated];
        if ((isLocallyCreated2 & 1) == 0)
        {
          v169 = [TUConversationMember alloc];
          originatorHandle4 = [v218 originatorHandle];
          v171 = [v169 initWithHandle:originatorHandle4 nickname:0];
          [v49 addObject:v171];
        }

        if (!v158)
        {
          v198 = sub_100004778(isLocallyCreated2);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
          {
            originatorHandle5 = [v218 originatorHandle];
            invitedMemberHandles4 = [v218 invitedMemberHandles];
            *buf = 138412546;
            v278 = originatorHandle5;
            v279 = 2112;
            v280 = invitedMemberHandles4;
            _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "Even though we have the information needed to create a conversation with this link, none of our currently active handles are the link creator %@ or one of the invited handles %@. Falling back to LMI request/response flow.", buf, 0x16u);
          }

          v138 = selfCopy2;
          v139 = v218;
          actionCopy = v156;
          v17 = v218;
          goto LABEL_194;
        }

        v212 = v158;
        otherInvitedHandles = [v156 otherInvitedHandles];
        v229 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        v216 = v156;
        otherInvitedHandles2 = [v156 otherInvitedHandles];
        v174 = [otherInvitedHandles2 countByEnumeratingWithState:&v256 objects:v275 count:16];
        if (v174)
        {
          v175 = v174;
          v176 = *v257;
          do
          {
            for (k = 0; k != v175; k = k + 1)
            {
              if (*v257 != v176)
              {
                objc_enumerationMutation(otherInvitedHandles2);
              }

              tuHandle = [*(*(&v256 + 1) + 8 * k) tuHandle];
              if (tuHandle)
              {
                [v229 addObject:tuHandle];
              }
            }

            v175 = [otherInvitedHandles2 countByEnumeratingWithState:&v256 objects:v275 count:16];
          }

          while (v175);
        }

        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        remoteMembers = [v216 remoteMembers];
        v227 = [remoteMembers countByEnumeratingWithState:&v252 objects:v274 count:16];
        if (v227)
        {
          v225 = *v253;
          do
          {
            v179 = 0;
            do
            {
              if (*v253 != v225)
              {
                objc_enumerationMutation(remoteMembers);
              }

              objb = v179;
              v180 = *(*(&v252 + 1) + 8 * v179);
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v181 = v229;
              v182 = [v181 countByEnumeratingWithState:&v248 objects:v273 count:16];
              if (v182)
              {
                v183 = v182;
                v184 = *v249;
                do
                {
                  for (m = 0; m != v183; m = m + 1)
                  {
                    if (*v249 != v184)
                    {
                      objc_enumerationMutation(v181);
                    }

                    v186 = *(*(&v248 + 1) + 8 * m);
                    handle = [v180 handle];
                    tuHandle2 = [handle tuHandle];
                    LODWORD(v186) = [tuHandle2 isEquivalentToHandle:v186];

                    if (v186)
                    {
                      v189 = [TUConversationMember alloc];
                      handle2 = [v180 handle];
                      tuHandle3 = [handle2 tuHandle];
                      v192 = [v189 initWithHandle:tuHandle3 nickname:0];

                      [v192 setIsOtherInvitedHandle:1];
                      [v49 addObject:v192];
                    }
                  }

                  v183 = [v181 countByEnumeratingWithState:&v248 objects:v273 count:16];
                }

                while (v183);
              }

              v179 = objb + 1;
            }

            while (objb + 1 != v227);
            v227 = [remoteMembers countByEnumeratingWithState:&v252 objects:v274 count:16];
          }

          while (v227);
        }

        v193 = [[TUConversationMember alloc] initWithHandle:v212];
        featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 featureFlags];
        if ([featureFlags avLessSharePlayEnabled])
        {
          actionCopy = v216;
          avMode = [v216 avMode];

          v196 = v218;
          if (avMode)
          {
            presentationMode = 0;
          }

          else
          {
            presentationMode = [v216 presentationMode];
          }
        }

        else
        {
          actionCopy = v216;
          if ([v216 isVideo])
          {
            avMode = 2;
          }

          else
          {
            avMode = 1;
          }

          presentationMode = 0;
          v196 = v218;
        }

        conversationManager12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 conversationManager];
        groupUUID2 = [v196 groupUUID];
        v204 = +[TUConversationProvider faceTimeProvider];
        v205 = [conversationManager12 findOrCreateConversationWithGroupUUID:groupUUID2 messagesGroupUUID:0 remoteMembers:v49 otherInvitedHandles:v229 localMember:v193 remotePushTokens:0 link:v196 activity:0 avMode:avMode presentationMode:presentationMode conversationProvider:v204 screenSharingRequest:0];

        if (v205)
        {
          self = selfCopy2;
          [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 proceedToJoinForConversation:v205 action:actionCopy];
          link2 = [v205 link];
          v207 = [v196 isEqual:link2];

          v17 = v196;
          if ((v207 & 1) == 0)
          {
            v209 = sub_100004778(v208);
            v40 = v213;
            if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              link3 = [v205 link];
              *buf = 138412546;
              v278 = link3;
              v279 = 2112;
              v280 = v17;
              _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "Use %@ instead of link: %@ for renewal", buf, 0x16u);
            }

            link4 = [v205 link];

            v17 = link4;
LABEL_211:

            if (!v205)
            {
              goto LABEL_131;
            }

            goto LABEL_129;
          }
        }

        else
        {
          [actionCopy fail];
          v17 = v196;
          self = selfCopy2;
        }

        v40 = v213;
        goto LABEL_211;
      }
    }

    else
    {
      pseudonym6 = [actionCopy pseudonym];
      if ([pseudonym6 length])
      {
        publicKey = [actionCopy publicKey];
        v28 = [publicKey length];

        if (v28)
        {
          v30 = sub_100004778(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10047B5FC();
          }

          v245 = 0;
          v31 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:actionCopy withError:&v245];
          v17 = v245;
          v32 = sub_100004778(v17);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v278 = v31;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Deleted link: %@", buf, 0xCu);
          }

          [actionCopy fail];
          goto LABEL_138;
        }
      }

      else
      {
      }
    }

    selfCopy3 = self;
    v217 = v17;
    remoteMembers2 = [actionCopy remoteMembers];
    v228 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers2 count]);

    otherInvitedHandles3 = [actionCopy otherInvitedHandles];
    v55 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles3 count]);

    v56 = +[NSMutableSet set];
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v215 = actionCopy;
    obj = [actionCopy remoteMembers];
    v57 = [obj countByEnumeratingWithState:&v241 objects:v272 count:16];
    v226 = v56;
    if (v57)
    {
      v58 = v57;
      v59 = *v242;
      do
      {
        for (n = 0; n != v58; n = n + 1)
        {
          if (*v242 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v241 + 1) + 8 * n);
          handle3 = [v61 handle];
          tuHandle4 = [handle3 tuHandle];

          v64 = [v56 containsObject:tuHandle4];
          if (v64)
          {
            v65 = sub_100004778(v64);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v278 = tuHandle4;
              v279 = 2112;
              v280 = v56;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping member with handle %@ because it already exists in seen handles: %@", buf, 0x16u);
            }
          }

          else
          {
            v65 = [[TUConversationMember alloc] initWithHandle:tuHandle4 nickname:0];
            stableDeviceIdentifier = [v61 stableDeviceIdentifier];
            [v65 setStableDeviceIdentifier:stableDeviceIdentifier];

            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            v67 = v55;
            v68 = v55;
            v69 = [v68 countByEnumeratingWithState:&v237 objects:v271 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v238;
              do
              {
                for (ii = 0; ii != v70; ii = ii + 1)
                {
                  if (*v238 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  if ([*(*(&v237 + 1) + 8 * ii) isEquivalentToHandle:tuHandle4])
                  {
                    [v65 setIsOtherInvitedHandle:1];
                  }
                }

                v70 = [v68 countByEnumeratingWithState:&v237 objects:v271 count:16];
              }

              while (v70);
            }

            [v228 addObject:v65];
            v56 = v226;
            [v226 addObject:tuHandle4];
            v55 = v67;
          }
        }

        v58 = [obj countByEnumeratingWithState:&v241 objects:v272 count:16];
      }

      while (v58);
    }

    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    actionCopy = v215;
    otherInvitedHandles4 = [v215 otherInvitedHandles];
    v74 = [otherInvitedHandles4 countByEnumeratingWithState:&v233 objects:v270 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v234;
      do
      {
        for (jj = 0; jj != v75; jj = jj + 1)
        {
          if (*v234 != v76)
          {
            objc_enumerationMutation(otherInvitedHandles4);
          }

          tuHandle5 = [*(*(&v233 + 1) + 8 * jj) tuHandle];
          [v55 addObject:tuHandle5];
        }

        v75 = [otherInvitedHandles4 countByEnumeratingWithState:&v233 objects:v270 count:16];
      }

      while (v75);
    }

    joinCallActivity = [v215 joinCallActivity];
    tuActivity = [joinCallActivity tuActivity];

    if (!v228)
    {
      [v215 fail];
      v17 = v217;
LABEL_135:
      v150 = v226;
LABEL_136:

      goto LABEL_137;
    }

    callerID = [v215 callerID];
    if (callerID)
    {
      v82 = [TUConversationMember alloc];
      callerID2 = [v215 callerID];
      tuHandle6 = [callerID2 tuHandle];
      obja = [v82 initWithHandle:tuHandle6 nickname:0];
    }

    else
    {
      obja = 0;
    }

    v86 = sub_100004778(v85);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      callerID3 = [v215 callerID];
      *buf = 138412546;
      v278 = obja;
      v279 = 2112;
      v280 = callerID3;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "localMember: %@, action.callerID: %@", buf, 0x16u);
    }

    featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 featureFlags];
    v219 = v55;
    if ([featureFlags2 avLessSharePlayEnabled])
    {
      avMode2 = [v215 avMode];

      if (!avMode2)
      {
        presentationMode2 = [v215 presentationMode];
        goto LABEL_89;
      }
    }

    else
    {
      if ([v215 isVideo])
      {
        avMode2 = 2;
      }

      else
      {
        avMode2 = 1;
      }
    }

    presentationMode2 = 0;
LABEL_89:
    conversationManager13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 conversationManager];
    groupUUID3 = [v215 groupUUID];
    messagesGroupUUID = [v215 messagesGroupUUID];
    remotePushTokens = [v215 remotePushTokens];
    conversationProviderIdentifier = [v215 conversationProviderIdentifier];
    v95 = [TUConversationProvider providerForIdentifier:conversationProviderIdentifier];
    v96 = [conversationManager13 findOrCreateConversationWithGroupUUID:groupUUID3 messagesGroupUUID:messagesGroupUUID remoteMembers:v228 otherInvitedHandles:v219 localMember:obja remotePushTokens:remotePushTokens link:v217 activity:tuActivity avMode:avMode2 presentationMode:presentationMode2 conversationProvider:v95 screenSharingRequest:0];

    v97 = v96;
    if (!v96)
    {
      [v215 fail];
      actionCopy = v215;
      v17 = v217;
      v55 = v219;
      goto LABEL_134;
    }

    featureFlags3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 featureFlags];
    actionCopy = v215;
    v55 = v219;
    if ([featureFlags3 nearbyFaceTimeEnabled])
    {
      isNearbySession = [v97 isNearbySession];

      v17 = v217;
      if (!isNearbySession)
      {
LABEL_102:
        [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 proceedToJoinForConversation:v97 action:v215];
        if (![v215 avMode])
        {
LABEL_133:
          [(CSDFaceTimeConversationProviderDelegate *)selfCopy3 declineRemoteDevicesForConversation:v97 reason:4];
          goto LABEL_134;
        }

        link5 = [v97 link];
        if (link5)
        {

          goto LABEL_133;
        }

        participantCluster = [v215 participantCluster];

        if (participantCluster)
        {
          goto LABEL_133;
        }

LABEL_134:

        goto LABEL_135;
      }

      participantCluster2 = [v215 participantCluster];
      if (!participantCluster2 || (v101 = participantCluster2, [v215 participantCluster], v102 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend(v102, "type"), v102, v101, v103 != 1))
      {
        v151 = sub_100004778(participantCluster2);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          sub_10047B674();
        }

        [v215 fail];
        goto LABEL_143;
      }

      activeRemoteParticipants = [v97 activeRemoteParticipants];
      anyObject = [activeRemoteParticipants anyObject];
      cluster = [anyObject cluster];
      featureFlags3 = [cluster UUID];

      if (featureFlags3)
      {
        participantCluster3 = [v215 participantCluster];
        uUID2 = [participantCluster3 UUID];
        v109 = [featureFlags3 isEqual:uUID2];

        if ((v109 & 1) == 0)
        {
          v111 = sub_100004778(v110);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            sub_10047B638();
          }

          [v215 fail];
LABEL_143:
          v150 = v226;

          goto LABEL_136;
        }
      }
    }

    else
    {
      v17 = v217;
    }

    goto LABEL_102;
  }

  v12 = sub_100004778(v16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v13 = "[WARN] Failing join call action because it is not a valid request to screen share";
    goto LABEL_12;
  }

LABEL_13:

  [actionCopy fail];
LABEL_139:
}

- (void)proceedToNewPendingConversationForLink:(id)link action:(id)action
{
  linkCopy = link;
  actionCopy = action;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager removeAllPendingConversations];

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v10 = [conversationManager2 activeApprovedConversationWithLink:linkCopy];

  if (v10)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self proceedToJoinForConversation:v10 action:actionCopy];
    [actionCopy fulfill];
  }

  else
  {
    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v12 = [TUConversationMember alloc];
    callerID = [actionCopy callerID];
    tuHandle = [callerID tuHandle];
    v15 = [v12 initWithHandle:tuHandle nickname:0];
    v16 = [conversationManager3 initiatePendingConversationForLink:linkCopy localMember:v15 isVideoEnabled:{objc_msgSend(actionCopy, "isVideoEnabled")}];

    if (v16)
    {
      [actionCopy fulfill];
      v17 = [[CXCallUpdate alloc] initWithTUConversation:v16];
      localSenderIdentityUUID = [v17 localSenderIdentityUUID];

      if (!localSenderIdentityUUID)
      {
        conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        initiator = [v16 initiator];
        v22 = [conversationManager4 senderIdentityUUIDForCallerIDHandle:initiator];
        [v17 setLocalSenderIdentityUUID:v22];
      }

      v23 = sub_100004778(v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        callUUID = [actionCopy callUUID];
        v30 = 138412546;
        v31 = callUUID;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "LMI: Reporting LMI call with UUID: %@ update: %@", &v30, 0x16u);
      }

      callUUID2 = [actionCopy callUUID];
      callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      uUID = [v16 UUID];
      [callUUIDsByConversationUUID setObject:callUUID2 forKeyedSubscript:uUID];

      provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      callUUID3 = [actionCopy callUUID];
      [provider reportCallWithUUID:callUUID3 updated:v17];
    }

    else
    {
      [actionCopy fail];
    }
  }
}

- (id)_findPendingConversationWithCallUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    pseudonymsByCallUUID = [conversationManager pseudonymsByCallUUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID = [conversationManager2 conversationsByUUID];
    *buf = 138412546;
    v33 = pseudonymsByCallUUID;
    v34 = 2112;
    v35 = conversationsByUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pseudonymsByCallUUID: %@, conversationsByUUID: %@", buf, 0x16u);
  }

  conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  pseudonymsByCallUUID2 = [conversationManager3 pseudonymsByCallUUID];
  v12 = [pseudonymsByCallUUID2 objectForKeyedSubscript:dCopy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID2 = [conversationManager4 conversationsByUUID];
  allValues = [conversationsByUUID2 allValues];

  v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v26 = dCopy;
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ([v19 isPendingConversation])
        {
          link = [v19 link];
          if (link)
          {
            v21 = link;
            link2 = [v19 link];
            pseudonym = [link2 pseudonym];
            v24 = [pseudonym isEqualToString:v12];

            if (v24)
            {
              v16 = v19;
              goto LABEL_15;
            }
          }
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_15:
    dCopy = v26;
  }

  return v16;
}

- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v10.receiver = self;
  v10.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v10 leaveConversationForCallUUID:dCopy endedReason:reason];
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  [(CSDFaceTimeConversationProviderDelegate *)self setWaitingForRemoteJoin:0 forConversationUUID:v9];
}

- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason
{
  conversationCopy = conversation;
  dCopy = d;
  v30.receiver = self;
  v30.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v30 leaveConversation:conversationCopy withCallUUID:dCopy reason:reason];
  link = [conversationCopy link];
  if (link)
  {
    v11 = link;
    isPendingConversation = [conversationCopy isPendingConversation];

    if (isPendingConversation)
    {
      v14 = sub_100004778(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        link2 = [conversationCopy link];
        pseudonym = [link2 pseudonym];
        *buf = 138412546;
        v32 = pseudonym;
        v33 = 2112;
        v34 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing pending conversation with pseudonym %@ and callUUID %@", buf, 0x16u);
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      link3 = [conversationCopy link];
      pseudonym2 = [link3 pseudonym];
      v20 = [conversationManager removePendingConversationWithPseudonym:pseudonym2];

      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      link4 = [conversationCopy link];
      pseudonym3 = [link4 pseudonym];
      [conversationManager2 removePseudonym:pseudonym3 forCallUUID:dCopy];

      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID = [conversationCopy UUID];
      [conversationManager3 notifyDelegatesOfRemovedConversationWithUUID:uUID];
    }
  }

  uUID2 = [conversationCopy UUID];
  [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID2];

  uUID3 = [conversationCopy UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:uUID3];

  if ([conversationCopy state])
  {
    if ([conversationCopy state] == 2)
    {
      remoteMembers = [conversationCopy remoteMembers];
      v29 = [remoteMembers count];

      if (reason == 4 && v29 == 1)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteMembersForConversation:conversationCopy reason:4];
      }
    }
  }

  else
  {
    [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteDevicesForConversation:conversationCopy reason:reason];
  }
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v20, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  isVideo = [v14 isVideo];
  if ((isVideo & 1) == 0 && (isVideo = [v14 state], isVideo == 3) && (objc_msgSend(v14, "remoteMembers"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17 == 1))
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 setAudioPaused:objc_msgSend(actionCopy forConversationWithUUID:{"isOnHold"), v11}];

    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fulfill];
    }
  }

  else
  {
    v19 = sub_100004778(isVideo);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10047B720();
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 138412290;
    v46 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v45, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if ([actionCopy isSendingVideo])
  {
    v15 = +[TUConversationManager allowsVideo];
    if ((v15 & 1) == 0)
    {
      v17 = sub_100004778(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot enable video because conversations do not allow video on this device", &v45, 2u);
      }

      goto LABEL_21;
    }
  }

  if (![actionCopy isSendingVideo] || !objc_msgSend(v14, "isOneToOneModeEnabled") || (objc_msgSend(v14, "isVideo") & 1) != 0 || (v16 = objc_msgSend(v14, "avMode")) == 0)
  {
    if ([actionCopy isSendingVideo])
    {
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v19 = [conversationManager2 isConversationWithUUIDRedirectingAudio:v11];

      if (v19)
      {
        v17 = sub_100004778(v20);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10047B7D0();
        }

        goto LABEL_21;
      }
    }

    if (v14)
    {
      isOneToOneModeEnabled = [v14 isOneToOneModeEnabled];
      isSendingVideo = [actionCopy isSendingVideo];
      v23 = isSendingVideo;
      if (isOneToOneModeEnabled)
      {
        conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        isSendingVideo2 = [actionCopy isSendingVideo];
        if (v23)
        {
          [conversationManager3 setVideoEnabled:isSendingVideo2 forConversationWithUUID:v11];

          conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v26 = [actionCopy isSendingVideo] ^ 1;
        }

        else
        {
          v26 = isSendingVideo2 ^ 1;
        }

        conversationManager7 = conversationManager3;
      }

      else
      {
        if (isSendingVideo && ([v14 isVideo] & 1) == 0)
        {
          conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          [conversationManager4 setVideo:objc_msgSend(actionCopy forConversationWithUUID:{"isSendingVideo"), v11}];
        }

        conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        [conversationManager5 setVideoEnabled:objc_msgSend(actionCopy forConversationWithUUID:{"isSendingVideo"), v11}];

        conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v36 = [conversationManager6 presentationStateForConversationWithUUID:v11];

        if (v36 == 2)
        {
          goto LABEL_40;
        }

        isSendingVideo3 = [actionCopy isSendingVideo];
        if (!isSendingVideo3)
        {
          goto LABEL_40;
        }

        v38 = sub_100004778(isSendingVideo3);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v45 = 67109120;
          LODWORD(v46) = v36;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Group conversation has presentation state %d so requesting to unpause video", &v45, 8u);
        }

        conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        conversationManager3 = conversationManager7;
        v26 = 0;
      }

      [conversationManager7 setVideoPaused:v26 forConversationWithUUID:v11];
    }

    else
    {
      callUUID2 = [actionCopy callUUID];
      v28 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:callUUID2];

      if (!v28)
      {
        v40 = sub_100004778(v29);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          callUUID3 = [actionCopy callUUID];
          conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
          conversationManager8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          conversationsByUUID2 = [conversationManager8 conversationsByUUID];
          v45 = 138412802;
          v46 = callUUID3;
          v47 = 2112;
          v48 = conversationUUIDsByCallUUID2;
          v49 = 2112;
          v50 = conversationsByUUID2;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for sendingVideo call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v45, 0x20u);
        }

        goto LABEL_22;
      }

      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      isSendingVideo4 = [actionCopy isSendingVideo];
      callUUID4 = [actionCopy callUUID];
      v32 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self pendingConversationUUIDForCallWithUUID:callUUID4];
      [conversationManager3 setVideoEnabled:isSendingVideo4 forPendingConversationWithUUID:v32];
    }

LABEL_40:
    [actionCopy fulfill];
    goto LABEL_41;
  }

  v17 = sub_100004778(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10047B794();
  }

LABEL_21:

LABEL_22:
  [actionCopy fail];
LABEL_41:
}

- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 138412290;
    v41 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v40, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (!v14)
  {
    v33 = sub_100004778(v15);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager2 conversationsByUUID];
      v40 = 138412802;
      v41 = callUUID2;
      v42 = 2112;
      v43 = conversationUUIDsByCallUUID2;
      v44 = 2112;
      v45 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for screen share call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v40, 0x20u);
    }

    goto LABEL_24;
  }

  if ([actionCopy isSharingScreen])
  {
    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    allActiveConversationParticipantsSupportSharePlay = [conversationManager3 allActiveConversationParticipantsSupportSharePlay];

    if (allActiveConversationParticipantsSupportSharePlay)
    {
      allowsScreenSharingBlock = [(CSDFaceTimeConversationProviderDelegate *)self allowsScreenSharingBlock];
      v20 = allowsScreenSharingBlock[2]();

      if (v20)
      {
        conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v23 = [conversationManager4 isConversationWithUUIDRedirectingAudio:v11];

        if (v23)
        {
          v25 = sub_100004778(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10047B884();
          }

          [actionCopy fail];
        }

        conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        isScreenSharingAvailable = [conversationManager5 isScreenSharingAvailable];

        if (isScreenSharingAvailable)
        {
          goto LABEL_12;
        }

        conversationManager6 = sub_100004778(v28);
        if (os_log_type_enabled(conversationManager6, OS_LOG_TYPE_ERROR))
        {
          sub_10047B8F4();
        }
      }

      else
      {
        conversationManager6 = sub_100004778(v21);
        if (os_log_type_enabled(conversationManager6, OS_LOG_TYPE_ERROR))
        {
          sub_10047B848();
        }
      }
    }

    else
    {
      v38 = sub_100004778(v18);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10047B80C();
      }

      conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager6 displaySharePlayUnableToStartAlert];
    }

LABEL_24:
    [actionCopy fail];
    goto LABEL_25;
  }

LABEL_12:
  v29 = objc_opt_class();
  attributes = [actionCopy attributes];
  v31 = [v29 callScreenShareAttributesForAction:attributes];

  conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager7 setScreenEnabled:objc_msgSend(actionCopy screenShareAttributes:"isSharingScreen") forConversationWithUUID:{v31, v11}];

  [actionCopy fulfill];
LABEL_25:
}

- (void)provider:(id)provider performEnableVideoCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v23, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v9 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v12 = [conversationsByUUID objectForKeyedSubscript:v9];

  if (!v12)
  {
    v17 = sub_100004778(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager2 conversationsByUUID];
      v23 = 138412802;
      v24 = callUUID2;
      v25 = 2112;
      v26 = conversationUUIDsByCallUUID2;
      v27 = 2112;
      v28 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for enableVideo call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v23, 0x20u);
    }

    goto LABEL_13;
  }

  if ([actionCopy isVideoEnabled])
  {
    state = [v12 state];
    if (state != 3)
    {
      v22 = sub_100004778(state);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10047B930();
      }

LABEL_13:
      [actionCopy fail];
      goto LABEL_14;
    }
  }

  conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager3 setVideo:objc_msgSend(actionCopy forConversationWithUUID:{"isVideoEnabled"), v9}];

  conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager4 sendVideoUpgradeMessageforConversationWithUUID:v9];

  [actionCopy fulfill];
LABEL_14:
}

- (void)provider:(id)provider performSetScreenShareAttributesCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v16, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  v12 = objc_opt_class();
  attributes = [actionCopy attributes];
  v14 = [v12 callScreenShareAttributesForAction:attributes];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager setScreenShareAttributes:v14 forConversationWithUUID:v11];

  [actionCopy fulfill];
}

- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", &v27, 2u);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID2 = [conversationManager2 conversationsByUUID];
  v17 = [conversationsByUUID2 objectForKeyedSubscript:v11];

  if (v17)
  {
    videoPresentationState = [actionCopy videoPresentationState];
    if (([v14 isOneToOneModeEnabled] & 1) == 0)
    {
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager3 setVideoPaused:videoPresentationState == 2 forConversationWithUUID:v11];
    }

    conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager4 setPresentationState:-[CSDFaceTimeConversationProviderDelegate TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:](self forConversationWithUUID:{"TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(actionCopy, "videoPresentationState")), v11}];

    [actionCopy fulfill];
  }

  else
  {
    v22 = sub_100004778(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID3 = [conversationManager5 conversationsByUUID];
      v27 = 138412802;
      v28 = callUUID2;
      v29 = 2112;
      v30 = conversationUUIDsByCallUUID2;
      v31 = 2112;
      v32 = conversationsByUUID3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for set video presentation state action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v27, 0x20u);
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", &v25, 2u);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (v14)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [actionCopy videoPresentationSize];
    v18 = v17;
    [actionCopy videoPresentationSize];
    [conversationManager2 setPresentationRect:v11 forConversationWithUUID:{0.0, 0.0, v18, v19}];

    [actionCopy fulfill];
  }

  else
  {
    v20 = sub_100004778(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v25 = 138412802;
      v26 = callUUID2;
      v27 = 2112;
      v28 = conversationUUIDsByCallUUID2;
      v29 = 2112;
      v30 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for set video presentation state action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v25, 0x20u);
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v22, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (v14)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 setRelaying:objc_msgSend(actionCopy forConversationWithUUID:{"isRelaying"), v11}];

    [actionCopy fulfill];
  }

  else
  {
    v17 = sub_100004778(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v22 = 138412802;
      v23 = callUUID2;
      v24 = 2112;
      v25 = conversationUUIDsByCallUUID2;
      v26 = 2112;
      v27 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for relaying call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v22, 0x20u);
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetScreeningCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v25, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (v14)
  {
    link = [v14 link];

    if (!link)
    {
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager2 setScreening:objc_msgSend(actionCopy forConversationWithUUID:{"isScreening"), v11}];

      [actionCopy fulfill];
      goto LABEL_13;
    }

    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Not starting screening on a link based conversation", &v25, 2u);
    }
  }

  else
  {
    v19 = sub_100004778(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v25 = 138412802;
      v26 = callUUID2;
      v27 = 2112;
      v28 = conversationUUIDsByCallUUID2;
      v29 = 2112;
      v30 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for screening call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v25, 0x20u);
    }
  }

  [actionCopy fail];
LABEL_13:
}

- (void)provider:(id)provider performSetAllowUplinkAudioInjectionAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "action: %@", &v24, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (v14 && (v15 = [v14 state], v15 == 3) && (v15 = objc_msgSend(v14, "avMode")) != 0)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    willInject = [actionCopy willInject];
    uUID = [v14 UUID];
    [conversationManager2 setAudioInjectionAllowed:willInject forConversationWithUUID:uUID];

    [actionCopy fulfill];
  }

  else
  {
    v19 = sub_100004778(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v24 = 138412802;
      v25 = callUUID2;
      v26 = 2112;
      v27 = conversationUUIDsByCallUUID2;
      v28 = 2112;
      v29 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Did not allow audio injection action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v24, 0x20u);
    }

    [actionCopy fail];
  }
}

- (NSMutableSet)conversationUUIDsUpgradedFromAVLess
{
  conversationUUIDsUpgradedFromAVLess = self->_conversationUUIDsUpgradedFromAVLess;
  if (!conversationUUIDsUpgradedFromAVLess)
  {
    v4 = +[NSMutableSet set];
    v5 = self->_conversationUUIDsUpgradedFromAVLess;
    self->_conversationUUIDsUpgradedFromAVLess = v4;

    conversationUUIDsUpgradedFromAVLess = self->_conversationUUIDsUpgradedFromAVLess;
  }

  return conversationUUIDsUpgradedFromAVLess;
}

- (BOOL)shouldHandleProvider:(id)provider
{
  providerCopy = provider;
  v4 = providerCopy;
  if (providerCopy && [providerCopy isDefaultProvider])
  {
    v5 = [v4 isTelephonyWithSharePlayProvider] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CSDConversationProviderManager sharedInstance];
  v6 = [v5 tuConversationProviderForIdentifier:identifierCopy];

  LOBYTE(self) = [(CSDFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v6];
  return self;
}

@end