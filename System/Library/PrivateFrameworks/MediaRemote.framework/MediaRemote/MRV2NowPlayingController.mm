@interface MRV2NowPlayingController
- (BOOL)isLoading;
- (BOOL)needsImmediateReload;
- (BOOL)shouldDeferArtworkRequestForConfiguration:(id)configuration;
- (BOOL)shouldObserveInvalidations;
- (BOOL)updateLoadingEnabled;
- (MRNowPlayingControllerDestination)destination;
- (MRNowPlayingControllerDestination)pendingDestination;
- (MRNowPlayingControllerHelper)helper;
- (MRV2NowPlayingController)initWithConfiguration:(id)configuration;
- (MRV2NowPlayingControllerOperationQueue)cancelableOperations;
- (NSString)debugDescription;
- (NSString)needsImmediateReloadReason;
- (id)_loadNowPlayingStateForPlayerPath:(id)path error:(id *)error;
- (id)effectivePlaybackQueueRequest;
- (void)_configureReloadTimerForError:(id)error;
- (void)_createUnresolvedPlayerPathForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion;
- (void)_handleActiveSystemEndpointChangedNotification:(id)notification;
- (void)_handleClientStateDidChange:(id)change;
- (void)_handleEndpointChanged;
- (void)_handleEndpointChangedToEndpoint:(id)endpoint;
- (void)_handleEndpointInvalidated;
- (void)_handlePlaybackQueueChangedNotification:(id)notification;
- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)notification;
- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)notification;
- (void)_handlePlaybackStateChangedNotification:(id)notification;
- (void)_handlePlayerPathInvalidatedWithPlayerPath:(id)path;
- (void)_handleRetryTimerElapsed;
- (void)_handleSupportedCommandsChangedNotification:(id)notification;
- (void)_loadNowPlayingStateForConfiguration:(id)configuration requestID:(id)d completion:(id)completion;
- (void)_loadNowPlayingStateForResolvedPlayerPath:(id)path requestID:(id)d completion:(id)completion;
- (void)_notifyDelegateOfError:(id)error;
- (void)_notifyDelegateOfInvalidation;
- (void)_notifyDelegateOfNewResponse:(id)response;
- (void)_notifyDelegateOfPlaybackQueueChange:(id)change;
- (void)_notifyDelegateOfPlaybackStateChange:(unsigned int)change;
- (void)_notifyDelegateOfPlayerPathChange:(id)change;
- (void)_notifyDelegateOfSupportedCommandsChange:(id)change;
- (void)_notifyDelegateOfUpdatedArtwork:(id)artwork;
- (void)_notifyDelegateOfUpdatedClientProperties:(id)properties;
- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)items;
- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)date;
- (void)_onQueue_clearAllState;
- (void)_onQueue_clearStateForEndpoint;
- (void)_onQueue_clearStateForOutputDeviceUID;
- (void)_onQueue_clearStateForResolvedPlayerPath;
- (void)_onQueue_clearStateForUnresolvedPlayerPath;
- (void)_onQueue_retrieveEndpointForContextUID:(id)d completion:(id)completion;
- (void)_onQueue_retrieveEndpointForUID:(id)d completion:(id)completion;
- (void)_registerForEndpointChangesForOutputDeviceUID:(id)d;
- (void)_registerForEndpointInvalidations:(id)invalidations;
- (void)_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)path;
- (void)_registerNotificationHandlersForResolvedPlayerPath:(id)path;
- (void)_reloadWithReason:(id)reason;
- (void)_requestClientPropertiesForPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_requestContentItemArtwork:(id)artwork forPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_requestPlaybackQueueArtworkForIdentifiers:(id)identifiers operationQueue:(id)queue;
- (void)_requestPlaybackQueueForPlayerPath:(id)path request:(id)request queue:(id)queue completion:(id)completion;
- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_requestSupportedCommandsForPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_resolveForConfiguration:(id)configuration requestID:(id)d completion:(id)completion;
- (void)_resolveForEndpoint:(id)endpoint client:(id)client player:(id)player requestID:(id)d completion:(id)completion;
- (void)_resolveForOutputContextUID:(id)d client:(id)client player:(id)player requestID:(id)iD completion:(id)completion;
- (void)_resolveForOutputDeviceUID:(id)d client:(id)client player:(id)player requestID:(id)iD completion:(id)completion;
- (void)_resolveForUnresolvedPlayerPath:(id)path requestID:(id)d completion:(id)completion;
- (void)_resolvePlayerPath:(id)path requestID:(id)d completion:(id)completion;
- (void)_unregisterForEndpointChanges;
- (void)_unregisterForEndpointInvalidations;
- (void)_unregisterForPlayerPathInvalidations;
- (void)_unregisterNotificationHandlers;
- (void)beginLoadingUpdates;
- (void)dealloc;
- (void)destinationWithCompletion:(id)completion;
- (void)onQueue_setResolvedPlayerPath:(id)path;
- (void)setHelper:(id)helper;
- (void)setIsLoading:(BOOL)loading;
@end

@implementation MRV2NowPlayingController

- (void)beginLoadingUpdates
{
  queue = [(MRV2NowPlayingController *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke;
  v5[3] = &unk_1E769C018;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

char *__47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke(char *result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = result + 32;
  if ((*(*(result + 4) + 20) & 1) == 0)
  {
    v2 = result;
    v3 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v1;
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> Begin loading updates", &v5, 0xCu);
    }

    if ([*v1 isLoading])
    {
      __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke_cold_1(v2, v1);
    }

    return [*v1 _reloadWithReason:@"Begin"];
  }

  return result;
}

- (BOOL)isLoading
{
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_loading;
}

- (void)_notifyDelegateOfInvalidation
{
  helper = [(MRV2NowPlayingController *)self helper];
  if (helper)
  {
    v4 = helper;
    didInvalidate = [helper didInvalidate];
    didInvalidate[2]();

    helper = v4;
  }
}

- (BOOL)shouldObserveInvalidations
{
  configuration = [(MRV2NowPlayingController *)self configuration];
  isSingleShot = [configuration isSingleShot];

  return isSingleShot ^ 1;
}

- (MRNowPlayingControllerHelper)helper
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_helper;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRV2NowPlayingControllerOperationQueue)cancelableOperations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cancelableOperations;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_onQueue_clearAllState
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  loadRetryTimer = self->_loadRetryTimer;
  self->_loadRetryTimer = 0;

  [(MRV2NowPlayingController *)self _onQueue_clearStateForOutputDeviceUID];
}

- (void)_unregisterForEndpointChanges
{
  configuration = [(MRV2NowPlayingController *)self configuration];
  destination = [configuration destination];
  outputDeviceUID = [destination outputDeviceUID];
  if (objc_msgSend_isEqualToString_(outputDeviceUID))
  {

LABEL_4:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    goto LABEL_6;
  }

  configuration2 = [(MRV2NowPlayingController *)self configuration];
  destination2 = [configuration2 destination];
  outputDeviceUID2 = [destination2 outputDeviceUID];
  isEqualToString = objc_msgSend_isEqualToString_(outputDeviceUID2);

  if (isEqualToString)
  {
    goto LABEL_4;
  }

  defaultCenter = [(MRV2NowPlayingController *)self endpointObserver];
  [defaultCenter end];
LABEL_6:

  [(MRV2NowPlayingController *)self setRegisteredForEndpointChanges:0];
}

- (void)_unregisterForPlayerPathInvalidations
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  playerPathInvalidationObserver = [(MRV2NowPlayingController *)self playerPathInvalidationObserver];

  if (playerPathInvalidationObserver)
  {
    playerPathInvalidationObserver2 = [(MRV2NowPlayingController *)self playerPathInvalidationObserver];
    MRMediaRemoteRemovePlayerPathInvalidationHandler(playerPathInvalidationObserver2);

    [(MRV2NowPlayingController *)self setPlayerPathInvalidationObserver:0];
  }

  [(MRV2NowPlayingController *)self setRegisteredForPlayerPathInvalidations:0];
}

- (void)_onQueue_clearStateForUnresolvedPlayerPath
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  [(MRNowPlayingControllerDestination *)self->_destination setUnresolvedPlayerPath:0];

  [(MRV2NowPlayingController *)self _onQueue_clearStateForResolvedPlayerPath];
}

- (void)_onQueue_clearStateForResolvedPlayerPath
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  [(MRV2NowPlayingController *)self _unregisterNotificationHandlers];
  [(MRV2NowPlayingController *)self onQueue_setResolvedPlayerPath:0];
  deferredContentItemsToMerge = [(MRV2NowPlayingController *)self deferredContentItemsToMerge];
  [deferredContentItemsToMerge removeAllObjects];
}

- (void)_unregisterNotificationHandlers
{
  if ([(MRV2NowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(0);
    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications(0);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(MRV2NowPlayingControllerOperationQueue *)selfCopy->_cancelableOperations invalidate];
    cancelableOperations = selfCopy->_cancelableOperations;
    selfCopy->_cancelableOperations = 0;

    objc_sync_exit(selfCopy);
    configuration = [(MRV2NowPlayingController *)selfCopy configuration];
    playbackQueueRequest = [configuration playbackQueueRequest];

    if (playbackQueueRequest)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:selfCopy name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:selfCopy name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 removeObserver:selfCopy name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
    }

    configuration2 = [(MRV2NowPlayingController *)selfCopy configuration];
    requestPlaybackState = [configuration2 requestPlaybackState];

    if (requestPlaybackState)
    {
      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 removeObserver:selfCopy name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
    }

    configuration3 = [(MRV2NowPlayingController *)selfCopy configuration];
    requestSupportedCommands = [configuration3 requestSupportedCommands];

    if (requestSupportedCommands)
    {
      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 removeObserver:selfCopy name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
    }

    configuration4 = [(MRV2NowPlayingController *)selfCopy configuration];
    requestClientProperties = [configuration4 requestClientProperties];

    if (requestClientProperties)
    {
      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 removeObserver:selfCopy name:@"kMRMediaRemoteApplicationClientStateDidChange" object:0];
    }

    [(MRV2NowPlayingController *)selfCopy setRegisteredForNotifications:0];
  }
}

- (BOOL)needsImmediateReload
{
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MRV2NowPlayingController *)self endpointChanged]|| [(MRV2NowPlayingController *)self endpointInvalidated])
  {
    return 1;
  }

  return [(MRV2NowPlayingController *)self playerPathInvalidated];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_updateLoadingEnabled)
  {
    v3 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> End loading updates", buf, 0xCu);
    }
  }

  v4 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> Deallocating.", buf, 0xCu);
  }

  helper = self->_helper;
  self->_helper = 0;

  [(MRV2NowPlayingController *)self setQueue:0];
  [(MRV2NowPlayingController *)self _onQueue_clearAllState];
  v6.receiver = self;
  v6.super_class = MRV2NowPlayingController;
  [(MRV2NowPlayingController *)&v6 dealloc];
}

- (void)_onQueue_clearStateForOutputDeviceUID
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  [(MRV2NowPlayingController *)self _unregisterForEndpointChanges];

  [(MRV2NowPlayingController *)self _onQueue_clearStateForEndpoint];
}

- (void)_onQueue_clearStateForEndpoint
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  [(MRV2NowPlayingController *)self _unregisterForEndpointInvalidations];
  [(MRV2NowPlayingController *)self _unregisterForPlayerPathInvalidations];
  [(MRNowPlayingControllerDestination *)self->_destination setEndpoint:0];

  [(MRV2NowPlayingController *)self _onQueue_clearStateForUnresolvedPlayerPath];
}

- (void)_unregisterForEndpointInvalidations
{
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  endpoint = [(MRDestination *)self->_destination endpoint];
  [defaultCenter removeObserver:self name:@"MRAVEndpointDidDisconnectNotification" object:endpoint];

  [(MRV2NowPlayingController *)self setRegisteredForEndpointInvalidations:0];
}

- (MRV2NowPlayingController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = MRV2NowPlayingController;
  v5 = [(MRV2NowPlayingController *)&v23 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [[MRNowPlayingControllerDestination alloc] initWithConfiguration:configurationCopy];
    destination = v5->_destination;
    v5->_destination = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredContentItemsToMerge = v5->_deferredContentItemsToMerge;
    v5->_deferredContentItemsToMerge = v10;

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = objc_opt_class();
    label = [configurationCopy label];
    v15 = label;
    v16 = &stru_1F1513E38;
    if (label)
    {
      v16 = label;
    }

    v17 = [v12 initWithFormat:@"%@<%p>:%@", v13, v5, v16];
    label = v5->_label;
    v5->_label = v17;

    if (initWithConfiguration____onceToken != -1)
    {
      [MRV2NowPlayingController initWithConfiguration:];
    }

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create_with_target_V2("com.apple.MediaRemote.MRV2NowPlayingController.queue", v19, initWithConfiguration____globalQueue);
    queue = v5->_queue;
    v5->_queue = v20;
  }

  return v5;
}

void __50__MRV2NowPlayingController_initWithConfiguration___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRV2NowPlayingController.globalQueue", v2);
  v1 = initWithConfiguration____globalQueue;
  initWithConfiguration____globalQueue = v0;
}

- (void)destinationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRV2NowPlayingController_destinationWithCompletion___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __54__MRV2NowPlayingController_destinationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 configuration];
  [v2 _resolveForConfiguration:v3 requestID:@"destinationWithCompletion" completion:*(a1 + 40)];
}

- (MRNowPlayingControllerDestination)destination
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  queue = [(MRV2NowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__MRV2NowPlayingController_destination__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__MRV2NowPlayingController_destination__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)debugDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  queue = [(MRV2NowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MRV2NowPlayingController_debugDescription__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__MRV2NowPlayingController_debugDescription__block_invoke(uint64_t a1)
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v17 = *(v3 + 32);
  v18 = v2;
  v16 = *(v3 + 20);
  v4 = *(v3 + 24);
  v20 = [v3 endpointObserver];
  v5 = [*(a1 + 32) playerPathInvalidationObserver];
  v6 = [*(a1 + 32) registeredForNotifications];
  v7 = [*(a1 + 32) needsImmediateReloadReason];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"None";
  }

  v10 = MRCreateIndentedDebugDescriptionFromObject(*(*(a1 + 32) + 72));
  v11 = [*(*(a1 + 32) + 80) remainingIntervals];
  v12 = MRCreateIndentedDebugDescriptionFromObject(v11);
  v13 = [v19 initWithFormat:@"<%@ %p {\n   currentDestination=%@\n   updateLoadingEnabled=%u\n   loading=%u\n   endpointObserver=%@\n   playerPathInvalidationHandler=%@\n   registeredForNotifications=%u\n   needsImmediateReloadReason=%@\n   pendingDestination=%@\n   loadRetryTimer = %@}>\n", v18, v3, v17, v16, v4, v20, v5, v6, v9, v10, v12];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (void)_reloadWithReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v9 = (self->_incrementingRequestID + 1);
  self->_incrementingRequestID = v9;
  v10 = [v6 initWithFormat:@"%@-%d", uUIDString, v9];

  v11 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = reasonCopy;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ reloading<%@> for reason %@", buf, 0x20u);
  }

  [(MRV2NowPlayingController *)self _notifyDelegateOfInvalidation];
  configuration = [(MRV2NowPlayingController *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__MRV2NowPlayingController__reloadWithReason___block_invoke;
  v13[3] = &unk_1E769C090;
  v13[4] = self;
  [(MRV2NowPlayingController *)self _loadNowPlayingStateForConfiguration:configuration requestID:v10 completion:v13];
}

void __46__MRV2NowPlayingController__reloadWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 cancelableOperations];
    [v8 invalidate];

    [*(a1 + 32) _configureReloadTimerForError:v5];
    [*(a1 + 32) _notifyDelegateOfError:v5];
  }

  else
  {
    v9 = v7[10];
    v7[10] = 0;

    [v10 setDestination:*(*(a1 + 32) + 32)];
    [*(a1 + 32) _notifyDelegateOfNewResponse:v10];
  }
}

- (void)_loadNowPlayingStateForConfiguration:(id)configuration requestID:(id)d completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  dCopy = d;
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MRV2NowPlayingController *)self isLoading])
  {
    [MRV2NowPlayingController _loadNowPlayingStateForConfiguration:a2 requestID:self completion:?];
  }

  [(MRV2NowPlayingController *)self setIsLoading:1];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.LoadForConfiguration<%p>", objc_opt_class(), self];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [MRBlockGuard alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke;
  v42[3] = &unk_1E769B6D0;
  v16 = v13;
  v43 = v16;
  v17 = dCopy;
  v44 = v17;
  v18 = [(MRBlockGuard *)v15 initWithTimeout:v16 reason:v42 handler:60.0];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53;
  v34[3] = &unk_1E769D430;
  v19 = configurationCopy;
  v35 = v19;
  v20 = v16;
  v36 = v20;
  v21 = v17;
  v37 = v21;
  v22 = v14;
  v38 = v22;
  v23 = v18;
  v39 = v23;
  v24 = completionCopy;
  selfCopy = self;
  v41 = v24;
  v25 = MEMORY[0x1A58E3570](v34);
  v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v20, v21];
  v27 = v26;
  if (v19)
  {
    [v26 appendFormat:@" for %@", v19];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v27;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_67;
  v31[3] = &unk_1E769D458;
  v32 = v21;
  v33 = v25;
  v31[4] = self;
  v29 = v21;
  v30 = v25;
  [(MRV2NowPlayingController *)self _resolveForConfiguration:v19 requestID:v29 completion:v31];
}

void __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    v9 = 2112;
    v10 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
  }
}

void __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%p>", objc_opt_class(), v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%p>", objc_opt_class(), *(a1 + 32)];
  v9 = _MRLogForCategory(0xAuLL);
  v10 = v9;
  if (!v6 && v7)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v34 = v12;
        v35 = 2114;
        v36 = v13;
        v37 = 2112;
        v38 = v7;
        v39 = 2114;
        v40 = v8;
        v41 = 2048;
        v42 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v10;
        v18 = 52;
LABEL_19:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    if (!v11)
    {
      goto LABEL_25;
    }

    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v34 = v27;
    v35 = 2114;
    v36 = v28;
    v37 = 2112;
    v38 = v7;
    v39 = 2048;
    v40 = v29;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_18:
    v17 = v10;
    v18 = 42;
    goto LABEL_19;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v19)
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v34 = v20;
        v35 = 2114;
        v36 = v21;
        v37 = 2114;
        v38 = v6;
        v39 = 2114;
        v40 = v8;
        v41 = 2048;
        v42 = v22;
        _os_log_error_impl(&dword_1A2860000, v10, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

        goto LABEL_25;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
    }

    goto LABEL_25;
  }

  v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v23)
    {
      goto LABEL_25;
    }

    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138543874;
    v34 = v30;
    v35 = 2114;
    v36 = v31;
    v37 = 2048;
    v38 = v32;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v10;
    v18 = 32;
    goto LABEL_19;
  }

  if (v23)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v34 = v24;
    v35 = 2114;
    v36 = v25;
    v37 = 2114;
    v38 = v8;
    v39 = 2048;
    v40 = v26;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_18;
  }

LABEL_25:

  [*(a1 + 64) disarm];
  (*(*(a1 + 80) + 16))();
  [*(a1 + 72) setIsLoading:0];
}

uint64_t __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_67(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _loadNowPlayingStateForResolvedPlayerPath:a2 requestID:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_resolveForConfiguration:(id)configuration requestID:(id)d completion:(id)completion
{
  v83 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  dCopy = d;
  completionCopy = completion;
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForConfiguration<%p>", objc_opt_class(), self];
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [MRBlockGuard alloc];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke;
  v78[3] = &unk_1E769B6D0;
  v14 = v11;
  v79 = v14;
  v15 = dCopy;
  v80 = v15;
  v16 = [(MRBlockGuard *)v13 initWithTimeout:v14 reason:v78 handler:60.0];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke_72;
  v72[3] = &unk_1E769D480;
  v72[4] = self;
  v17 = v14;
  v73 = v17;
  v18 = v15;
  v74 = v18;
  v19 = v12;
  v75 = v19;
  v71 = v16;
  v76 = v71;
  v20 = completionCopy;
  v21 = configurationCopy;
  v22 = v20;
  v77 = v20;
  v23 = MEMORY[0x1A58E3570](v72);
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  destination = [v21 destination];
  v26 = [v24 initWithFormat:@"%@->%@", destination, self->_destination];

  v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v17, v18];
  v28 = v27;
  if (v26)
  {
    [v27 appendFormat:@" for %@", v26];
  }

  v29 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v82 = v28;
    _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  resolvedPlayerPath = [(MRNowPlayingControllerDestination *)self->_destination resolvedPlayerPath];

  if (!resolvedPlayerPath)
  {
    unresolvedPlayerPath = [(MRNowPlayingControllerDestination *)self->_destination unresolvedPlayerPath];

    destination = self->_destination;
    if (unresolvedPlayerPath)
    {
      unresolvedPlayerPath2 = [(MRNowPlayingControllerDestination *)destination unresolvedPlayerPath];
      [(MRV2NowPlayingController *)self _resolveForUnresolvedPlayerPath:unresolvedPlayerPath2 requestID:v18 completion:v23];
      goto LABEL_22;
    }

    v70 = v22;
    endpoint = [(MRDestination *)destination endpoint];

    v35 = self->_destination;
    if (endpoint)
    {
      unresolvedPlayerPath2 = [(MRDestination *)v35 endpoint];
      configuration = [(MRV2NowPlayingController *)self configuration];
      destination2 = [configuration destination];
      playerPath = [destination2 playerPath];
      client = [playerPath client];
      configuration2 = [(MRV2NowPlayingController *)self configuration];
      [configuration2 destination];
      v37 = v68 = v19;
      [v37 playerPath];
      v38 = v66 = v21;
      player = [v38 player];
      [(MRV2NowPlayingController *)self _resolveForEndpoint:unresolvedPlayerPath2 client:client player:player requestID:v18 completion:v23];

      v21 = v66;
      v19 = v68;

LABEL_21:
      v22 = v70;
      goto LABEL_22;
    }

    if ([(MRNowPlayingControllerDestination *)v35 isEndpointSet])
    {
      unresolvedPlayerPath2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:24 description:@"endpoint observer returned a nil endpoint"];
      (v23)[2](v23, 0, unresolvedPlayerPath2);
      goto LABEL_21;
    }

    v69 = v19;
    destination3 = [v21 destination];
    outputDeviceUID = [destination3 outputDeviceUID];

    destination4 = [v21 destination];
    unresolvedPlayerPath2 = destination4;
    v67 = v21;
    if (outputDeviceUID)
    {
      outputDeviceUID2 = [destination4 outputDeviceUID];
      destination5 = [v21 destination];
      playerPath2 = [destination5 playerPath];
      client2 = [playerPath2 client];
      destination6 = [v21 destination];
      playerPath3 = [destination6 playerPath];
      player2 = [playerPath3 player];
      selfCopy = self;
      v48 = outputDeviceUID2;
      [(MRV2NowPlayingController *)selfCopy _resolveForOutputDeviceUID:outputDeviceUID2 client:client2 player:player2 requestID:v18 completion:v23];
    }

    else
    {
      outputContextUID = [destination4 outputContextUID];

      destination7 = [v21 destination];
      unresolvedPlayerPath2 = destination7;
      if (outputContextUID)
      {
        outputContextUID2 = [destination7 outputContextUID];
        destination5 = [v21 destination];
        playerPath2 = [destination5 playerPath];
        client2 = [playerPath2 client];
        destination6 = [v21 destination];
        playerPath3 = [destination6 playerPath];
        player2 = [playerPath3 player];
        selfCopy2 = self;
        v48 = outputContextUID2;
        [(MRV2NowPlayingController *)selfCopy2 _resolveForOutputContextUID:outputContextUID2 client:client2 player:player2 requestID:v18 completion:v23];
      }

      else
      {
        endpoint2 = [destination7 endpoint];

        destination8 = [v21 destination];
        unresolvedPlayerPath2 = destination8;
        if (!endpoint2)
        {
          playerPath4 = [destination8 playerPath];

          if (playerPath4)
          {
            unresolvedPlayerPath2 = [v21 destination];
            playerPath5 = [unresolvedPlayerPath2 playerPath];
            [(MRV2NowPlayingController *)self _resolveForUnresolvedPlayerPath:playerPath5 requestID:v18 completion:v23];
          }

          else
          {
            unresolvedPlayerPath2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"no destination information in configuration"];
            (v23)[2](v23, 0, unresolvedPlayerPath2);
          }

          goto LABEL_20;
        }

        endpoint3 = [destination8 endpoint];
        destination5 = [v21 destination];
        playerPath2 = [destination5 playerPath];
        client2 = [playerPath2 client];
        destination6 = [v21 destination];
        playerPath3 = [destination6 playerPath];
        player2 = [playerPath3 player];
        selfCopy3 = self;
        v48 = endpoint3;
        [(MRV2NowPlayingController *)selfCopy3 _resolveForEndpoint:endpoint3 client:client2 player:player2 requestID:v18 completion:v23];
      }
    }

    v21 = v67;
LABEL_20:
    v19 = v69;
    goto LABEL_21;
  }

  unresolvedPlayerPath2 = [(MRNowPlayingControllerDestination *)self->_destination resolvedPlayerPath];
  (v23)[2](v23, unresolvedPlayerPath2, 0);
LABEL_22:
}

void __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    v9 = 2112;
    v10 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
  }
}

void __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(*(a1 + 32) + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        v35 = 138544386;
        v36 = v12;
        v37 = 2114;
        v38 = v11;
        v39 = 2112;
        v40 = v5;
        v41 = 2114;
        v42 = v13;
        v43 = 2048;
        v44 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v35, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v35 = 138544130;
    v36 = v29;
    v37 = 2114;
    v38 = v30;
    v39 = 2112;
    v40 = v5;
    v41 = 2048;
    v42 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
        v22 = *(*(a1 + 32) + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        v35 = 138544386;
        v36 = v21;
        v37 = 2114;
        v38 = v20;
        v39 = 2114;
        v40 = v6;
        v41 = 2114;
        v42 = v22;
        v43 = 2048;
        v44 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v35, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v35 = 138543874;
    v36 = v32;
    v37 = 2114;
    v38 = v33;
    v39 = 2048;
    v40 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(*(a1 + 32) + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v35 = 138544130;
    v36 = v26;
    v37 = 2114;
    v38 = v25;
    v39 = 2114;
    v40 = v27;
    v41 = 2048;
    v42 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  [*(a1 + 64) disarm];
  (*(*(a1 + 72) + 16))();
}

- (void)_resolveForOutputDeviceUID:(id)d client:(id)client player:(id)player requestID:(id)iD completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  clientCopy = client;
  playerCopy = player;
  iDCopy = iD;
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForOutputDevice<%p>", objc_opt_class(), self];
  v19 = [MEMORY[0x1E695DF00] now];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __90__MRV2NowPlayingController__resolveForOutputDeviceUID_client_player_requestID_completion___block_invoke;
  v41[3] = &unk_1E769C590;
  v31 = completionCopy;
  v42 = v31;
  v20 = MEMORY[0x1A58E3570](v41);
  iDCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v18, iDCopy];
  v22 = iDCopy;
  if (dCopy)
  {
    [iDCopy appendFormat:@" for %@", dCopy];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __90__MRV2NowPlayingController__resolveForOutputDeviceUID_client_player_requestID_completion___block_invoke_86;
  v32[3] = &unk_1E769D4A8;
  v33 = dCopy;
  v34 = v18;
  v35 = iDCopy;
  v36 = v19;
  selfCopy = self;
  v38 = clientCopy;
  v39 = playerCopy;
  v40 = v20;
  v24 = v20;
  v25 = playerCopy;
  v26 = clientCopy;
  v27 = v19;
  v28 = iDCopy;
  v29 = v18;
  v30 = dCopy;
  [(MRV2NowPlayingController *)self _onQueue_retrieveEndpointForUID:v30 completion:v32];
}

void __90__MRV2NowPlayingController__resolveForOutputDeviceUID_client_player_requestID_completion___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v13 = [v5 debugName];
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138544386;
        v40 = v18;
        v41 = 2114;
        v42 = v19;
        v43 = 2112;
        v44 = v13;
        v45 = 2114;
        v46 = v20;
        v47 = 2048;
        v48 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v13 = [v5 debugName];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138544130;
        v40 = v33;
        v41 = 2114;
        v42 = v34;
        v43 = 2112;
        v44 = v13;
        v45 = 2048;
        v46 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v39, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138544130;
        v40 = v27;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138543874;
        v40 = v36;
        v41 = 2114;
        v42 = v37;
        v43 = 2048;
        v44 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, &v39, v32);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v39 = 138544386;
    v40 = v11;
    v41 = 2114;
    v42 = v10;
    v43 = 2114;
    v44 = v6;
    v45 = 2114;
    v46 = v12;
    v47 = 2048;
    v48 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

LABEL_21:

  [*(*(a1 + 64) + 32) setEndpoint:v5];
  [*(a1 + 64) _registerForEndpointChangesForOutputDeviceUID:*(a1 + 32)];
  if (v6)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    [*(a1 + 64) _resolveForEndpoint:v5 client:*(a1 + 72) player:*(a1 + 80) requestID:*(a1 + 48) completion:*(a1 + 88)];
  }
}

- (void)_resolveForOutputContextUID:(id)d client:(id)client player:(id)player requestID:(id)iD completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  clientCopy = client;
  playerCopy = player;
  iDCopy = iD;
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForOutputContextUID<%p>", objc_opt_class(), self];
  v19 = [MEMORY[0x1E695DF00] now];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __91__MRV2NowPlayingController__resolveForOutputContextUID_client_player_requestID_completion___block_invoke;
  v31[3] = &unk_1E769D4A8;
  v20 = dCopy;
  v32 = v20;
  v21 = v18;
  v33 = v21;
  v22 = iDCopy;
  v34 = v22;
  v23 = v19;
  v35 = v23;
  selfCopy = self;
  v30 = clientCopy;
  v37 = v30;
  v24 = playerCopy;
  v38 = v24;
  v25 = completionCopy;
  v39 = v25;
  v26 = MEMORY[0x1A58E3570](v31);
  v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v21, v22];
  v28 = v27;
  if (v20)
  {
    [v27 appendFormat:@" for %@", v20];
  }

  v29 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v28;
    _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRV2NowPlayingController *)self _onQueue_retrieveEndpointForContextUID:v20 completion:v26];
}

void __91__MRV2NowPlayingController__resolveForOutputContextUID_client_player_requestID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v13 = [v5 debugName];
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138544386;
        v40 = v18;
        v41 = 2114;
        v42 = v19;
        v43 = 2112;
        v44 = v13;
        v45 = 2114;
        v46 = v20;
        v47 = 2048;
        v48 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v13 = [v5 debugName];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138544130;
        v40 = v33;
        v41 = 2114;
        v42 = v34;
        v43 = 2112;
        v44 = v13;
        v45 = 2048;
        v46 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v39, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138544130;
        v40 = v27;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v39 = 138543874;
        v40 = v36;
        v41 = 2114;
        v42 = v37;
        v43 = 2048;
        v44 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, &v39, v32);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v39 = 138544386;
    v40 = v11;
    v41 = 2114;
    v42 = v10;
    v43 = 2114;
    v44 = v6;
    v45 = 2114;
    v46 = v12;
    v47 = 2048;
    v48 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

LABEL_21:

  if (v5)
  {
    [*(a1 + 64) _resolveForEndpoint:v5 client:*(a1 + 72) player:*(a1 + 80) requestID:*(a1 + 48) completion:*(a1 + 88)];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

- (void)_resolveForEndpoint:(id)endpoint client:(id)client player:(id)player requestID:(id)d completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  dCopy = d;
  completionCopy = completion;
  playerCopy = player;
  clientCopy = client;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForEndpoint<%p>", objc_opt_class(), self];
  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [MRBlockGuard alloc];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke;
  v46[3] = &unk_1E769B6D0;
  v19 = v16;
  v47 = v19;
  v20 = dCopy;
  v48 = v20;
  v21 = [(MRBlockGuard *)v18 initWithTimeout:v19 reason:v46 handler:60.0];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_94;
  v43[3] = &unk_1E769C130;
  v22 = v21;
  v44 = v22;
  v23 = completionCopy;
  v45 = v23;
  v24 = MEMORY[0x1A58E3570](v43);
  v25 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v19, v20];
  debugName = [endpointCopy debugName];

  if (debugName)
  {
    debugName2 = [endpointCopy debugName];
    [v25 appendFormat:@" for %@", debugName2];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v25;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_95;
  v36[3] = &unk_1E769D480;
  v37 = endpointCopy;
  v38 = v19;
  v39 = v20;
  v40 = v17;
  selfCopy = self;
  v42 = v24;
  v29 = v24;
  v30 = v17;
  v31 = v20;
  v32 = v19;
  v33 = endpointCopy;
  [(MRV2NowPlayingController *)self _createUnresolvedPlayerPathForEndpoint:v33 client:clientCopy player:playerCopy completion:v36];
}

void __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    v9 = 2112;
    v10 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
  }
}

void __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 disarm];
  (*(*(a1 + 40) + 16))();
}

void __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) debugName];

  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = [*(a1 + 32) debugName];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v40 = 138544386;
      v41 = v12;
      v42 = 2114;
      v43 = v11;
      v44 = 2112;
      v45 = v5;
      v46 = 2114;
      v47 = v13;
      v48 = 2048;
      v49 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
LABEL_13:
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v40, v18);

LABEL_24:
LABEL_25:

      [*(*(a1 + 64) + 32) setUnresolvedPlayerPath:v5];
      [*(a1 + 64) _registerForEndpointInvalidations:*(a1 + 32)];
      if ([*(a1 + 32) isConnected])
      {
        [*(a1 + 64) _resolveForUnresolvedPlayerPath:v5 requestID:*(a1 + 48) completion:*(a1 + 72)];
      }

      else
      {
        v38 = *(a1 + 72);
        v39 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 description:@"connection succeded but then shortly after disconnected"];
        (*(v38 + 16))(v38, 0, v39);
      }

      goto LABEL_28;
    }

    if (!v10)
    {
      goto LABEL_25;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v40 = 138544130;
    v41 = v29;
    v42 = 2114;
    v43 = v30;
    v44 = 2112;
    v45 = v5;
    v46 = 2048;
    v47 = v31;
    v32 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v33 = v9;
    v34 = 42;
    goto LABEL_23;
  }

  if (!v6)
  {
    v25 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v25)
      {
        goto LABEL_25;
      }

      v27 = *(a1 + 40);
      v26 = *(a1 + 48);
      v13 = [*(a1 + 32) debugName];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v40 = 138544130;
      v41 = v27;
      v42 = 2114;
      v43 = v26;
      v44 = 2114;
      v45 = v13;
      v46 = 2048;
      v47 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 42;
      goto LABEL_13;
    }

    if (!v25)
    {
      goto LABEL_25;
    }

    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v40 = 138543874;
    v41 = v35;
    v42 = 2114;
    v43 = v36;
    v44 = 2048;
    v45 = v37;
    v32 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v33 = v9;
    v34 = 32;
LABEL_23:
    _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, v32, &v40, v34);
    goto LABEL_24;
  }

  v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v19)
    {
      v21 = *(a1 + 40);
      v20 = *(a1 + 48);
      v22 = [*(a1 + 32) debugName];
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:*(a1 + 56)];
      v40 = 138544386;
      v41 = v21;
      v42 = 2114;
      v43 = v20;
      v44 = 2114;
      v45 = v6;
      v46 = 2114;
      v47 = v22;
      v48 = 2048;
      v49 = v24;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v40, 0x34u);
    }
  }

  else if (v19)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

  [*(*(a1 + 64) + 32) setUnresolvedPlayerPath:v5];
  if ([v6 code] == 24)
  {
    [*(a1 + 64) _onQueue_clearStateForEndpoint];
  }

  (*(*(a1 + 72) + 16))();
LABEL_28:
}

- (void)_resolveForUnresolvedPlayerPath:(id)path requestID:(id)d completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForUnresolvedPlayerPath<%p>", objc_opt_class(), self];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [MRBlockGuard alloc];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke;
  v39[3] = &unk_1E769B6D0;
  v15 = v12;
  v40 = v15;
  v16 = dCopy;
  v41 = v16;
  v17 = [(MRBlockGuard *)v14 initWithTimeout:v15 reason:v39 handler:60.0];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_102;
  v36[3] = &unk_1E769C130;
  v18 = v17;
  v37 = v18;
  v19 = completionCopy;
  v38 = v19;
  v20 = MEMORY[0x1A58E3570](v36);
  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v15, v16];
  v22 = v21;
  if (pathCopy)
  {
    [v21 appendFormat:@" for %@", pathCopy];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRV2NowPlayingController *)self _registerForPlayerPathInvalidationsForUnresolvedPlayerPath:pathCopy];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_103;
  v29[3] = &unk_1E769D480;
  v30 = pathCopy;
  v31 = v15;
  v32 = v16;
  v33 = v13;
  selfCopy = self;
  v35 = v20;
  v24 = v20;
  v25 = v13;
  v26 = v16;
  v27 = v15;
  v28 = pathCopy;
  [(MRV2NowPlayingController *)self _resolvePlayerPath:v28 requestID:v26 completion:v29];
}

void __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    v9 = 2112;
    v10 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
  }
}

void __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 disarm];
  (*(*(a1 + 40) + 16))();
}

void __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        v37 = 138544386;
        v38 = v12;
        v39 = 2114;
        v40 = v11;
        v41 = 2112;
        v42 = v5;
        v43 = 2114;
        v44 = v13;
        v45 = 2048;
        v46 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v37, v18);
      }

LABEL_17:

      [*(a1 + 64) onQueue_setResolvedPlayerPath:v5];
      v33 = *(*(a1 + 72) + 16);
      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_17;
    }

    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v37 = 138544130;
    v38 = v30;
    v39 = 2114;
    v40 = v31;
    v41 = 2112;
    v42 = v5;
    v43 = 2048;
    v44 = v32;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (!v6)
  {
    v25 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      if (!v25)
      {
        goto LABEL_17;
      }

      v34 = *(a1 + 40);
      v35 = *(a1 + 48);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v37 = 138543874;
      v38 = v34;
      v39 = 2114;
      v40 = v35;
      v41 = 2048;
      v42 = v36;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }

    if (!v25)
    {
      goto LABEL_17;
    }

    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v37 = 138544130;
    v38 = v27;
    v39 = 2114;
    v40 = v26;
    v41 = 2114;
    v42 = v28;
    v43 = 2048;
    v44 = v29;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

  v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v19)
    {
      v21 = *(a1 + 40);
      v20 = *(a1 + 48);
      v22 = *(a1 + 32);
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:*(a1 + 56)];
      v37 = 138544386;
      v38 = v21;
      v39 = 2114;
      v40 = v20;
      v41 = 2114;
      v42 = v6;
      v43 = 2114;
      v44 = v22;
      v45 = 2048;
      v46 = v24;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v37, 0x34u);
    }
  }

  else if (v19)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

  if ([v6 code] == 5)
  {
    [*(a1 + 64) _unregisterForPlayerPathInvalidations];
    [*(a1 + 64) _onQueue_clearStateForUnresolvedPlayerPath];
  }

  v33 = *(*(a1 + 72) + 16);
LABEL_23:
  v33();
}

- (void)_loadNowPlayingStateForResolvedPlayerPath:(id)path requestID:(id)d completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([pathCopy isResolved] & 1) == 0)
  {
    [MRV2NowPlayingController _loadNowPlayingStateForResolvedPlayerPath:a2 requestID:self completion:?];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.LoadForResolvedPlayerPath<%p>", objc_opt_class(), self];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [MRBlockGuard alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke;
  v48[3] = &unk_1E769B6D0;
  v16 = v13;
  v49 = v16;
  v17 = dCopy;
  v50 = v17;
  v18 = [(MRBlockGuard *)v15 initWithTimeout:v16 reason:v48 handler:60.0];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_110;
  v41[3] = &unk_1E769D4D0;
  v19 = pathCopy;
  v42 = v19;
  v20 = v16;
  v43 = v20;
  v21 = v17;
  v44 = v21;
  v22 = v14;
  v45 = v22;
  v23 = v18;
  v46 = v23;
  v24 = completionCopy;
  v47 = v24;
  v25 = MEMORY[0x1A58E3570](v41);
  v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v20, v21];
  v27 = v26;
  if (v19)
  {
    [v26 appendFormat:@" for %@", v19];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v27;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRV2NowPlayingController *)self _registerNotificationHandlersForResolvedPlayerPath:v19];
  v40 = 0;
  v29 = [(MRV2NowPlayingController *)self _loadNowPlayingStateForPlayerPath:v19 error:&v40];
  v30 = v40;
  if (!v30 && [(MRV2NowPlayingController *)self shouldDeferArtworkRequestForConfiguration:self->_configuration])
  {
    [(MRV2NowPlayingController *)self cancelableOperations];
    v31 = v35 = v22;
    queue2 = [(MRV2NowPlayingController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_111;
    block[3] = &unk_1E769BA00;
    v37 = v29;
    selfCopy = self;
    v39 = v31;
    v32 = v31;
    v22 = v35;
    v33 = v32;
    dispatch_async(queue2, block);
  }

  (v25)[2](v25, v29, v30);
}

void __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    v9 = 2112;
    v10 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
  }
}

void __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v27 = 138544130;
      v28 = v18;
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v19;
      v33 = 2048;
      v34 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v27 = 138543874;
      v28 = v24;
      v29 = 2114;
      v30 = v25;
      v31 = 2048;
      v32 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, &v27, v23);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v27 = 138544386;
      v28 = v12;
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v6;
      v33 = 2114;
      v34 = v13;
      v35 = 2048;
      v36 = v15;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v27, 0x34u);
LABEL_13:
    }
  }

  else if (v10)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1();
  }

LABEL_14:

  [*(a1 + 64) disarm];
  (*(*(a1 + 72) + 16))();
}

void __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_111(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueue];
  v3 = [v2 contentItems];
  v4 = [v3 msv_map:&__block_literal_global_114_0];

  [*(a1 + 40) _requestPlaybackQueueArtworkForIdentifiers:v4 operationQueue:*(a1 + 48)];
}

- (id)_loadNowPlayingStateForPlayerPath:(id)path error:(id *)error
{
  pathCopy = path;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__11;
  v87 = __Block_byref_object_dispose__11;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__11;
  v81 = __Block_byref_object_dispose__11;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__11;
  v75 = __Block_byref_object_dispose__11;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__11;
  v69 = __Block_byref_object_dispose__11;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__11;
  v63 = __Block_byref_object_dispose__11;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__11;
  v57 = __Block_byref_object_dispose__11;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__11;
  v51 = __Block_byref_object_dispose__11;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__11;
  v45 = __Block_byref_object_dispose__11;
  v46 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaRemote.MRV2NowPlayingController.callbackQueue", v8);

  configuration = [(MRV2NowPlayingController *)self configuration];
  requestSupportedCommands = [configuration requestSupportedCommands];

  if (requestSupportedCommands)
  {
    dispatch_group_enter(v7);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke;
    v37[3] = &unk_1E769C158;
    v39 = &v71;
    v40 = &v65;
    v38 = v7;
    [(MRV2NowPlayingController *)self _requestSupportedCommandsForPlayerPath:pathCopy queue:v9 completion:v37];
  }

  configuration2 = [(MRV2NowPlayingController *)self configuration];
  requestPlaybackState = [configuration2 requestPlaybackState];

  if (requestPlaybackState)
  {
    dispatch_group_enter(v7);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_2;
    v34[3] = &unk_1E769C180;
    v36 = &v89;
    v35 = v7;
    MRMediaRemoteGetPlaybackStateForPlayer(pathCopy, v9, v34);
  }

  configuration3 = [(MRV2NowPlayingController *)self configuration];
  playbackQueueRequest = [configuration3 playbackQueueRequest];

  if (playbackQueueRequest)
  {
    dispatch_group_enter(v7);
    effectivePlaybackQueueRequest = [(MRV2NowPlayingController *)self effectivePlaybackQueueRequest];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3;
    v30[3] = &unk_1E769D4F8;
    v32 = &v83;
    v33 = &v77;
    v31 = v7;
    [(MRV2NowPlayingController *)self _requestPlaybackQueueForPlayerPath:pathCopy request:effectivePlaybackQueueRequest queue:v9 completion:v30];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestLastPlayingDate])
  {
    dispatch_group_enter(v7);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4;
    v26[3] = &unk_1E769D520;
    v28 = &v59;
    v29 = &v53;
    v27 = v7;
    [(MRV2NowPlayingController *)self _requestPlayerLastPlayingDateForPlayerPath:pathCopy queue:v9 completion:v26];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestClientProperties])
  {
    dispatch_group_enter(v7);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5;
    v22[3] = &unk_1E769D548;
    v24 = &v47;
    v25 = &v41;
    v23 = v7;
    [(MRV2NowPlayingController *)self _requestClientPropertiesForPlayerPath:pathCopy queue:v9 completion:v22];
  }

  v17 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v7, v17))
  {
    if (error)
    {
      v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26];
LABEL_20:
      v20 = 0;
      *error = v18;
      goto LABEL_22;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  v19 = v78[5];
  if (v19 || (v19 = v66[5]) != 0 || (v19 = v54[5]) != 0 || (v19 = v42[5]) != 0)
  {
    if (error)
    {
      v18 = v19;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v20 = objc_alloc_init(MRNowPlayingPlayerResponse);
  [(MRNowPlayingPlayerResponse *)v20 setPlaybackQueue:v84[5]];
  [(MRNowPlayingPlayerResponse *)v20 setPlaybackState:*(v90 + 6)];
  [(MRNowPlayingPlayerResponse *)v20 setSupportedCommands:v72[5]];
  [(MRNowPlayingPlayerResponse *)v20 setPlayerLastPlayingDate:v60[5]];
  [(MRNowPlayingPlayerResponse *)v20 setClientProperties:v48[5]];
LABEL_22:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);

  return v20;
}

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (void)_requestPlaybackQueueForPlayerPath:(id)path request:(id)request queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  requestCopy = request;
  pathCopy = path;
  [(MRV2NowPlayingController *)self setRequestingQueue:1];
  v14 = completionCopy;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
}

void __88__MRV2NowPlayingController__requestPlaybackQueueForPlayerPath_request_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRequestingQueue:0];
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [*(a1 + 32) deferredContentItemsToMerge];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v4 contentItemForIdentifier:v11];

        [v12 mergeFrom:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = [*(a1 + 32) deferredContentItemsToMerge];
  [v13 removeAllObjects];

  (*(*(a1 + 40) + 16))();
}

- (void)_requestContentItemArtwork:(id)artwork forPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  artworkCopy = artwork;
  v14 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:artworkCopy];

  playbackQueueRequest = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];
  [playbackQueueRequest artworkHeight];
  [(MRPlaybackQueueRequest *)v14 setArtworkHeight:?];

  playbackQueueRequest2 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];
  [playbackQueueRequest2 artworkWidth];
  [(MRPlaybackQueueRequest *)v14 setArtworkWidth:?];

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [(MRV2NowPlayingController *)self label];
  v19 = [v17 initWithFormat:@"artworkRequest<%@>", label];
  [(MRPlaybackQueueRequest *)v14 setLabel:v19];

  v21 = completionCopy;
  v20 = completionCopy;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
}

- (void)_requestSupportedCommandsForPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MRV2NowPlayingController__requestSupportedCommandsForPlayerPath_queue_completion___block_invoke;
  v9[3] = &unk_1E769B228;
  v10 = completionCopy;
  v8 = completionCopy;
  MRMediaRemoteGetSupportedCommandsForPlayer(path, queue, v9);
}

- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  v10 = [[MRNowPlayingRequest alloc] initWithPlayerPath:pathCopy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MRV2NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke;
  v12[3] = &unk_1E769C310;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MRNowPlayingRequest *)v10 requestLastPlayingDateOnQueue:queueCopy completion:v12];
}

- (void)_requestClientPropertiesForPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  client = [pathCopy client];
  origin = [pathCopy origin];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__MRV2NowPlayingController__requestClientPropertiesForPlayerPath_queue_completion___block_invoke;
  v13[3] = &unk_1E769D570;
  v14 = completionCopy;
  v12 = completionCopy;
  MRMediaRemoteGetClientProperties(client, origin, queueCopy, v13);
}

- (void)_onQueue_retrieveEndpointForContextUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [MRRequestDetails alloc];
  label = [(MRV2NowPlayingController *)self label];
  v13 = [(MRRequestDetails *)v9 initWithInitiator:@"Infer" requestID:0 reason:label];

  v11 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  queue2 = [(MRV2NowPlayingController *)self queue];
  [(MRAVLightweightReconnaissanceSession *)v11 searchEndpointsForRoutingContextUID:dCopy timeout:v13 details:queue2 queue:completionCopy completion:7.0];
}

- (void)_onQueue_retrieveEndpointForUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  discoveryPredicate = [(MRNowPlayingControllerConfiguration *)self->_configuration discoveryPredicate];

  if (discoveryPredicate)
  {
    discoveryPredicate2 = [(MRNowPlayingControllerConfiguration *)self->_configuration discoveryPredicate];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke;
    v25[3] = &unk_1E769C360;
    v25[4] = self;
    v26 = completionCopy;
    (discoveryPredicate2)[2](discoveryPredicate2, v25);

    v11 = v26;
  }

  else if (objc_msgSend_isEqualToString_(dCopy))
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_3;
    v23[3] = &unk_1E769C338;
    v24 = completionCopy;
    MRAVEndpointResolveActiveSystemEndpointWithType(1, queue2, v23, 7.0);

    v11 = v24;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(dCopy))
    {
      v14 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      label = [(MRV2NowPlayingController *)self label];
      queue3 = [(MRV2NowPlayingController *)self queue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_5;
      v18[3] = &unk_1E769C360;
      v19 = v14;
      v20 = completionCopy;
      v17 = v14;
      [(MRAVLightweightReconnaissanceSession *)v17 searchEndpointsForOutputDeviceUID:dCopy timeout:label reason:queue3 queue:v18 completion:7.0];

      goto LABEL_8;
    }

    queue4 = [(MRV2NowPlayingController *)self queue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_4;
    v21[3] = &unk_1E769C338;
    v22 = completionCopy;
    MRAVEndpointResolveActiveSystemEndpointWithType(0, queue4, v21, 7.0);

    v11 = v22;
  }

LABEL_8:
}

void __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = [v8 initWithMRError:47 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_createUnresolvedPlayerPathForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  clientCopy = client;
  playerCopy = player;
  completionCopy = completion;
  v25 = @"MREndpointConnectionReasonUserInfoKey";
  label = [(MRV2NowPlayingController *)self label];
  v26[0] = label;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke;
  v20[3] = &unk_1E769AF98;
  v23 = playerCopy;
  v24 = completionCopy;
  v20[4] = self;
  v21 = endpointCopy;
  v22 = clientCopy;
  v16 = playerCopy;
  v17 = clientCopy;
  v18 = endpointCopy;
  v19 = completionCopy;
  [v18 connectToExternalDeviceWithUserInfo:v15 completion:v20];
}

void __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke_2;
  block[3] = &unk_1E769C388;
  v12 = v3;
  v5 = a1[8];
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v8 = [*(a1 + 40) origin];
    if (v8)
    {
      v3 = [MRPlayerPath alloc];
      v4 = [*(a1 + 40) origin];
      v5 = [(MRPlayerPath *)v3 initWithOrigin:v4 client:*(a1 + 48) player:*(a1 + 56)];

      v6 = *(*(a1 + 64) + 16);
    }

    else
    {
      v7 = *(a1 + 64);
      v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:5 description:@"Endpoint.Connect succeded with no origin"];
      v6 = *(v7 + 16);
    }

    v6();
  }
}

- (void)_resolvePlayerPath:(id)path requestID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  pathCopy = path;
  queue = [(MRV2NowPlayingController *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MRV2NowPlayingController__resolvePlayerPath_requestID_completion___block_invoke;
  v13[3] = &unk_1E769C590;
  v14 = completionCopy;
  v12 = completionCopy;
  MRMediaRemoteNowPlayingResolvePlayerPathWithID(pathCopy, dCopy, 1, queue, v13);
}

void __68__MRV2NowPlayingController__resolvePlayerPath_requestID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    v6 = *(*(a1 + 32) + 16);
LABEL_5:
    v6();
    goto LABEL_6;
  }

  if ([v5 isResolved])
  {
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v8);
  (*(*(a1 + 32) + 16))();

LABEL_6:
}

- (void)onQueue_setResolvedPlayerPath:(id)path
{
  pathCopy = path;
  queue = [(MRV2NowPlayingController *)self queue];

  if (queue)
  {
    queue2 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(queue2);
  }

  playerPath = [(MRDestination *)self->_destination playerPath];
  if (playerPath == pathCopy)
  {
  }

  else
  {
    v7 = [pathCopy isEqual:playerPath];

    if ((v7 & 1) == 0)
    {
      [(MRDestination *)self->_destination setPlayerPath:pathCopy];
    }
  }

  [(MRV2NowPlayingController *)self _notifyDelegateOfPlayerPathChange:pathCopy];
}

- (void)setHelper:(id)helper
{
  helperCopy = helper;
  obj = self;
  objc_sync_enter(obj);
  helper = obj->_helper;
  obj->_helper = helperCopy;

  objc_sync_exit(obj);
}

- (void)_notifyDelegateOfNewResponse:(id)response
{
  responseCopy = response;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    didLoadResponse = [helper didLoadResponse];
    (didLoadResponse)[2](didLoadResponse, responseCopy);
  }
}

- (void)_notifyDelegateOfPlaybackStateChange:(unsigned int)change
{
  v3 = *&change;
  helper = [(MRV2NowPlayingController *)self helper];
  if (helper)
  {
    v6 = helper;
    playbackStateDidChange = [helper playbackStateDidChange];
    playbackStateDidChange[2](playbackStateDidChange, v3);

    helper = v6;
  }
}

- (void)_notifyDelegateOfPlaybackQueueChange:(id)change
{
  changeCopy = change;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    playbackQueueDidChange = [helper playbackQueueDidChange];
    (playbackQueueDidChange)[2](playbackQueueDidChange, changeCopy);
  }
}

- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)items
{
  itemsCopy = items;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    contentItemsDidUpdate = [helper contentItemsDidUpdate];
    (contentItemsDidUpdate)[2](contentItemsDidUpdate, itemsCopy);
  }
}

- (void)_notifyDelegateOfUpdatedArtwork:(id)artwork
{
  artworkCopy = artwork;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    contentItemsDidLoadArtwork = [helper contentItemsDidLoadArtwork];
    (contentItemsDidLoadArtwork)[2](contentItemsDidLoadArtwork, artworkCopy);
  }
}

- (void)_notifyDelegateOfSupportedCommandsChange:(id)change
{
  changeCopy = change;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    supportedCommandsDidChange = [helper supportedCommandsDidChange];
    (supportedCommandsDidChange)[2](supportedCommandsDidChange, changeCopy);
  }
}

- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)date
{
  dateCopy = date;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    playerLastPlayingDateDidChange = [helper playerLastPlayingDateDidChange];
    (playerLastPlayingDateDidChange)[2](playerLastPlayingDateDidChange, dateCopy);
  }
}

- (void)_notifyDelegateOfUpdatedClientProperties:(id)properties
{
  propertiesCopy = properties;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    clientPropertiesDidChange = [helper clientPropertiesDidChange];
    (clientPropertiesDidChange)[2](clientPropertiesDidChange, propertiesCopy);
  }
}

- (void)_notifyDelegateOfPlayerPathChange:(id)change
{
  changeCopy = change;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    playerPathDidChange = [helper playerPathDidChange];
    (playerPathDidChange)[2](playerPathDidChange, changeCopy);
  }
}

- (void)_notifyDelegateOfError:(id)error
{
  errorCopy = error;
  helper = [(MRV2NowPlayingController *)self helper];
  v5 = helper;
  if (helper)
  {
    didFailWithError = [helper didFailWithError];
    (didFailWithError)[2](didFailWithError, errorCopy);
  }
}

- (void)_handlePlaybackQueueChangedNotification:(id)notification
{
  notificationCopy = notification;
  cancelableOperations = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = cancelableOperations;
  v6 = cancelableOperations;
  v7 = notificationCopy;
  [v6 addOperationWithBlock:v8];
}

void __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1[5] + 4) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verboseNowPlayingControllerLogging];
  v9 = _MRLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[5];
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackQueueDidChangeNotification.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_cold_1();
  }

  v12 = [a1[5] deferredContentItemsToMerge];
  [v12 removeAllObjects];

  v13 = a1[5];
  v14 = [v13[4] resolvedPlayerPath];
  v15 = [a1[5] configuration];
  v16 = [v15 playbackQueueRequest];
  v17 = [v16 requestByRemovingArtwork];
  v18 = [a1[6] dispatchQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_139;
  v21[3] = &unk_1E769D598;
  v19 = a1[6];
  v20 = a1[5];
  v22 = v19;
  v23 = v20;
  [v13 _requestPlaybackQueueForPlayerPath:v14 request:v17 queue:v18 completion:v21];

LABEL_11:
}

void __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v6 = *(a1 + 40);
    if (v5)
    {
      [v6 _notifyDelegateOfError:v5];
    }

    else
    {
      v7 = [v6 configuration];
      v8 = [v7 playbackQueueRequest];
      v9 = [v8 includeArtwork];

      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = [v12 contentItemIdentifiers];
        [v10 _requestPlaybackQueueArtworkForIdentifiers:v11 operationQueue:*(a1 + 32)];
      }

      [*(a1 + 40) _notifyDelegateOfPlaybackQueueChange:v12];
    }
  }
}

- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)notification
{
  notificationCopy = notification;
  cancelableOperations = [(MRV2NowPlayingController *)self cancelableOperations];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  [cancelableOperations addOperationWithBlock:v7];
}

void __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v10 = [v9 mr_compactMap:&__block_literal_global_141_0];
  v11 = [*(a1 + 40) requestingQueue];
  v12 = +[MRUserSettings currentSettings];
  v13 = [v12 verboseNowPlayingControllerLogging];
  v14 = _MRLogForCategory(1uLL);
  v15 = v14;
  if (v11)
  {
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v4;
        v19 = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> deferring PlaybackQueueContentItemsChangedNotification for content items %@ because we are requesting a new playback queue.", &v19, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_2();
    }

    v18 = [*v4 deferredContentItemsToMerge];
    [v18 addObjectsFromArray:v9];
  }

  else
  {
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *v4;
        v19 = 138412546;
        v20 = v17;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsChangedNotification for content items %@.", &v19, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_1();
    }

    [*v4 _notifyDelegateOfUpdatedContentItemsWithContentItems:v9];
  }

LABEL_19:
}

- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)notification
{
  notificationCopy = notification;
  cancelableOperations = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = cancelableOperations;
  v6 = cancelableOperations;
  v7 = notificationCopy;
  [v6 addOperationWithBlock:v8];
}

void __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v6 = v5;
  if (v5 != v3 && ([v5 isEqual:v3] & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [*(*v4 + 40) playbackQueueRequest];
  v8 = [v7 includeArtwork];

  if (v8)
  {
    v9 = [*(a1 + 32) userInfo];
    v6 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

    v10 = [v6 msv_map:&__block_literal_global_143];
    v11 = +[MRUserSettings currentSettings];
    v12 = [v11 verboseNowPlayingControllerLogging];
    v13 = _MRLogForCategory(1uLL);
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v4;
        v16 = 138412546;
        v17 = v15;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %@.", &v16, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_cold_1();
    }

    [*(a1 + 40) _requestPlaybackQueueArtworkForIdentifiers:v10 operationQueue:*(a1 + 48)];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_requestPlaybackQueueArtworkForIdentifiers:(id)identifiers operationQueue:(id)queue
{
  queueCopy = queue;
  destination = self->_destination;
  identifiersCopy = identifiers;
  resolvedPlayerPath = [(MRNowPlayingControllerDestination *)destination resolvedPlayerPath];
  queue = [(MRV2NowPlayingController *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke;
  v12[3] = &unk_1E769D598;
  v13 = queueCopy;
  selfCopy = self;
  v11 = queueCopy;
  [(MRV2NowPlayingController *)self _requestContentItemArtwork:identifiersCopy forPlayerPath:resolvedPlayerPath queue:queue completion:v12];
}

void __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2;
  v11[3] = &unk_1E769BA00;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

void __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v6 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) contentItems];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> updated artwork for content items %@.", &v11, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) contentItems];
    [v9 _notifyDelegateOfUpdatedArtwork:v10];
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) configuration];
  v3 = [v2 isArtworkOnly];

  if (!v3)
  {
    v10 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2_cold_1();
    }

LABEL_11:

    return;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  [v4 _notifyDelegateOfError:v5];
}

- (void)_handlePlaybackStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  cancelableOperations = [(MRV2NowPlayingController *)self cancelableOperations];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  [cancelableOperations addOperationWithBlock:v7];
}

void __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];

  v10 = +[MRUserSettings currentSettings];
  v11 = [v10 verboseNowPlayingControllerLogging];
  v12 = _MRLogForCategory(1uLL);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v4;
      v15 = MRMediaRemoteCopyPlaybackStateDescription([v9 intValue]);
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackStateDidChangeNotification with new PlaybackState %@.", &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke_cold_1(v4, v9, v13);
  }

  [*v4 _notifyDelegateOfPlaybackStateChange:{objc_msgSend(v9, "intValue")}];
LABEL_11:
}

- (void)_handleSupportedCommandsChangedNotification:(id)notification
{
  notificationCopy = notification;
  cancelableOperations = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = cancelableOperations;
  v6 = cancelableOperations;
  v7 = notificationCopy;
  [v6 addOperationWithBlock:v8];
}

void __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1[5] + 4) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verboseNowPlayingControllerLogging];
  v9 = _MRLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[5];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing SupportedCommandsDidChangeNotification.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_cold_1();
  }

  v12 = a1[5];
  v13 = [v12[4] resolvedPlayerPath];
  v14 = [a1[5] queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_144;
  v17[3] = &unk_1E769A278;
  v15 = a1[6];
  v16 = a1[5];
  v18 = v15;
  v19 = v16;
  [v12 _requestSupportedCommandsForPlayerPath:v13 queue:v14 completion:v17];

LABEL_11:
}

void __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_2;
  v11[3] = &unk_1E769BA00;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

uint64_t __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _notifyDelegateOfError:?];
  }

  else
  {
    return [v2 _notifyDelegateOfSupportedCommandsChange:a1[6]];
  }
}

- (void)_handleClientStateDidChange:(id)change
{
  changeCopy = change;
  cancelableOperations = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = changeCopy;
  selfCopy = self;
  v11 = cancelableOperations;
  v6 = cancelableOperations;
  v7 = changeCopy;
  [v6 addOperationWithBlock:v8];
}

void __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1[5] + 4) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verboseNowPlayingControllerLogging];
  v9 = _MRLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[5];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing clientStateDidChange.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_cold_1();
  }

  v12 = a1[5];
  v13 = [v12[4] resolvedPlayerPath];
  v14 = [a1[5] queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_145;
  v17[3] = &unk_1E769D5C0;
  v15 = a1[6];
  v16 = a1[5];
  v18 = v15;
  v19 = v16;
  [v12 _requestClientPropertiesForPlayerPath:v13 queue:v14 completion:v17];

LABEL_11:
}

void __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_145(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_2;
  v11[3] = &unk_1E769BA00;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

uint64_t __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _notifyDelegateOfError:?];
  }

  else
  {
    return [v2 _notifyDelegateOfUpdatedClientProperties:a1[6]];
  }
}

- (void)_handleActiveSystemEndpointChangedNotification:(id)notification
{
  configuration = [(MRV2NowPlayingController *)self configuration];
  destination = [configuration destination];
  outputDeviceUID = [destination outputDeviceUID];
  if (objc_msgSend_isEqualToString_(outputDeviceUID))
  {
  }

  else
  {
    configuration2 = [(MRV2NowPlayingController *)self configuration];
    destination2 = [configuration2 destination];
    outputDeviceUID2 = [destination2 outputDeviceUID];
    isEqualToString = objc_msgSend_isEqualToString_(outputDeviceUID2);

    if (!isEqualToString)
    {
      return;
    }
  }

  [(MRV2NowPlayingController *)self _handleEndpointChanged];
}

- (void)_registerForEndpointChangesForOutputDeviceUID:(id)d
{
  dCopy = d;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MRV2NowPlayingController *)self shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)self registeredForEndpointChanges])
  {
    if ((objc_msgSend_isEqualToString_(dCopy) & 1) != 0 || objc_msgSend_isEqualToString_(dCopy))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__handleActiveSystemEndpointChangedNotification_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v7 = [MRAVEndpointObserver alloc];
      label = [(MRV2NowPlayingController *)self label];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __74__MRV2NowPlayingController__registerForEndpointChangesForOutputDeviceUID___block_invoke;
      v15 = &unk_1E769C470;
      objc_copyWeak(&v16, &location);
      v9 = [(MRAVEndpointObserver *)v7 initWithOutputDeviceUID:dCopy label:label callback:&v12];
      endpointObserver = self->_endpointObserver;
      self->_endpointObserver = v9;

      v11 = [(MRV2NowPlayingController *)self endpointObserver:v12];
      [v11 begin];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    [(MRV2NowPlayingController *)self setRegisteredForEndpointChanges:1];
  }
}

void __74__MRV2NowPlayingController__registerForEndpointChangesForOutputDeviceUID___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _handleEndpointChangedToEndpoint:a2];
    WeakRetained = v4;
  }
}

- (void)_registerForEndpointInvalidations:(id)invalidations
{
  invalidationsCopy = invalidations;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MRV2NowPlayingController *)self shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)self registeredForEndpointInvalidations])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleEndpointDidDisconnectNotification_ name:@"MRAVEndpointDidDisconnectNotification" object:invalidationsCopy];

    [(MRV2NowPlayingController *)self setRegisteredForEndpointInvalidations:1];
  }
}

- (void)_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)path
{
  pathCopy = path;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MRV2NowPlayingController *)self shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)self registeredForPlayerPathInvalidations])
  {
    objc_initWeak(&location, self);
    v6 = [MRNowPlayingPlayerPathInvalidationHandler alloc];
    queue2 = [(MRV2NowPlayingController *)self queue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __87__MRV2NowPlayingController__registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke;
    v14 = &unk_1E769C448;
    objc_copyWeak(&v15, &location);
    v8 = [(MRNowPlayingPlayerPathInvalidationHandler *)v6 initWithPlayerPath:pathCopy invalidateImmediatlyIfInvalid:0 queue:queue2 invalidationCallback:&v11];

    v9 = [MRMediaRemoteServiceClient sharedServiceClient:v11];
    v10 = [v9 addPlayerPathInvalidationHandler:v8];
    [(MRV2NowPlayingController *)self setPlayerPathInvalidationObserver:v10];

    [(MRV2NowPlayingController *)self setRegisteredForPlayerPathInvalidations:1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __87__MRV2NowPlayingController__registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _handlePlayerPathInvalidatedWithPlayerPath:a2];
    WeakRetained = v4;
  }
}

- (void)_registerNotificationHandlersForResolvedPlayerPath:(id)path
{
  pathCopy = path;
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRV2NowPlayingControllerOperationQueue *)selfCopy->_cancelableOperations invalidate];
  v6 = [MRV2NowPlayingControllerOperationQueue alloc];
  queue2 = [(MRV2NowPlayingController *)selfCopy queue];
  v8 = [(MRV2NowPlayingControllerOperationQueue *)v6 initWithDispatchQueue:queue2];
  cancelableOperations = selfCopy->_cancelableOperations;
  selfCopy->_cancelableOperations = v8;

  objc_sync_exit(selfCopy);
  if ([(MRV2NowPlayingController *)selfCopy shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)selfCopy registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(1);
    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications(1);
    configuration = [(MRV2NowPlayingController *)selfCopy configuration];
    playbackQueueRequest = [configuration playbackQueueRequest];

    if (playbackQueueRequest)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:selfCopy selector:sel__handlePlaybackQueueChangedNotification_ name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:selfCopy selector:sel__handlePlaybackQueueContentItemsChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:selfCopy selector:sel__handlePlaybackQueueContentItemsArtworkChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
    }

    configuration2 = [(MRV2NowPlayingController *)selfCopy configuration];
    requestPlaybackState = [configuration2 requestPlaybackState];

    if (requestPlaybackState)
    {
      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 addObserver:selfCopy selector:sel__handlePlaybackStateChangedNotification_ name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
    }

    configuration3 = [(MRV2NowPlayingController *)selfCopy configuration];
    requestSupportedCommands = [configuration3 requestSupportedCommands];

    if (requestSupportedCommands)
    {
      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 addObserver:selfCopy selector:sel__handleSupportedCommandsChangedNotification_ name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
    }

    configuration4 = [(MRV2NowPlayingController *)selfCopy configuration];
    requestClientProperties = [configuration4 requestClientProperties];

    if (requestClientProperties)
    {
      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 addObserver:selfCopy selector:sel__handleClientStateDidChange_ name:@"kMRMediaRemoteApplicationClientStateDidChange" object:0];
    }

    [(MRV2NowPlayingController *)selfCopy setRegisteredForNotifications:1];
  }
}

- (void)_handleEndpointChanged
{
  queue = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_async_on_queue();
}

uint64_t __50__MRV2NowPlayingController__handleEndpointChanged__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  if ([*(a1 + 32) isLoading])
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing endpoint change", &v9, 0xCu);
    }

    v6 = [*(a1 + 32) pendingDestination];
    [v6 setEndpoint:0];

    return [*(a1 + 32) setEndpointChanged:1];
  }

  else
  {
    [*(a1 + 32) _onQueue_clearStateForEndpoint];
    v8 = *(a1 + 32);

    return [v8 _reloadWithReason:@"endpoint Change"];
  }
}

- (void)_handleEndpointChangedToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(MRV2NowPlayingController *)self queue];
  v6 = endpointCopy;
  msv_dispatch_async_on_queue();
}

void __61__MRV2NowPlayingController__handleEndpointChangedToEndpoint___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = [*(a1 + 32) uniqueIdentifier];
  v2 = [*(*(a1 + 40) + 32) endpoint];
  v3 = [v2 uniqueIdentifier];
  if (v15 == v3)
  {
  }

  else
  {
    v4 = [v15 isEqual:v3];

    if (v4)
    {
      return;
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 80);
    *(v5 + 80) = 0;

    if ([*(a1 + 40) isLoading])
    {
      v7 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) debugName];
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing endpoint change to %@", buf, 0x16u);
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) pendingDestination];
      [v11 setEndpoint:v10];

      v12 = [*(a1 + 40) pendingDestination];
      [v12 setIsEndpointSet:1];

      [*(a1 + 40) setEndpointChanged:1];
      return;
    }

    [*(a1 + 40) _onQueue_clearStateForEndpoint];
    [*(*(a1 + 40) + 32) setEndpoint:*(a1 + 32)];
    [*(*(a1 + 40) + 32) setIsEndpointSet:1];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [*(a1 + 32) debugName];
    v15 = [v13 initWithFormat:@"endpoint change top %@", v14];

    [*(a1 + 40) _reloadWithReason:v15];
  }
}

- (void)_handleEndpointInvalidated
{
  queue = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_async_on_queue();
}

void __54__MRV2NowPlayingController__handleEndpointInvalidated__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = [*(*(a1 + 32) + 32) endpoint];

  if (v4)
  {
    if ([*(a1 + 32) isLoading])
    {
      v5 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing endpoint invalidation", &v9, 0xCu);
      }

      v7 = [*(a1 + 32) pendingDestination];
      [v7 setEndpoint:0];

      [*(a1 + 32) setEndpointInvalidated:1];
    }

    else
    {
      [*(a1 + 32) _onQueue_clearStateForEndpoint];
      v8 = *(a1 + 32);

      [v8 _reloadWithReason:@"endpoint Invalidation"];
    }
  }
}

- (void)_handlePlayerPathInvalidatedWithPlayerPath:(id)path
{
  pathCopy = path;
  queue = [(MRV2NowPlayingController *)self queue];
  v6 = pathCopy;
  msv_dispatch_async_on_queue();
}

uint64_t __71__MRV2NowPlayingController__handlePlayerPathInvalidatedWithPlayerPath___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  if ([*(a1 + 32) isLoading])
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing playerPath invalidation to %@", &v11, 0x16u);
    }

    if ([*(a1 + 40) isResolved])
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = 0;
    }

    v10 = [*(a1 + 32) pendingDestination];
    [v10 setResolvedPlayerPath:v7];

    return [*(a1 + 32) setPlayerPathInvalidated:1];
  }

  else
  {
    [*(a1 + 32) _onQueue_clearStateForUnresolvedPlayerPath];
    if ([*(a1 + 40) isResolved])
    {
      [*(*(a1 + 32) + 32) setResolvedPlayerPath:*(a1 + 40)];
    }

    v8 = *(a1 + 32);

    return [v8 _reloadWithReason:@"playerPath Invalidation"];
  }
}

- (void)_handleRetryTimerElapsed
{
  queue = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_async_on_queue();
}

void __52__MRV2NowPlayingController__handleRetryTimerElapsed__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isLoading] & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v3 = [*(a1 + 32) loadRetryTimer];
    [v3 currentInterval];
    v5 = [v2 initWithFormat:@"LoadRetryTimer fired after %lf total seconds", v4];

    [*(a1 + 32) _reloadWithReason:v5];
  }
}

- (void)_configureReloadTimerForError:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (_configureReloadTimerForError__onceToken != -1)
  {
    [MRV2NowPlayingController _configureReloadTimerForError:];
  }

  v5 = _configureReloadTimerForError____ignorableErrorsForReload;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    loadRetryTimer = [(MRV2NowPlayingController *)self loadRetryTimer];

    if (loadRetryTimer)
    {
      v8 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        loadRetryTimer2 = [(MRV2NowPlayingController *)self loadRetryTimer];
        [loadRetryTimer2 timeUntilNextInterval];
        *buf = 138412546;
        selfCopy2 = self;
        v25 = 2048;
        v26 = v10;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> LoadRetryTimer is already scheduled to retry in %lf more seconds", buf, 0x16u);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController.loadRetryTimer<%p>", self];
      v12 = objc_alloc(MEMORY[0x1E69B14E0]);
      v13 = +[MRUserSettings currentSettings];
      destinationResolverReconRetryIntervals = [v13 destinationResolverReconRetryIntervals];
      queue = [(MRV2NowPlayingController *)self queue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58__MRV2NowPlayingController__configureReloadTimerForError___block_invoke_191;
      v20[3] = &unk_1E769B178;
      objc_copyWeak(&v21, &location);
      v16 = [v12 initWithIntervals:destinationResolverReconRetryIntervals name:v11 queue:queue block:v20];
      [(MRV2NowPlayingController *)self setLoadRetryTimer:v16];

      v17 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        loadRetryTimer3 = [(MRV2NowPlayingController *)self loadRetryTimer];
        [loadRetryTimer3 timeUntilNextInterval];
        *buf = 138412546;
        selfCopy2 = self;
        v25 = 2048;
        v26 = v19;
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> Starting LoadRetryTimer to fire in %lf seconds", buf, 0x16u);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __58__MRV2NowPlayingController__configureReloadTimerForError___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1577500];
  v1 = _configureReloadTimerForError____ignorableErrorsForReload;
  _configureReloadTimerForError____ignorableErrorsForReload = v0;
}

void __58__MRV2NowPlayingController__configureReloadTimerForError___block_invoke_191(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRetryTimerElapsed];
}

- (NSString)needsImmediateReloadReason
{
  if ([(MRV2NowPlayingController *)self needsImmediateReload])
  {
    if ([(MRV2NowPlayingController *)self endpointChanged])
    {
      v3 = [&stru_1F1513E38 stringByAppendingString:@"|endpoint changed"];
    }

    else
    {
      v3 = &stru_1F1513E38;
    }

    if ([(MRV2NowPlayingController *)self endpointInvalidated])
    {
      v4 = [(__CFString *)v3 stringByAppendingString:@"|endpoint invalidation"];

      v3 = v4;
    }

    if ([(MRV2NowPlayingController *)self playerPathInvalidated])
    {
      v5 = [(__CFString *)v3 stringByAppendingString:@"|playerPath invalidation"];

      v3 = v5;
    }
  }

  else
  {
    v3 = &stru_1F1513E38;
  }

  return v3;
}

- (void)setIsLoading:(BOOL)loading
{
  queue = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_sync_on_queue();
}

void __41__MRV2NowPlayingController_setIsLoading___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 24))
  {
    *(v2 + 24) = v1;
    v4 = *(a1 + 32);
    if ((v4[24] & 1) == 0)
    {
      if ([v4 needsImmediateReload])
      {
        v9 = [*(a1 + 32) needsImmediateReloadReason];
        if ([*(a1 + 32) endpointChanged])
        {
          [*(a1 + 32) _onQueue_clearStateForEndpoint];
          [*(a1 + 32) setEndpointChanged:0];
        }

        if ([*(a1 + 32) endpointInvalidated])
        {
          [*(a1 + 32) _onQueue_clearStateForEndpoint];
          [*(a1 + 32) setEndpointInvalidated:0];
        }

        if ([*(a1 + 32) playerPathInvalidated])
        {
          [*(a1 + 32) _onQueue_clearStateForUnresolvedPlayerPath];
          [*(a1 + 32) setPlayerPathInvalidated:0];
        }

        objc_storeStrong((*(a1 + 32) + 32), *(*(a1 + 32) + 72));
        v5 = *(a1 + 32);
        v6 = *(v5 + 72);
        *(v5 + 72) = 0;

        v7 = *(a1 + 32);
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Previous %@", v9];
        [v7 _reloadWithReason:v8];
      }
    }
  }
}

- (MRNowPlayingControllerDestination)pendingDestination
{
  queue = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingDestination = self->_pendingDestination;
  if (!pendingDestination)
  {
    v5 = [(MRNowPlayingControllerDestination *)self->_destination copy];
    v6 = self->_pendingDestination;
    self->_pendingDestination = v5;

    pendingDestination = self->_pendingDestination;
  }

  return pendingDestination;
}

- (BOOL)updateLoadingEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(MRV2NowPlayingController *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRV2NowPlayingController_updateLoadingEnabled__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)shouldDeferArtworkRequestForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy isSingleShot])
  {
    includeArtwork = 0;
  }

  else
  {
    playbackQueueRequest = [configurationCopy playbackQueueRequest];
    includeArtwork = [playbackQueueRequest includeArtwork];
  }

  return includeArtwork;
}

- (id)effectivePlaybackQueueRequest
{
  configuration = [(MRV2NowPlayingController *)self configuration];
  v4 = [(MRV2NowPlayingController *)self shouldDeferArtworkRequestForConfiguration:configuration];
  playbackQueueRequest = [configuration playbackQueueRequest];
  v6 = playbackQueueRequest;
  if (v4)
  {
    requestByRemovingArtwork = [playbackQueueRequest requestByRemovingArtwork];

    v6 = requestByRemovingArtwork;
  }

  return v6;
}

void __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*a2 file:@"MRV2NowPlayingController.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!self.isLoading"}];
}

- (void)_loadNowPlayingStateForConfiguration:(uint64_t)a1 requestID:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRV2NowPlayingController.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"!self.isLoading"}];
}

void __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1()
{
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_8(v1, v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8);

  OUTLINED_FUNCTION_10();
}

- (void)_loadNowPlayingStateForResolvedPlayerPath:(uint64_t)a1 requestID:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRV2NowPlayingController.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"resolvedPlayerPath.isResolved"}];
}

void __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "[MRV2NowPlayingController] <%@> processing PlaybackQueueDidChangeNotification.", v2, v3, v4, v5);
}

void __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v0, v1, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsChangedNotification for content items %@.");
}

void __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v0, v1, "[MRV2NowPlayingController] <%@> deferring PlaybackQueueContentItemsChangedNotification for content items %@ because we are requesting a new playback queue.");
}

void __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v0, v1, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %@.");
}

void __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_1A2860000, v0, OS_LOG_TYPE_ERROR, "[MRV2NowPlayingController] <%@> ignoring artwork request failure because configuration needs other data", v1, 0xCu);
}

void __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = MRMediaRemoteCopyPlaybackStateDescription([a2 intValue]);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_1A2860000, a3, OS_LOG_TYPE_DEBUG, "[MRV2NowPlayingController] <%@> processing PlaybackStateDidChangeNotification with new PlaybackState %@.", &v6, 0x16u);
}

void __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "[MRV2NowPlayingController] <%@> processing SupportedCommandsDidChangeNotification.", v2, v3, v4, v5);
}

void __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "[MRV2NowPlayingController] <%@> processing clientStateDidChange.", v2, v3, v4, v5);
}

@end