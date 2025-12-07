@interface SFRemoteHotspotSession
- (SFRemoteHotspotSession)init;
- (SFRemoteHotspotSessionDelegate)delegate;
- (void)enableHotspotForDevice:(id)device withCompletionHandler:(id)handler;
- (void)enableRemoteHotspotForDevice:(id)device withCompletionHandler:(id)handler;
- (void)startBrowsing;
- (void)stopBrowsing;
- (void)updateLowLatencyFilter:(id)filter isAddFilter:(BOOL)addFilter withCompletionHandler:(id)handler;
- (void)updatedFoundDeviceList:(id)list;
- (void)xpcManagerConnectionInterrupted;
@end

@implementation SFRemoteHotspotSession

- (SFRemoteHotspotSession)init
{
  v7.receiver = self;
  v7.super_class = SFRemoteHotspotSession;
  v2 = [(SFRemoteHotspotSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_browsing = 0;
    connectionProxy = v2->_connectionProxy;
    v2->_connectionProxy = 0;

    v5 = +[SFCompanionXPCManager sharedManager];
    [v5 registerObserver:v3];
  }

  return v3;
}

- (void)startBrowsing
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  v4 = tethering_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Starting browsing", buf, 2u);
  }

  if (![(SFRemoteHotspotSession *)selfCopy browsing])
  {
    [(SFRemoteHotspotSession *)selfCopy setBrowsing:1];
    v5 = +[SFCompanionXPCManager sharedManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SFRemoteHotspotSession_startBrowsing__block_invoke;
    v6[3] = &unk_1E788C4F8;
    v6[4] = selfCopy;
    [v5 remoteHotspotSessionForClient:selfCopy withCompletionHandler:v6];
  }

  objc_sync_exit(selfCopy);
}

void __39__SFRemoteHotspotSession_startBrowsing__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) browsing];
  if (v7)
  {
    if (v5)
    {
      v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/startBrowsing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v8, &state);
      [*(a1 + 32) setConnectionProxy:v5];
      v9 = [*(a1 + 32) connectionProxy];
      [v9 startBrowsing];

      v11 = tethering_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Started browsing", v16, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v13 = tethering_log(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_1(v6, v13);
      }

      v15 = tethering_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_2(v6, v15);
      }

      [*(a1 + 32) setBrowsing:0];
    }
  }

  else
  {
    v12 = tethering_log(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Browsing stopped while getting proxy", &state, 2u);
    }
  }
}

- (void)stopBrowsing
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  v4 = tethering_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.opaque[0]) = 0;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Stopping browsing", &buf, 2u);
  }

  if ([(SFRemoteHotspotSession *)selfCopy browsing])
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/stopBrowsing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v5, &buf);
    [(SFRemoteHotspotSession *)selfCopy setBrowsing:0];
    connectionProxy = [(SFRemoteHotspotSession *)selfCopy connectionProxy];
    [connectionProxy stopBrowsing];

    v8 = tethering_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Stopped browsing", v9, 2u);
    }

    os_activity_scope_leave(&buf);
  }

  objc_sync_exit(selfCopy);
}

- (void)enableHotspotForDevice:(id)device withCompletionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  connectionProxy = [(SFRemoteHotspotSession *)self connectionProxy];

  if (connectionProxy)
  {
    v9 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/enableHotspotForDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    connectionProxy2 = [(SFRemoteHotspotSession *)self connectionProxy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__SFRemoteHotspotSession_enableHotspotForDevice_withCompletionHandler___block_invoke;
    v11[3] = &unk_1E788C520;
    v12 = handlerCopy;
    [connectionProxy2 enableHotspotForDevice:deviceCopy withCompletionHandler:v11];

    os_activity_scope_leave(&state);
  }
}

void __71__SFRemoteHotspotSession_enableHotspotForDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 name];
  v7 = [v6 password];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)enableRemoteHotspotForDevice:(id)device withCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  handlerCopy = handler;
  selfCopy = self;
  v9 = objc_sync_enter(selfCopy);
  v10 = tethering_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.opaque[0]) = 138412290;
    *(buf.opaque + 4) = deviceCopy;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Enabling %@", &buf, 0xCu);
  }

  connectionProxy = [(SFRemoteHotspotSession *)selfCopy connectionProxy];

  if (connectionProxy)
  {
    v12 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/enableHotspotForDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v12, &buf);
    connectionProxy2 = [(SFRemoteHotspotSession *)selfCopy connectionProxy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__SFRemoteHotspotSession_enableRemoteHotspotForDevice_withCompletionHandler___block_invoke;
    v16[3] = &unk_1E788C548;
    v17 = deviceCopy;
    v18 = handlerCopy;
    [connectionProxy2 enableHotspotForDevice:v17 withCompletionHandler:v16];

    os_activity_scope_leave(&buf);
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"XPC connection unavailable";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v14 errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }

  objc_sync_exit(selfCopy);
}

void __77__SFRemoteHotspotSession_enableRemoteHotspotForDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = tethering_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Enabled %@, %@, error (%@)", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateLowLatencyFilter:(id)filter isAddFilter:(BOOL)addFilter withCompletionHandler:(id)handler
{
  addFilterCopy = addFilter;
  handlerCopy = handler;
  filterCopy = filter;
  v9 = +[SFCompanionXPCManager sharedManager];
  [v9 updateLowLatencyFilter:filterCopy isAddFilter:addFilterCopy completion:handlerCopy];
}

- (void)updatedFoundDeviceList:(id)list
{
  v9 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v5 = tethering_log(listCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = listCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Updated device list %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained session:self updatedFoundDevices:listCopy];
}

- (void)xpcManagerConnectionInterrupted
{
  v2 = tethering_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "XPC Connection was interrupted", v3, 2u);
  }
}

- (SFRemoteHotspotSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1A9662000, a2, OS_LOG_TYPE_FAULT, "Couldn't retrieve proxy %@", &v4, 0xCu);
}

void __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "remoteHotspotSessionForClient: %@", &v2, 0xCu);
}

@end