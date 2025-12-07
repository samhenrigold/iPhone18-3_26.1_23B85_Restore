@interface MRDNowPlayingStateMonitor
- (MRDNowPlayingStateMonitor)initWithDelegate:(id)delegate;
- (MRDNowPlayingStateMonitorDelegate)delegate;
- (NSString)nowPlayingApp;
- (unsigned)onQueue_lastPlaybackStateForEndpoint:(id)endpoint;
- (void)_configureNowPlayingController:(id)controller;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)onQueue_controller:(id)queue_controller didLoadResponse:(id)response retry:(BOOL)retry;
- (void)onQueue_setLastPlaybackState:(unsigned int)state bundleIdentifier:(id)identifier forEndpoint:(id)endpoint;
- (void)setup;
@end

@implementation MRDNowPlayingStateMonitor

- (MRDNowPlayingStateMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = MRDNowPlayingStateMonitor;
  v5 = [(MRDNowPlayingStateMonitor *)&v14 init];
  if (v5)
  {
    v6 = +[MRNowPlayingController userSelectedEndpointController];
    [(MRDNowPlayingStateMonitor *)v5 setAseNowPlayingController:v6];

    v7 = +[MRNowPlayingController localRouteController];
    [(MRDNowPlayingStateMonitor *)v5 setLocalNowPlayingController:v7];

    [(MRDNowPlayingStateMonitor *)v5 setDelegate:delegateCopy];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.NowPlayingStateMonitor", v8);
    [(MRDNowPlayingStateMonitor *)v5 setQueue:v9];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.NowPlayingStateMonitor.delegateQueue", v10);
    [(MRDNowPlayingStateMonitor *)v5 setDelegateQueue:v11];

    v12 = objc_alloc_init(NSMutableDictionary);
    [(MRDNowPlayingStateMonitor *)v5 setLastPlaybackStates:v12];

    [(MRDNowPlayingStateMonitor *)v5 setup];
  }

  return v5;
}

- (void)setup
{
  aseNowPlayingController = [(MRDNowPlayingStateMonitor *)self aseNowPlayingController];
  [(MRDNowPlayingStateMonitor *)self _configureNowPlayingController:aseNowPlayingController];

  localNowPlayingController = [(MRDNowPlayingStateMonitor *)self localNowPlayingController];
  [(MRDNowPlayingStateMonitor *)self _configureNowPlayingController:localNowPlayingController];
}

- (void)_configureNowPlayingController:(id)controller
{
  controllerCopy = controller;
  configuration = [controllerCopy configuration];
  [configuration setRequestPlaybackState:1];

  configuration2 = [controllerCopy configuration];
  [configuration2 setRequestClientProperties:1];

  configuration3 = [controllerCopy configuration];
  [configuration3 setRequestPlaybackQueue:0];

  configuration4 = [controllerCopy configuration];
  [configuration4 setRequestSupportedCommands:0];

  configuration5 = [controllerCopy configuration];
  [configuration5 setRequestLastPlayingDate:0];

  [controllerCopy setDelegate:self];
  [controllerCopy beginLoadingUpdates];
}

- (unsigned)onQueue_lastPlaybackStateForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(MRDNowPlayingStateMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  uniqueIdentifier = [endpointCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    lastPlaybackStates = [(MRDNowPlayingStateMonitor *)self lastPlaybackStates];
    uniqueIdentifier2 = [endpointCopy uniqueIdentifier];
    v9 = [lastPlaybackStates objectForKeyedSubscript:uniqueIdentifier2];
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v9 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)onQueue_setLastPlaybackState:(unsigned int)state bundleIdentifier:(id)identifier forEndpoint:(id)endpoint
{
  v6 = *&state;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  uniqueIdentifier = [(MRDNowPlayingStateMonitor *)endpointCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    queue = [(MRDNowPlayingStateMonitor *)self queue];
    dispatch_assert_queue_V2(queue);

    v12 = [(MRDNowPlayingStateMonitor *)self onQueue_lastPlaybackStateForEndpoint:endpointCopy];
    v13 = [NSNumber numberWithUnsignedInt:v6];
    lastPlaybackStates = [(MRDNowPlayingStateMonitor *)self lastPlaybackStates];
    uniqueIdentifier2 = [(MRDNowPlayingStateMonitor *)endpointCopy uniqueIdentifier];
    [lastPlaybackStates setObject:v13 forKeyedSubscript:uniqueIdentifier2];

    if (v12 != v6)
    {
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = MRMediaRemoteCopyPlaybackStateDescription();
        v18 = MRMediaRemoteCopyPlaybackStateDescription();
        *buf = 138412802;
        selfCopy = endpointCopy;
        v40 = 2112;
        v41 = v17;
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM updated stored playback state for %@ from %@ to %@", buf, 0x20u);
      }
    }

    if ((v6 - 2) >= 2)
    {
      if (v6 == 1)
      {
        v19 = 1;
        v20 = 1;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }
    }

    else
    {
      v19 = v12 == 1;
      v20 = 2 * (v12 == 1);
    }

    v21 = [MRSystemMediaBundles systemMediaBundleIDForBundleID:identifierCopy type:1];
    v23 = [MRIRRoute routeWithEndpoint:endpointCopy];
    v24 = _MRLogForCategory();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v12 == v6 || !v19)
    {
      if (v25)
      {
        v31 = MRMediaRemoteCopyPlaybackStateDescription();
        v32 = MRMediaRemoteCopyPlaybackStateDescription();
        *buf = 138413058;
        selfCopy = endpointCopy;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM Not publishing event, endpoint: %@, storedPreviousState: %@, currentState: %@, bundleIdentifier: %@", buf, 0x2Au);
      }
    }

    else
    {
      if (v25)
      {
        v26 = MRMediaRemoteCopyPlaybackStateDescription();
        v27 = MRMediaRemoteCopyPlaybackStateDescription();
        *buf = 138413570;
        selfCopy = endpointCopy;
        v40 = 2112;
        v41 = v26;
        v42 = 2112;
        v43 = v27;
        v44 = 2112;
        v45 = v21;
        v46 = 2112;
        v47 = identifierCopy;
        v48 = 2048;
        v49 = v20;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM Publishing event, endpoint: %@, storedPreviousState: %@, currentState: %@, bundleIdentifier: %@ (was %@), event: %ld", buf, 0x3Eu);
      }

      delegate = [(MRDNowPlayingStateMonitor *)self delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        delegateQueue = [(MRDNowPlayingStateMonitor *)self delegateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10019B01C;
        block[3] = &unk_1004BFC38;
        block[4] = self;
        v34 = v23;
        v35 = endpointCopy;
        v36 = v21;
        v37 = v20;
        dispatch_async(delegateQueue, block);
      }
    }
  }

  else
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier3 = [(MRDNowPlayingStateMonitor *)endpointCopy uniqueIdentifier];
      *buf = 138412802;
      selfCopy = self;
      v40 = 2112;
      v41 = endpointCopy;
      v42 = 2112;
      v43 = uniqueIdentifier3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint ID is nil, ignoring - %@ (%@)", buf, 0x20u);
    }
  }
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = controllerCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %@ didFailWithError: %@", &v8, 0x16u);
  }
}

- (void)controller:(id)controller didLoadResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = controllerCopy;
    v17 = 2112;
    v18 = responseCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %@ didLoadResponse: %@", buf, 0x16u);
  }

  queue = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B2AC;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v13 = controllerCopy;
  v14 = responseCopy;
  v10 = responseCopy;
  v11 = controllerCopy;
  dispatch_async(queue, block);
}

- (void)onQueue_controller:(id)queue_controller didLoadResponse:(id)response retry:(BOOL)retry
{
  retryCopy = retry;
  queue_controllerCopy = queue_controller;
  responseCopy = response;
  queue = [(MRDNowPlayingStateMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  destination = [responseCopy destination];
  endpoint = [destination endpoint];
  if (endpoint)
  {
    endpoint2 = endpoint;

LABEL_4:
    v15 = [(MRDNowPlayingStateMonitor *)self onQueue_lastPlaybackStateForEndpoint:endpoint2];
    playbackState = [responseCopy playbackState];
    destination2 = [queue_controllerCopy destination];
    client = [destination2 client];
    representedBundleID = [client representedBundleID];

    if (v15 != playbackState)
    {
      v20 = _MRLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = MRMediaRemoteCopyPlaybackStateDescription();
        v22 = MRMediaRemoteCopyPlaybackStateDescription();
        *buf = 138412802;
        selfCopy2 = endpoint2;
        v33 = 2112;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM updating stored playback state for %@ from %@ to %@", buf, 0x20u);
      }

      [(MRDNowPlayingStateMonitor *)self onQueue_setLastPlaybackState:playbackState bundleIdentifier:representedBundleID forEndpoint:endpoint2];
    }

LABEL_9:
    goto LABEL_10;
  }

  destination3 = [queue_controllerCopy destination];
  endpoint2 = [destination3 endpoint];

  if (endpoint2)
  {
    goto LABEL_4;
  }

  endpoint2 = _MRLogForCategory();
  v23 = os_log_type_enabled(endpoint2, OS_LOG_TYPE_DEFAULT);
  if (!retryCopy)
  {
    if (v23)
    {
      destination4 = [queue_controllerCopy destination];
      *buf = 138413058;
      selfCopy2 = self;
      v33 = 2112;
      v34 = queue_controllerCopy;
      v35 = 2112;
      v36 = destination4;
      v37 = 2112;
      v38 = responseCopy;
      _os_log_impl(&_mh_execute_header, endpoint2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint is nil, ignoring - %@ (%@), response: %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  if (v23)
  {
    destination5 = [queue_controllerCopy destination];
    *buf = 138413058;
    selfCopy2 = self;
    v33 = 2112;
    v34 = queue_controllerCopy;
    v35 = 2112;
    v36 = destination5;
    v37 = 2112;
    v38 = responseCopy;
    _os_log_impl(&_mh_execute_header, endpoint2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint is nil, will retry in 3 seconds - %@ (%@), response: %@", buf, 0x2Au);
  }

  v25 = dispatch_time(0, 3000000000);
  queue2 = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B64C;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v29 = queue_controllerCopy;
  v30 = responseCopy;
  dispatch_after(v25, queue2, block);

LABEL_10:
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  controllerCopy = controller;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v17 = controllerCopy;
    v18 = 2112;
    v19 = controllerCopy;
    v20 = 1024;
    fromCopy = from;
    v22 = 1024;
    toCopy = to;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %p %@ playbackStateDidChangeFrom: %d to: %d", buf, 0x22u);
  }

  queue = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B8B4;
  block[3] = &unk_1004B87F8;
  v13 = controllerCopy;
  selfCopy = self;
  toCopy2 = to;
  v11 = controllerCopy;
  dispatch_async(queue, block);
}

- (NSString)nowPlayingApp
{
  aseNowPlayingController = [(MRDNowPlayingStateMonitor *)self aseNowPlayingController];
  response = [aseNowPlayingController response];
  playerPath = [response playerPath];
  client = [playerPath client];
  representedBundleID = [client representedBundleID];

  return representedBundleID;
}

- (MRDNowPlayingStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end