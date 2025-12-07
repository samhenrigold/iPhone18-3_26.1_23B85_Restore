@interface CSDConversationNoticeManager
- (CSDConversationNoticeDelegate)delegate;
- (CSDConversationNoticeManager)initWithDelegate:(id)delegate queue:(id)queue;
- (id)fetchUpcomingNoticeFromQueue;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)removeConversationNoticeWithUUID:(id)d;
@end

@implementation CSDConversationNoticeManager

- (CSDConversationNoticeManager)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CSDConversationNoticeManager;
  v8 = [(CSDConversationNoticeManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc_init(FBSOpenApplicationService);
    service = v9->_service;
    v9->_service = v10;
  }

  return v9;
}

- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  queue = [(CSDConversationNoticeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [eventCopy session];
  activity = [session activity];
  isSystemActivity = [activity isSystemActivity];

  if (isSystemActivity)
  {
    v13 = sub_100004778(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [eventCopy sessionUUID];
      *buf = 138412290;
      v68 = sessionUUID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring event for session %@, since the activity is a system group activity", buf, 0xCu);
    }
  }

  else
  {
    v15 = [TUConversationNotice alloc];
    v16 = +[NSUUID UUID];
    v13 = [v15 initWithUUID:v16];

    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [eventCopy description];
      *buf = 138412290;
      v68 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received TUConversationActivityEvent: %@", buf, 0xCu);
    }

    sessionUUID2 = [eventCopy sessionUUID];
    [v13 setSessionUUID:sessionUUID2];

    type = [eventCopy type];
    switch(type)
    {
      case 1uLL:
        v22 = v13;
        v23 = 1;
        goto LABEL_22;
      case 2uLL:
        v22 = v13;
        v23 = 2;
        goto LABEL_22;
      case 3uLL:
        v22 = v13;
        v23 = 3;
        goto LABEL_22;
      case 4uLL:
        v24 = v13;
        v25 = 4;
        goto LABEL_20;
      case 5uLL:
        v22 = v13;
        v23 = 5;
        goto LABEL_22;
      case 6uLL:
        v22 = v13;
        v23 = 6;
        goto LABEL_22;
      case 7uLL:
        v24 = v13;
        v25 = 7;
        goto LABEL_20;
      case 8uLL:
        v22 = v13;
        v23 = 8;
        goto LABEL_22;
      case 9uLL:
        goto LABEL_23;
      case 0xAuLL:
        [v13 setSessionEventType:10];
        item = [eventCopy item];
        [v13 setItem:item];

        queueItemType = [eventCopy queueItemType];
        if (queueItemType == 2)
        {
          v59 = v13;
          v60 = 2;
        }

        else if (queueItemType == 1)
        {
          v59 = v13;
          v60 = 1;
        }

        else
        {
          if (queueItemType)
          {
            goto LABEL_23;
          }

          v59 = v13;
          v60 = 0;
        }

        [v59 setQueueItemType:v60];
LABEL_23:
        v62 = conversationCopy;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        tuActivitySessions = [conversationCopy tuActivitySessions];
        v28 = [tuActivitySessions countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (!v28)
        {
          goto LABEL_33;
        }

        v29 = v28;
        v30 = *v64;
        break;
      case 0xBuLL:
        v22 = v13;
        v23 = 11;
        goto LABEL_22;
      case 0xCuLL:
        v22 = v13;
        v23 = 12;
        goto LABEL_22;
      case 0xDuLL:
        v24 = v13;
        v25 = 13;
        goto LABEL_20;
      case 0xEuLL:
        v22 = v13;
        v23 = 14;
LABEL_22:
        [v22 setSessionEventType:v23];
        goto LABEL_23;
      default:
        if (type == 99)
        {
          v24 = v13;
          v25 = 99;
LABEL_20:
          [v24 setSessionEventType:v25];
          item2 = [eventCopy item];
          [v13 setItem:item2];
        }

        goto LABEL_23;
    }

    while (2)
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v64 != v30)
        {
          objc_enumerationMutation(tuActivitySessions);
        }

        v32 = *(*(&v63 + 1) + 8 * i);
        uUID = [v32 UUID];
        sessionUUID3 = [v13 sessionUUID];
        v35 = [uUID isEqual:sessionUUID3];

        if (v35)
        {
          activity2 = [v32 activity];
          bundleIdentifier = [activity2 bundleIdentifier];
          [v13 setBundleIdentifier:bundleIdentifier];

          goto LABEL_33;
        }
      }

      v29 = [tuActivitySessions countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }

LABEL_33:

    bundleIdentifier2 = [v13 bundleIdentifier];
    v39 = [bundleIdentifier2 length];

    if (!v39)
    {
      session2 = [eventCopy session];
      activity3 = [session2 activity];
      bundleIdentifier3 = [activity3 bundleIdentifier];
      [v13 setBundleIdentifier:bundleIdentifier3];
    }

    session3 = [eventCopy session];
    [v13 setSession:session3];

    v44 = [eventCopy url];
    [v13 setActionURL:v44];

    bundleIdentifier4 = [v13 bundleIdentifier];

    if (bundleIdentifier4)
    {
      originator = [eventCopy originator];
      isLightweight = [originator isLightweight];
      conversationCopy = v62;
      if (isLightweight)
      {
        v49 = sub_100004778(isLightweight);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v13;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Notice %@ is from a lightweightMember, trying to translate", buf, 0xCu);
        }

        tuConversation = [v62 tuConversation];
        handle = [originator handle];
        v52 = [tuConversation remoteParticipantForLightweightParticipantHandle:handle];

        if (v52)
        {
          v53 = v52;

          originator = v53;
        }
      }

      v54 = objc_autoreleasePoolPush();
      v55 = sub_100004778(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v68 = v13;
        v69 = 2112;
        v70 = eventCopy;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Posting notice: %@ for event: %@", buf, 0x16u);
      }

      delegate = [v61 delegate];
      [delegate noticeManager:v61 conversation:v62 participant:originator addedNotice:v13];

      objc_autoreleasePoolPop(v54);
    }

    else
    {
      originator = sub_100004778(v46);
      conversationCopy = v62;
      if (os_log_type_enabled(originator, OS_LOG_TYPE_ERROR))
      {
        sub_10047ABCC(v13, originator);
      }
    }
  }
}

- (id)fetchUpcomingNoticeFromQueue
{
  v2 = sub_100004778(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching notices is a no-op", v4, 2u);
  }

  return 0;
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  queue = [(CSDConversationNoticeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = lCopy;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activating conversation notice with URL: %@ and bundleID %@", buf, 0x16u);
  }

  if (lCopy && identifierCopy)
  {
    service = [(CSDConversationNoticeManager *)self service];
    v19 = FBSOpenApplicationOptionKeyPayloadURL;
    v20 = lCopy;
    v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [FBSOpenApplicationOptions optionsWithDictionary:v13];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001E5950;
    v16[3] = &unk_10061E278;
    v17 = identifierCopy;
    v18 = lCopy;
    [service openApplication:v17 withOptions:v14 completion:v16];

    v15 = v17;
  }

  else
  {
    v15 = sub_100004778(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = lCopy;
      v23 = 2112;
      v24 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Error activating conversation notice. Could not find action url %@ or bundleID %@", buf, 0x16u);
    }
  }
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing conversation notice is a no-op", v4, 2u);
  }
}

- (CSDConversationNoticeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end