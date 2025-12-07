@interface CSDGFTServiceConversationProviderDelegate
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isProviderForeground:(id)foreground;
- (BOOL)shouldHandleProvider:(id)provider;
- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier;
- (CSDGFTServiceConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performJoinCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
@end

@implementation CSDGFTServiceConversationProviderDelegate

- (CSDGFTServiceConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver
{
  managerCopy = manager;
  queueCopy = queue;
  resolverCopy = resolver;
  v18.receiver = self;
  v18.super_class = CSDGFTServiceConversationProviderDelegate;
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v18 initWithConversationManager:managerCopy queue:queueCopy invitationResolver:resolverCopy];
  if (v11)
  {
    v12 = [[CSDProcessObserver alloc] initWithQueue:queueCopy];
    processObserver = v11->_processObserver;
    v11->_processObserver = v12;

    objc_initWeak(&location, v11);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10020299C;
    v15[3] = &unk_10061C3C8;
    objc_copyWeak(&v16, &location);
    [(CSDProcessObserverProtocol *)v11->_processObserver setProcessStateChanged:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (BOOL)isProviderForeground:(id)foreground
{
  foregroundCopy = foreground;
  processObserver = [(CSDGFTServiceConversationProviderDelegate *)self processObserver];
  v6 = [processObserver fetchCurrentProcessStatesForBundleIdentifier:foregroundCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v12 + 1) + 8 * i) integerValue] == 4)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)provider:(id)provider performJoinCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778(actionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v77 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  v7 = +[CSDConversationProviderManager sharedInstance];
  conversationProviderIdentifier = [actionCopy conversationProviderIdentifier];
  v9 = [v7 tuConversationProviderForIdentifier:conversationProviderIdentifier];

  bundleIdentifier = [v9 bundleIdentifier];
  if (bundleIdentifier && (v11 = bundleIdentifier, [v9 bundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[CSDGFTServiceConversationProviderDelegate isProviderForeground:](self, "isProviderForeground:", v12), v12, v11, (v13 & 1) == 0))
  {
    v20 = sub_100004778(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [v9 bundleIdentifier];
      *buf = 138412290;
      v77 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] bundleIdentifer: %@ not in the foreground, failing join call action", buf, 0xCu);
    }

    [actionCopy fail];
  }

  else
  {
    selfCopy = self;
    callerID = [actionCopy callerID];
    v16 = &_s10Foundation3URLVMa_ptr_0;
    v56 = v9;
    if (callerID)
    {
      v17 = [TUConversationMember alloc];
      callerID2 = [actionCopy callerID];
      tuHandle = [callerID2 tuHandle];
      v58 = [v17 initWithHandle:tuHandle nickname:0];
    }

    else
    {
      v58 = 0;
    }

    remoteMembers = [actionCopy remoteMembers];
    v60 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

    otherInvitedHandles = [actionCopy otherInvitedHandles];
    v24 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

    v25 = +[NSMutableSet set];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v57 = actionCopy;
    obj = [actionCopy remoteMembers];
    v26 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    v59 = v25;
    if (v26)
    {
      v27 = v26;
      v28 = *v72;
      do
      {
        v29 = 0;
        v61 = v27;
        do
        {
          if (*v72 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v71 + 1) + 8 * v29);
          handle = [v30 handle];
          tuHandle2 = [handle tuHandle];

          v33 = [v25 containsObject:tuHandle2];
          if (v33)
          {
            v34 = sub_100004778(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v77 = tuHandle2;
              v78 = 2112;
              v79 = v25;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping member with handle %@ because it already exists in seen handles: %@", buf, 0x16u);
            }
          }

          else
          {
            v35 = v16;
            v34 = [objc_alloc(v16[183]) initWithHandle:tuHandle2 nickname:0];
            stableDeviceIdentifier = [v30 stableDeviceIdentifier];
            [v34 setStableDeviceIdentifier:stableDeviceIdentifier];

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v37 = v24;
            v38 = v24;
            v39 = [v38 countByEnumeratingWithState:&v67 objects:v80 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v68;
              do
              {
                for (i = 0; i != v40; i = i + 1)
                {
                  if (*v68 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  if ([*(*(&v67 + 1) + 8 * i) isEquivalentToHandle:tuHandle2])
                  {
                    [v34 setIsOtherInvitedHandle:1];
                  }
                }

                v40 = [v38 countByEnumeratingWithState:&v67 objects:v80 count:16];
              }

              while (v40);
            }

            [v60 addObject:v34];
            v25 = v59;
            [v59 addObject:tuHandle2];
            v24 = v37;
            v16 = v35;
            v27 = v61;
          }

          v29 = v29 + 1;
        }

        while (v29 != v27);
        v27 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v27);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    actionCopy = v57;
    otherInvitedHandles2 = [v57 otherInvitedHandles];
    v44 = [otherInvitedHandles2 countByEnumeratingWithState:&v63 objects:v75 count:16];
    v9 = v56;
    if (v44)
    {
      v45 = v44;
      v46 = *v64;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v64 != v46)
          {
            objc_enumerationMutation(otherInvitedHandles2);
          }

          tuHandle3 = [*(*(&v63 + 1) + 8 * j) tuHandle];
          [v24 addObject:tuHandle3];
        }

        v45 = [otherInvitedHandles2 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v45);
    }

    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy conversationManager];
    groupUUID = [v57 groupUUID];
    messagesGroupUUID = [v57 messagesGroupUUID];
    remotePushTokens = [v57 remotePushTokens];
    if ([v57 isVideo])
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    v54 = [conversationManager findOrCreateConversationWithGroupUUID:groupUUID messagesGroupUUID:messagesGroupUUID remoteMembers:v60 otherInvitedHandles:v24 localMember:v58 remotePushTokens:remotePushTokens link:0 activity:0 avMode:v53 presentationMode:objc_msgSend(v57 conversationProvider:"presentationMode") screenSharingRequest:{v56, 0}];

    if (v54)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy proceedToJoinForConversation:v54 action:v57];
    }

    else
    {
      [v57 fail];
    }
  }
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing end call action %@", &v20, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (v14)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v14 withCallUUID:callUUID reason:-1];
    [actionCopy fulfill];
  }

  else
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager2 conversationsByUUID];
      v20 = 138412802;
      v21 = callUUID;
      v22 = 2112;
      v23 = conversationUUIDsByCallUUID2;
      v24 = 2112;
      v25 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for end call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v20, 0x20u);
    }

    [actionCopy fail];
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:callUUID endedReason:-1];
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failing %@ It is not supported by GFTaaS", &v9, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failing %@ It is not supported by GFTaaS", &v9, 0xCu);
  }

  [actionCopy fail];
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v6 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v9 = [conversationsByUUID objectForKeyedSubscript:v6];

  v13.receiver = self;
  v13.super_class = CSDGFTServiceConversationProviderDelegate;
  LODWORD(self) = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v13 isManagingCallWithUUID:dCopy];

  LOBYTE(dCopy) = 0;
  if (self && v9)
  {
    provider = [v9 provider];
    LODWORD(dCopy) = [provider isDefaultProvider] ^ 1;
  }

  return dCopy;
}

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [changedCopy UUID];
  v9 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  v10 = [[CXCallUpdate alloc] initWithTUConversation:changedCopy];
  remoteMembers = [changedCopy remoteMembers];
  v12 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

  remoteMembers2 = [changedCopy remoteMembers];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100203EB8;
  v50[3] = &unk_10061A200;
  v14 = v12;
  v51 = v14;
  [remoteMembers2 enumerateObjectsUsingBlock:v50];

  [v10 setRemoteParticipantHandles:v14];
  activeRemoteParticipantCXHandles = [changedCopy activeRemoteParticipantCXHandles];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipantCXHandles count]);

  activeRemoteParticipantCXHandles2 = [changedCopy activeRemoteParticipantCXHandles];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100203F6C;
  v48[3] = &unk_10061E620;
  v18 = v16;
  v49 = v18;
  [activeRemoteParticipantCXHandles2 enumerateObjectsUsingBlock:v48];

  [v10 setActiveRemoteParticipantHandles:v18];
  [v10 setOneToOneModeEnabled:{objc_msgSend(changedCopy, "isOneToOneModeEnabled")}];
  [v10 setScreenSharingType:{objc_msgSend(changedCopy, "screenSharingType")}];
  if ([changedCopy isOneToOneModeEnabled])
  {
    mergedActiveRemoteParticipants = [changedCopy mergedActiveRemoteParticipants];
    if ([mergedActiveRemoteParticipants count] == 1)
    {
      mergedActiveRemoteParticipants2 = [changedCopy mergedActiveRemoteParticipants];
      anyObject = [mergedActiveRemoteParticipants2 anyObject];
      streamToken = [anyObject streamToken];

      if (!streamToken)
      {
        goto LABEL_6;
      }

      mergedActiveRemoteParticipants = [changedCopy mergedActiveRemoteParticipants];
      anyObject2 = [mergedActiveRemoteParticipants anyObject];
      [v10 setVideoStreamToken:{objc_msgSend(anyObject2, "streamToken")}];
    }
  }

LABEL_6:
  state = [changedCopy state];
  if (state > 1)
  {
    if (state == 2)
    {
      if (!v9)
      {
        conversationManager = sub_100004778(2);
        if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_ERROR))
        {
          sub_10047B9B4(changedCopy, conversationManager);
        }

        goto LABEL_44;
      }

      if ([changedCopy isLocallyCreated])
      {
        if (([changedCopy isOneToOneModeEnabled] & 1) == 0)
        {
          [v10 setRequiresInCallSounds:0];
          provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
          v28 = +[NSDate date];
          [provider reportOutgoingCallWithUUID:v9 startedConnectingAtDate:v28];
        }

        provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        v30 = +[NSDate date];
        [provider2 reportOutgoingCallWithUUID:v9 sentInvitationAtDate:v30];
      }

      [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v9];
      goto LABEL_43;
    }

    if (state == 4)
    {
      [v10 setMixesVoiceWithMedia:0];
      goto LABEL_42;
    }

    if (state != 3)
    {
      goto LABEL_42;
    }

    if (!v9)
    {
      v36 = sub_100004778(3);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10047BA2C(changedCopy, v36);
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID2 = [changedCopy UUID];
      [conversationManager leaveConversationWithUUID:uUID2];

      goto LABEL_44;
    }

    if ([changedCopy isOneToOneModeEnabled])
    {
      faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
      v26 = +[NSDate date];
      [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v9 connectedAtDate:v26];
    }

    else
    {
      faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v26 = +[NSDate date];
      [faceTimeDemuxerDelegate reportOutgoingCallWithUUID:v9 connectedAtDate:v26];
    }

    if ([changedCopy isOneToOneModeEnabled])
    {
      [v10 setConversation:1];
    }

    provider3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v39 = [provider3 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v9];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v33 = v39;
    v40 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v45;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v44 + 1) + 8 * i) fulfill];
        }

        v41 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v41);
    }

LABEL_41:
    goto LABEL_42;
  }

  if (!state)
  {
    uUID3 = [changedCopy UUID];
    v32 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _isWaitingToJoinForConversationUUID:uUID3];

    if (v32)
    {
      goto LABEL_42;
    }

    v33 = objc_alloc_init(CXCallFailureContext);
    [v33 setFailureReason:0];
    [v33 setProviderEndedReason:504];
    uUID4 = [changedCopy UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID4 failureContext:v33];

    goto LABEL_41;
  }

  if (state == 1)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v9];
  }

LABEL_42:
  if (v9)
  {
LABEL_43:
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [conversationManager reportCallWithUUID:v9 updated:v10];
LABEL_44:
  }
}

- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDConversationProviderManager sharedInstance];
  v5 = [v4 conversationProviderForIdentifier:identifierCopy];

  return v5 != 0;
}

- (BOOL)shouldHandleProvider:(id)provider
{
  providerCopy = provider;
  v4 = providerCopy;
  if (providerCopy && ([providerCopy isDefaultProvider] & 1) == 0)
  {
    v5 = [v4 isTelephonyWithSharePlayProvider] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end