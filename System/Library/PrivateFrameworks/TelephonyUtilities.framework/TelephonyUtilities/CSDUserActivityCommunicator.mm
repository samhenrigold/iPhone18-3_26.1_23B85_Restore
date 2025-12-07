@interface CSDUserActivityCommunicator
- (CSDUserActivity)currentlyBroadcastedActivity;
- (CSDUserActivityCommunicator)init;
- (CSDUserActivityCommunicatorDelegate)delegate;
- (id)_untrackListenedActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring;
- (id)queuedActivitiesOfType:(unsigned int)type;
- (void)_broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize;
- (void)_listenForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)_stopBroadcastingActivity:(id)activity;
- (void)_stopListeningForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)_stopListeningForActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring;
- (void)_stopListeningForBestAppSuggestionIfAppropriate;
- (void)_trackListenedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)_untrackListenedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)_updateCurrentlyBroadcastedActivity;
- (void)bestAppSuggestionChanged:(id)changed;
- (void)broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize;
- (void)listenForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)stopBroadcastingActivity:(id)activity;
- (void)stopListeningForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (void)stopListeningForActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring;
@end

@implementation CSDUserActivityCommunicator

- (void)_updateCurrentlyBroadcastedActivity
{
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  currentlyBroadcastedActivity = self->_currentlyBroadcastedActivity;
  activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
  firstObject = [activityQueue firstObject];

  if (currentlyBroadcastedActivity != firstObject)
  {
    activityQueue2 = [(CSDUserActivityCommunicator *)self activityQueue];
    firstObject2 = [activityQueue2 firstObject];
    v9 = self->_currentlyBroadcastedActivity;
    self->_currentlyBroadcastedActivity = firstObject2;

    userActivity = [(CSDUserActivity *)self->_currentlyBroadcastedActivity userActivity];
    [userActivity becomeCurrent];

    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_currentlyBroadcastedActivity;
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updated currently broadcasted activity to %@", &v14, 0xCu);
    }
  }
}

- (void)_stopListeningForBestAppSuggestionIfAppropriate
{
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
  allKeys = [listeningIdentifiersByActivityType allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if (+[CSDUserActivity activityTypeRequiresBestAppSuggestionListener:](CSDUserActivity, "activityTypeRequiresBestAppSuggestionListener:", [v10 intValue]))
      {
        listeningIdentifiersByActivityType2 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
        v12 = [listeningIdentifiersByActivityType2 objectForKeyedSubscript:v10];
        v13 = [v12 count];

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stopped listening for best app suggestions", v16, 2u);
    }

    allKeys = [(CSDUserActivityCommunicator *)self bestAppSuggestionManager];
    [allKeys stopListeningForBestAppSuggestions];
  }
}

- (CSDUserActivityCommunicator)init
{
  v9.receiver = self;
  v9.super_class = CSDUserActivityCommunicator;
  v2 = [(CSDUserActivityCommunicator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.useractivitycommunicator", 0);
    [(CSDUserActivityCommunicator *)v2 setQueue:v3];

    v4 = +[NSMutableOrderedSet orderedSet];
    [(CSDUserActivityCommunicator *)v2 setActivityQueue:v4];

    v5 = +[NSMutableDictionary dictionary];
    [(CSDUserActivityCommunicator *)v2 setListeningIdentifiersByActivityType:v5];

    v6 = objc_alloc_init(UABestAppSuggestionManager);
    [(CSDUserActivityCommunicator *)v2 setBestAppSuggestionManager:v6];

    bestAppSuggestionManager = [(CSDUserActivityCommunicator *)v2 bestAppSuggestionManager];
    [bestAppSuggestionManager setDelegate:v2];
  }

  return v2;
}

- (CSDUserActivity)currentlyBroadcastedActivity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000286C4;
  v11 = sub_1000328EC;
  v12 = 0;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B67D4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)queuedActivitiesOfType:(unsigned int)type
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286C4;
  v14 = sub_1000328EC;
  v15 = +[NSMutableSet set];
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6924;
  block[3] = &unk_10061D9B8;
  typeCopy = type;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize
{
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B6B60;
  v11[3] = &unk_10061D9E0;
  v11[4] = self;
  v12 = activityCopy;
  timeoutCopy = timeout;
  prioritizeCopy = prioritize;
  v10 = activityCopy;
  dispatch_async(queue, v11);
}

- (void)stopBroadcastingActivity:(id)activity
{
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6C28;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_async(queue, v7);
}

- (void)listenForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6CF0;
  block[3] = &unk_10061CF48;
  typeCopy = type;
  block[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)stopListeningForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6DBC;
  block[3] = &unk_10061CF48;
  typeCopy = type;
  block[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)stopListeningForActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring
{
  substringCopy = substring;
  queue = [(CSDUserActivityCommunicator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6E88;
  block[3] = &unk_10061CF48;
  typeCopy = type;
  block[4] = self;
  v10 = substringCopy;
  v8 = substringCopy;
  dispatch_sync(queue, block);
}

- (void)_broadcastActivity:(id)activity withTimeout:(double)timeout shouldPrioritize:(BOOL)prioritize
{
  prioritizeCopy = prioritize;
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (prioritizeCopy)
  {
    if (v12)
    {
      *buf = 138412546;
      v23 = activityCopy;
      v24 = 2048;
      timeoutCopy2 = timeout;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Queueing activity at beginning of queue: %@ (timeout: %f)", buf, 0x16u);
    }

    activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
    [activityQueue insertObject:activityCopy atIndex:0];
  }

  else
  {
    if (v12)
    {
      *buf = 138412546;
      v23 = activityCopy;
      v24 = 2048;
      timeoutCopy2 = timeout;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Queueing activity at end of queue: %@ (timeout: %f)", buf, 0x16u);
    }

    activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
    [activityQueue addObject:activityCopy];
  }

  if (timeout >= 0.0)
  {
    v14 = dispatch_time(0, (timeout * 1000000000.0));
    queue2 = [(CSDUserActivityCommunicator *)self queue];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1001B70B4;
    v19 = &unk_100619D88;
    selfCopy = self;
    v21 = activityCopy;
    dispatch_after(v14, queue2, &v16);
  }

  [(CSDUserActivityCommunicator *)self _updateCurrentlyBroadcastedActivity:v16];
}

- (void)_stopBroadcastingActivity:(id)activity
{
  activityCopy = activity;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = activityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dequeueing activity: %@", &v10, 0xCu);
  }

  activityQueue = [(CSDUserActivityCommunicator *)self activityQueue];
  [activityQueue removeObject:activityCopy];

  userActivity = [activityCopy userActivity];
  [userActivity invalidate];

  [(CSDUserActivityCommunicator *)self _updateCurrentlyBroadcastedActivity];
}

- (void)_listenForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  if (identifierCopy)
  {
    [CSDUserActivity registerActivityType:v4 dynamicIdentifier:identifierCopy];
    [(CSDUserActivityCommunicator *)self _trackListenedActivityType:v4 dynamicIdentifier:identifierCopy];
    v9 = [CSDUserActivity activityTypeRequiresBestAppSuggestionListener:v4];
    v10 = v9;
    bestAppSuggestionManager = sub_100004778(v9);
    v12 = os_log_type_enabled(bestAppSuggestionManager, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
        v15 = 67109634;
        v16 = v4;
        v17 = 2112;
        v18 = identifierCopy;
        v19 = 2112;
        v20 = listeningIdentifiersByActivityType;
        _os_log_impl(&_mh_execute_header, bestAppSuggestionManager, OS_LOG_TYPE_DEFAULT, "Registered to listen for activity type %d and dynamic identifier %@ and started listening for best app suggestions, now tracking: %@", &v15, 0x1Cu);
      }

      bestAppSuggestionManager = [(CSDUserActivityCommunicator *)self bestAppSuggestionManager];
      [bestAppSuggestionManager startListeningForBestAppSuggestions];
    }

    else if (v12)
    {
      listeningIdentifiersByActivityType2 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
      v15 = 67109634;
      v16 = v4;
      v17 = 2112;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = listeningIdentifiersByActivityType2;
      _os_log_impl(&_mh_execute_header, bestAppSuggestionManager, OS_LOG_TYPE_DEFAULT, "Registered to listen for activity type %d and dynamic identifier %@, now tracking: %@", &v15, 0x1Cu);
    }
  }

  else
  {
    bestAppSuggestionManager = sub_100004778(v8);
    if (os_log_type_enabled(bestAppSuggestionManager, OS_LOG_TYPE_FAULT))
    {
      sub_10047929C(bestAppSuggestionManager);
    }
  }
}

- (void)_stopListeningForActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  [CSDUserActivity unregisterActivityType:v4 dynamicIdentifier:identifierCopy];
  v8 = sub_100004778([(CSDUserActivityCommunicator *)self _untrackListenedActivityType:v4 dynamicIdentifier:identifierCopy]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    v10[0] = 67109634;
    v10[1] = v4;
    v11 = 2112;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = listeningIdentifiersByActivityType;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unregistered to listen for activity type %d and dynamic identifier %@, now tracking: %@", v10, 0x1Cu);
  }

  if ([CSDUserActivity activityTypeRequiresBestAppSuggestionListener:v4])
  {
    [(CSDUserActivityCommunicator *)self _stopListeningForBestAppSuggestionIfAppropriate];
  }
}

- (void)_stopListeningForActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring
{
  v4 = *&type;
  substringCopy = substring;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  if (substringCopy)
  {
    v9 = [(CSDUserActivityCommunicator *)self _untrackListenedActivityType:v4 matchingDynamicIdentifierSubstring:substringCopy];
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v25 = v4;
      v26 = 2112;
      v27 = substringCopy;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unregistering dynamic identifiers of type %d, matching substring %@: %@", buf, 0x1Cu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v11);
          }

          [CSDUserActivity unregisterActivityType:v4 dynamicIdentifier:*(*(&v19 + 1) + 8 * v15), v19];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = sub_100004778(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
      *buf = 67109378;
      v25 = v4;
      v26 = 2112;
      v27 = listeningIdentifiersByActivityType;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unregistered to listen for activity type %d, now tracking: %@", buf, 0x12u);
    }

    if ([CSDUserActivity activityTypeRequiresBestAppSuggestionListener:v4])
    {
      [(CSDUserActivityCommunicator *)self _stopListeningForBestAppSuggestionIfAppropriate];
    }
  }

  else
  {
    v11 = sub_100004778(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1004792E0(v11);
    }
  }
}

- (void)_trackListenedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
  v8 = [NSNumber numberWithUnsignedInt:v4];
  v9 = [listeningIdentifiersByActivityType objectForKeyedSubscript:v8];

  if (v9)
  {
    listeningIdentifiersByActivityType2 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    listeningIdentifiersByActivityType3 = [NSNumber numberWithUnsignedInt:v4];
    v12 = [listeningIdentifiersByActivityType2 objectForKeyedSubscript:listeningIdentifiersByActivityType3];
    [v12 addObject:identifierCopy];
  }

  else
  {
    listeningIdentifiersByActivityType2 = [NSMutableSet setWithObject:identifierCopy];
    listeningIdentifiersByActivityType3 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    v12 = [NSNumber numberWithUnsignedInt:v4];
    [listeningIdentifiersByActivityType3 setObject:listeningIdentifiersByActivityType2 forKeyedSubscript:v12];
  }
}

- (void)_untrackListenedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
  v8 = [NSNumber numberWithUnsignedInt:v4];
  v9 = [listeningIdentifiersByActivityType objectForKeyedSubscript:v8];

  if (v9)
  {
    listeningIdentifiersByActivityType2 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    v11 = [NSNumber numberWithUnsignedInt:v4];
    v12 = [listeningIdentifiersByActivityType2 objectForKeyedSubscript:v11];
    v13 = v12;
    if (identifierCopy)
    {
      [v12 removeObject:?];
    }

    else
    {
      [v12 removeAllObjects];
    }

    listeningIdentifiersByActivityType3 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    v15 = [NSNumber numberWithUnsignedInt:v4];
    v16 = [listeningIdentifiersByActivityType3 objectForKeyedSubscript:v15];
    v17 = [v16 count];

    if (!v17)
    {
      listeningIdentifiersByActivityType4 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
      v19 = [NSNumber numberWithUnsignedInt:v4];
      [listeningIdentifiersByActivityType4 setObject:0 forKeyedSubscript:v19];
    }
  }
}

- (id)_untrackListenedActivityType:(unsigned int)type matchingDynamicIdentifierSubstring:(id)substring
{
  v4 = *&type;
  substringCopy = substring;
  queue = [(CSDUserActivityCommunicator *)self queue];
  dispatch_assert_queue_V2(queue);

  v40 = +[NSMutableArray array];
  listeningIdentifiersByActivityType = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
  v9 = &_s10Foundation3URLVMa_ptr_0;
  v10 = [NSNumber numberWithUnsignedInt:v4];
  v11 = [listeningIdentifiersByActivityType objectForKeyedSubscript:v10];

  if (v11)
  {
    listeningIdentifiersByActivityType2 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    v13 = [NSNumber numberWithUnsignedInt:v4];
    v14 = [listeningIdentifiersByActivityType2 objectForKeyedSubscript:v13];
    v15 = [v14 copy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      v38 = substringCopy;
      v39 = *v42;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v41 + 1) + 8 * i);
          if ([v21 containsString:substringCopy])
          {
            [v40 addObject:v21];
            listeningIdentifiersByActivityType3 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
            [v9[59] numberWithUnsignedInt:v4];
            v24 = v23 = v9;
            [listeningIdentifiersByActivityType3 objectForKeyedSubscript:v24];
            v25 = v18;
            v26 = v16;
            selfCopy = self;
            v29 = v28 = v4;
            [v29 removeObject:v21];

            v4 = v28;
            self = selfCopy;
            v16 = v26;
            v18 = v25;

            v9 = v23;
            substringCopy = v38;
            v19 = v39;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v18);
    }

    listeningIdentifiersByActivityType4 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
    v31 = [v9[59] numberWithUnsignedInt:v4];
    v32 = [listeningIdentifiersByActivityType4 objectForKeyedSubscript:v31];
    v33 = v9;
    v34 = [v32 count];

    if (!v34)
    {
      listeningIdentifiersByActivityType5 = [(CSDUserActivityCommunicator *)self listeningIdentifiersByActivityType];
      v36 = [v33[59] numberWithUnsignedInt:v4];
      [listeningIdentifiersByActivityType5 setObject:0 forKeyedSubscript:v36];
    }
  }

  return v40;
}

- (void)bestAppSuggestionChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityCommunicator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B7E1C;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (CSDUserActivityCommunicatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end