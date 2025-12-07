@interface MRExpanseManager
+ (MRExpanseManager)sharedManager;
- (BOOL)activeActivityExistsForBundle:(id)bundle;
- (BOOL)canAddTelevisionWithRouteIdentifierToSession:(id)session;
- (BOOL)deviceIsActiveTelevision:(id)television;
- (BOOL)expanseHandoffSupported;
- (BOOL)expanseSessionActive;
- (BOOL)expanseSessionHasActiveActivity;
- (BOOL)expanseSessionHasRemoteActivity;
- (BOOL)expanseSessionHasScreenSharingActivity;
- (MRExpanseManager)initWithQueue:(id)queue;
- (NSString)activeTelevisionRouteID;
- (id)activeConversation;
- (void)_handleConversationStateChanged;
- (void)_handleExpanseSessionJoined;
- (void)_handleExpanseSessionLeft;
- (void)_notifyObserversThatExpanseSessionJoined;
- (void)_notifyObserversThatExpanseSessionLeft;
- (void)_notifyObserversThatTelevisionJoinedSession;
- (void)_notifyObserversThatTelevisionLeftSession;
- (void)addObserver:(id)observer;
- (void)addTelevisionWithRouteIdentifierToSession:(id)session completion:(id)completion;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)neighborhoodActivityConduit:(id)conduit splitSessionEnded:(id)ended;
- (void)neighborhoodActivityConduit:(id)conduit splitSessionStarted:(id)started;
- (void)removeObserver:(id)observer;
- (void)removeTelevisionWithRouteIdentifierFromSession:(id)session completion:(id)completion;
- (void)serverDisconnectedForConversationManager:(id)manager;
@end

@implementation MRExpanseManager

+ (MRExpanseManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MRExpanseManager sharedManager];
  }

  v3 = sharedManager___manager;

  return v3;
}

- (BOOL)expanseSessionHasScreenSharingActivity
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  activeConversation = [(MRExpanseManager *)self activeConversation];
  activitySessions = [activeConversation activitySessions];

  v4 = [activitySessions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(activitySessions);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 state] == 1)
        {
          v9 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Local activity found.", v15, 2u);
          }

          activity = [v8 activity];
          isScreenSharingActivity = [activity isScreenSharingActivity];

          if (isScreenSharingActivity)
          {
            v13 = _MRLogForCategory(2uLL);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v15 = 0;
              _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Local screen sharing activity found.", v15, 2u);
            }

            v12 = 1;
            goto LABEL_18;
          }
        }
      }

      v5 = [activitySessions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  activitySessions = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(activitySessions, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1A2860000, activitySessions, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] No screen sharing activity found.", v15, 2u);
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)activeConversation
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  conversationManager = [(MRExpanseManager *)self conversationManager];
  activeConversations = [conversationManager activeConversations];

  v4 = [activeConversations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(activeConversations);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 state] == 3)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [activeConversations countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

void __33__MRExpanseManager_sharedManager__block_invoke()
{
  v0 = [MRExpanseManager alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.amp.MediaRemote.MRExpanseManager.shared", v4);
  v2 = [(MRExpanseManager *)v0 initWithQueue:v1];
  v3 = sharedManager___manager;
  sharedManager___manager = v2;
}

- (MRExpanseManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = MRExpanseManager;
  v6 = [(MRExpanseManager *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.amp.MediaRemote.MRExpanseManager.notifyQueue", v8);
    notifyQueue = v7->_notifyQueue;
    v7->_notifyQueue = v9;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v13 = getTUConversationManagerClass_softClass;
    v31 = getTUConversationManagerClass_softClass;
    if (!getTUConversationManagerClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getTUConversationManagerClass_block_invoke;
      v26 = &unk_1E769ADA8;
      v27 = &v28;
      __getTUConversationManagerClass_block_invoke(&v23);
      v13 = v29[3];
    }

    v14 = v13;
    _Block_object_dispose(&v28, 8);
    v15 = objc_opt_new();
    conversationManager = v7->_conversationManager;
    v7->_conversationManager = v15;

    [(TUConversationManager *)v7->_conversationManager addDelegate:v7 queue:v7->_queue];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v17 = getTUNeighborhoodActivityConduitClass_softClass;
    v31 = getTUNeighborhoodActivityConduitClass_softClass;
    if (!getTUNeighborhoodActivityConduitClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getTUNeighborhoodActivityConduitClass_block_invoke;
      v26 = &unk_1E769ADA8;
      v27 = &v28;
      __getTUNeighborhoodActivityConduitClass_block_invoke(&v23);
      v17 = v29[3];
    }

    v18 = v17;
    _Block_object_dispose(&v28, 8);
    v19 = [[v17 alloc] initWithConversationManager:v7->_conversationManager];
    conduit = v7->_conduit;
    v7->_conduit = v19;

    [(TUNeighborhoodActivityConduit *)v7->_conduit addDelegate:v7 queue:v7->_queue];
  }

  return v7;
}

- (void)dealloc
{
  conduit = [(MRExpanseManager *)self conduit];
  [conduit removeDelegate:self];

  conversationManager = [(MRExpanseManager *)self conversationManager];
  [conversationManager removeDelegate:self];

  v5.receiver = self;
  v5.super_class = MRExpanseManager;
  [(MRExpanseManager *)&v5 dealloc];
}

- (BOOL)activeActivityExistsForBundle:(id)bundle
{
  v22 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  activeConversation = [(MRExpanseManager *)self activeConversation];
  activitySessions = [activeConversation activitySessions];

  v7 = [activitySessions countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(activitySessions);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 state] == 1 || objc_msgSend(v10, "state") == 4)
        {
          activity = [v10 activity];
          bundleIdentifier = [activity bundleIdentifier];
          isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier);

          if (isEqualToString)
          {
            v7 = _MRLogForCategory(2uLL);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v20 = bundleCopy;
              _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Found active activity for %{private}@", buf, 0xCu);
            }

            LOBYTE(v7) = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [activitySessions countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v7;
}

- (NSString)activeTelevisionRouteID
{
  conduit = [(MRExpanseManager *)self conduit];
  activeSplitSessionTV = [conduit activeSplitSessionTV];
  v4 = [activeSplitSessionTV identifierWithType:1];

  return v4;
}

- (BOOL)deviceIsActiveTelevision:(id)television
{
  v21 = *MEMORY[0x1E69E9840];
  televisionCopy = television;
  activeTelevisionRouteID = [(MRExpanseManager *)self activeTelevisionRouteID];
  if (activeTelevisionRouteID)
  {
    if ([televisionCopy deviceSubtype] != 15)
    {
      v14 = [televisionCopy uid];
      isEqualToString = objc_msgSend_isEqualToString_(v14);

      goto LABEL_15;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    clusterComposition = [televisionCopy clusterComposition];
    v7 = [clusterComposition countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(clusterComposition);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) uid];
          v12 = objc_msgSend_isEqualToString_(v11);

          if (v12)
          {

            isEqualToString = 1;
            goto LABEL_15;
          }
        }

        v8 = [clusterComposition countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  isEqualToString = 0;
LABEL_15:

  return isEqualToString;
}

- (BOOL)expanseHandoffSupported
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  activeConversation = [(MRExpanseManager *)self activeConversation];
  activitySessions = [activeConversation activitySessions];

  v4 = [activitySessions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(activitySessions);
        }

        activity = [*(*(&v15 + 1) + 8 * i) activity];
        metadata = [activity metadata];
        supportsContinuationOnTV = [metadata supportsContinuationOnTV];

        if (supportsContinuationOnTV)
        {
          v12 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Found activity to continue on TV.", v14, 2u);
          }

          v11 = 1;
          goto LABEL_15;
        }
      }

      v5 = [activitySessions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  activitySessions = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(activitySessions, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A2860000, activitySessions, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Found no activity to continue on TV.", v14, 2u);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)expanseSessionActive
{
  activeConversation = [(MRExpanseManager *)self activeConversation];
  v3 = activeConversation != 0;

  return v3;
}

- (BOOL)expanseSessionHasActiveActivity
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeConversation = [(MRExpanseManager *)self activeConversation];
  activitySessions = [activeConversation activitySessions];

  v4 = [activitySessions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(activitySessions);
        }

        if ([*(*(&v12 + 1) + 8 * i) state] == 1)
        {
          v9 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Local activity found.", v11, 2u);
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [activitySessions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  activitySessions = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(activitySessions, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A2860000, activitySessions, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] No local activity found.", v11, 2u);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (BOOL)expanseSessionHasRemoteActivity
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeConversation = [(MRExpanseManager *)self activeConversation];
  activitySessions = [activeConversation activitySessions];

  v4 = [activitySessions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(activitySessions);
        }

        if ([*(*(&v12 + 1) + 8 * i) state] == 4)
        {
          v9 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Remote activity found.", v11, 2u);
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [activitySessions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  activitySessions = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(activitySessions, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A2860000, activitySessions, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] No remote activity found.", v11, 2u);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (BOOL)canAddTelevisionWithRouteIdentifierToSession:(id)session
{
  sessionCopy = session;
  v5 = [objc_alloc(getTUNearbyDeviceHandleClass()) initWithType:1 identifier:sessionCopy name:0];

  conduit = [(MRExpanseManager *)self conduit];
  nearbyTVDeviceHandles = [conduit nearbyTVDeviceHandles];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MRExpanseManager_canAddTelevisionWithRouteIdentifierToSession___block_invoke;
  v11[3] = &unk_1E769BB50;
  v12 = v5;
  v8 = v5;
  v9 = [nearbyTVDeviceHandles msv_firstWhere:v11];

  return v9 != 0;
}

- (void)addTelevisionWithRouteIdentifierToSession:(id)session completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  completionCopy = completion;
  activeConversation = [(MRExpanseManager *)self activeConversation];
  v9 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [activeConversation UUID];
    *buf = 138412546;
    v18 = sessionCopy;
    v19 = 2112;
    v20 = uUID;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Adding television with route ID: %@ to conversation %@", buf, 0x16u);
  }

  v11 = [objc_alloc(getTUNearbyDeviceHandleClass()) initWithType:1 identifier:sessionCopy name:0];
  conduit = [(MRExpanseManager *)self conduit];
  uUID2 = [activeConversation UUID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__MRExpanseManager_addTelevisionWithRouteIdentifierToSession_completion___block_invoke;
  v15[3] = &unk_1E769BB78;
  v16 = completionCopy;
  v14 = completionCopy;
  [conduit inviteTVDevice:v11 toConversation:uUID2 completion:v15];
}

void __73__MRExpanseManager_addTelevisionWithRouteIdentifierToSession_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television add completed with error: %{private}@", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

- (void)removeTelevisionWithRouteIdentifierFromSession:(id)session completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  completionCopy = completion;
  v8 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = sessionCopy;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Removing television with route ID: %@", buf, 0xCu);
  }

  v9 = [objc_alloc(getTUNearbyDeviceHandleClass()) initWithType:1 identifier:sessionCopy name:0];
  conduit = [(MRExpanseManager *)self conduit];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__MRExpanseManager_removeTelevisionWithRouteIdentifierFromSession_completion___block_invoke;
  v12[3] = &unk_1E769BB78;
  v13 = completionCopy;
  v11 = completionCopy;
  [conduit disconnectTVDevice:v9 completion:v12];
}

void __78__MRExpanseManager_removeTelevisionWithRouteIdentifierFromSession_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television removal completed with error: %{private}@", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    observers = [(MRExpanseManager *)selfCopy observers];
    [observers addObject:v7];

    objc_sync_exit(selfCopy);
    observerCopy = v7;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    observers = [(MRExpanseManager *)selfCopy observers];
    [observers removeObject:v7];

    objc_sync_exit(selfCopy);
    observerCopy = v7;
  }
}

- (void)_notifyObserversThatTelevisionJoinedSession
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(MRExpanseManager *)selfCopy observers];
  v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          notifyQueue = [(MRExpanseManager *)selfCopy notifyQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __63__MRExpanseManager__notifyObserversThatTelevisionJoinedSession__block_invoke;
          v9[3] = &unk_1E769A4A0;
          v9[4] = v7;
          v9[5] = selfCopy;
          dispatch_async(notifyQueue, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)_notifyObserversThatTelevisionLeftSession
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(MRExpanseManager *)selfCopy observers];
  v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          notifyQueue = [(MRExpanseManager *)selfCopy notifyQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __61__MRExpanseManager__notifyObserversThatTelevisionLeftSession__block_invoke;
          v9[3] = &unk_1E769A4A0;
          v9[4] = v7;
          v9[5] = selfCopy;
          dispatch_async(notifyQueue, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)_notifyObserversThatExpanseSessionJoined
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(MRExpanseManager *)selfCopy observers];
  v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          notifyQueue = [(MRExpanseManager *)selfCopy notifyQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __60__MRExpanseManager__notifyObserversThatExpanseSessionJoined__block_invoke;
          v9[3] = &unk_1E769A4A0;
          v9[4] = v7;
          v9[5] = selfCopy;
          dispatch_async(notifyQueue, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)_notifyObserversThatExpanseSessionLeft
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(MRExpanseManager *)selfCopy observers];
  v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(observers);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          notifyQueue = [(MRExpanseManager *)selfCopy notifyQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __58__MRExpanseManager__notifyObserversThatExpanseSessionLeft__block_invoke;
          v9[3] = &unk_1E769A4A0;
          v9[4] = v7;
          v9[5] = selfCopy;
          dispatch_async(notifyQueue, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleExpanseSessionJoined
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  selfCopy = self;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRExpanseManager] Failed to set category for audio session, route picking likely to malfunction. Error: %{private}@.", &v2, 0xCu);
}

- (void)_handleExpanseSessionLeft
{
  obj = self;
  objc_sync_enter(obj);
  auxiliaryPlaybackAudioSession = [(MRExpanseManager *)obj auxiliaryPlaybackAudioSession];

  if (auxiliaryPlaybackAudioSession)
  {
    [(MRExpanseManager *)obj setAuxiliaryPlaybackAudioSession:0];
    [(MRExpanseManager *)obj _notifyObserversThatExpanseSessionLeft];
  }

  objc_sync_exit(obj);
}

- (void)_handleConversationStateChanged
{
  if ([(MRExpanseManager *)self expanseSessionActive])
  {

    [(MRExpanseManager *)self _handleExpanseSessionJoined];
  }

  else
  {

    [(MRExpanseManager *)self _handleExpanseSessionLeft];
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v8 = 138412546;
    v9 = uUID;
    v10 = 2048;
    state = [conversationCopy state];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Conversation %@ state changed to %ld", &v8, 0x16u);
  }

  [(MRExpanseManager *)self _handleConversationStateChanged];
}

- (void)serverDisconnectedForConversationManager:(id)manager
{
  v4 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MRExpanseManager serverDisconnectedForConversationManager:v4];
  }

  [(MRExpanseManager *)self _handleConversationStateChanged];
}

- (void)neighborhoodActivityConduit:(id)conduit splitSessionStarted:(id)started
{
  v11 = *MEMORY[0x1E69E9840];
  startedCopy = started;
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138478083;
    v8 = startedCopy;
    v9 = 1024;
    expanseSessionHasRemoteActivity = [(MRExpanseManager *)self expanseSessionHasRemoteActivity];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television joined split session: %{private}@, remoteActivity: %{BOOL}u", &v7, 0x12u);
  }

  [(MRExpanseManager *)self _notifyObserversThatTelevisionJoinedSession];
}

- (void)neighborhoodActivityConduit:(id)conduit splitSessionEnded:(id)ended
{
  v11 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138478083;
    v8 = endedCopy;
    v9 = 1024;
    expanseSessionHasActiveActivity = [(MRExpanseManager *)self expanseSessionHasActiveActivity];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television left split session: %{private}@, localActivity: %{BOOL}u", &v7, 0x12u);
  }

  [(MRExpanseManager *)self _notifyObserversThatTelevisionLeftSession];
}

@end