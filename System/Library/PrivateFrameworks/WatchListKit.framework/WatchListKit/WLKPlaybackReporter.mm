@interface WLKPlaybackReporter
- (WLKPlaybackReporter)init;
- (id)_connection;
- (void)_invalidationHandler;
- (void)endPlaybackSession:(id)session;
- (void)reportPlayback:(id)playback sessionID:(id)d completion:(id)completion;
@end

@implementation WLKPlaybackReporter

- (WLKPlaybackReporter)init
{
  v3.receiver = self;
  v3.super_class = WLKPlaybackReporter;
  result = [(WLKPlaybackReporter *)&v3 init];
  if (result)
  {
    result->_xpcLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)reportPlayback:(id)playback sessionID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  dCopy = d;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__WLKPlaybackReporter_reportPlayback_sessionID_completion___block_invoke;
  v23[3] = &unk_279E5EA68;
  v24 = completionCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x2743D2DF0](v23);
  _connection = [(WLKPlaybackReporter *)self _connection];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __59__WLKPlaybackReporter_reportPlayback_sessionID_completion___block_invoke_2;
  v21 = &unk_279E5EB38;
  v22 = v12;
  v14 = v12;
  v15 = [_connection remoteObjectProxyWithErrorHandler:&v18];

  v17 = WLKPlaybackTrackingLogObject(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = dCopy;
    v27 = 2112;
    v28 = playbackCopy;
    _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKPlaybackReporter - Requesting playback report [%@] %@", buf, 0x16u);
  }

  [v15 reportPlayback:playbackCopy sessionID:dCopy completion:{v14, v18, v19, v20, v21}];
}

uint64_t __59__WLKPlaybackReporter_reportPlayback_sessionID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__WLKPlaybackReporter_reportPlayback_sessionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKPlaybackTrackingLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPlaybackReporter - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)endPlaybackSession:(id)session
{
  v11 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  _connection = [(WLKPlaybackReporter *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_30];

  v8 = WLKPlaybackTrackingLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = sessionCopy;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPlaybackReporter - Requesting endPlaybackSession [%@]", &v9, 0xCu);
  }

  [v6 endPlaybackSession:sessionCopy];
}

void __42__WLKPlaybackReporter_endPlaybackSession___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPlaybackTrackingLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPlaybackReporter - Error: Unable to communicate with the remote object proxy (%@)", &v4, 0xCu);
  }
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_xpcLock);
  if (!self->_xpcConnection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v3;

    v5 = self->_xpcConnection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    v7 = self->_xpcConnection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_5];
    objc_initWeak(&location, self);
    v9 = self->_xpcConnection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __34__WLKPlaybackReporter__connection__block_invoke_6;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_xpcConnection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_xpcLock);
  v10 = self->_xpcConnection;

  return v10;
}

void __34__WLKPlaybackReporter__connection__block_invoke(uint64_t a1)
{
  v1 = WLKPlaybackTrackingLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKPlaybackReporter - Connection interrupted.", v2, 2u);
  }
}

void __34__WLKPlaybackReporter__connection__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidationHandler];
}

- (void)_invalidationHandler
{
  v3 = WLKPlaybackTrackingLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPlaybackReporter - Connection invalidated.", v5, 2u);
  }

  os_unfair_lock_lock(&self->_xpcLock);
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  os_unfair_lock_unlock(&self->_xpcLock);
}

@end