@interface AUHostingService
+ (BOOL)conformsToProtocol:(id)protocol;
+ (BOOL)instancesRespondToSelector:(SEL)selector;
- (AUHostingService)initWithConnection:(id)connection;
- (id).cxx_construct;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)closeHost:(id)host;
- (void)dealloc;
- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)host config:(id)config reply:(id)reply;
- (void)retrieveAudioUnitInstanceID:(id)d;
@end

@implementation AUHostingService

- (id).cxx_construct
{
  *(self + 3) = 0uLL;
  *(self + 8) = 0;
  return self;
}

- (void)dealloc
{
  if (self->_host)
  {
    v3 = +[AUHostingServiceInstanceMap sharedInstance];
    audioUnitUUID = [(AURemoteHost *)self->_host audioUnitUUID];
    [v3 unregisterInstance:audioUnitUUID];

    host = self->_host;
    self->_host = 0;
  }

  v6.receiver = self;
  v6.super_class = AUHostingService;
  [(AUHostingService *)&v6 dealloc];
}

- (void)closeHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_auditToken(WeakRetained);
  }

  else
  {
    memset(&task_info_out[1], 0, sizeof(audit_token_t));
  }

  task_info_outCnt.val[0] = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, task_info_outCnt.val))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    task_info_outCnt = task_info_out[1];
    v7 = audit_token_to_pid(&task_info_outCnt);
    task_info_outCnt = task_info_out[0];
    if (v7 == audit_token_to_pid(&task_info_outCnt))
    {
      task_info_outCnt = task_info_out[1];
      v8 = audit_token_to_pidversion(&task_info_outCnt);
      task_info_outCnt = task_info_out[0];
      v9 = v8 == audit_token_to_pidversion(&task_info_outCnt);
    }

    else
    {
      v9 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__AUHostingService_closeHost___block_invoke;
    aBlock[3] = &unk_1E72C1FD8;
    aBlock[4] = self;
    v17 = v9;
    v10 = hostCopy;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    v13 = atomic_fetch_add(g_number_of_connections, 0xFFFFFFFF) - 1;
    if (v9)
    {
      v14 = (*(v11 + 2))(v11, v13 == 0);
      v14[2]();
    }

    else
    {
      (*(v10 + 2))(v10, 0, v13);
      v14 = (v12)[2](v12, v13 == 0);
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }
}

id __30__AUHostingService_closeHost___block_invoke(uint64_t a1, char a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__AUHostingService_closeHost___block_invoke_2;
  aBlock[3] = &unk_1E72C1FB0;
  v3 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = v3;
  v9 = a2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void __30__AUHostingService_closeHost___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  CAFormatter::CAFormatter(&v15, (*(a1 + 32) + 24));
  v3 = *v2;
  v4 = (*v2 + 48);
  if (*(v3 + 71) < 0)
  {
    v4 = *v4;
  }

  {
    caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v13);
  }

  v5 = auhs_log_category(void)::category;
  if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v17 = "AUHostingService.mm";
    v18 = 1024;
    v19 = 186;
    v20 = 2080;
    v21 = v15;
    v22 = 2080;
    v23 = v4;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Releasing Audio Unit %s and disconnecting from Hosting Service %s", buf, 0x26u);
  }

  v6 = +[AUHostingServiceInstanceMap sharedInstance];
  v7 = [*(*(a1 + 32) + 8) audioUnitUUID];
  [v6 unregisterInstance:v7];

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained invalidate];

  v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v11 setExportedObject:0];

  if (*(a1 + 48) == 1)
  {
    atomic_load(g_number_of_connections);
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 49) == 1)
  {
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v14);
    }

    v12 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v17 = "AUHostingService.mm";
      v18 = 1024;
      v19 = 202;
      v20 = 2080;
      v21 = v4;
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Shutting down Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    {
      AUHostingService_exit_handler(void)::handler = 0;
      qword_1EAD31480 = &unk_1F033AD90;
      qword_1EAD31498 = &qword_1EAD31480;
    }

    os_unfair_lock_lock(&AUHostingService_exit_handler(void)::handler);
    if (!qword_1EAD31498)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*qword_1EAD31498 + 48))(qword_1EAD31498);
    os_unfair_lock_unlock(&AUHostingService_exit_handler(void)::handler);
  }

  if (v15)
  {
    free(v15);
  }
}

- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)host config:(id)config reply:(id)reply
{
  v46 = *MEMORY[0x1E69E9840];
  configCopy = config;
  replyCopy = reply;
  componentFlagsMask = host->componentFlagsMask;
  *&self->_componentDescription.componentType = *&host->componentType;
  self->_componentDescription.componentFlagsMask = componentFlagsMask;
  v11 = objc_alloc(MEMORY[0x1E696AFB0]);
  v12 = [configCopy objectForKeyedSubscript:@"audioUnitInstanceUUID"];
  v13 = [v11 initWithUUIDString:v12];

  if (v13)
  {
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v33);
    }

    v14 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v39 = "AUHostingService.mm";
      v40 = 1024;
      v41 = 148;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to retrieve %@", buf, 0x1Cu);
    }

    v15 = +[AUHostingServiceInstanceMap sharedInstance];
    v16 = [v15 retrieveInstance:v13];
    host = self->_host;
    self->_host = v16;

    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v34);
    }

    v18 = auhs_log_category(void)::category;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      audioUnitUUID = [(AURemoteHost *)self->_host audioUnitUUID];
      uUIDString = [audioUnitUUID UUIDString];
      v21 = self->_host;
      *buf = 136315906;
      v39 = "AUHostingService.mm";
      v40 = 1024;
      v41 = 150;
      v42 = 2112;
      v43 = uUIDString;
      v44 = 2112;
      v45 = v21;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Connected to Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }
  }

  else
  {
    v22 = [AURemoteHost alloc];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v24 = [(AURemoteHost *)v22 initWithConnection:WeakRetained config:configCopy];
    v25 = self->_host;
    self->_host = v24;

    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v36);
    }

    v26 = auhs_log_category(void)::category;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      audioUnitUUID2 = [(AURemoteHost *)self->_host audioUnitUUID];
      uUIDString2 = [audioUnitUUID2 UUIDString];
      v29 = self->_host;
      *buf = 136315906;
      v39 = "AUHostingService.mm";
      v40 = 1024;
      v41 = 153;
      v42 = 2112;
      v43 = uUIDString2;
      v44 = 2112;
      v45 = v29;
      _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }

    v18 = +[AUHostingServiceInstanceMap sharedInstance];
    audioUnitUUID3 = [(AURemoteHost *)self->_host audioUnitUUID];
    [v18 registerInstance:audioUnitUUID3 instance:self->_host];
  }

  if (self->_host)
  {
    CAFormatter::CAFormatter(&v37, &self->_componentDescription);
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v35);
    }

    v31 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v39 = "AUHostingService.mm";
      v40 = 1024;
      v41 = 164;
      v42 = 2080;
      v43 = v37;
      _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit: %s", buf, 0x1Cu);
    }

    replyCopy[2](replyCopy, 0);
    if (v37)
    {
      free(v37);
    }
  }

  else
  {
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
    (replyCopy)[2](replyCopy, v32);
  }
}

- (void)retrieveAudioUnitInstanceID:(id)d
{
  dCopy = d;
  host = self->_host;
  if (host)
  {
    audioUnitUUID = [(AURemoteHost *)host audioUnitUUID];
    dCopy[2](dCopy, 0, audioUnitUUID);
  }

  else
  {
    audioUnitUUID = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10867 userInfo:0];
    (dCopy)[2](dCopy, audioUnitUUID, 0);
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  host = self->_host;
  if (host)
  {
    if (objc_opt_respondsToSelector())
    {
      host = self->_host;
    }

    else
    {
      host = 0;
    }
  }

  return host;
}

- (AUHostingService)initWithConnection:(id)connection
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = AUHostingService;
  v5 = [(AUHostingService *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    add = atomic_fetch_add(g_number_of_connections, 1u);
    _UUID = [MEMORY[0x1E696B0D8] _UUID];
    v9 = _UUID;
    if (_UUID)
    {
      uUIDString = [_UUID UUIDString];
      v11 = uUIDString;
      std::string::__assign_external(&v6->_instanceUUID, [uUIDString UTF8String]);
    }

    if (!add)
    {
      {
        caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v19);
      }

      v12 = auhs_log_category(void)::category;
      if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
      {
        p_instanceUUID = &v6->_instanceUUID;
        if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
        {
          p_instanceUUID = p_instanceUUID->__data_;
        }

        *buf = 136315650;
        v22 = "AUHostingService.mm";
        v23 = 1024;
        v24 = 96;
        v25 = 2080;
        v26 = p_instanceUUID;
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Launched new Audio Unit Hosting Service %s", buf, 0x1Cu);
      }
    }

    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v18);
    }

    v14 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      v15 = &v6->_instanceUUID;
      if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
      {
        v15 = v15->__data_;
      }

      *buf = 136315650;
      v22 = "AUHostingService.mm";
      v23 = 1024;
      v24 = 100;
      v25 = 2080;
      v26 = v15;
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d New connection with Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    v16 = v6;
  }

  return v6;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (([AURemoteHost instancesRespondToSelector:?]& 1) != 0)
  {
    return 1;
  }

  v6 = [self superclass];

  return [v6 instancesRespondToSelector:selector];
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([AURemoteHost conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_msgSend(self "superclass")];
  }

  return v5;
}

@end