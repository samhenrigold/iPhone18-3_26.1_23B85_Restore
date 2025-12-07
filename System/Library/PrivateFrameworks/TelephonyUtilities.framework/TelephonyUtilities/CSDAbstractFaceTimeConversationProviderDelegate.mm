@interface CSDAbstractFaceTimeConversationProviderDelegate
- (BOOL)_isWaitingToJoinForConversationUUID:(id)d;
- (BOOL)hasCallStartedConnectingWithUUID:(id)d;
- (BOOL)isLocalMemberOf:(id)of associatedTo:(id)to;
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isManagingPendingConversationForCallWithUUID:(id)d;
- (BOOL)isWaitingToJoinForConversationUUID:(id)d;
- (BOOL)shouldAutomaticallyLeaveConversation:(id)conversation;
- (CSDAbstractFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver;
- (CSDAbstractFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver;
- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate;
- (FTDeviceSupport)deviceSupport;
- (NSMutableDictionary)callUUIDsByConversationUUID;
- (NSMutableDictionary)conversationUUIDsByCallUUID;
- (NSMutableSet)conversationUUIDsWaitingToJoin;
- (id)_findPendingConversationWithCallUUID:(id)d;
- (id)callUUIDForConversationUUID:(id)d;
- (id)conversationUUIDForCallUUID:(id)d;
- (id)pendingConversationUUIDForCallWithUUID:(id)d;
- (void)associateCallUUID:(id)d withConversationUUID:(id)iD waitingToJoin:(BOOL)join;
- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context;
- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forParticipantWithHandle:(id)handle forConversation:(id)conversation;
- (void)conversationManager:(id)manager conversation:(id)conversation removedActiveParticipant:(id)participant withReason:(unint64_t)reason;
- (void)conversationManager:(id)manager reportedNewIncomingConversation:(id)conversation fromHandle:(id)handle;
- (void)dealloc;
- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsLocalHangup:(id)hangup;
- (void)enqueueConversationWaitingForAudioWithConversationUUID:(id)d;
- (void)enqueueOrStartAudioForConversationUUID:(id)d;
- (void)fullfillPendingJoinActionsForCallUUIDIfNecessary:(id)necessary;
- (void)handleAudioInterruptionPropertiesChanged:(id)changed;
- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason;
- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason;
- (void)proceedToJoinForConversation:(id)conversation action:(id)action;
- (void)provider:(id)provider didDeactivateAudioSession:(id)session;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performJoinCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider timedOutPerformingAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)removeActiveAudioSessionObjectForConversationWithUUID:(id)d;
- (void)reportNewIncomingCallForConversation:(id)conversation fromHandle:(id)handle callUUID:(id)d isReRing:(BOOL)ring invitationContext:(id)context;
- (void)reportNewIncomingCallForConversation:(id)conversation fromHandle:(id)handle isReRing:(BOOL)ring invitationContext:(id)context;
- (void)setCallUUID:(id)d forConversationUUID:(id)iD;
- (void)setConversationUUID:(id)d forCallUUID:(id)iD;
- (void)setWaitingToJoin:(BOOL)join forConversationUUID:(id)d;
- (void)startAudioForConversationsIfNecessary;
- (void)updateNetworkCriticalStateIfNecessary;
@end

@implementation CSDAbstractFaceTimeConversationProviderDelegate

- (CSDAbstractFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver
{
  resolverCopy = resolver;
  queueCopy = queue;
  managerCopy = manager;
  v11 = objc_alloc_init(TUFeatureFlags);
  v12 = objc_alloc_init(CSDSharedConversationServerBag);
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self initWithQueue:queueCopy conversationManager:managerCopy networkSupport:0 serverBag:v12 featureFlags:v11 invitationResolver:resolverCopy];

  return v13;
}

- (CSDAbstractFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver
{
  queueCopy = queue;
  managerCopy = manager;
  supportCopy = support;
  bagCopy = bag;
  flagsCopy = flags;
  resolverCopy = resolver;
  v37.receiver = self;
  v37.super_class = CSDAbstractFaceTimeConversationProviderDelegate;
  v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v37 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v20->_conversationManager, manager);
    [(CSDConversationManager *)v20->_conversationManager addDelegate:v20 queue:v20->_queue, managerCopy, queueCopy];
    if (supportCopy)
    {
      v21 = supportCopy;
    }

    else
    {
      v21 = +[FTNetworkSupport sharedInstance];
    }

    networkSupport = v20->_networkSupport;
    v20->_networkSupport = v21;

    objc_storeStrong(&v20->_serverBag, bag);
    objc_storeStrong(&v20->_invitationResolver, resolver);
    objc_storeStrong(&v20->_featureFlags, flags);
    v23 = +[NSMutableSet set];
    conversationUUIDsWaitingToJoin = v20->_conversationUUIDsWaitingToJoin;
    v20->_conversationUUIDsWaitingToJoin = v23;

    v25 = +[NSMutableDictionary dictionary];
    callUUIDsByConversationUUID = v20->_callUUIDsByConversationUUID;
    v20->_callUUIDsByConversationUUID = v25;

    v27 = +[NSMutableDictionary dictionary];
    conversationUUIDsByCallUUID = v20->_conversationUUIDsByCallUUID;
    v20->_conversationUUIDsByCallUUID = v27;

    v29 = +[NSMutableSet set];
    conversationUUIDsAwaitingActiveAudioSession = v20->_conversationUUIDsAwaitingActiveAudioSession;
    v20->_conversationUUIDsAwaitingActiveAudioSession = v29;

    v31 = +[NSMutableSet set];
    callUUIDsUpgradedForAVMode = v20->_callUUIDsUpgradedForAVMode;
    v20->_callUUIDsUpgradedForAVMode = v31;

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v20 selector:"handleAudioInterruptionPropertiesChanged:" name:@"CSDCallAudioInterruptionPropertiesChangedNotification" object:0];
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDAbstractFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v4 dealloc];
}

- (NSMutableSet)conversationUUIDsWaitingToJoin
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingToJoin = self->_conversationUUIDsWaitingToJoin;

  return conversationUUIDsWaitingToJoin;
}

- (BOOL)isWaitingToJoinForConversationUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265758;
  block[3] = &unk_10061C678;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (BOOL)_isWaitingToJoinForConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingToJoin = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingToJoin];
  LOBYTE(queue) = [conversationUUIDsWaitingToJoin containsObject:dCopy];

  return queue;
}

- (void)setWaitingToJoin:(BOOL)join forConversationUUID:(id)d
{
  joinCopy = join;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dCopy)
  {
    conversationUUIDsWaitingToJoin = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingToJoin];
    v8 = conversationUUIDsWaitingToJoin;
    if (joinCopy)
    {
      [conversationUUIDsWaitingToJoin addObject:dCopy];
    }

    else
    {
      [conversationUUIDsWaitingToJoin removeObject:dCopy];
    }
  }
}

- (NSMutableDictionary)callUUIDsByConversationUUID
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = self->_callUUIDsByConversationUUID;

  return callUUIDsByConversationUUID;
}

- (id)callUUIDForConversationUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028760;
  v16 = sub_10003292C;
  v17 = 0;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265A28;
  block[3] = &unk_10061C678;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setCallUUID:(id)d forConversationUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  [callUUIDsByConversationUUID setObject:dCopy forKeyedSubscript:iDCopy];
}

- (void)removeActiveAudioSessionObjectForConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
  [conversationUUIDsAwaitingActiveAudioSession removeObject:dCopy];
}

- (void)updateNetworkCriticalStateIfNecessary
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  allKeys = [callUUIDsByConversationUUID allKeys];
  v6 = [allKeys count];

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v6)
    {
      v9 = @"YES";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting enableCriticalReliability %@", &v11, 0xCu);
  }

  networkSupport = [(CSDAbstractFaceTimeConversationProviderDelegate *)self networkSupport];
  [networkSupport setEnableCriticalReliability:v6 != 0];
}

- (NSMutableDictionary)conversationUUIDsByCallUUID
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = self->_conversationUUIDsByCallUUID;

  return conversationUUIDsByCallUUID;
}

- (id)conversationUUIDForCallUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028760;
  v16 = sub_10003292C;
  v17 = 0;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265E5C;
  block[3] = &unk_10061C678;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setConversationUUID:(id)d forCallUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  [conversationUUIDsByCallUUID setObject:dCopy forKeyedSubscript:iDCopy];
}

- (void)handleAudioInterruptionPropertiesChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CSDCallAudioInterruptionProviderUserInfoKey"];
  v6 = [v5 isEqualToString:@"CSDCallAudioInterruptionProviderUserInfoAVAudioClient"];

  if (v6)
  {
    queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100266038;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)enqueueConversationWaitingForAudioWithConversationUUID:(id)d
{
  dCopy = d;
  conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
  [conversationUUIDsAwaitingActiveAudioSession addObject:dCopy];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self startAudioForConversationsIfNecessary];
}

- (void)enqueueOrStartAudioForConversationUUID:(id)d
{
  dCopy = d;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v5 = [conversationManager isConversationWithUUIDRedirectingAudio:dCopy];

  if (v5)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 startAudioForConversationWithUUID:dCopy];
  }

  else
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueConversationWaitingForAudioWithConversationUUID:dCopy];
  }
}

- (void)startAudioForConversationsIfNecessary
{
  if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self usesAudioSession]&& (v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isAudioSessionActive], !v3))
  {
    conversationUUIDsAwaitingActiveAudioSession2 = sub_100004778(v3);
    if (os_log_type_enabled(conversationUUIDsAwaitingActiveAudioSession2, OS_LOG_TYPE_DEFAULT))
    {
      if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self usesAudioSession])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self isAudioSessionActive])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, conversationUUIDsAwaitingActiveAudioSession2, OS_LOG_TYPE_DEFAULT, "Not starting audio for conversation: usesAudioSession: %@, isAudioSessionActive: %@", buf, 0x16u);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v5 = [conversationUUIDsAwaitingActiveAudioSession countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(conversationUUIDsAwaitingActiveAudioSession);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = sub_100004778(v5);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting audio for conversation with conversationUUID %@", buf, 0xCu);
          }

          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          [conversationManager startAudioForConversationWithUUID:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v5 = [conversationUUIDsAwaitingActiveAudioSession countByEnumeratingWithState:&v15 objects:v23 count:16];
        v6 = v5;
      }

      while (v5);
    }

    conversationUUIDsAwaitingActiveAudioSession2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    [conversationUUIDsAwaitingActiveAudioSession2 removeAllObjects];
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

- (void)associateCallUUID:(id)d withConversationUUID:(id)iD waitingToJoin:(BOOL)join
{
  joinCopy = join;
  iDCopy = iD;
  dCopy = d;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:dCopy forConversationUUID:iDCopy];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:iDCopy forCallUUID:dCopy];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:joinCopy forConversationUUID:iDCopy];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
}

- (void)conversationManager:(id)manager reportedNewIncomingConversation:(id)conversation fromHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)conversationCopy provider];
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  v13 = sub_100004778(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      v20 = 138412546;
      selfCopy = conversationCopy;
      v22 = 2112;
      v23 = handleCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Conversation manager reported a new incoming conversation %@ from handle %@", &v20, 0x16u);
    }

    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)conversationCopy UUID];
    v13 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (v13)
    {
      v18 = sub_100004778(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)conversationCopy UUID];
        v20 = 138412546;
        selfCopy = uUID2;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring new conversation %@ since we are already tracking this with call %@", &v20, 0x16u);
      }
    }

    else
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy isReRing:0 invitationContext:0];
    }
  }

  else if (v14)
  {
    v20 = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", &v20, 0x16u);
  }
}

- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forParticipantWithHandle:(id)handle forConversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v13 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v13)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v19 = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = uUID2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping to report a new call since we already have a call with UUID: %@ for conversationUUID: %@", &v19, 0x16u);
    }
  }

  else
  {
    v17 = +[NSUUID UUID];
    callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    [callUUIDsUpgradedForAVMode addObject:v17];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy callUUID:v17 isReRing:0 invitationContext:0];
  }
}

- (void)reportNewIncomingCallForConversation:(id)conversation fromHandle:(id)handle isReRing:(BOOL)ring invitationContext:(id)context
{
  ringCopy = ring;
  contextCopy = context;
  handleCopy = handle;
  conversationCopy = conversation;
  v13 = +[NSUUID UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy callUUID:v13 isReRing:ringCopy invitationContext:contextCopy];
}

- (void)reportNewIncomingCallForConversation:(id)conversation fromHandle:(id)handle callUUID:(id)d isReRing:(BOOL)ring invitationContext:(id)context
{
  ringCopy = ring;
  conversationCopy = conversation;
  handleCopy = handle;
  dCopy = d;
  contextCopy = context;
  remoteMembers = [conversationCopy remoteMembers];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_1002675BC;
  v104[3] = &unk_10061FE58;
  v17 = handleCopy;
  v105 = v17;
  v18 = conversationCopy;
  v106 = v18;
  v19 = [remoteMembers tu_containsObjectPassingTest:v104];

  if (!v19)
  {
    if (([v18 isEligibleForCall] & 1) == 0)
    {
      anyActiveParticipantHasAV = [v18 anyActiveParticipantHasAV];
      if ((anyActiveParticipantHasAV & 1) == 0)
      {
        v21 = sub_100004778(anyActiveParticipantHasAV);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        uUID = [v18 UUID];
        *buf = 138412290;
        selfCopy = uUID;
        v23 = "Conversation is not call eligible; will not report incoming call for conversation with UUID %@";
        goto LABEL_4;
      }
    }

    provider = [v18 provider];
    v26 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

    if (v26)
    {
      networkSupport = [(CSDAbstractFaceTimeConversationProviderDelegate *)self networkSupport];
      validNetworkReachable = [networkSupport validNetworkReachable];

      if (validNetworkReachable)
      {
        featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
        if (TUGreenTeaLagunaEnabled())
        {
          [v18 mergedRemoteMembers];
        }

        else
        {
          [v18 remoteMembers];
        }
        v35 = ;
        v36 = [v35 count];

        deviceSupport = [(CSDAbstractFaceTimeConversationProviderDelegate *)self deviceSupport];
        LODWORD(v35) = [deviceSupport isGreenTea];

        if (v35 && v36 >= 2)
        {
          v21 = sub_100004778(v38);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          uUID = [v18 remoteMembers];
          *buf = 138412290;
          selfCopy = uUID;
          v23 = "[WARN] GreenTea device does not support multiple remote members. remoteMembers = %@";
          goto LABEL_4;
        }

        uUID2 = [v18 UUID];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:dCopy withConversationUUID:uUID2 waitingToJoin:1];

        remoteMembers2 = [v18 remoteMembers];
        v41 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers2 count]);

        remoteMembers3 = [v18 remoteMembers];
        v102[0] = _NSConcreteStackBlock;
        v102[1] = 3221225472;
        v102[2] = sub_100267680;
        v102[3] = &unk_10061A200;
        v21 = v41;
        v103 = v21;
        [remoteMembers3 enumerateObjectsUsingBlock:v102];

        otherInvitedHandles = [v18 otherInvitedHandles];
        v44 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

        otherInvitedHandles2 = [v18 otherInvitedHandles];
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 3221225472;
        v100[2] = sub_100267734;
        v100[3] = &unk_10061C168;
        v89 = v44;
        v101 = v89;
        [otherInvitedHandles2 enumerateObjectsUsingBlock:v100];

        v46 = [[CXCallUpdate alloc] initWithTUConversation:v18];
        [v46 setRemoteParticipantHandles:v21];
        v47 = [CXHandle handleWithTUHandle:v17];
        [v46 setRemoteHandle:v47];

        [v46 setConversation:1];
        [v46 setIsReRing:ringCopy];
        featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
        nearbyFaceTimeEnabled = [featureFlags2 nearbyFaceTimeEnabled];

        if (nearbyFaceTimeEnabled)
        {
          nearbyStableDeviceIdentifiers = [contextCopy nearbyStableDeviceIdentifiers];
          if ([nearbyStableDeviceIdentifiers count])
          {

LABEL_26:
            if ([v18 isNearbySession])
            {
              v51 = v46;
              v52 = 2;
            }

            else
            {
              v51 = v46;
              v52 = 1;
            }

            [v51 setNearbyMode:v52];
            goto LABEL_35;
          }

          invitationPreferences = [v18 invitationPreferences];
          v54 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
          v90 = invitationPreferences;
          v55 = invitationPreferences;
          v56 = v54;
          if (([v55 isEqualToSet:v54] & 1) == 0)
          {

            goto LABEL_35;
          }

          localMember = [v18 localMember];
          stableDeviceIdentifier = [localMember stableDeviceIdentifier];

          if (stableDeviceIdentifier && !ringCopy)
          {
            goto LABEL_26;
          }
        }

LABEL_35:
        localSenderIdentityUUID = [v46 localSenderIdentityUUID];

        v91 = v46;
        if (!localSenderIdentityUUID)
        {
          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          localMember2 = [v18 localMember];
          handle = [localMember2 handle];
          v61 = [conversationManager senderIdentityUUIDForCallerIDHandle:handle];
          [v91 setLocalSenderIdentityUUID:v61];

          v46 = v91;
        }

        featureFlags3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
        if (-[CSDAbstractFaceTimeConversationProviderDelegate avLessSharePlayEnabled](featureFlags3, "avLessSharePlayEnabled") && ![v18 avMode])
        {
          hasVideo = [v46 hasVideo];

          if (hasVideo)
          {
            goto LABEL_40;
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          featureFlags3 = [v18 activeRemoteParticipants];
          v88 = [(CSDAbstractFaceTimeConversationProviderDelegate *)featureFlags3 countByEnumeratingWithState:&v96 objects:v107 count:16];
          if (v88)
          {
            obj = featureFlags3;
            v85 = *v97;
LABEL_54:
            v76 = 0;
            while (1)
            {
              if (*v97 != v85)
              {
                objc_enumerationMutation(obj);
              }

              v77 = *(*(&v96 + 1) + 8 * v76);
              handle2 = [v77 handle];
              v79 = [handle2 isEquivalentToHandle:v17];

              if (v79)
              {
                break;
              }

              if (v88 == ++v76)
              {
                featureFlags3 = obj;
                v88 = [(CSDAbstractFaceTimeConversationProviderDelegate *)obj countByEnumeratingWithState:&v96 objects:v107 count:16];
                if (v88)
                {
                  goto LABEL_54;
                }

                v46 = v91;
                goto LABEL_39;
              }
            }

            featureFlags3 = v77;

            v46 = v91;
            if (!featureFlags3)
            {
              goto LABEL_40;
            }

            v81 = sub_100004778(v80);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy = featureFlags3;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Incoming invite is from an participant %@, upgrading CXCallUpdate", buf, 0xCu);
            }

            [v91 updatePropertiesForVideo:{-[CSDAbstractFaceTimeConversationProviderDelegate audioVideoMode](featureFlags3, "audioVideoMode") == 2}];
          }
        }

LABEL_39:

LABEL_40:
        if ([v46 hasVideo])
        {
          remoteParticipantHandles = [v46 remoteParticipantHandles];
          v64 = [remoteParticipantHandles count];

          v65 = v64 >= 2;
          v46 = v91;
          if (v65)
          {
            [v91 setSendingVideo:{objc_msgSend(v18, "resolvedAudioVideoMode") == 2}];
          }
        }

        featureFlags4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
        if ([featureFlags4 dualSIMRingtoneEnabled])
        {
          localMember3 = [v18 localMember];
          if (localMember3)
          {
            v68 = localMember3;
            localMember4 = [v18 localMember];
            handle3 = [localMember4 handle];
            normalizedValue = [handle3 normalizedValue];
            _appearsToBePhoneNumber = [normalizedValue _appearsToBePhoneNumber];

            v46 = v91;
            if (!_appearsToBePhoneNumber)
            {
LABEL_49:
              provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
              v92[0] = _NSConcreteStackBlock;
              v92[1] = 3221225472;
              v92[2] = sub_1002677D0;
              v92[3] = &unk_10061FE80;
              v92[4] = self;
              v93 = v18;
              v94 = v46;
              v95 = dCopy;
              v74 = v46;
              [provider2 reportNewIncomingCallWithUUID:v95 update:v74 completion:v92];

              goto LABEL_50;
            }

            featureFlags4 = [v18 localMember];
            handle4 = [featureFlags4 handle];
            normalizedValue2 = [handle4 normalizedValue];
            [v91 setLocalMemberHandleValue:normalizedValue2];

            v46 = v91;
          }
        }

        goto LABEL_49;
      }

      v21 = sub_100004778(v30);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v32 = "Not reporting call since validNetworkReachable is false";
      v33 = v21;
      v34 = 2;
    }

    else
    {
      v21 = sub_100004778(v27);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      *buf = 138412546;
      selfCopy = self;
      v110 = 2112;
      v111 = v18;
      v32 = "%@ should not handle conversation: %@";
      v33 = v21;
      v34 = 22;
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    goto LABEL_50;
  }

  v21 = sub_100004778(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [v18 UUID];
    *buf = 138412290;
    selfCopy = uUID;
    v23 = "Incoming call is from associated handle; will not report incoming call for conversation with UUID %@";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
  }

LABEL_50:
}

- (void)fullfillPendingJoinActionsForCallUUIDIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
  v7 = [provider pendingCallActionsOfClass:objc_opt_class() withCallUUID:necessaryCopy];

  faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
  v9 = [faceTimeDemuxerDelegate providerDelegate:self isExclusivelyManagingCallWithUUID:necessaryCopy];

  if (v9)
  {
    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v11 = [provider2 pendingCallActionsOfClass:objc_opt_class() withCallUUID:necessaryCopy];

    v12 = [v11 count];
    if (v12)
    {
      v13 = sub_100004778(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Also going to fulfill start call actions: %@ since we are exclusively managing this call", buf, 0xCu);
      }
    }

    v14 = [v7 arrayByAddingObjectsFromArray:v11];

    v7 = v14;
  }

  if ([v7 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v22 + 1) + 8 * v19) fulfill];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v21 = [conversationUUIDsByCallUUID objectForKeyedSubscript:necessaryCopy];

  if (v21)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v21];
  }
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  if (v7 && (-[CSDAbstractFaceTimeConversationProviderDelegate conversationManager](self, "conversationManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 conversationsByUUID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v7), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    v11 = 1;
  }

  else
  {
    v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:dCopy];
  }

  return v11;
}

- (BOOL)isManagingPendingConversationForCallWithUUID:(id)d
{
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  allValues = [conversationsByUUID allValues];

  v8 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        uUID = [v12 UUID];
        v15 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];
        v16 = [v15 isEqual:dCopy];

        if (v16)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)pendingConversationUUIDForCallWithUUID:(id)d
{
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  allValues = [conversationsByUUID allValues];

  obj = allValues;
  v8 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        uUID = [v12 UUID];
        v15 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];
        v16 = [v15 isEqual:dCopy];

        if (v16)
        {
          uUID2 = [v12 UUID];
          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  uUID2 = 0;
LABEL_11:

  return uUID2;
}

- (BOOL)hasCallStartedConnectingWithUUID:(id)d
{
  dCopy = d;
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v6 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  if (v6)
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID = [conversationManager conversationsByUUID];
    v9 = [conversationsByUUID objectForKeyedSubscript:v6];

    if (v9)
    {
      v10 = ([v9 state] & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v5 = sub_100004778(elsewhereCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = elsewhereCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsAnsweredElsewhere: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:elsewhereCopy endedReason:4];
}

- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v5 = sub_100004778(elsewhereCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = elsewhereCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsDeclinedElsewhere: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:elsewhereCopy endedReason:5];
}

- (void)endCallWithUUIDAsLocalHangup:(id)hangup
{
  hangupCopy = hangup;
  v5 = sub_100004778(hangupCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = hangupCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsLocalHangup: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:hangupCopy endedReason:-1];
}

- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v10 = [callUUIDsByConversationUUID objectForKeyedSubscript:dCopy];

  if (v10)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047F424(dCopy, v10, v12);
    }

    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v10 failedAtDate:0 withContext:contextCopy];

    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v15 = +[NSDate now];
    v31 = contextCopy;
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v10 endedAtDate:v15 withReason:1 failureContext:contextCopy];

    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager leaveConversationWithUUID:dCopy];

    callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    [callUUIDsUpgradedForAVMode removeObject:v10];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v10];
    conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v32 = dCopy;
    [conversationUUIDsAwaitingActiveAudioSession removeObject:dCopy];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    pendingTransactions = [provider2 pendingTransactions];

    obj = pendingTransactions;
    v35 = [pendingTransactions countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v35)
    {
      v34 = *v41;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          actions = [v22 actions];
          v24 = [actions countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v37;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v37 != v26)
                {
                  objc_enumerationMutation(actions);
                }

                v28 = *(*(&v36 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  callUUID = [v28 callUUID];
                  v30 = [callUUID isEqual:v10];

                  if (v30)
                  {
                    [v28 fail];
                  }
                }
              }

              v25 = [actions countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v25);
          }
        }

        v35 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v35);
    }

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self endCallWithUUIDAsLocalHangup:v10];
    dCopy = v32;
    contextCopy = v31;
  }
}

- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [callUUIDsByConversationUUID copy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [v15 isEqual:dCopy];

        if (v16)
        {
          v18 = sub_100004778(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found an extra conversation that needs to be cleaned up: %@", buf, 0xCu);
          }

          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          conversationsByUUID = [conversationManager conversationsByUUID];
          v21 = [conversationsByUUID objectForKeyedSubscript:v14];

          if (v21 && ([v21 provider], v23 = objc_claimAutoreleasedReturnValue(), v24 = -[CSDAbstractFaceTimeConversationProviderDelegate shouldHandleProvider:](self, "shouldHandleProvider:", v23), v23, v24))
          {
            if ([v21 avMode])
            {
              [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v21 withCallUUID:dCopy reason:reason];
LABEL_17:

              goto LABEL_18;
            }

            v25 = sub_100004778(0);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = v21;
              v26 = v25;
              v27 = "Not leaving avless conversation on call ending %@";
              v28 = 12;
LABEL_15:
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
            }
          }

          else
          {
            v25 = sub_100004778(v22);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v36 = v14;
              v37 = 2112;
              v38 = dCopy;
              v26 = v25;
              v27 = "[WARN] Asked to clean up conversation from our list but could not find it in conversation manager list: %@ callUUID: %@";
              v28 = 22;
              goto LABEL_15;
            }
          }

          goto LABEL_17;
        }

LABEL_18:
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v29 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v11 = v29;
    }

    while (v29);
  }
}

- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason
{
  conversationCopy = conversation;
  dCopy = d;
  provider = [conversationCopy provider];
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  if (v11)
  {
    featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags avLessSharePlayEnabled] && !objc_msgSend(conversationCopy, "avMode"))
    {
      callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
      v21 = [callUUIDsUpgradedForAVMode containsObject:dCopy];

      if (v21)
      {
        v14 = sub_100004778(v22);
        if (!os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        uUID = [conversationCopy UUID];
        v23 = 138412546;
        selfCopy = dCopy;
        v25 = 2112;
        v26 = uUID;
        _os_log_impl(&_mh_execute_header, &v14->super, OS_LOG_TYPE_DEFAULT, "Not leaving conversation but stopped tracking callUUID: %@ for conversationUUID: %@", &v23, 0x16u);
LABEL_6:

LABEL_7:
        callUUIDsUpgradedForAVMode2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
        [callUUIDsUpgradedForAVMode2 removeObject:dCopy];

        uUID2 = [conversationCopy UUID];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID2];

        [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:dCopy];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:reason == 102];
    uUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID3 = [conversationCopy UUID];
    [uUID leaveConversationWithUUID:uUID3 withContext:v14];

    goto LABEL_6;
  }

  v19 = sub_100004778(v12);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    selfCopy = self;
    v25 = 2112;
    v26 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", &v23, 0x16u);
  }

LABEL_11:
}

- (FTDeviceSupport)deviceSupport
{
  deviceSupport = self->_deviceSupport;
  if (deviceSupport)
  {
    v3 = deviceSupport;
  }

  else
  {
    v3 = +[FTDeviceSupport sharedInstance];
  }

  return v3;
}

- (void)proceedToJoinForConversation:(id)conversation action:(id)action
{
  conversationCopy = conversation;
  actionCopy = action;
  provider = [conversationCopy provider];
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  if (v9)
  {
    uUID = [conversationCopy UUID];
    localMember = [conversationCopy localMember];
    handle = [localMember handle];

    if (!handle)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy fail];
      goto LABEL_64;
    }

    featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags avLessSharePlayEnabled])
    {
      avMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy avMode];

      if (!avMode)
      {
        goto LABEL_16;
      }
    }

    else
    {
      isEligibleForCall = [conversationCopy isEligibleForCall];

      if (!isEligibleForCall)
      {
        goto LABEL_16;
      }
    }

    callUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy callUUID];
    v18 = [[CXCallUpdate alloc] initWithTUConversation:conversationCopy];
    remoteParticipantHandles = [v18 remoteParticipantHandles];
    anyObject = [remoteParticipantHandles anyObject];
    [v18 setRemoteMember:anyObject];

    localSenderIdentityUUID = [v18 localSenderIdentityUUID];

    if (!localSenderIdentityUUID)
    {
      if ([conversationCopy isLocallyCreated])
      {
        initiator = [conversationCopy initiator];
      }

      else
      {
        localMember2 = [conversationCopy localMember];
        initiator = [localMember2 handle];
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager senderIdentityUUIDForCallerIDHandle:initiator];
      v26 = v25 = self;
      [v18 setLocalSenderIdentityUUID:v26];

      self = v25;
    }

    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    callUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy callUUID];
    [provider2 reportCallWithUUID:callUUID2 updated:v18];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:callUUID withConversationUUID:uUID waitingToJoin:1];
LABEL_16:
    v29 = objc_alloc_init(CSDConversationJoinContext);
    [(CSDConversationJoinContext *)v29 setShouldSuppressInCallUI:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy shouldSuppressInCallUI]];
    [(CSDConversationJoinContext *)v29 setWantsStagingArea:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy wantsStagingArea]];
    if ([(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isVideoEnabled])
    {
      featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
      if ([featureFlags2 groupFacetimeAsAServiceEnabled])
      {
        provider3 = [conversationCopy provider];
        -[CSDConversationJoinContext setVideoEnabled:](v29, "setVideoEnabled:", [provider3 supportsVideo]);
      }

      else
      {
        [(CSDConversationJoinContext *)v29 setVideoEnabled:1];
      }
    }

    else
    {
      [(CSDConversationJoinContext *)v29 setVideoEnabled:0];
    }

    [(CSDConversationJoinContext *)v29 setVideo:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isVideo]];
    [(CSDConversationJoinContext *)v29 setUpgrade:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUpgrade]];
    upgradeSessionUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy upgradeSessionUUID];
    [(CSDConversationJoinContext *)v29 setUpgradeSessionUUID:upgradeSessionUUID];

    provider4 = [conversationCopy provider];
    [(CSDConversationJoinContext *)v29 setProvider:provider4];

    [(CSDConversationJoinContext *)v29 setAvMode:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy avMode]];
    [(CSDConversationJoinContext *)v29 setPresentationMode:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy presentationMode]];
    joinCallActivity = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy joinCallActivity];
    tuActivity = [joinCallActivity tuActivity];
    [(CSDConversationJoinContext *)v29 setActivity:tuActivity];

    featureFlags3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    LODWORD(tuActivity) = [featureFlags3 nearbyFaceTimeEnabled];

    if (tuActivity)
    {
      tuParticipantCluster = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy tuParticipantCluster];
      [(CSDConversationJoinContext *)v29 setParticipantCluster:tuParticipantCluster];
    }

    featureFlags4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    uplevelFTAEnabled = [featureFlags4 uplevelFTAEnabled];

    if (uplevelFTAEnabled)
    {
      [(CSDConversationJoinContext *)v29 setUpgradeToVideo:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUpgradeToVideo]];
    }

    featureFlags5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    callScreeningEnabled = [featureFlags5 callScreeningEnabled];

    if (callScreeningEnabled)
    {
      [(CSDConversationJoinContext *)v29 setScreening:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isScreening]];
    }

    featureFlags6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags6 conversationHandoffEnabled])
    {
      associationIdentifier = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy associationIdentifier];

      if (!associationIdentifier)
      {
        goto LABEL_32;
      }

      v44 = objc_alloc_init(TUConversationParticipantAssociation);
      [(CSDConversationJoinContext *)v29 setParticipantAssociation:v44];

      associationIdentifier2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy associationIdentifier];
      unsignedLongLongValue = [associationIdentifier2 unsignedLongLongValue];
      participantAssociation = [(CSDConversationJoinContext *)v29 participantAssociation];
      [participantAssociation setIdentifier:unsignedLongLongValue];

      featureFlags6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy associationAVCIdentifier];
      participantAssociation2 = [(CSDConversationJoinContext *)v29 participantAssociation];
      [participantAssociation2 setAvcIdentifier:featureFlags6];
    }

LABEL_32:
    featureFlags7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    usesModernScreenSharingFromMessages = [featureFlags7 usesModernScreenSharingFromMessages];

    if (usesModernScreenSharingFromMessages)
    {
      tuScreenSharingRequest = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy tuScreenSharingRequest];
      [(CSDConversationJoinContext *)v29 setScreenSharingRequest:tuScreenSharingRequest];
    }

    notificationStylesByHandleType = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy notificationStylesByHandleType];
    v53 = [notificationStylesByHandleType count];

    if (v53)
    {
      v96 = v29;
      selfCopy = self;
      v98 = uUID;
      v54 = +[NSMutableSet set];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v55 = actionCopy;
      obj = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy notificationStylesByHandleType];
      v56 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v101;
        do
        {
          for (i = 0; i != v57; i = i + 1)
          {
            if (*v101 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v100 + 1) + 8 * i);
            v61 = [TUConversationInvitationPreference alloc];
            integerValue = [v60 integerValue];
            notificationStylesByHandleType2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v55 notificationStylesByHandleType];
            v64 = [notificationStylesByHandleType2 objectForKeyedSubscript:v60];
            v65 = [v61 initWithHandleType:integerValue notificationStyles:{objc_msgSend(v64, "integerValue")}];

            [v54 addObject:v65];
          }

          v57 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
        }

        while (v57);
      }

      v66 = v54;
      v67 = [v54 copy];
      v29 = v96;
      [(CSDConversationJoinContext *)v96 setInvitationPreferences:v67];

      v69 = sub_100004778(v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        invitationPreferences = [(CSDConversationJoinContext *)v96 invitationPreferences];
        *buf = 138412290;
        selfCopy2 = invitationPreferences;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Invitation preferences were set on the action, using those for the join context: %@", buf, 0xCu);
      }

      uUID = v98;
      actionCopy = v55;
      self = selfCopy;
    }

    else
    {
      invitationPreferences2 = [conversationCopy invitationPreferences];

      if (!invitationPreferences2)
      {
        goto LABEL_46;
      }

      invitationPreferences3 = [conversationCopy invitationPreferences];
      v93 = [invitationPreferences3 copy];
      [(CSDConversationJoinContext *)v29 setInvitationPreferences:v93];

      v66 = sub_100004778(v94);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        invitationPreferences4 = [(CSDConversationJoinContext *)v29 invitationPreferences];
        *buf = 138412290;
        selfCopy2 = invitationPreferences4;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Invitation preferences weren't set on the action but existed on the conversation, using those for the join context: %@", buf, 0xCu);
      }
    }

LABEL_46:
    collaborationIdentifier = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy collaborationIdentifier];

    if (collaborationIdentifier)
    {
      collaborationIdentifier2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy collaborationIdentifier];
      [(CSDConversationJoinContext *)v29 setCollaborationIdentifier:collaborationIdentifier2];
    }

    callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    callUUID3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy callUUID];
    v75 = [callUUIDsUpgradedForAVMode containsObject:callUUID3];

    if (([(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUpgrade]& 1) == 0)
    {
      v75 |= [conversationCopy isOneToOneModeEnabled] ^ 1;
    }

    if (+[AVAudioClient hasActiveAudioSession]|| (v75 & 1) == 0)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:1];
    }

    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    messagesGroupName = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy messagesGroupName];
    [conversationManager2 setMessagesGroupName:messagesGroupName onConversationWithUUID:uUID];

    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID2 = [conversationCopy UUID];
    [conversationManager3 joinExistingConversationWithUUID:uUID2 context:v29];

    conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager4 setRelaying:-[CSDAbstractFaceTimeConversationProviderDelegate isRelay](actionCopy forConversationWithUUID:{"isRelay"), uUID}];

    featureFlags8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    LODWORD(uUID2) = TUCallScreeningEnabled();

    if (uUID2)
    {
      conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager5 setScreening:-[CSDAbstractFaceTimeConversationProviderDelegate isScreening](actionCopy forConversationWithUUID:{"isScreening"), uUID}];
    }

    isUplinkMuted = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUplinkMuted];
    if (isUplinkMuted)
    {
      v84 = sub_100004778(isUplinkMuted);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = actionCopy;
        v107 = 2112;
        v108 = conversationCopy;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Setting uplinkMuted for action: %@ conversation: %@", buf, 0x16u);
      }

      conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID3 = [conversationCopy UUID];
      [conversationManager6 setUplinkMuted:1 forConversationWithUUID:uUID3];
    }

    conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v88 = [conversationManager7 isConversationWithUUIDRedirectingAudio:uUID];

    if ((v88 & 1) == 0)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueConversationWaitingForAudioWithConversationUUID:uUID];
    }

    conversationManager8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v90 = [conversationManager8 isConversationWithUUIDRelaying:uUID];

    if (v90)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:uUID];
    }

    goto LABEL_64;
  }

  uUID = sub_100004778(v10);
  if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v107 = 2112;
    v108 = conversationCopy;
    _os_log_impl(&_mh_execute_header, uUID, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", buf, 0x16u);
  }

LABEL_64:
}

- (void)conversationManager:(id)manager conversation:(id)conversation removedActiveParticipant:(id)participant withReason:(unint64_t)reason
{
  managerCopy = manager;
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100269B9C;
  v27 = &unk_10061FEA8;
  objc_copyWeak(&v32, &location);
  v14 = conversationCopy;
  v28 = v14;
  v15 = participantCopy;
  v29 = v15;
  v16 = managerCopy;
  v30 = v16;
  selfCopy = self;
  v17 = objc_retainBlock(&v24);
  v18 = v17;
  if (reason == 1)
  {
    v19 = sub_100004778(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delaying check on whether to end call since participant %@ left conversation due to handoff", buf, 0xCu);
    }

    v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag:v24];
    v21 = dispatch_time(0, 1000000000 * [v20 handoffUPlusOneLeaveTimeout]);
    queue2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
    dispatch_after(v21, queue2, v18);
  }

  else
  {
    v23 = sub_100004778(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Not delaying check on whether to end call on participant leave", buf, 2u);
    }

    (v18[2])(v18);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (BOOL)shouldAutomaticallyLeaveConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self isConversationJoiningOrJoined:conversationCopy])
  {
    remoteMembers = [conversationCopy remoteMembers];
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    if ([remoteMembers count] == 1 && !objc_msgSend(activeRemoteParticipants, "count"))
    {
      goto LABEL_9;
    }

    featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags oneToOneFaceTimeMyselfEnabled])
    {
      serverBag = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag];
      isFaceTimeMyselfEnabled = [serverBag isFaceTimeMyselfEnabled];

      if (isFaceTimeMyselfEnabled && ![remoteMembers count] && !objc_msgSend(activeRemoteParticipants, "count") && (objc_msgSend(conversationCopy, "isOneToOneModeEnabled") & 1) != 0)
      {
LABEL_9:
        v10 = 1;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
    }

    featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    lagunaEnabled = [featureFlags2 lagunaEnabled];

    if (!lagunaEnabled)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v13 = [remoteMembers bs_filter:&stru_10061FEE8];
    if ([v13 count] != 1)
    {
      goto LABEL_18;
    }

    v14 = [activeRemoteParticipants count];
    if (!v14)
    {
      v10 = 1;
      goto LABEL_19;
    }

    if (v14 == 1)
    {
      anyObject = [activeRemoteParticipants anyObject];
      v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isLocalMemberOf:conversationCopy associatedTo:anyObject];
    }

    else
    {
LABEL_18:
      v10 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (BOOL)isLocalMemberOf:(id)of associatedTo:(id)to
{
  ofCopy = of;
  handle = [to handle];
  if (handle)
  {
    localMember = [ofCopy localMember];
    association = [localMember association];

    if (association)
    {
      handle2 = [association handle];
      v10 = [handle2 isEquivalentToHandle:handle];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = beginCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "providerDidBegin: %@", &v10, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setProvider:beginCopy];
  providerDidBegin = [(CSDAbstractFaceTimeConversationProviderDelegate *)self providerDidBegin];

  if (providerDidBegin)
  {
    providerDidBegin2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self providerDidBegin];
    providerDidBegin2[2]();
  }
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = resetCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "providerDidReset: %@", &v9, 0xCu);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager leaveAllConversations];
}

- (void)provider:(id)provider didDeactivateAudioSession:(id)session
{
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue:provider];
  dispatch_assert_queue_V2(v5);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "providerDidDeactivateAudioSession", v8, 2u);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:0];
}

- (void)provider:(id)provider timedOutPerformingAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = actionCopy;
    conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
    callUUID = [v5 callUUID];
    v8 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

    if (v8)
    {
      v9 = objc_alloc_init(CXCallFailureContext);
      [v9 setFailureReason:0];
      [v9 setProviderEndedReason:503];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v8 failureContext:v9];
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
    v21 = 138412290;
    v22 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing end call action %@", &v21, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v11 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v14 = [conversationsByUUID objectForKeyedSubscript:v11];

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _findPendingConversationWithCallUUID:callUUID];
  if (v15)
  {
    v14 = v15;
LABEL_6:
    if ([v14 avMode])
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v14 withCallUUID:callUUID reason:-1];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:callUUID endedReason:-1];
    }

    else
    {
      v16 = sub_100004778(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received an end call action for avLess conversation, not leaving the conversation but call will end", &v21, 2u);
      }
    }

    [actionCopy fulfill];

    goto LABEL_12;
  }

  v17 = sub_100004778(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID2 = [conversationManager2 conversationsByUUID];
    v21 = 138412802;
    v22 = callUUID;
    v23 = 2112;
    v24 = conversationUUIDsByCallUUID2;
    v25 = 2112;
    v26 = conversationsByUUID2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for end call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v21, 0x20u);
  }

  [actionCopy fail];
LABEL_12:
}

- (void)provider:(id)provider performJoinCallAction:(id)action
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

- (void)provider:(id)provider performSetMutedCallAction:(id)action
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
    [conversationManager2 setUplinkMuted:objc_msgSend(actionCopy forConversationWithUUID:{"isMuted"), v11}];
  }

  else
  {
    callUUID2 = [actionCopy callUUID];
    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:callUUID2];

    if (!v17)
    {
      [actionCopy fail];
      goto LABEL_8;
    }

    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    isMuted = [actionCopy isMuted];
    callUUID3 = [actionCopy callUUID];
    v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self pendingConversationUUIDForCallWithUUID:callUUID3];
    [conversationManager3 setUplinkMuted:isMuted forPendingConversationWithUUID:v21];
  }

  [actionCopy fulfill];
LABEL_8:
}

- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTimeDemuxerDelegate);

  return WeakRetained;
}

@end