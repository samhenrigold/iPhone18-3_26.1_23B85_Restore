@interface GEOMapDataSubscriptionRemoteDownloadManager
- (GEOMapDataSubscriptionRemoteDownloadManager)init;
- (id)_connection;
- (void)dealloc;
@end

@implementation GEOMapDataSubscriptionRemoteDownloadManager

- (GEOMapDataSubscriptionRemoteDownloadManager)init
{
  v14.receiver = self;
  v14.super_class = GEOMapDataSubscriptionRemoteDownloadManager;
  v2 = [(GEOMapDataSubscriptionRemoteDownloadManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_configuredConnection.lock._os_unfair_lock_opaque = 0;
    v2->_configuredConnection.didRun = 0;
    v4 = geo_dispatch_queue_create_with_workloop_qos();
    incomingMessageQueue = v3->_incomingMessageQueue;
    v3->_incomingMessageQueue = v4;

    v6 = geo_isolater_create();
    statesLock = v3->_statesLock;
    v3->_statesLock = v6;

    objc_initWeak(&location, v3);
    global_queue = geo_get_global_queue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__GEOMapDataSubscriptionRemoteDownloadManager_init__block_invoke;
    v11[3] = &unk_1E7070108;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch("GEODaemonDidStartDarwinNotification", &v3->_geodLaunchedNotifyToken, global_queue, v11);

    v9 = v3;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_connection
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__GEOMapDataSubscriptionRemoteDownloadManager__connection__block_invoke;
  v4[3] = &unk_1E7071900;
  v4[4] = self;
  GEOOnce(&self->_configuredConnection, v4);
  return self->_connection;
}

void __58__GEOMapDataSubscriptionRemoteDownloadManager__connection__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__GEOMapDataSubscriptionRemoteDownloadManager__connection__block_invoke_2;
  v6[3] = &unk_1E7070E38;
  objc_copyWeak(&v7, &location);
  v3 = [GEOXPCConnection createServerConnectionFor:14 debugIdentifier:@"MapDataSubscriptionDownloadManager" queue:v2 eventHandler:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  notify_cancel(self->_geodLaunchedNotifyToken);
  v3.receiver = self;
  v3.super_class = GEOMapDataSubscriptionRemoteDownloadManager;
  [(GEOMapDataSubscriptionRemoteDownloadManager *)&v3 dealloc];
}

@end