@interface WLDPlaybackNowPlayingObserver
- (BOOL)_isAnyAppPlaying;
- (BOOL)_isPlayerPathPlaying:(id)playing;
- (BOOL)_isSummary:(id)summary signifantChangeFromSummary:(id)fromSummary;
- (BOOL)_nowPlayingAppIsPlayingForPlayerPath:(id)path;
- (BOOL)_shouldPlayerPathBeConsidered:(id)considered;
- (WLDPlaybackNowPlayingObserver)initWithUpdateHandler:(id)handler;
- (id)_fetchActivePlayerPaths;
- (id)_getActivePlayerPaths;
- (id)_nowPlayingInfoForPlayerPath:(id)path;
- (id)_unsupportedMediaTypes;
- (id)nowPlayingSummaries;
- (void)_activePlayerPathsDidChangeNotification:(id)notification;
- (void)_fetchNowPlayingInfo:(id)info;
- (void)_forceFetchNowPlayingInfofromActivePlayers;
- (void)_isPlayingDidChangeNotification:(id)notification;
- (void)_nowPlayingInfoDidChangeNotification:(id)notification;
- (void)_processLastSummary:(id)summary;
- (void)_setActivePlayerPaths:(id)paths;
- (void)_updateWithInfo:(id)info sessionID:(id)d;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation WLDPlaybackNowPlayingObserver

- (WLDPlaybackNowPlayingObserver)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = WLDPlaybackNowPlayingObserver;
  v5 = [(WLDPlaybackNowPlayingObserver *)&v17 init];
  if (v5)
  {
    v6 = objc_retainBlock(handlerCopy);
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;

    v5->_isObserving = 0;
    v8 = dispatch_queue_create("WLDPlaybackNowPlayingObserverQueueNotif", 0);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v8;

    v10 = dispatch_queue_create("WLDPlaybackNowPlayingObserverQueueLookup", 0);
    lookupQueue = v5->_lookupQueue;
    v5->_lookupQueue = v10;

    v12 = objc_opt_new();
    lastSummaryDict = v5->_lastSummaryDict;
    v5->_lastSummaryDict = v12;

    _fetchActivePlayerPaths = [(WLDPlaybackNowPlayingObserver *)v5 _fetchActivePlayerPaths];
    activePlayerPaths = v5->_activePlayerPaths;
    v5->_activePlayerPaths = _fetchActivePlayerPaths;

    [(WLDPlaybackNowPlayingObserver *)v5 startObserving];
  }

  return v5;
}

- (void)dealloc
{
  [(WLDPlaybackNowPlayingObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = WLDPlaybackNowPlayingObserver;
  [(WLDPlaybackNowPlayingObserver *)&v3 dealloc];
}

- (void)startObserving
{
  if (!self->_isObserving)
  {
    v3 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Start Playback observation", buf, 2u);
    }

    self->_isObserving = 1;
    MRMediaRemoteRegisterForNowPlayingNotifications();
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_nowPlayingInfoDidChangeNotification:" name:kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_isPlayingDidChangeNotification:" name:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_activePlayerPathsDidChangeNotification:" name:kMRMediaRemoteActivePlayerPathsDidChange object:0];

    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __47__WLDPlaybackNowPlayingObserver_startObserving__block_invoke;
    block[3] = &unk_100044DB8;
    block[4] = self;
    dispatch_async(notificationQueue, block);
  }
}

- (void)stopObserving
{
  if (self->_isObserving)
  {
    v8 = v2;
    v9 = v3;
    v5 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Stop Playback observation", v7, 2u);
    }

    self->_isObserving = 0;
    MRMediaRemoteUnregisterForNowPlayingNotifications();
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self];
  }
}

- (id)nowPlayingSummaries
{
  v3 = +[TVAppAccountStoreObjC activeAccount];
  ams_DSID = [v3 ams_DSID];
  stringValue = [ams_DSID stringValue];

  v6 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = objc_opt_new();
  [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v7 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = stringValue;
        v15 = v6;
        MRMediaRemoteGetNowPlayingInfoForPlayer();
        v10 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v15, v10);
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [v21[5] copy];
  _Block_object_dispose(&v20, 8);

  return v11;
}

intptr_t __52__WLDPlaybackNowPlayingObserver_nowPlayingSummaries__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) client];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = a2;
      v7 = [WLKPlaybackSummary alloc];
      v8 = [*(a1 + 32) client];
      v9 = [v8 bundleIdentifier];
      v10 = [v7 initWithMediaRemoteDictionary:v6 bundleID:v9 accountID:*(a1 + 40) isFromActivePlayerPath:1];

      if (v10)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObject:v10];
      }
    }
  }

  v11 = *(a1 + 48);

  return dispatch_semaphore_signal(v11);
}

- (void)_isPlayingDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v8 = [userInfo objectForKey:kMRNowPlayingPlayerPathUserInfoKey];

  if ([(WLDPlaybackNowPlayingObserver *)self _shouldPlayerPathBeConsidered:v8])
  {
    _isAnyAppPlaying = [(WLDPlaybackNowPlayingObserver *)self _isAnyAppPlaying];
    transaction = self->_transaction;
    if (_isAnyAppPlaying)
    {
      if (transaction)
      {
        goto LABEL_9;
      }
    }

    else if (transaction)
    {
      v7 = 0;
LABEL_8:
      self->_transaction = v7;

      goto LABEL_9;
    }

    v7 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPlaybackNowPlayingObserver._updateTransactionState"];
    transaction = self->_transaction;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_activePlayerPathsDidChangeNotification:(id)notification
{
  _fetchActivePlayerPaths = [(WLDPlaybackNowPlayingObserver *)self _fetchActivePlayerPaths];
  _getActivePlayerPaths = [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = _fetchActivePlayerPaths;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (([_getActivePlayerPaths containsObject:v11] & 1) == 0)
        {
          [(WLDPlaybackNowPlayingObserver *)self _fetchNowPlayingInfo:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = _getActivePlayerPaths;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        if (([v6 containsObject:{v17, v18}] & 1) == 0)
        {
          [(WLDPlaybackNowPlayingObserver *)self _processLastSummary:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  [(WLDPlaybackNowPlayingObserver *)self _setActivePlayerPaths:v6];
}

- (void)_nowPlayingInfoDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:kMRNowPlayingPlayerPathUserInfoKey];

  if ([(WLDPlaybackNowPlayingObserver *)self _shouldPlayerPathBeConsidered:v5])
  {
    [(WLDPlaybackNowPlayingObserver *)self _fetchNowPlayingInfo:v5];
  }
}

- (void)_fetchNowPlayingInfo:(id)info
{
  infoCopy = info;
  v5 = [(WLDPlaybackNowPlayingObserver *)self _nowPlayingInfoForPlayerPath:infoCopy];
  client = [infoCopy client];
  bundleIdentifier = [client bundleIdentifier];
  player = [infoCopy player];
  identifier = [player identifier];
  v10 = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, identifier];

  v11 = [v5 objectForKey:v10];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(NSMutableDictionary *)selfCopy->_lastSummaryDict objectForKey:v10];
  objc_sync_exit(selfCopy);

  if ([v11 isEquivalentToSummaryExcludingTimestamp:v13])
  {
    v14 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- ignoring duplicate NPI", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v11)
  {
    if ([(WLDPlaybackNowPlayingObserver *)selfCopy _isSummary:v11 signifantChangeFromSummary:v13])
    {
      [(WLDPlaybackNowPlayingObserver *)selfCopy _updateWithInfo:v11 sessionID:v10];
    }

LABEL_7:
    v14 = selfCopy;
    objc_sync_enter(v14);
    [(NSMutableDictionary *)selfCopy->_lastSummaryDict setObject:v11 forKey:v10];
    objc_sync_exit(v14);
LABEL_8:

    goto LABEL_9;
  }

  if (v13 && [v13 playbackState] == 1)
  {
    v15 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Generating stopped playback event", v17, 2u);
    }

    v11 = [v13 elapsedTimeSummaryWithPlaybackState:0 timerDerived:0];
    [(WLDPlaybackNowPlayingObserver *)selfCopy _updateWithInfo:v11 sessionID:v10];
    if (v11)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (BOOL)_isPlayerPathPlaying:(id)playing
{
  playingCopy = playing;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = dispatch_semaphore_create(0);
  MRMediaRemoteGetPlaybackStateForPlayer();
  v4 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v7, v4);
  v5 = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v5;
}

intptr_t __54__WLDPlaybackNowPlayingObserver__isPlayerPathPlaying___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_shouldPlayerPathBeConsidered:(id)considered
{
  consideredCopy = considered;
  origin = [consideredCopy origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    client = [consideredCopy client];
    bundleIdentifier = [client bundleIdentifier];

    v8 = +[WLKAppLibrary defaultAppLibrary];
    allAppBundleIdentifiers = [v8 allAppBundleIdentifiers];

    v10 = (+[WLKChannelUtilities isItunesBundleID:](WLKChannelUtilities, "isItunesBundleID:", bundleIdentifier) & 1) != 0 || [allAppBundleIdentifiers containsObject:bundleIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_getActivePlayerPaths
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activePlayerPaths;
  objc_sync_exit(selfCopy);

  v4 = [(NSArray *)v3 copy];

  return v4;
}

- (void)_setActivePlayerPaths:(id)paths
{
  pathsCopy = paths;
  obj = self;
  objc_sync_enter(obj);
  activePlayerPaths = obj->_activePlayerPaths;
  obj->_activePlayerPaths = pathsCopy;

  objc_sync_exit(obj);
}

- (id)_fetchActivePlayerPaths
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke;
  v23 = &unk_100045C18;
  v25 = &v26;
  v2 = dispatch_semaphore_create(0);
  v24 = v2;
  MRMediaRemoteGetActivePlayerPathsForOrigin();
  v3 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v2, v3);
  v4 = +[WLKAppLibrary defaultAppLibrary];
  allAppBundleIdentifiers = [v4 allAppBundleIdentifiers];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = v27[5];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke_2;
  v17 = &unk_100045C40;
  v8 = allAppBundleIdentifiers;
  v18 = v8;
  v9 = v6;
  v19 = v9;
  [v7 enumerateObjectsUsingBlock:&v14];
  v10 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    *buf = 134217984;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - WLDPlaybackNowPlayingObserver: _fetchActivePlayerPaths filtered paths count: %lu", buf, 0xCu);
  }

  v12 = [v9 copy];
  _Block_object_dispose(&v26, 8);

  return v12;
}

intptr_t __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 client];
  v4 = [v3 bundleIdentifier];

  if ((+[WLKChannelUtilities isItunesBundleID:](WLKChannelUtilities, "isItunesBundleID:", v4) & 1) != 0 || [*(a1 + 32) containsObject:v4])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (id)_nowPlayingInfoForPlayerPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = objc_opt_new();
    v5 = dispatch_semaphore_create(0);
    v10 = pathCopy;
    v11 = v5;
    MRMediaRemoteGetNowPlayingInfoForPlayer();
    v6 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v11, v6);
    v7 = [*(v13 + 5) copy];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - WLDPlaybackNowPlayingObserver: _nowPlayingInfoForPlayerPath invalid player path", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

void __62__WLDPlaybackNowPlayingObserver__nowPlayingInfoForPlayerPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:kMRMediaRemoteNowPlayingInfoMediaType];
  if (!v4 || ([*(a1 + 32) _unsupportedMediaTypes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, (v6 & 1) == 0))
  {
    v7 = +[TVAppAccountStoreObjC activeAccount];
    v8 = [v7 ams_DSID];
    v9 = [v8 stringValue];

    v10 = [*(a1 + 32) _getActivePlayerPaths];
    v11 = [v10 containsObject:*(a1 + 40)];

    v12 = [WLKPlaybackSummary alloc];
    v13 = [*(a1 + 40) client];
    v14 = [v13 bundleIdentifier];
    v15 = [v12 initWithMediaRemoteDictionary:v3 bundleID:v14 accountID:v9 isFromActivePlayerPath:v11];

    v16 = [*(a1 + 40) client];
    v17 = [v16 bundleIdentifier];
    v18 = [*(a1 + 40) player];
    v19 = [v18 identifier];
    v20 = [NSString stringWithFormat:@"%@-%@", v17, v19];

    if (v15)
    {
      [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKey:v20];
    }

    else
    {
      v21 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - WLDPlaybackNowPlayingObserver: _nowPlayingInfoForPlayerPath summary is nil, activePlayingInfo is not set.", buf, 2u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)_isAnyAppPlaying
{
  v3 = dispatch_semaphore_create(0);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _getActivePlayerPaths = [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v5 = [_getActivePlayerPaths countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_getActivePlayerPaths);
        }

        v11 = v3;
        MRMediaRemoteGetPlaybackStateForPlayer();
        v8 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v11, v8);
      }

      v5 = [_getActivePlayerPaths countByEnumeratingWithState:&v12 objects:v20 count:{16, _NSConcreteStackBlock, 3221225472, __49__WLDPlaybackNowPlayingObserver__isAnyAppPlaying__block_invoke, &unk_100045BF0}];
    }

    while (v5);
  }

  v9 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v9 & 1;
}

intptr_t __49__WLDPlaybackNowPlayingObserver__isAnyAppPlaying__block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_nowPlayingAppIsPlayingForPlayerPath:(id)path
{
  pathCopy = path;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = dispatch_semaphore_create(0);
  MRMediaRemoteGetPlaybackStateForPlayer();
  v4 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v7, v4);
  v5 = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v5;
}

intptr_t __70__WLDPlaybackNowPlayingObserver__nowPlayingAppIsPlayingForPlayerPath___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_processLastSummary:(id)summary
{
  summaryCopy = summary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  client = [summaryCopy client];
  bundleIdentifier = [client bundleIdentifier];
  player = [summaryCopy player];
  identifier = [player identifier];
  v10 = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, identifier];

  v11 = [(NSMutableDictionary *)selfCopy->_lastSummaryDict objectForKey:v10];
  v12 = v11;
  if (v11 && [v11 playbackState] == 1)
  {
    v13 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - _processLastSummary Generating stopped playback event", buf, 2u);
    }

    v14 = [v12 elapsedTimeSummaryWithPlaybackState:0 timerDerived:0];
    [(WLDPlaybackNowPlayingObserver *)selfCopy _updateWithInfo:v14 sessionID:v10];
  }

  lastSummaryDict = selfCopy->_lastSummaryDict;
  v18 = v10;
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  [(NSMutableDictionary *)lastSummaryDict removeObjectsForKeys:v16];

  objc_sync_exit(selfCopy);
}

- (void)_forceFetchNowPlayingInfofromActivePlayers
{
  _getActivePlayerPaths = [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_getActivePlayerPaths countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_getActivePlayerPaths);
        }

        [(WLDPlaybackNowPlayingObserver *)self _fetchNowPlayingInfo:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [_getActivePlayerPaths countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_unsupportedMediaTypes
{
  if (_unsupportedMediaTypes_onceToken != -1)
  {
    [WLDPlaybackNowPlayingObserver _unsupportedMediaTypes];
  }

  v3 = _unsupportedMediaTypes___unsupportedTypes;

  return v3;
}

void __55__WLDPlaybackNowPlayingObserver__unsupportedMediaTypes__block_invoke(id a1)
{
  v3[0] = kMRMediaRemoteMediaTypeMusic;
  v3[1] = kMRMediaRemoteMediaTypeAudioBook;
  v3[2] = kMRMediaRemoteMediaTypePodcast;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = _unsupportedMediaTypes___unsupportedTypes;
  _unsupportedMediaTypes___unsupportedTypes = v1;
}

- (void)_updateWithInfo:(id)info sessionID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (self->_updateHandler)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __59__WLDPlaybackNowPlayingObserver__updateWithInfo_sessionID___block_invoke;
    block[3] = &unk_1000458B8;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(notificationQueue, block);
  }
}

uint64_t __59__WLDPlaybackNowPlayingObserver__updateWithInfo_sessionID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Calling update handler with summary: %@", &v6, 0xCu);
  }

  return (*(*(*(a1 + 40) + 56) + 16))();
}

- (BOOL)_isSummary:(id)summary signifantChangeFromSummary:(id)fromSummary
{
  summaryCopy = summary;
  fromSummaryCopy = fromSummary;
  if (![summaryCopy isSameContent:fromSummaryCopy])
  {
    LOBYTE(v25) = 1;
    v24 = @"content changed";
    goto LABEL_19;
  }

  playbackState = [fromSummaryCopy playbackState];
  if (playbackState != [summaryCopy playbackState] || (v8 = objc_msgSend(fromSummaryCopy, "completionState"), v8 != objc_msgSend(summaryCopy, "completionState")) || objc_msgSend(fromSummaryCopy, "playbackState") != 1)
  {
    v24 = @"significant change";
    goto LABEL_11;
  }

  elapsedTime = [summaryCopy elapsedTime];
  [elapsedTime doubleValue];
  v11 = v10;

  v12 = +[NSDate date];
  timestamp = [fromSummaryCopy timestamp];
  [v12 timeIntervalSinceDate:timestamp];
  v15 = v14;

  playbackRate = [fromSummaryCopy playbackRate];
  objc_opt_class();
  LOBYTE(timestamp) = objc_opt_isKindOfClass();

  v17 = 1.0;
  if (timestamp)
  {
    playbackRate2 = [fromSummaryCopy playbackRate];
    [playbackRate2 doubleValue];
    v17 = v19;
  }

  elapsedTime2 = [fromSummaryCopy elapsedTime];
  [elapsedTime2 doubleValue];
  v22 = v21 + v15 * v17;

  v23 = vabdd_f64(v11, v22);
  if (v23 > 1.0)
  {
    v24 = [NSString stringWithFormat:@"elapsed time drift exceeds maximum: %.5f", *&v23];
LABEL_11:
    v26 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31[0] = fromSummaryCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- update %@ ->", buf, 0xCu);
    }

    v27 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31[0] = summaryCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- %@", buf, 0xCu);
    }

    v25 = 1;
    goto LABEL_16;
  }

  v25 = 0;
  v24 = @"nominal elapsed time update";
LABEL_16:
  v28 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v31[0]) = v25;
    WORD2(v31[0]) = 2112;
    *(v31 + 6) = v24;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- [%d] reason: %@", buf, 0x12u);
  }

LABEL_19:
  return v25;
}

@end