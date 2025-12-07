@interface ANRemotePlaybackSession
- (ANRemotePlaybackSession)init;
- (ANRemotePlaybackSessionDelegate)delegate;
- (BOOL)endSession;
- (BOOL)startSessionForGroupID:(id)d announcementsHandler:(id)handler;
- (OS_dispatch_queue)handlerQueue;
- (void)_callHandler:(id)handler;
- (void)checkInWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d;
- (void)invalidate;
- (void)lastPlayedAnnouncementInfoWithCompletion:(id)completion;
- (void)managerDidInterruptConnection:(id)connection;
- (void)managerDidInvalidateConnection:(id)connection;
- (void)setPlaybackStartedForAnnouncement:(id)announcement;
- (void)setPlaybackStoppedForAnnouncement:(id)announcement;
@end

@implementation ANRemotePlaybackSession

- (ANRemotePlaybackSession)init
{
  v26 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = ANRemotePlaybackSession;
  v2 = [(ANRemotePlaybackSession *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v4 = ANLogHandleRemotePlaybackSession(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = &stru_2836DAA20;
      v24 = 2112;
      v25 = @"com.apple.announced.remoteplaybacksession";
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_DEFAULT, "%@Creating Connection to Service: %@", buf, 0x16u);
    }

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E9448];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    [v5 setClasses:v11 forSelector:sel_lastPlayedAnnouncementInfoForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E5108];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    [v12 setClasses:v15 forSelector:sel_didUpdateAnnouncements_forGroupID_ argumentIndex:0 ofReply:0];
    [v12 setClass:objc_opt_class() forSelector:sel_didReceiveAnnouncement_forGroupID_ argumentIndex:0 ofReply:0];
    v16 = objc_opt_new();
    delegateProxy = v3->_delegateProxy;
    v3->_delegateProxy = v16;

    [(ANRemotePlaybackSessionServiceClientInterfaceProxy *)v3->_delegateProxy setDelegate:v3];
    v18 = [[ANXPCManager alloc] initWithMachServiceName:@"com.apple.announced.remoteplaybacksession" remoteObjectInterface:v5 exportedInterface:v12 exportedObject:v3->_delegateProxy];
    xpcManager = v3->_xpcManager;
    v3->_xpcManager = v18;

    [(ANXPCManager *)v3->_xpcManager setDelegate:v3];
    [(ANXPCManager *)v3->_xpcManager setCheckInProvider:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(ANRemotePlaybackSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = ANRemotePlaybackSession;
  [(ANRemotePlaybackSession *)&v3 dealloc];
}

- (void)invalidate
{
  [(ANRemotePlaybackSession *)self setDelegate:0];
  [(ANRemotePlaybackSession *)self setHandler:0];
  [(ANRemotePlaybackSession *)self setHandlerQueue:0];
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  [connection invalidate];
}

- (void)setPlaybackStartedForAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [v6 setPlaybackStartedForAnnouncement:announcementCopy];
}

void __61__ANRemotePlaybackSession_setPlaybackStartedForAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleRemotePlaybackSession(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412802;
    v5 = &stru_2836DAA20;
    v6 = 2080;
    v7 = "[ANRemotePlaybackSession setPlaybackStartedForAnnouncement:]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v4, 0x20u);
  }
}

- (void)setPlaybackStoppedForAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_94];
  [v6 setPlaybackStoppedForAnnouncement:announcementCopy];
}

void __61__ANRemotePlaybackSession_setPlaybackStoppedForAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleRemotePlaybackSession(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412802;
    v5 = &stru_2836DAA20;
    v6 = 2080;
    v7 = "[ANRemotePlaybackSession setPlaybackStoppedForAnnouncement:]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v4, 0x20u);
  }
}

- (void)lastPlayedAnnouncementInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ANRemotePlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke;
  v9[3] = &unk_2784E1F20;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 lastPlayedAnnouncementInfoForEndpointID:0 completionHandler:v7];
}

void __68__ANRemotePlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRemotePlaybackSession(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANRemotePlaybackSession lastPlayedAnnouncementInfoWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)startSessionForGroupID:(id)d announcementsHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  [(ANRemotePlaybackSession *)self setHandler:handlerCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__ANRemotePlaybackSession_startSessionForGroupID_announcementsHandler___block_invoke;
  v19[3] = &unk_2784E23F8;
  v11 = v8;
  v20 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ANRemotePlaybackSession_startSessionForGroupID_announcementsHandler___block_invoke_95;
  v16[3] = &unk_2784E2420;
  v18 = &v21;
  v13 = v11;
  v17 = v13;
  [v12 startSessionForGroupID:dCopy reply:v16];

  v14 = dispatch_time(0, 2000000000);
  dispatch_group_wait(v13, v14);
  LOBYTE(xpcManager) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return xpcManager;
}

void __71__ANRemotePlaybackSession_startSessionForGroupID_announcementsHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRemotePlaybackSession(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANRemotePlaybackSession startSessionForGroupID:announcementsHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)endSession
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__ANRemotePlaybackSession_endSession__block_invoke;
  v14[3] = &unk_2784E23F8;
  v6 = v3;
  v15 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__ANRemotePlaybackSession_endSession__block_invoke_97;
  v11[3] = &unk_2784E2420;
  v13 = &v16;
  v8 = v6;
  v12 = v8;
  [v7 endSessionWithReply:v11];

  v9 = dispatch_time(0, 2000000000);
  dispatch_group_wait(v8, v9);
  LOBYTE(xpcManager) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return xpcManager;
}

void __37__ANRemotePlaybackSession_endSession__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleRemotePlaybackSession(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANRemotePlaybackSession endSession]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_callHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = [(ANRemotePlaybackSession *)self handlerQueue];

  if (handlerQueue)
  {
    handlerQueue2 = [(ANRemotePlaybackSession *)self handlerQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ANRemotePlaybackSession__callHandler___block_invoke;
    v8[3] = &unk_2784E2010;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_async(handlerQueue2, v8);
  }

  else
  {
    handler = [(ANRemotePlaybackSession *)self handler];
    (handler)[2](handler, handlerCopy);
  }
}

void __40__ANRemotePlaybackSession__callHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  dCopy = d;
  v8 = ANLogHandleRemotePlaybackSession(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = &stru_2836DAA20;
    v17 = 2080;
    v18 = "[ANRemotePlaybackSession didReceiveAnnouncement:forGroupID:]";
    v19 = 2112;
    v20 = announcementCopy;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@%s, did receive announcement: %@", buf, 0x20u);
  }

  delegate = [(ANRemotePlaybackSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_2836E94A8])
  {
    delegate2 = [(ANRemotePlaybackSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__ANRemotePlaybackSession_didReceiveAnnouncement_forGroupID___block_invoke;
      v12[3] = &unk_2784E2038;
      objc_copyWeak(&v14, buf);
      v13 = announcementCopy;
      [ANUtils asyncDispatchOnGlobalQueue:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }
}

void __61__ANRemotePlaybackSession_didReceiveAnnouncement_forGroupID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didReceiveAnnouncement:*(a1 + 32)];
}

- (void)managerDidInterruptConnection:(id)connection
{
  connectionCopy = connection;
  delegate = [(ANRemotePlaybackSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke;
    v11[3] = &unk_2784E2060;
    objc_copyWeak(&v12, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  delegate2 = [(ANRemotePlaybackSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke_2;
    v9[3] = &unk_2784E2060;
    objc_copyWeak(&v10, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInterrupted];
}

void __57__ANRemotePlaybackSession_managerDidInterruptConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionInterrupted:WeakRetained];
}

- (void)managerDidInvalidateConnection:(id)connection
{
  connectionCopy = connection;
  delegate = [(ANRemotePlaybackSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke;
    v11[3] = &unk_2784E2060;
    objc_copyWeak(&v12, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  delegate2 = [(ANRemotePlaybackSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke_2;
    v9[3] = &unk_2784E2060;
    objc_copyWeak(&v10, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInvalidated];
}

void __58__ANRemotePlaybackSession_managerDidInvalidateConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionInvalidated:WeakRetained];
}

- (void)checkInWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcManager = [(ANRemotePlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ANRemotePlaybackSession_checkInWithCompletionHandler___block_invoke;
  v12[3] = &unk_2784E1F20;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ANRemotePlaybackSession_checkInWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2784E2088;
  v11 = v7;
  v9 = v7;
  [v8 resumeWithEndpointID:0 completionHandler:v10];
}

- (OS_dispatch_queue)handlerQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerQueue);

  return WeakRetained;
}

- (ANRemotePlaybackSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end