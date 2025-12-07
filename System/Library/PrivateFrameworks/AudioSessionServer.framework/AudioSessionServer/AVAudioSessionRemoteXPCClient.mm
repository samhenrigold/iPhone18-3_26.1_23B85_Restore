@interface AVAudioSessionRemoteXPCClient
- (AVAudioSessionRemoteXPCClient)initWithServer:(id)server process:(ProcessInfo *)process delegate:;
- (id).cxx_construct;
- (void)activateSession:(unsigned int)session options:(unint64_t)options requestID:(unint64_t)d reply:(id)reply;
- (void)addMXNotificationListener:(unsigned int)listener notificationName:(id)name reply:(id)reply;
- (void)allowAppToInitiatePlaybackTemporarilyFromBackground:(id)background reply:(id)reply;
- (void)createAudioApplicationForSpecification:(id)specification reply:(id)reply;
- (void)createIONodeWithSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type reply:(id)reply;
- (void)createProxySession:(unsigned int)session reply:(id)reply;
- (void)createSession:(unint64_t)session sourceAuditToken:(id *)token sourceSessionID:(unsigned int)d nameOrDeviceUID:(id)iD clientProcessName:(id)name clientProcessBundleID:(id)bundleID useCaseIdentifier:(unsigned int)identifier reply:(id)self0;
- (void)deactivateSession:(unsigned int)session options:(unint64_t)options priority:(id)priority requestID:(unint64_t)d reply:(id)reply;
- (void)dealloc;
- (void)destroySession:(unsigned int)session reply:(id)reply;
- (void)getApplicationMessages:(id *)messages clientID:(unsigned int)d reply:(id)reply;
- (void)getApplicationProperty:(id *)property clientID:(unsigned int)d propertyID:(id)iD isMXProperty:(BOOL)xProperty reply:(id)reply;
- (void)getDeferredMessages:(unsigned int)messages reply:(id)reply;
- (void)getEnhanceDialogueLevelWithReply:(id)reply;
- (void)getIOControllerPeriod:(unsigned int)period decoupledInput:(BOOL)input reply:(id)reply;
- (void)getMXPropertyGenericPipe:(unsigned int)pipe propertyName:(id)name reply:(id)reply;
- (void)getProperties:(unsigned int)properties properties:(id)a4 reply:(id)reply;
- (void)getPropertiesForCache:(unsigned int)cache reply:(id)reply;
- (void)getPropertiesIONode:(unsigned int)node properties:(id)properties reply:(id)reply;
- (void)getProperty:(unsigned int)property propertyName:(id)name MXProperty:(BOOL)xProperty reply:(id)reply;
- (void)getSpatialPreferencesForSession:(unsigned int)session contentType:(int64_t)type reply:(id)reply;
- (void)getSpatialPreferencesForSession:(unsigned int)session reply:(id)reply;
- (void)handleRemoteInterruption:(unsigned int)interruption interruptionStatus:(id)status postInterruptionNotification:(BOOL)notification reply:(id)reply;
- (void)initWithServer:process:delegate:;
- (void)invalidate;
- (void)invalidateIONode:(unsigned int)node reply:(id)reply;
- (void)muteInputForRecordingProcesses:(id)processes;
- (void)reconfigureIONode:(unsigned int)node withSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type reply:(id)reply;
- (void)removeMXNotificationListener:(unsigned int)listener notificationName:(id)name reply:(id)reply;
- (void)sessionIDs:(id *)ds clientID:(unsigned int)d reply:(id)reply;
- (void)setApplicationProperty:(id *)property clientID:(unsigned int)d propertyID:(id)iD propertyValue:(id)value reply:(id)reply;
- (void)setEnhanceDialogueLevel:(id)level reply:(id)reply;
- (void)setEnhanceDialoguePreference:(id)preference reply:(id)reply;
- (void)setIONode:(unsigned int)node playState:(unsigned int)state modes:(unsigned int)modes reply:(id)reply;
- (void)setIOProperties:(unsigned int)properties values:(id)values reply:(id)reply;
- (void)setMXPropertyOnAllSessions:(id *)sessions clientID:(unsigned int)d MXProperty:(id)property values:(id)values reply:(id)reply;
- (void)setProperties:(unsigned int)properties values:(id)values MXProperties:(BOOL)xProperties batchStrategy:(int)strategy genericMXPipe:(BOOL)pipe reply:(id)reply;
- (void)setPropertiesIONode:(unsigned int)node values:(id)values reply:(id)reply;
- (void)setSession:(unsigned int)session decoupledInput:(BOOL)input hasIOEventListeners:(BOOL)listeners reply:(id)reply;
- (void)setSessionPlayState:(unsigned int)state playState:(unsigned int)playState playerType:(unsigned int)type playerRef:(id)ref modes:(unsigned int)modes reply:(id)reply;
- (void)silenceOutput:(unsigned int)output options:(unint64_t)options reply:(id)reply;
- (void)simulatePrimarySessionCreationInsideServerWithReply:(id)reply;
- (void)sleepWithReply:(unsigned int)reply reply:(id)a4;
- (void)toggleInputMuteForRecordingProcess:(id)process;
- (void)updateApplicationProperty:(id *)property clientID:(unsigned int)d propertyID:(id)iD propertyValue:(id)value context:(id)context reply:(id)reply;
- (void)updateMicrophonePermission:(int64_t)permission clientToken:(id *)token reply:(id)reply;
- (void)verifySessionExists:(unsigned int)exists reply:(id)reply;
@end

@implementation AVAudioSessionRemoteXPCClient

- (id).cxx_construct
{
  self->_clientProcess.token.mValue = 0;
  self->_clientProcess.xpcConnection = 0;
  self->_clientProcess.mClientRelay = 0;
  *&self->_clientProcess.mProcessName.__rep_.__l.__size_ = 0uLL;
  self->_clientProcess.mProcessName.__rep_.__l.__data_ = 0;
  self->_replyWatchdogFunctionName = 0;
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(&self->_replyWatchdogMinTimestamp);
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(&self->_defaultReplyWatchdogFactory.mTimeoutHandler.__f_.__f_);
  return self;
}

- (AVAudioSessionRemoteXPCClient)initWithServer:(id)server process:(ProcessInfo *)process delegate:
{
  v5 = v4;
  v38 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v9 = v5;
  v23.receiver = self;
  v23.super_class = AVAudioSessionRemoteXPCClient;
  v10 = [(AVAudioSessionRemoteXPCClient *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_server, serverCopy);
    v12 = [[AVAudioSessionXPCClientRelay alloc] initWithConnection:process->xpcConnection token:process->token.mValue];
    v13 = *&v11->_clientProcess.var0;
    *&v11->_clientProcess.var0 = v12;

    v11->_clientProcess.token.mValue = process->token.mValue;
    objc_storeStrong(&v11->_clientProcess.xpcConnection, process->xpcConnection);
    WeakRetained = objc_loadWeakRetained(&process->mClientRelay);
    objc_storeWeak(&v11->_clientProcess.mClientRelay, WeakRetained);

    std::string::operator=(&v11->_clientProcess.mProcessName, &process->mProcessName);
    objc_storeWeak(&v11->_clientProcess.mClientRelay, *&v11->_clientProcess.var0);
    if (!v11->_clientProcess.xpcConnection)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    objc_storeStrong(&v11->_clientRelay, v5);
    objc_initWeak(&location, v11);
    objc_copyWeak(&to, &location);
    LOBYTE(v11->_serverDelegate) = 0;
    *&v11->_invalidated = "unknown";
    v11->_replyWatchdogFunctionName = std::chrono::system_clock::now().__d_.__rep_;
    objc_copyWeak(&from, &to);
    v37 = 0;
    v35 = &unk_28535A640;
    objc_moveWeak(&v36, &from);
    v37 = &v35;
    objc_destroyWeak(&from);
    caulk::xpc::reply_watchdog_factory::init2();
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v35);
    objc_copyWeak(&v19, &to);
    v34 = 0;
    v32 = &unk_28535A640;
    objc_moveWeak(&v33, &v19);
    v34 = &v32;
    objc_destroyWeak(&v19);
    caulk::xpc::reply_watchdog_factory::init2();
    v15 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v32);
    v16 = *avas::server::gSessionServerLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      xpcConnection = v11->_clientProcess.xpcConnection;
      *buf = 136315906;
      v25 = "AVAudioSessionXPCServer.mm";
      v26 = 1024;
      v27 = 606;
      v28 = 2112;
      v29 = xpcConnection;
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New connection: %@ (%p)", buf, 0x26u);
    }

    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *avas::server::gSessionServerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v6 = "AVAudioSessionXPCServer.mm";
    v7 = 1024;
    v8 = 613;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Deallocated connection %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = AVAudioSessionRemoteXPCClient;
  [(AVAudioSessionRemoteXPCClient *)&v4 dealloc];
}

- (void)sleepWithReply:(unsigned int)reply reply:(id)a4
{
  v6 = a4;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient sleepWithReply:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(&self->_replyWatchdogMinTimestamp, v6, 0);

  sleep(reply);
  v7[2](v7, 0, &stru_28535B610);
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_clientProcess.xpcConnection;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v5 = WeakRetained;
  if (!v3)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v6 = *avas::server::gSessionServerLog(WeakRetained);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v9 = 136315906;
    v10 = "AVAudioSessionXPCServer.mm";
    v11 = 1024;
    v12 = 634;
    v13 = 2112;
    v14 = v3;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidated connection: %@ (%p)", &v9, 0x26u);
  }

  LOBYTE(self->_serverDelegate) = 1;
  if (v5)
  {
    v8 = avas::server::LegacySessionManager::Instance(v7);
    avas::server::LegacySessionManager::RemoveProxyClientsForInvalidatedXPCConnection(v8, v3);
    avas::server::LegacySessionManager::RemoveSessionsForInvalidatedXPCConnection(v8, v3);
    avas::server::LegacySessionManager::RemoveApplicationForInvalidatedXPCConnection(v8, v3);
    avas::server::LegacySessionManager::RemoveIONodeSessionsForInvalidatedXPCConnection(v8, v3);
    [(avas::server *)v5 removeConnection:v3];
  }
}

- (void)createProxySession:(unsigned int)session reply:(id)reply
{
  v4 = *&session;
  replyCopy = reply;
  v17[0] = 1;
  v18 = 3842;
  v19 = v4;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createProxySession:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v9 = avas::server::LegacySessionManager::Instance(v8);
  memset(v16, 0, sizeof(v16));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  v12 = 1;
  v13 = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v9, v4, v16, &v12, &v14);
  if (v14)
  {
    v7[2](v7, 0);
  }

  else
  {
    v11 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient createProxySession:reply:]", v4, -50);
    (v7)[2](v7, v11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  avas::ScopedTrace::~ScopedTrace(v17);
}

- (void)verifySessionExists:(unsigned int)exists reply:(id)reply
{
  v4 = *&exists;
  v32 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v18[0] = 1;
  v19 = 3844;
  v20 = v4;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient verifySessionExists:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},BOOL>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v9 = avas::server::LegacySessionManager::Instance(v8);
  memset(v17, 0, sizeof(v17));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  *buf = 1;
  LOBYTE(v25) = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v9, v4, v17, buf, &v15);
  v11 = v15;
  v13 = *avas::server::gSessionServerLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "failed";
    *buf = 136315906;
    v25 = "AVAudioSessionXPCServer.mm";
    v27 = 684;
    v26 = 1024;
    if (v11)
    {
      v14 = "succeeded";
    }

    v28 = 1024;
    v29 = v4;
    v30 = 2080;
    v31 = v14;
    _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Look up of session ID 0x%x %s", buf, 0x22u);
  }

  (v7)[2](v7, 0, v11 != 0);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  avas::ScopedTrace::~ScopedTrace(v18);
}

- (void)simulatePrimarySessionCreationInsideServerWithReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = avas::server::LegacySessionManager::Instance(replyCopy);
  memset(&v14, 0, sizeof(v14));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  buf = v14;
  v19 = 1;
  atoken = v14;
  v20 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(v5, &buf, 0, self->_clientRelay, 1, &v12);
  if (v12)
  {
    v7 = (*(*v12 + 16))(v12);
    (*(replyCopy + 2))(replyCopy, 0, v7);
  }

  else
  {
    v8 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 136315394;
      *&buf.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 704;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation failed", &buf, 0x12u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Session creation failed in server";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [v9 errorWithDomain:*MEMORY[0x277CCA590] code:2003329396 userInfo:v10];

    (*(replyCopy + 2))(replyCopy, v11, 0);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

- (void)destroySession:(unsigned int)session reply:(id)reply
{
  replyCopy = reply;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient destroySession:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);
  objc_claimAutoreleasedReturnValue();

  avas::server::LegacySessionManager::Instance(v6);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  operator new();
}

void __54__AVAudioSessionRemoteXPCClient_destroySession_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = 1;
  v6 = 3972;
  v7 = v2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x245CEEB60](v3, 0x20C40A4A59CD2);
  }

  avas::ScopedTrace::~ScopedTrace(v5);
}

- (void)setIOProperties:(unsigned int)properties values:(id)values reply:(id)reply
{
  v6 = *&properties;
  v53 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setIOProperties:values:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v36[0] = 1;
  v37 = 3849;
  v38 = v6;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  kdebug_trace();
  memset(&v35, 0, sizeof(v35));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v33, v6, &v35, 1);
  v12 = v33;
  if (v33)
  {
    v13 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v12, &v35);
    v15 = HasMXPropertyPipeEntitlement;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v15)
    {
      v16 = objc_opt_respondsToSelector();
      if (v16)
      {
        v17 = *avas::server::gSessionServerLog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v46 = "AVAudioSessionXPCServer.mm";
          v47 = 1024;
          v48 = 786;
          v49 = 2112;
          v50 = valuesCopy;
          v51 = 1024;
          v52 = v6;
          _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting AudioIOProperties:%@ for session:0x%x ", buf, 0x22u);
        }

        v18 = [(AVAudioSessionXPCClientRelay *)self->_clientRelay setIOPropertiesForSession:v6 values:valuesCopy];
        v19 = v18;
        if (v18)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v29 objects:v42 count:16];
          if (v21)
          {
            v22 = *v30;
            while (2)
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v30 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = [v20 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * i), v29}];
                if ([v24 intValue])
                {
                  [v24 intValue];
                  v21 = NSErrorWithString(&cfstr_SettingAudioio.isa);

                  goto LABEL_30;
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v29 objects:v42 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:
        }

        else
        {
          v21 = 0;
        }

        (v10)[2](v10, v21, v19);
      }

      else
      {
        v19 = NSErrorWithString(&cfstr_SettingAudioio.isa);
        (v10)[2](v10, v19, 0);
      }
    }

    else
    {
      v26 = *avas::server::gSessionServerLog(HasMXPropertyPipeEntitlement);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v46 = "AVAudioSessionXPCServer.mm";
        v47 = 1024;
        v48 = 774;
        v49 = 2112;
        v50 = valuesCopy;
        v51 = 1024;
        v52 = v6;
        _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set AudioIOProperty: %@ on generic pipe for session: 0x%x due to missing entitlement.", buf, 0x22u);
      }

      v27 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Entitlement required to use generic Audio IO property setter SPI";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v19 = [v27 errorWithDomain:*MEMORY[0x277CCA590] code:1701737535 userInfo:v28];

      (v10)[2](v10, v19, 0);
    }
  }

  else
  {
    v25 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v46 = "AVAudioSessionXPCServer.mm";
      v47 = 1024;
      v48 = 765;
      v49 = 1024;
      LODWORD(v50) = v6;
      _os_log_impl(&dword_241701000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }

    v19 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient setIOProperties:values:reply:]", v6, 561210739);
    (v10)[2](v10, v19, 0);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  avas::ScopedTrace::~ScopedTrace(v36);
}

- (void)setProperties:(unsigned int)properties values:(id)values MXProperties:(BOOL)xProperties batchStrategy:(int)strategy genericMXPipe:(BOOL)pipe reply:(id)reply
{
  valuesCopy = values;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setProperties:values:MXProperties:batchStrategy:genericMXPipe:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v16 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply___block_invoke;
  v22[3] = &unk_278CEAA48;
  propertiesCopy = properties;
  v22[4] = self;
  v17 = v16;
  v24 = v17;
  pipeCopy = pipe;
  v18 = valuesCopy;
  v23 = v18;
  xPropertiesCopy = xProperties;
  strategyCopy = strategy;
  v19 = MEMORY[0x245CEF0E0](v22);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply___block_invoke(uint64_t a1)
{
  v111 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v83[0] = 1;
  v84 = 3849;
  v85 = v2;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  kdebug_trace();
  memset(&v82, 0, sizeof(v82));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v80, *(a1 + 56), &v82, 1);
  v4 = v80;
  if (v80)
  {
    if (*(a1 + 64) != 1)
    {
      goto LABEL_10;
    }

    v5 = v81;
    if (v81)
    {
      atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v4, &v82);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (HasMXPropertyPipeEntitlement)
    {
LABEL_10:
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v89 objects:buf count:16];
      if (v10)
      {
        v11 = *v90;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v90 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v89 + 1) + 8 * i);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              v19 = *avas::server::gSessionServerLog(isKindOfClass);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *v99 = 136315650;
                *&v99[4] = "AVAudioSessionXPCServer.mm";
                v100 = 1024;
                v101 = 255;
                v102 = 2112;
                v103 = v13;
                _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unexpected dictionary key %@. All keys must be NSStrings", v99, 0x1Cu);
              }

              v20 = [*(v7 + 24) processIdentifier];
              v21 = MEMORY[0x277CCACA8];
              avas::server::ProcessInfo::processName((v7 + 16), v22, v99);
              if ((v103 & 0x80000000) == 0)
              {
                v23 = v99;
              }

              else
              {
                v23 = *v99;
              }

              v24 = [v21 stringWithUTF8String:v23];
              if (SBYTE3(v103) < 0)
              {
                operator delete(*v99);
              }

              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"SetProperties failed for client %@(%d). Invalid dictionary key=%@", v24, v20, v13];
              v26 = MEMORY[0x277CCA9B8];
              v98 = *MEMORY[0x277CCA450];
              *v99 = v25;
              v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
              v73 = [v26 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v27];

              goto LABEL_30;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v89 objects:buf count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v73 = 0;
LABEL_30:

      if (v73)
      {
        v28 = *(*(a1 + 48) + 16);
        v29 = v73;
        v28();
LABEL_74:

        goto LABEL_75;
      }

      if (*(a1 + 65) == 1)
      {
        v30 = *(a1 + 40);
        v31 = *(a1 + 56);
        v32 = *(a1 + 60);
        v79 = 0;
        v33 = avas::server::forbid_acq::SetPropertiesOnMXSession(v31, &v82, v30, v32, &v79);
        v34 = v79;
        if (!v33)
        {
          (*(*(a1 + 48) + 16))();
LABEL_73:

          v29 = 0;
          goto LABEL_74;
        }

        v35 = MEMORY[0x277CCA9B8];
        v96 = *MEMORY[0x277CCA450];
        v97 = @"Failed to set properties";
        v72 = v34;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v37 = [v35 errorWithDomain:*MEMORY[0x277CCA590] code:v33 userInfo:v36];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v72 = [*(a1 + 40) mutableCopy];
        if ((atomic_load_explicit(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute, memory_order_acquire) & 1) == 0)
        {
          v71 = __cxa_guard_acquire(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute);
          if (v71)
          {
            _ZZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute = avas::AudioSessionMuteEnabled(v71);
            __cxa_guard_release(&_ZGVZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute);
          }
        }

        v52 = [v72 objectForKey:@"MuteSessionInputs"];
        v37 = v52;
        if ((_ZZZ101__AVAudioSessionRemoteXPCClient_setProperties_values_MXProperties_batchStrategy_genericMXPipe_reply__EUb_E16allowSessionMute & 1) != 0 || !v52)
        {
          goto LABEL_57;
        }

        [v72 removeObjectForKey:@"MuteSessionInputs"];
        if (!v80)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        *buf = v80;
        *&buf[8] = v81;
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v53 = avas::server::forbid_acq::MuteSessionInputsForAudioApp(buf, v37);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (v53)
        {
          v54 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA450];
          v95 = @"MuteSessionInput error";
          v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v56 = [v54 errorWithDomain:*MEMORY[0x277CCA590] code:v53 userInfo:v55];

          (*(*(a1 + 48) + 16))();
LABEL_71:

          goto LABEL_72;
        }

        if ([v72 count])
        {
LABEL_57:

          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v37 = v72;
          v57 = [v37 countByEnumeratingWithState:&v75 objects:v93 count:16];
          if (v57)
          {
            v58 = *v76;
            while (2)
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v76 != v58)
                {
                  objc_enumerationMutation(v37);
                }

                v60 = *(*(&v75 + 1) + 8 * j);
                v61 = *(a1 + 56);
                v62 = [v37 valueForKey:v60];
                v63 = avas::server::forbid_acq::SetPropertyLocal(v61, &v82, v60, v62);

                if (v63)
                {
                  v68 = *avas::server::gSessionServerLog(v64);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    v69 = *(a1 + 56);
                    *buf = 136316162;
                    *&buf[4] = "AVAudioSessionXPCServer.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 894;
                    v105 = 2112;
                    v106 = v60;
                    v107 = 1024;
                    v108 = v63;
                    v109 = 1024;
                    v110 = v69;
                    _os_log_impl(&dword_241701000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set %@, err:%d, session: 0x%x", buf, 0x28u);
                  }

                  v70 = *(a1 + 48);
                  v56 = NSErrorWithString(&cfstr_Audiosessionse.isa);
                  (*(v70 + 16))(v70, v56, 0);
                  v72 = v37;
                  goto LABEL_71;
                }

                v65 = *avas::server::gSessionServerLog(v64);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = *(a1 + 56);
                  *buf = 136315906;
                  *&buf[4] = "AVAudioSessionXPCServer.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 898;
                  v105 = 2112;
                  v106 = v60;
                  v107 = 1024;
                  v108 = v66;
                  _os_log_impl(&dword_241701000, v65, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Success setting AVAS property: %@, session: 0x%x", buf, 0x22u);
                }
              }

              v57 = [v37 countByEnumeratingWithState:&v75 objects:v93 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          v67 = *(*(a1 + 48) + 16);
          v29 = 0;
          v67();
          goto LABEL_74;
        }

        (*(*(a1 + 48) + 16))();
      }

LABEL_72:

      v34 = v72;
      goto LABEL_73;
    }

    v38 = *(a1 + 56);
    v39 = *(a1 + 40);
    v40 = *(a1 + 48);
    v41 = v39;
    v42 = v40;
    v43 = *avas::server::gSessionServerLog(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      v105 = 2112;
      v106 = v41;
      v107 = 1024;
      v108 = v38;
      _os_log_impl(&dword_241701000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set MXProperty: %@ on generic pipe for session: 0x%x due to missing entitlement.", buf, 0x22u);
    }

    v98 = *MEMORY[0x277CCA450];
    *v99 = @"Entitlement required to use generic property setter SPI";
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    v44 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:1701737535 userInfo:v74];
    v45 = objc_opt_new();
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v46 = v41;
    v47 = [v46 countByEnumeratingWithState:&v89 objects:buf count:16];
    if (v47)
    {
      v48 = *v90;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v90 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{&unk_28535D1E8, *(*(&v89 + 1) + 8 * k), 0}];
          [v45 addObject:v50];
        }

        v47 = [v46 countByEnumeratingWithState:&v89 objects:buf count:16];
      }

      while (v47);
    }

    v51 = [v45 copy];
    (*(v42 + 2))(v42, v44, v51);
  }

  else
  {
    v15 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 136315650;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 827;
      v105 = 1024;
      LODWORD(v106) = v16;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }

    v17 = *(a1 + 48);
    v18 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient setProperties:values:MXProperties:batchStrategy:genericMXPipe:reply:]_block_invoke", *(a1 + 56), 561210739);
    (*(v17 + 16))(v17, v18, 0);
  }

LABEL_75:
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  avas::ScopedTrace::~ScopedTrace(v83);
}

- (void)silenceOutput:(unsigned int)output options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v18[0] = 1;
  v19 = 3854;
  outputCopy = output;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient silenceOutput:options:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v12 = avas::server::GetAudioControlQueue(v10, v11);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__AVAudioSessionRemoteXPCClient_silenceOutput_options_reply___block_invoke;
  v14[3] = &unk_278CEAA70;
  outputCopy2 = output;
  optionsCopy = options;
  v13 = v9;
  v15 = v13;
  avas::server::DispatchBlock(v12, v14, 1, "[AVAudioSessionRemoteXPCClient silenceOutput:options:reply:]", "AVAudioSessionXPCServer.mm", 931, 0, 0);

  avas::ScopedTrace::~ScopedTrace(v18);
}

void __61__AVAudioSessionRemoteXPCClient_silenceOutput_options_reply___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  LOBYTE(v7) = 1;
  HIDWORD(v7) = 3973;
  v8 = v2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  v3 = avas::server::require_acq::AudioSessionSilenceOutput(*(a1 + 48), *(a1 + 40));
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"AudioSessionSilenceOutput error";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v7, v8, v9, v10, v11}];
    v6 = [v4 errorWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();

  avas::ScopedTrace::~ScopedTrace(&v7);
}

- (void)getIOControllerPeriod:(unsigned int)period decoupledInput:(BOOL)input reply:(id)reply
{
  inputCopy = input;
  v26[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v19[0] = 1;
  v20 = 3855;
  periodCopy = period;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getIOControllerPeriod:decoupledInput:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},double,unsigned long>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v11 = avas::server::LegacySessionManager::Instance(v10);
  v12 = *(v11 + 37);
  if (!v12)
  {
    v13 = -1;
LABEL_6:
    v14 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"sessionDeviceIOPeriod error";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:v15];

    (v9)[2](v9, v16, 0, 0.0);
    goto LABEL_7;
  }

  os_unfair_lock_lock(*(v11 + 37));
  avas::server::DeviceTimeObserver::sessionDeviceIOPeriod(v17, &v12[2], period, inputCopy);
  os_unfair_lock_unlock(v12);
  if (v18 != 1)
  {
    v13 = SLODWORD(v17[0]);
    goto LABEL_6;
  }

  v9[2](v9, 0, v17[2], *v17);
LABEL_7:
  avas::ScopedTrace::~ScopedTrace(v19);
}

- (void)setSession:(unsigned int)session decoupledInput:(BOOL)input hasIOEventListeners:(BOOL)listeners reply:(id)reply
{
  inputCopy = input;
  v8 = *&session;
  replyCopy = reply;
  v18[0] = 1;
  v19 = 3856;
  v20 = v8;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setSession:decoupledInput:hasIOEventListeners:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v17, 0, sizeof(v17));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection, *v17.val, *&v17.val[4]);
  }

  v13 = VerifySessionOwnership(v8, &v17, 0);
  if (v13)
  {
    v14 = avas::server::LegacySessionManager::Instance(v13);
    v15 = *(v14 + 37);
    if (v15)
    {
      os_unfair_lock_lock(*(v14 + 37));
      avas::server::DeviceTimeObserver::sessionHasIOEventListeners(&v15[2], v8, inputCopy, listeners);
      os_unfair_lock_unlock(v15);
    }

    v11[2](v11, 0);
  }

  else
  {
    v16 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient setSession:decoupledInput:hasIOEventListeners:reply:]", v8, -50);
    (v11)[2](v11, v16);
  }

  avas::ScopedTrace::~ScopedTrace(v18);
}

- (void)getSpatialPreferencesForSession:(unsigned int)session reply:(id)reply
{
  v4 = *&session;
  replyCopy = reply;
  v11[0] = 1;
  v12 = 3857;
  v13 = v4;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getSpatialPreferencesForSession:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},AVAudioSessionSpatialPreferences * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v10, 0, sizeof(v10));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection, *v10.val, *&v10.val[4]);
  }

  if (VerifySessionOwnership(v4, &v10, 1))
  {
    v9 = avas::server::forbid_acq::SpatialPreferences(self->_clientRelay, v4, &v10);
    (v7)[2](v7, 0, v9);
  }

  else
  {
    v9 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getSpatialPreferencesForSession:reply:]", v4, -50);
    (v7)[2](v7, v9, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v11);
}

- (void)getSpatialPreferencesForSession:(unsigned int)session contentType:(int64_t)type reply:(id)reply
{
  v6 = *&session;
  replyCopy = reply;
  v13[0] = 1;
  v14 = 3857;
  v15 = v6;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getSpatialPreferencesForSession:contentType:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},AVAudioSessionSpatialPreferences * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v12, 0, sizeof(v12));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection, *v12.val, *&v12.val[4]);
  }

  if (VerifySessionOwnership(v6, &v12, 1))
  {
    v11 = [(AVAudioSessionXPCClientRelay *)self->_clientRelay spatialPreferencesForSession:v6 contentType:type];
    (v9)[2](v9, 0, v11);
  }

  else
  {
    v11 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getSpatialPreferencesForSession:contentType:reply:]", v6, -50);
    (v9)[2](v9, v11, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v13);
}

- (void)handleRemoteInterruption:(unsigned int)interruption interruptionStatus:(id)status postInterruptionNotification:(BOOL)notification reply:(id)reply
{
  v7 = *&interruption;
  v36[1] = *MEMORY[0x277D85DE8];
  statusCopy = status;
  replyCopy = reply;
  v29[0] = 1;
  v30 = 3858;
  v31 = v7;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient handleRemoteInterruption:interruptionStatus:postInterruptionNotification:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v27, v7);
  if (v27)
  {
    memset(&v26, 0, sizeof(v26));
    xpcConnection = self->_clientProcess.xpcConnection;
    if (xpcConnection)
    {
      objc_msgSend_auditToken(xpcConnection);
    }

    if (VerifySessionOwnership(v7, &v26, 1))
    {
      v13 = v27;
      if (!v27)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(**(*(v13 + 15) + 8) + 64))(&cf);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v15 = MXSessionEndInterruption_WithInterruptionNotification();
      if (v15)
      {
        v16 = v27;
        if (!v27)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v17 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v16, v7, &__p);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v18 = avas::server::TranslateCMSessionErrorCode("MXSessionEndInterruption_WithInterruptionNotification", &__p, 1047, v15);
        v19 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA450];
        v36[0] = @"handling remote interruption failed";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v21 = [v19 errorWithDomain:*MEMORY[0x277CCA590] code:v18 userInfo:v20];

        (v11)[2](v11, v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v11[2](v11, 0);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v23 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient handleRemoteInterruption:interruptionStatus:postInterruptionNotification:reply:]", v7, -50);
      (v11)[2](v11, v23);
    }
  }

  else
  {
    v22 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient handleRemoteInterruption:interruptionStatus:postInterruptionNotification:reply:]", v7, 561210739);
    (v11)[2](v11, v22);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  avas::ScopedTrace::~ScopedTrace(v29);
}

- (void)setSessionPlayState:(unsigned int)state playState:(unsigned int)playState playerType:(unsigned int)type playerRef:(id)ref modes:(unsigned int)modes reply:(id)reply
{
  refCopy = ref;
  replyCopy = reply;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__AVAudioSessionRemoteXPCClient_setSessionPlayState_playState_playerType_playerRef_modes_reply___block_invoke;
  v20[3] = &unk_278CEAA98;
  v15 = refCopy;
  v21 = v15;
  stateCopy = state;
  typeCopy = type;
  modesCopy = modes;
  playStateCopy = playState;
  v16 = replyCopy;
  v22 = v16;
  v17 = MEMORY[0x245CEF0E0](v20);
  v19 = avas::server::GetAudioControlQueue(v17, v18);
  avas::server::DispatchBlock(v19, v17, 1, "[AVAudioSessionRemoteXPCClient setSessionPlayState:playState:playerType:playerRef:modes:reply:]", "AVAudioSessionXPCServer.mm", 1081, 0, 0);
}

void __96__AVAudioSessionRemoteXPCClient_setSessionPlayState_playState_playerType_playerRef_modes_reply___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v2 = [*(a1 + 32) UTF8String];
  v3 = *(a1 + 52);
  v8[0] = *(a1 + 48);
  v8[4] = 0;
  v4 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v8, v3, v2, *(a1 + 56), *(a1 + 60), &v9, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
  if (v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Setting Play State Failed";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v5 errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)createSession:(unint64_t)session sourceAuditToken:(id *)token sourceSessionID:(unsigned int)d nameOrDeviceUID:(id)iD clientProcessName:(id)name clientProcessBundleID:(id)bundleID useCaseIdentifier:(unsigned int)identifier reply:(id)self0
{
  v12 = *&d;
  v71[1] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  nameCopy = name;
  bundleIDCopy = bundleID;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createSession:sourceAuditToken:sourceSessionID:nameOrDeviceUID:clientProcessName:clientProcessBundleID:useCaseIdentifier:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 30000000);
  v18 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int,NSObject  {objcproto13OS_xpc_object}* {__strong},unsigned int,unsigned int,NSString * {__strong}>(&self->_defaultReplyWatchdogFactory.mTimeoutHandler.__f_.__f_, replyCopy, 0);

  memset(&v59, 0, sizeof(v59));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  atoken = v59;
  v53[0] = 1;
  v54 = 3846;
  v55 = audit_token_to_pid(&atoken);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v20 = kdebug_trace();
  if (session > 1886550136)
  {
    if (session <= 1935897188)
    {
      if (session == 1886550137)
      {
        v22 = 1886550016;
        v21 = 121;
        goto LABEL_26;
      }

      if (session == 1935830119)
      {
        v22 = 1935830016;
        v21 = 103;
        goto LABEL_26;
      }
    }

    else
    {
      switch(session)
      {
        case 0x73637265uLL:
          v22 = 1935897088;
          v21 = 101;
          goto LABEL_26;
        case 0x7369646BuLL:
          v22 = 1936286720;
          v21 = 107;
          goto LABEL_26;
        case 0x77686F3FuLL:
          v22 = 2003332864;
          v21 = 63;
          goto LABEL_26;
      }
    }

LABEL_62:
    v41 = NSErrorWithString(&cfstr_InvalidSession.isa);
    v42 = *avas::server::gSessionServerLog(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 1184;
      HIWORD(atoken.val[4]) = 2112;
      *&atoken.val[5] = @"Invalid session type";
      _os_log_impl(&dword_241701000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &atoken, 0x1Cu);
    }

    (v18)[2](v18, v41, 0, 0, 0, 0, 0);

    goto LABEL_56;
  }

  if (session <= 1668314225)
  {
    if (session == 1635088489)
    {
      v22 = 1635088384;
      v21 = 105;
      goto LABEL_26;
    }

    if (session == 1635148646)
    {
      v22 = 1635148544;
      v21 = 102;
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  if (session == 1668314226)
  {
    v22 = 1668314112;
    v21 = 114;
    goto LABEL_26;
  }

  if (session == 1718183795)
  {
    v22 = 1718183680;
    v21 = 115;
    goto LABEL_26;
  }

  if (session != 1886546285)
  {
    goto LABEL_62;
  }

  v21 = 109;
  v22 = 1886546176;
LABEL_26:
  v23 = v22 | v21;
  if ((v22 | v21) == 0x70727879)
  {
    v24 = *&v59.val[4];
    *token->var0 = *v59.val;
    *&token->var0[4] = v24;
  }

  v25 = avas::server::LegacySessionManager::Instance(v20);
  if (v23 != 1886550137 && v23 != 1935830119)
  {
    v30 = 0;
    v29 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_35;
  }

  if (v12 != -1 || (v26 = *&token->var0[4], *atoken.val = *token->var0, *&atoken.val[4] = v26, v27 = audit_token_to_pid(&atoken), v27 != -1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    avas::server::LegacySessionManager::FindSourceSessionForSibling(v25, token, v12, WeakRetained[8], &atoken);
    v30 = *atoken.val;
    v29 = *&atoken.val[2];
    *atoken.val = 0;
    *&atoken.val[2] = 0;

    v51 = v30;
    v52 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_35:
    v49 = 0;
    v50 = 0;
    avas::server::LegacySessionManager::BuildCreationDescription(&v59, v23, nameCopy, bundleIDCopy, &v51, &v49, iDCopy, &atoken, identifier);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    v31 = v52;
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (v69 == 1)
    {
      if (v23 == 1886550137)
      {
        avas::server::LegacySessionManager::CreateProxySession(v25, &atoken, self->_clientProcess.xpcConnection);
      }

      v35 = self->_clientProcess.xpcConnection;
      v36 = objc_loadWeakRetained(&self->_server);
      avas::server::LegacySessionManager::CreateSession(v25, &atoken, v35, v36[8], buf);
      v37 = *buf;
      v32 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;

      if (v37)
      {
        v38 = (*(*v37 + 16))(v37);
        if (v30)
        {
          v30 = (*(*v30 + 16))(v30);
        }

        v39 = *(v25 + 37);
        if (v39)
        {
          os_unfair_lock_lock(v39);
          v40 = avas::server::DeviceTimeObserver::xpcSharedMemoryObject(&v39[2]);
          (v18)[2](v18, 0, v38, v40, v37[110], v30, 0);

          os_unfair_lock_unlock(v39);
        }

        else
        {
          v18[2](v18, 0, v38, 0, 0, v30, 0);
        }

LABEL_46:
        if (v69 == 1)
        {

          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }

          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        goto LABEL_56;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = *avas::server::gSessionServerLog(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1307;
      _os_log_impl(&dword_241701000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation failed", buf, 0x12u);
    }

    v34 = NSErrorWithString(&cfstr_SessionCreatio.isa);
    (v18)[2](v18, v34, 0, 0, 0, 0, 0);

    goto LABEL_46;
  }

  v43 = *avas::server::gSessionServerLog(v27);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    atoken.val[0] = 136315394;
    *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
    LOWORD(atoken.val[3]) = 1024;
    *(&atoken.val[3] + 2) = 1214;
    _os_log_impl(&dword_241701000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Session creation failed due to AVAudioSessionTokenNoAudioSessionForServer and invalid audit token", &atoken, 0x12u);
  }

  v44 = MEMORY[0x277CCA9B8];
  v70 = *MEMORY[0x277CCA450];
  v71[0] = @"Session creation failed in server";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  v46 = [v44 errorWithDomain:*MEMORY[0x277CCA590] code:2003329396 userInfo:v45];

  (v18)[2](v18, v46, 0, 0, 0, 0, 0);
LABEL_56:
  avas::ScopedTrace::~ScopedTrace(v53);
}

- (void)activateSession:(unsigned int)session options:(unint64_t)options requestID:(unint64_t)d reply:(id)reply
{
  v52 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v38[0] = 1;
  v39 = 3840;
  sessionCopy = session;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient activateSession:options:requestID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v37, 0, sizeof(v37));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v35, session, &v37, 1);
  if (v35)
  {
    IsSessionActive = [MEMORY[0x277CCACA8] stringWithFormat:@"Activating [id:%llu]", d];
    v14 = IsSessionActive;
    if ((options & 0x20008000) != 0)
    {
      goto LABEL_40;
    }

    v15 = v35;
    if (!v35)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v16 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsSessionActive = avas::server::ConstAudioSessionInfo::IsSessionActive(v15);
    v17 = IsSessionActive;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (!v17)
    {
LABEL_40:
      if (HIDWORD(options))
      {
        v18 = *avas::server::gSessionServerLog(IsSessionActive);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v45 = "AVAudioSessionXPCServer.mm";
          v46 = 1024;
          v47 = 1363;
          v48 = 2048;
          optionsCopy = options;
          v50 = 1024;
          sessionCopy2 = session;
          _os_log_impl(&dword_241701000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid AVAudioSessionSetActiveOptions value: %lu in activation for sessionID 0x%x", buf, 0x22u);
        }
      }

      v19 = v35;
      if (!v35)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v20 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(v19);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (SessionType == 1935897189)
      {
        v22 = v35;
        if (!v35)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v23 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = *(v22 + 14);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v24 = *(v35 + 14);
        }

        if (objc_opt_respondsToSelector())
        {
          waitForConclaveLaunch = [v24 waitForConclaveLaunch];
          if ((waitForConclaveLaunch & 1) == 0)
          {
            v26 = *avas::server::gSessionServerLog(waitForConclaveLaunch);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v45 = "AVAudioSessionXPCServer.mm";
              v46 = 1024;
              v47 = 1373;
              v48 = 1024;
              LODWORD(optionsCopy) = session;
              _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Waiting for conclave launch timed out, sessionID 0x%x", buf, 0x18u);
            }
          }
        }
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v34 = v37;
      v30[2] = __73__AVAudioSessionRemoteXPCClient_activateSession_options_requestID_reply___block_invoke;
      v30[3] = &unk_278CEAAC0;
      sessionCopy3 = session;
      v30[4] = self;
      optionsCopy2 = options;
      v27 = v11;
      v31 = v27;
      v28 = MEMORY[0x245CEF0E0](v30);
      v29 = avas::server::GetActivationQueue(v28);
      dispatch_async_and_wait(v29, v28);

      (*(v27 + 2))(v27, 0);
    }

    else
    {
      v11[2](v11, 0);
    }
  }

  else
  {
    v14 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient activateSession:options:requestID:reply:]", session, -50);
    (v11)[2](v11, v14);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  avas::ScopedTrace::~ScopedTrace(v38);
}

void __73__AVAudioSessionRemoteXPCClient_activateSession_options_requestID_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v12[0] = 1;
  v13 = 3968;
  v14 = v2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = kdebug_trace();
  v4 = *(a1 + 48);
  if (HIDWORD(v4))
  {
    v18 = &unk_28535A5C0;
    gsl::details::terminate(v3);
  }

  if (avas::server::ff_acq::AudioSessionServerActivateWithFlags(*(*(a1 + 32) + 72), *(a1 + 56), a1 + 60, v4, 1))
  {
    v8 = NSErrorWithString(&cfstr_SessionActivat.isa);
    (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v9, v10, v11);
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v5, v6, v7);
  }

  avas::ScopedTrace::~ScopedTrace(v12);
}

- (void)deactivateSession:(unsigned int)session options:(unint64_t)options priority:(id)priority requestID:(unint64_t)d reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  priorityCopy = priority;
  replyCopy = reply;
  v32[0] = 1;
  v33 = 3841;
  sessionCopy = session;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient deactivateSession:options:priority:requestID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v13 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v31, 0, sizeof(v31));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v29, session, &v31, 1);
  v15 = v29;
  if (v29)
  {
    if (options || priorityCopy)
    {
      if (!HIDWORD(options))
      {
LABEL_17:
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __84__AVAudioSessionRemoteXPCClient_deactivateSession_options_priority_requestID_reply___block_invoke;
        v22[3] = &unk_278CEAAE8;
        sessionCopy2 = session;
        v23 = priorityCopy;
        selfCopy = self;
        v28 = v31;
        optionsCopy = options;
        v25 = v13;
        v20 = MEMORY[0x245CEF0E0](v22);
        v21 = avas::server::GetActivationQueue(v20);
        dispatch_async_and_wait(v21, v20);

        v18 = v23;
        goto LABEL_18;
      }

      v19 = *avas::server::gSessionServerLog(v29);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v39 = "AVAudioSessionXPCServer.mm";
        v40 = 1024;
        v41 = 1486;
        v42 = 2048;
        optionsCopy2 = options;
        v44 = 1024;
        sessionCopy3 = session;
        _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid AVAudioSessionSetActiveOptions value: %lu in deactivation for sessionID: 0x%x. Clearing options to 0.", buf, 0x22u);
      }
    }

    else
    {
      v16 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IsSessionActive = avas::server::ConstAudioSessionInfo::IsSessionActive(v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((IsSessionActive & 1) == 0)
      {
        v13[2](v13, 0);
        goto LABEL_19;
      }
    }

    options = 0;
    goto LABEL_17;
  }

  v18 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient deactivateSession:options:priority:requestID:reply:]", session, -50);
  (v13)[2](v13, v18);
LABEL_18:

LABEL_19:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  avas::ScopedTrace::~ScopedTrace(v32);
}

void __84__AVAudioSessionRemoteXPCClient_deactivateSession_options_priority_requestID_reply___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v10[0] = 1;
  v11 = 3969;
  v12 = v2;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = avas::server::ff_acq::AudioSessionServerDeactivateAndSetPriority(*(*(a1 + 40) + 72), *(a1 + 64), (a1 + 68), [v3 unsignedIntValue]);
  }

  else
  {
    v5 = *(a1 + 56);
    if (HIDWORD(v5))
    {
      v16 = &unk_28535A5C0;
      gsl::details::terminate(0);
    }

    v4 = avas::server::ff_acq::AudioSessionServerDeactivateWithFlags(*(*(a1 + 40) + 72), *(a1 + 64), (a1 + 68), v5, 1);
  }

  v6 = v4;
  if (v4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Session deactivation failed";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v7 errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:v8];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  avas::ScopedTrace::~ScopedTrace(v10);
}

- (void)getProperty:(unsigned int)property propertyName:(id)name MXProperty:(BOOL)xProperty reply:(id)reply
{
  nameCopy = name;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getProperty:propertyName:MXProperty:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v12 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__AVAudioSessionRemoteXPCClient_getProperty_propertyName_MXProperty_reply___block_invoke;
  v18[3] = &unk_278CEAB10;
  propertyCopy = property;
  v18[4] = self;
  v13 = v12;
  v20 = v13;
  xPropertyCopy = xProperty;
  v14 = nameCopy;
  v19 = v14;
  v15 = MEMORY[0x245CEF0E0](v18);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __75__AVAudioSessionRemoteXPCClient_getProperty_propertyName_MXProperty_reply___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v18[0] = 1;
  v19 = 3848;
  v20 = v2;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  kdebug_trace();
  memset(&v17, 0, sizeof(v17));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  if (VerifySessionOwnership(*(a1 + 56), &v17, 1))
  {
    if (*(a1 + 60) == 1)
    {
      avas::server::forbid_acq::GetPropertyMX(*(a1 + 56), *(a1 + 40), 0, &v17, buf);
      v4 = *buf;
      if (*buf)
      {
        v5 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        v31[0] = @"MXSessionGetProperty error";
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v7 = [v5 errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:v6];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      avas::server::forbid_acq::GetPropertyLocal(*(a1 + 56), *(a1 + 40), &v17, v16);
      if (LODWORD(v16[0]))
      {
        v11 = *(a1 + 48);
        v12 = NSErrorWithString(&cfstr_Getpropertyloc.isa);
        (*(v11 + 16))(v11, v12, 0, 0);
      }

      else
      {
        v13 = *avas::server::gSessionServerLog(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          *buf = 136315906;
          *v25 = "AVAudioSessionXPCServer.mm";
          *&v25[8] = 1024;
          *&v25[10] = 1569;
          v26 = 2112;
          v27 = v14;
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Success getting AVAS property: %@, session: 0x%x", buf, 0x22u);
        }

        (*(*(a1 + 48) + 16))();
      }
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getProperty:propertyName:MXProperty:reply:]_block_invoke", *(a1 + 56), -50);
    (*(v8 + 16))(v8, v9, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v18);
}

- (void)getMXPropertyGenericPipe:(unsigned int)pipe propertyName:(id)name reply:(id)reply
{
  nameCopy = name;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getMXPropertyGenericPipe:propertyName:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__AVAudioSessionRemoteXPCClient_getMXPropertyGenericPipe_propertyName_reply___block_invoke;
  v16[3] = &unk_278CEAB38;
  pipeCopy = pipe;
  v16[4] = self;
  v11 = v10;
  v18 = v11;
  v12 = nameCopy;
  v17 = v12;
  v13 = MEMORY[0x245CEF0E0](v16);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __77__AVAudioSessionRemoteXPCClient_getMXPropertyGenericPipe_propertyName_reply___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v13[0] = 1;
  v14 = 3850;
  v15 = v2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  memset(&v12, 0, sizeof(v12));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  if (VerifySessionOwnership(*(a1 + 56), &v12, 1))
  {
    avas::server::forbid_acq::GetPropertyMX(*(a1 + 56), *(a1 + 40), 1, &v12, &v10);
    v4 = v10;
    if (v10)
    {
      v5 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"MXSessionGetProperty error";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v7 = [v5 errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:v6];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getMXPropertyGenericPipe:propertyName:reply:]_block_invoke", *(a1 + 56), -50);
    (*(v8 + 16))(v8, v9, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v13);
}

- (void)getProperties:(unsigned int)properties properties:(id)a4 reply:(id)reply
{
  v8 = a4;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getProperties:properties:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__AVAudioSessionRemoteXPCClient_getProperties_properties_reply___block_invoke;
  v16[3] = &unk_278CEAB38;
  propertiesCopy = properties;
  v16[4] = self;
  v11 = v10;
  v18 = v11;
  v12 = v8;
  v17 = v12;
  v13 = MEMORY[0x245CEF0E0](v16);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __64__AVAudioSessionRemoteXPCClient_getProperties_properties_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v13[0] = 1;
  v14 = 3979;
  v15 = v2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  memset(&v12, 0, sizeof(v12));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  if (VerifySessionOwnership(*(a1 + 56), &v12, 1))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v9 = 0;
    avas::server::forbid_acq::GetPropertiesFromMXSession(v4, &v12, v5, &v9, 0, &v10);
    v6 = v9;
    if (v10)
    {
      v7 = NSErrorWithString(&cfstr_ErrorInGetting.isa);
    }

    else
    {
      v7 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 48);
    v6 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getProperties:properties:reply:]_block_invoke", *(a1 + 56), -50);
    (*(v8 + 16))(v8, v6, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v13);
}

- (void)getPropertiesForCache:(unsigned int)cache reply:(id)reply
{
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  {
    [AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]::mxProperties = getAllCachedPropertyNames();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__AVAudioSessionRemoteXPCClient_getPropertiesForCache_reply___block_invoke;
  v12[3] = &unk_278CEAB60;
  cacheCopy = cache;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  v9 = MEMORY[0x245CEF0E0](v12);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __61__AVAudioSessionRemoteXPCClient_getPropertiesForCache_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v12[0] = 1;
  v13 = 3979;
  v14 = v2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  kdebug_trace();
  memset(&v11, 0, sizeof(v11));
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  if (VerifySessionOwnership(*(a1 + 48), &v11, 1))
  {
    v4 = *(a1 + 48);
    v8 = 0;
    avas::server::forbid_acq::GetPropertiesFromMXSession(v4, &v11, [AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]::mxProperties, &v8, 1, &v9);
    v5 = v8;
    if (v9)
    {
      v6 = NSErrorWithString(&cfstr_ErrorInGetting.isa);
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v5 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getPropertiesForCache:reply:]_block_invoke", *(a1 + 48), -50);
    (*(v7 + 16))(v7, v5, 0, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v12);
}

- (void)getDeferredMessages:(unsigned int)messages reply:(id)reply
{
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getDeferredMessages:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__AVAudioSessionRemoteXPCClient_getDeferredMessages_reply___block_invoke;
  v12[3] = &unk_278CEAB60;
  messagesCopy = messages;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  v9 = MEMORY[0x245CEF0E0](v12);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  avas::WorkloopPool::DispatchID::DispatchID();
  avas::WorkloopPool::dispatchCommon();
}

void __59__AVAudioSessionRemoteXPCClient_getDeferredMessages_reply___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v23[0] = 1;
  v24 = 3843;
  v25 = v2;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v3 = kdebug_trace();
  v4 = avas::server::LegacySessionManager::Instance(v3);
  memset(v22, 0, sizeof(v22));
  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    objc_msgSend_auditToken(v5);
  }

  v6 = *(a1 + 48);
  *buf = 1;
  v30[0] = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v4, v6, v22, buf, &v20);
  if (v20)
  {
    (*(*v20 + 64))(&v18);
    if (v18)
    {
      avas::server::AudioSessionRemoteClient::GetDeferredMessages(v18, buf);
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = *&v30[4]; i != buf; i = *(i + 8))
      {
        v9 = *(i + 16);
        [v7 addObject:v9];
      }

      (*(*(a1 + 40) + 16))();

      std::__list_imp<NSDictionary * {__strong}>::clear(buf);
    }

    else
    {
      v14 = *avas::server::gSessionServerLog(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 48);
        *buf = 136315650;
        *v30 = "AVAudioSessionXPCServer.mm";
        *&v30[8] = 1024;
        *&v30[10] = 1703;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client 0x%x not found in remote clients", buf, 0x18u);
      }

      v16 = *(a1 + 40);
      v17 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getDeferredMessages:reply:]_block_invoke", *(a1 + 48), -50);
      (*(v16 + 16))(v16, v17, 0);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v10 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      *buf = 136315650;
      *v30 = "AVAudioSessionXPCServer.mm";
      *&v30[8] = 1024;
      *&v30[10] = 1697;
      v31 = 1024;
      v32 = v11;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d session info 0x%x not found in sessionMap", buf, 0x18u);
    }

    v12 = *(a1 + 40);
    v13 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient getDeferredMessages:reply:]_block_invoke", *(a1 + 48), -50);
    (*(v12 + 16))(v12, v13, 0);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  avas::ScopedTrace::~ScopedTrace(v23);
}

- (void)addMXNotificationListener:(unsigned int)listener notificationName:(id)name reply:(id)reply
{
  v6 = *&listener;
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  replyCopy = reply;
  v21[0] = 1;
  v22 = 3852;
  v23 = v6;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient addMXNotificationListener:notificationName:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v20, 0, sizeof(v20));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection, *v20.val, *&v20.val[4]);
  }

  if (!VerifySessionOwnership(v6, &v20, 1))
  {
    v16 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient addMXNotificationListener:notificationName:reply:]", v6, -50);
    (v10)[2](v10, v16);
LABEL_11:

    goto LABEL_12;
  }

  IsStandardMXNotificationName = avas::IsStandardMXNotificationName(nameCopy, v12);
  if (IsStandardMXNotificationName)
  {
    v15 = *avas::server::gSessionServerLog(IsStandardMXNotificationName);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "AVAudioSessionXPCServer.mm";
      v31 = 1024;
      v32 = 1740;
      v33 = 2112;
      v34 = nameCopy;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Skipping registration of standard MXSession notification, %@", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v17 = avas::server::AddMXNotificationListener(v6, &v20, nameCopy, v14);
  if (v17)
  {
    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Add MX notification listener failed";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v16 = [v18 errorWithDomain:*MEMORY[0x277CCA590] code:v17 userInfo:v19];

    (v10)[2](v10, v16);
    goto LABEL_11;
  }

LABEL_7:
  v10[2](v10, 0);
LABEL_12:
  avas::ScopedTrace::~ScopedTrace(v21);
}

- (void)removeMXNotificationListener:(unsigned int)listener notificationName:(id)name reply:(id)reply
{
  v6 = *&listener;
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  replyCopy = reply;
  v21[0] = 1;
  v22 = 3853;
  v23 = v6;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient removeMXNotificationListener:notificationName:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v20, 0, sizeof(v20));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection, *v20.val, *&v20.val[4]);
  }

  if (!VerifySessionOwnership(v6, &v20, 1))
  {
    v16 = BuildInvalidSessionError("[AVAudioSessionRemoteXPCClient removeMXNotificationListener:notificationName:reply:]", v6, -50);
    (v10)[2](v10, v16);
LABEL_11:

    goto LABEL_12;
  }

  IsStandardMXNotificationName = avas::IsStandardMXNotificationName(nameCopy, v12);
  if (IsStandardMXNotificationName)
  {
    v15 = *avas::server::gSessionServerLog(IsStandardMXNotificationName);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "AVAudioSessionXPCServer.mm";
      v31 = 1024;
      v32 = 1787;
      v33 = 2112;
      v34 = nameCopy;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Skipping deregistration of standard MXSession notification, %@", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v17 = avas::server::RemoveMXNotificationListener(v6, &v20, nameCopy, v14);
  if (v17)
  {
    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Remove MX notification listener failed";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v16 = [v18 errorWithDomain:*MEMORY[0x277CCA590] code:v17 userInfo:v19];

    (v10)[2](v10, v16);
    goto LABEL_11;
  }

LABEL_7:
  v10[2](v10, 0);
LABEL_12:
  avas::ScopedTrace::~ScopedTrace(v21);
}

- (void)createAudioApplicationForSpecification:(id)specification reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  specificationCopy = specification;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createAudioApplicationForSpecification:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v8 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v25[1], 0, sizeof(audit_token_t));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    xpcConnection = objc_msgSend_auditToken(xpcConnection);
  }

  v10 = avas::server::LegacySessionManager::Instance(xpcConnection);
  if (specificationCopy)
  {
    objc_msgSend_appAuditToken(specificationCopy);
  }

  else
  {
    memset(v25, 0, 32);
  }

  *v28 = v25[0];
  v28[32] = 1;
  v22 = v25[0];
  *&v28[36] = audit_token_to_pid(&v22);
  v22 = v25[1];
  v23 = 1;
  atoken = v25[1];
  v24 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  if (avas::server::LegacySessionManager::VerifyAudioAppPermission(v10, v28, &v22, &atoken))
  {
    *v28 = [specificationCopy attributionBundleID];
    processName = [specificationCopy processName];
    if (processName)
    {
      processName2 = [specificationCopy processName];
    }

    else
    {
      processName2 = @"?";
    }

    *&v28[8] = processName2;
    *&v28[16] = v25[1];
    v29 = 1;
    v22 = v25[1];
    v30 = audit_token_to_pid(&v22);
    if (specificationCopy)
    {
      objc_msgSend_appAuditToken(specificationCopy);
    }

    else
    {
      memset(&atoken, 0, sizeof(atoken));
    }

    v31 = atoken;
    v32 = 1;
    v22 = atoken;
    v33 = audit_token_to_pid(&v22);
    audioAppType = [specificationCopy audioAppType];
    v35 = 0;
    if (processName)
    {
    }

    avas::server::LegacySessionManager::CreateAudioApplication(v10, v28, self->_clientProcess.xpcConnection, &v22);
    if (*v22.val && *&v22.val[4])
    {
      v8[2](v8, 0, *(*&v22.val[4] + 8));
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"AudioApp creation failed";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = [v19 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v20];

      (v8)[2](v8, v21, 0);
    }

    if (*&v22.val[6])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v22.val[6]);
    }

    if (*&v22.val[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v22.val[2]);
    }
  }

  else
  {
    if (specificationCopy)
    {
      objc_msgSend_appAuditToken(specificationCopy);
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    *v28 = v22;
    v13 = audit_token_to_pid(v28);
    v14 = v13;
    v15 = *avas::server::gSessionServerLog(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315906;
      *&v28[4] = "AVAudioSessionXPCServer.mm";
      *&v28[12] = 1024;
      *&v28[14] = 1105;
      *&v28[18] = 2080;
      *&v28[20] = "[AVAudioSessionRemoteXPCClient createAudioApplicationForSpecification:reply:]";
      *&v28[28] = 1024;
      *&v28[30] = v14;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed due to audio application (pid: %d) entitlement check failure", v28, 0x22u);
    }

    v16 = MEMORY[0x277CCA9B8];
    *atoken.val = *MEMORY[0x277CCA450];
    *v28 = @"AVAudioApplication error - missing entitlement";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&atoken count:{1, *v22.val}];
    v18 = [v16 errorWithDomain:*MEMORY[0x277CCA590] code:1701737535 userInfo:v17];

    (v8)[2](v8, v18, 0);
  }
}

- (void)sessionIDs:(id *)ds clientID:(unsigned int)d reply:(id)reply
{
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient sessionIDs:clientID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v11 = avas::server::LegacySessionManager::Instance(v10);
  memset(&v35, 0, sizeof(v35));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  v13 = *&ds->var0[4];
  v27 = *ds->var0;
  v28 = v13;
  v29 = 1;
  v14 = *&ds->var0[4];
  *v24.val = *ds->var0;
  *&v24.val[4] = v14;
  v30 = audit_token_to_pid(&v24);
  v24 = v35;
  v25 = 1;
  atoken = v35;
  v26 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v11, &v27, &v24, d, &atoken, &v31);
  if (v31 && v33)
  {
    avas::server::AudioApplicationInfo::GetSessions(v31, &v27);
    v15 = objc_opt_new();
    v17 = *(&v27 + 1);
    for (i = v27; i != v17; i += 2)
    {
      v18 = *i;
      v19 = i[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*v18 + 16))(v18)];
      [v15 addObject:v20];

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    (v9)[2](v9, 0, v15);

    *v24.val = &v27;
    std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v24);
  }

  else
  {
    v21 = *&ds->var0[4];
    v27 = *ds->var0;
    v28 = v21;
    v29 = 1;
    v22 = *&ds->var0[4];
    *v24.val = *ds->var0;
    *&v24.val[4] = v22;
    v30 = audit_token_to_pid(&v24);
    v23 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient sessionIDs:clientID:reply:]", &v27);
    (v9)[2](v9, v23, 0);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

- (void)getApplicationProperty:(id *)property clientID:(unsigned int)d propertyID:(id)iD isMXProperty:(BOOL)xProperty reply:(id)reply
{
  xPropertyCopy = xProperty;
  v43 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getApplicationProperty:clientID:propertyID:isMXProperty:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v14 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v16 = avas::server::LegacySessionManager::Instance(v15);
  memset(&v37, 0, sizeof(v37));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  v18 = *&property->var0[4];
  *buf = *property->var0;
  *&buf[16] = v18;
  buf[32] = 1;
  v19 = *&property->var0[4];
  *v30.val = *property->var0;
  *&v30.val[4] = v19;
  v42 = audit_token_to_pid(&v30);
  v30 = v37;
  v31 = 1;
  atoken = v37;
  v32 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v16, buf, &v30, d, &atoken, &v33);
  if (v33 && v35)
  {
    if (xPropertyCopy)
    {
      v20 = 1836595770;
    }

    else
    {
      v20 = 1634744890;
    }

    avas::server::AudioApplicationInfo::GetProperty(v33, iDCopy, v20, &v30);
    v21 = v30.val[0];
    if (v30.val[0])
    {
      v22 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40 = @"Failed to get property";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277CCA590] code:v21 userInfo:v23];

      v26 = *avas::server::gSessionServerLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "AVAudioSessionXPCServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1895;
        *&buf[18] = 2112;
        *&buf[20] = iDCopy;
        *&buf[28] = 1024;
        *&buf[30] = v30.val[0];
        _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get property: %@, err: %d", buf, 0x22u);
      }

      (v14)[2](v14, v24, 0, 0);
    }

    else
    {
      v14[2](v14, 0, *&v30.val[2], 0);
    }
  }

  else
  {
    v27 = *&property->var0[4];
    *buf = *property->var0;
    *&buf[16] = v27;
    buf[32] = 1;
    v28 = *&property->var0[4];
    *v30.val = *property->var0;
    *&v30.val[4] = v28;
    v42 = audit_token_to_pid(&v30);
    v29 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient getApplicationProperty:clientID:propertyID:isMXProperty:reply:]", buf);
    (v14)[2](v14, v29, 0, 0);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

- (void)setApplicationProperty:(id *)property clientID:(unsigned int)d propertyID:(id)iD propertyValue:(id)value reply:(id)reply
{
  v9 = *&d;
  v49[2] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  valueCopy = value;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setApplicationProperty:clientID:propertyID:propertyValue:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v15 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v17 = avas::server::LegacySessionManager::Instance(v16);
  memset(&v42, 0, sizeof(v42));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  v19 = *&property->var0[4];
  *buf = *property->var0;
  *&buf[16] = v19;
  buf[32] = 1;
  v20 = *&property->var0[4];
  *v35.val = *property->var0;
  *&v35.val[4] = v20;
  *&buf[36] = audit_token_to_pid(&v35);
  v35 = v42;
  v36 = 1;
  atoken = v42;
  v37 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v17, buf, &v35, v9, &atoken, &v38);
  if (v38 && v40)
  {
    v48[0] = @"ClientID";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v48[1] = @"ClientType";
    v49[0] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:*(v40 + 80)];
    v49[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

    v25 = *avas::server::gSessionServerLog(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (v40 + 176);
      if (*(v40 + 199) < 0)
      {
        v26 = *v26;
      }

      *buf = 136316162;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1925;
      *&buf[18] = 2112;
      *&buf[20] = iDCopy;
      *&buf[28] = 2112;
      *&buf[30] = valueCopy;
      *&buf[38] = 2080;
      v47 = v26;
      _os_log_impl(&dword_241701000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set audio app property: %@, value: %@ (client: %s)", buf, 0x30u);
    }

    v27 = avas::server::AudioApplicationInfo::SetProperty(v38, iDCopy, valueCopy, v23);
    if (v27)
    {
      v28 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45 = @"Failed to set property";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v30 = [v28 errorWithDomain:*MEMORY[0x277CCA590] code:v27 userInfo:v29];

      v32 = *avas::server::gSessionServerLog(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "AVAudioSessionXPCServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1932;
        *&buf[18] = 2112;
        *&buf[20] = iDCopy;
        *&buf[28] = 1024;
        *&buf[30] = v27;
        _os_log_impl(&dword_241701000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set property: %@, err: %d", buf, 0x22u);
      }

      (v15)[2](v15, v30);
    }

    else
    {
      v15[2](v15, 0);
    }
  }

  else
  {
    v33 = *&property->var0[4];
    *buf = *property->var0;
    *&buf[16] = v33;
    buf[32] = 1;
    v34 = *&property->var0[4];
    *v35.val = *property->var0;
    *&v35.val[4] = v34;
    *&buf[36] = audit_token_to_pid(&v35);
    v23 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient setApplicationProperty:clientID:propertyID:propertyValue:reply:]", buf);
    (v15)[2](v15, v23);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

- (void)updateApplicationProperty:(id *)property clientID:(unsigned int)d propertyID:(id)iD propertyValue:(id)value context:(id)context reply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  valueCopy = value;
  contextCopy = context;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient updateApplicationProperty:clientID:propertyID:propertyValue:context:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v18 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v20 = avas::server::LegacySessionManager::Instance(v19);
  memset(&v40, 0, sizeof(v40));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  v22 = *&property->var0[4];
  *buf = *property->var0;
  *&buf[16] = v22;
  buf[32] = 1;
  v23 = *&property->var0[4];
  *v33.val = *property->var0;
  *&v33.val[4] = v23;
  *&buf[36] = audit_token_to_pid(&v33);
  v33 = v40;
  v34 = 1;
  atoken = v40;
  v35 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v20, buf, &v33, d, &atoken, &v36);
  if (!v36 || !v38)
  {
    v31 = *&property->var0[4];
    *buf = *property->var0;
    *&buf[16] = v31;
    buf[32] = 1;
    v32 = *&property->var0[4];
    *v33.val = *property->var0;
    *&v33.val[4] = v32;
    *&buf[36] = audit_token_to_pid(&v33);
    v30 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient updateApplicationProperty:clientID:propertyID:propertyValue:context:reply:]", buf);
    (v18)[2](v18, v30);
LABEL_14:

    goto LABEL_15;
  }

  v25 = *avas::server::gSessionServerLog(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = (v38 + 176);
    if (*(v38 + 199) < 0)
    {
      v26 = *v26;
    }

    *buf = 136316162;
    *&buf[4] = "AVAudioSessionXPCServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1958;
    *&buf[18] = 2112;
    *&buf[20] = iDCopy;
    *&buf[28] = 2112;
    *&buf[30] = valueCopy;
    *&buf[38] = 2080;
    v43 = v26;
    _os_log_impl(&dword_241701000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Update audio app property: %@, value: %@ (client: %s)", buf, 0x30u);
  }

  updated = avas::server::AudioApplicationInfo::UpdateProperty(v36, iDCopy, valueCopy, 1634744890, 0, contextCopy);
  v28 = updated;
  if (updated)
  {
    v29 = *avas::server::gSessionServerLog(updated);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVAudioSessionXPCServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1962;
      *&buf[18] = 2112;
      *&buf[20] = iDCopy;
      *&buf[28] = 1024;
      *&buf[30] = v28;
      _os_log_impl(&dword_241701000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update property: %@, err: %d", buf, 0x22u);
    }

    v30 = NSErrorWithString(&cfstr_FailedToUpdate.isa);
    (v18)[2](v18, v30);
    goto LABEL_14;
  }

  v18[2](v18, 0);
LABEL_15:
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }
}

- (void)getApplicationMessages:(id *)messages clientID:(unsigned int)d reply:(id)reply
{
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getApplicationMessages:clientID:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  memset(&v28, 0, sizeof(v28));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    xpcConnection = objc_msgSend_auditToken(xpcConnection);
  }

  v11 = avas::server::LegacySessionManager::Instance(xpcConnection);
  v12 = *&messages->var0[4];
  v20 = *messages->var0;
  v21 = v12;
  v22 = 1;
  v13 = *&messages->var0[4];
  *v17.val = *messages->var0;
  *&v17.val[4] = v13;
  v23 = audit_token_to_pid(&v17);
  v17 = v28;
  v18 = 1;
  atoken = v28;
  v19 = audit_token_to_pid(&atoken);
  atoken.val[0] = 0;
  LOBYTE(atoken.val[1]) = 1;
  avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(v11, &v20, &v17, d, &atoken, &v24);
  if (v24 && v26)
  {
    v14 = avas::server::AudioAppRemoteClient::GetDeferredMessages(v26);
    (v9)[2](v9, 0, v14);
  }

  else
  {
    v15 = *&messages->var0[4];
    v20 = *messages->var0;
    v21 = v15;
    v22 = 1;
    v16 = *&messages->var0[4];
    *v17.val = *messages->var0;
    *&v17.val[4] = v16;
    v23 = audit_token_to_pid(&v17);
    v14 = BuildInvalidAudioAppError("[AVAudioSessionRemoteXPCClient getApplicationMessages:clientID:reply:]", &v20);
    (v9)[2](v9, v14, 0);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

- (void)setMXPropertyOnAllSessions:(id *)sessions clientID:(unsigned int)d MXProperty:(id)property values:(id)values reply:(id)reply
{
  v9 = *&d;
  propertyCopy = property;
  valuesCopy = values;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setMXPropertyOnAllSessions:clientID:MXProperty:values:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v15 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v18 = 0u;
  v19 = 0u;
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection, v18, v19);
  }

  v17 = avas::server::forbid_acq::SetPropertyMXOnAppSessions(sessions, &v18, v9, propertyCopy, valuesCopy);
  (v15)[2](v15, v17);
}

- (void)toggleInputMuteForRecordingProcess:(id)process
{
  v20 = *MEMORY[0x277D85DE8];
  processCopy = process;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient toggleInputMuteForRecordingProcess:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v5 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, processCopy, 0);

  memset(&v18, 0, sizeof(v18));
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  v15 = v18;
  v16 = 1;
  atoken = v18;
  v17 = audit_token_to_pid(&atoken);
  HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement(&v15, "com.apple.private.coreaudio.borrowaudioapplication.allow");
  if (HasEntitlement)
  {
    atoken = v18;
    v8 = audit_token_to_pid(&atoken);
    v9 = v8;
    v10 = *avas::server::gSessionServerLog(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 2021;
      HIWORD(atoken.val[4]) = 1024;
      atoken.val[5] = v9;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Toggle input mute, triggered by process: %d", &atoken, 0x18u);
    }

    v12 = avas::server::LegacySessionManager::Instance(v11);
    v13 = avas::server::LegacySessionManager::ToggleInputMuteForRecordingApplication(v12, &v18);
    (v5)[2](v5, v13);
  }

  else
  {
    v14 = *avas::server::gSessionServerLog(HasEntitlement);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 2016;
      HIWORD(atoken.val[4]) = 1024;
      atoken.val[5] = v17;
      _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Toggle input mute attempted but caller (pid: %d) doesn't have entitlement", &atoken, 0x18u);
    }

    v13 = NSErrorWithString(&cfstr_NotAllowed.isa);
    (v5)[2](v5, v13);
  }
}

- (void)muteInputForRecordingProcesses:(id)processes
{
  v16 = *MEMORY[0x277D85DE8];
  processesCopy = processes;
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  v12 = v11;
  v13 = 1;
  atoken = v11;
  HasEntitlement = audit_token_to_pid(&atoken);
  v14 = HasEntitlement;
  {
    if (HasEntitlement)
    {
      avas::SmartRoutingPrioritizesCall(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if (avas::SmartRoutingPrioritizesCall(void)::enabled == 1 && (HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement(&v12, "com.apple.private.coreaudio.borrowaudioapplication.allow"), (HasEntitlement & 1) == 0))
  {
    v9 = *avas::server::gSessionServerLog(HasEntitlement);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AVAudioSessionXPCServer.mm";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 2035;
      HIWORD(atoken.val[4]) = 1024;
      atoken.val[5] = v14;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Error - muteInputForRecordingProcesses attempted but caller (pid: %d) doesn't have entitlement", &atoken, 0x18u);
    }

    v10 = NSErrorWithString(&cfstr_NotAllowed.isa);
    processesCopy[2](processesCopy, v10, 0);
  }

  else
  {
    {
      if (HasEntitlement)
      {
        avas::SmartRoutingPrioritizesCall(void)::enabled = _os_feature_enabled_impl();
      }
    }

    if (avas::SmartRoutingPrioritizesCall(void)::enabled == 1)
    {
      avas::server::LegacySessionManager::Instance(HasEntitlement);
      avas::server::LegacySessionManager::MuteInputsForRecordingApplications(&v12);
      if ((v12.val[2] & 1) == 0)
      {
        processesCopy[2](processesCopy, *v12.val, 0);

        goto LABEL_16;
      }

      v7 = caulk::expected<NSDictionary * {__strong},NSError * {__strong}>::value(&v12);
      processesCopy[2](processesCopy, 0, *v7);
    }

    v8 = NSErrorWithString(&cfstr_Unsupported.isa);
    processesCopy[2](processesCopy, v8, 0);
  }

LABEL_16:
}

- (void)setEnhanceDialoguePreference:(id)preference reply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  preferenceCopy = preference;
  replyCopy = reply;
  v7 = *avas::server::gSessionServerLog(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "AVAudioSessionXPCServer.mm";
    v11 = 1024;
    v12 = 2056;
    v13 = 2112;
    v14 = preferenceCopy;
    _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d set enhance dialogue preference to %@", &v9, 0x1Cu);
  }

  if (preferenceCopy && ([preferenceCopy integerValue] & 0x8000000000000000) == 0 && objc_msgSend(preferenceCopy, "integerValue") < 3)
  {
    CFPreferencesSetAppValue(@"enhancedialogueoptin", preferenceCopy, @"com.apple.preferences-sounds");
    v8 = 0;
    notify_post("com.apple.preferences-sounds.enhancedialogueoptin");
  }

  else
  {
    v8 = NSErrorWithString(&cfstr_InvalidValue.isa);
  }

  (*(replyCopy + 2))(replyCopy, v8);
}

- (void)setEnhanceDialogueLevel:(id)level reply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  replyCopy = reply;
  v7 = *avas::server::gSessionServerLog(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "AVAudioSessionXPCServer.mm";
    v12 = 1024;
    v13 = 2073;
    v14 = 2112;
    v15 = levelCopy;
    _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d set enhance dialogue level to %@", &v10, 0x1Cu);
  }

  if (levelCopy && ([levelCopy integerValue] & 0x8000000000000000) == 0 && objc_msgSend(levelCopy, "integerValue") < 4)
  {
    CFPreferencesSetAppValue(@"enhancedialoguelevel", levelCopy, @"com.apple.preferences-sounds");
    if ([levelCopy integerValue])
    {
      v9 = &unk_28535D1D0;
    }

    else
    {
      v9 = &unk_28535D1B8;
    }

    CFPreferencesSetAppValue(@"enhancedialog", v9, @"com.apple.preferences-sounds");
    notify_post("com.apple.preferences-sounds.enhancedialog");
    notify_post("com.apple.preferences-sounds.enhancedialoguelevel");
    v8 = 0;
  }

  else
  {
    v8 = NSErrorWithString(&cfstr_InvalidLevelVa.isa);
  }

  (*(replyCopy + 2))(replyCopy, v8);
}

- (void)getEnhanceDialogueLevelWithReply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  *keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"enhancedialog", @"com.apple.preferences-sounds", &keyExistsAndHasValidFormat[1]);
  v5 = CFPreferencesGetAppIntegerValue(@"enhancedialoguelevel", @"com.apple.preferences-sounds", keyExistsAndHasValidFormat);
  v6 = v5;
  if (v5 < 4)
  {
    v8 = *avas::server::gSessionServerLog(v5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v9)
    {
      v17 = "AVAudioSessionXPCServer.mm";
      *buf = 136315906;
      v18 = 1024;
      if (keyExistsAndHasValidFormat[1])
      {
        v10 = "";
      }

      else
      {
        v10 = "(no value)";
      }

      v19 = 2109;
      v20 = 2048;
      v21 = AppIntegerValue;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d got enhance dialogue mode: %ld %s", buf, 0x26u);
    }

    v11 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = "AVAudioSessionXPCServer.mm";
      *buf = 136315906;
      v18 = 1024;
      if (keyExistsAndHasValidFormat[0])
      {
        v12 = "";
      }

      else
      {
        v12 = "(no value)";
      }

      v19 = 2111;
      v20 = 2048;
      v21 = v6;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d got enhance dialogue level: %ld %s", buf, 0x26u);
    }

    v7 = 0;
  }

  else
  {
    v7 = NSErrorWithString(&cfstr_InvalidValue.isa);
  }

  if (AppIntegerValue)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  replyCopy[2](replyCopy, v7, v14, 0);
}

- (void)allowAppToInitiatePlaybackTemporarilyFromBackground:(id)background reply:(id)reply
{
  replyCopy = reply;
  v4 = NSErrorWithString(&cfstr_NotSupportedOn.isa);
  replyCopy[2](replyCopy, v4);
}

- (void)createIONodeWithSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type reply:(id)reply
{
  v7 = *&session;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient createIONodeWithSourceSession:sessionOwnerPID:playerType:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  if (v7)
  {
    v12 = avas::server::LegacySessionManager::Instance(v11);
    v13 = self->_clientProcess.xpcConnection;
    v14 = v13;
    memset(v23, 0, sizeof(v23));
    if (v13)
    {
      objc_msgSend_auditToken(v13);
    }

    v19 = 1;
    v20 = 1;
    avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v12, v7, v23, &v19, &v21);
    if (v21)
    {
      v18[0] = v21;
      v18[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::LegacySessionManager::CreateIONodeSession(v12, v18, type, v14, self->_clientRelay);
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find source session 0x%x", v7];
    v17 = NSErrorWithString(v16);
    (v10)[2](v10, v17, 0);

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  else
  {
    v15 = NSErrorWithCode();
    (v10)[2](v10, v15, 0);
  }
}

- (void)reconfigureIONode:(unsigned int)node withSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type reply:(id)reply
{
  v8 = *&session;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient reconfigureIONode:withSourceSession:sessionOwnerPID:playerType:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v12 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},unsigned int>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  if (node && v8)
  {
    v14 = avas::server::LegacySessionManager::Instance(v13);
    v15 = self->_clientProcess.xpcConnection;
    v16 = v15;
    memset(&v38, 0, sizeof(v38));
    if (v15)
    {
      objc_msgSend_auditToken(v15);
    }

    v33 = v38;
    v34 = 1;
    atoken = v38;
    v35 = audit_token_to_pid(&atoken);
    avas::server::LegacySessionManager::FindIONodeSession(v14, node, &v33, &v36);
    if (v36)
    {
      v33.val[0] = 1;
      LOBYTE(v33.val[1]) = 1;
      avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v14, v8, &v38, &v33, &atoken);
      if (*atoken.val)
      {
        v17 = self->_clientRelay;
        *v33.val = 0;
        *&v33.val[2] = &v33;
        *&v33.val[4] = 0x2020000000;
        v33.val[6] = 0;
        v19 = avas::server::GetAudioControlQueue(v17, v18);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3321888768;
        v23[2] = __102__AVAudioSessionRemoteXPCClient_reconfigureIONode_withSourceSession_sessionOwnerPID_playerType_reply___block_invoke;
        v23[3] = &unk_28535A4F8;
        v26 = &v33;
        v27 = v14;
        v28 = v36;
        v29 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = *atoken.val;
        v31 = *&atoken.val[2];
        if (*&atoken.val[2])
        {
          atomic_fetch_add_explicit((*&atoken.val[2] + 8), 1uLL, memory_order_relaxed);
        }

        typeCopy = type;
        v24 = v16;
        v20 = v17;
        v25 = v20;
        avas::server::DispatchBlock(v19, v23, 1, "[AVAudioSessionRemoteXPCClient reconfigureIONode:withSourceSession:sessionOwnerPID:playerType:reply:]", "AVAudioSessionXPCServer.mm", 2390, 0, 0);

        v12[2](v12, 0, *(*&v33.val[2] + 24));
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        _Block_object_dispose(&v33, 8);
      }

      else
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find source session 0x%x", v8];
        v22 = NSErrorWithString(&v20->super.isa);
        (v12)[2](v12, v22, 0);
      }

      if (*&atoken.val[2])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&atoken.val[2]);
      }
    }

    else
    {
      v21 = NSErrorWithCode();
      (v12)[2](v12, v21, 0);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }
  }

  else
  {
    v16 = NSErrorWithCode();
    (v12)[2](v12, v16, 0);
  }
}

void __102__AVAudioSessionRemoteXPCClient_reconfigureIONode_withSourceSession_sessionOwnerPID_playerType_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 88);
  v5 = *(a1 + 80);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(*(a1 + 48) + 8) + 24) = avas::server::LegacySessionManager::ReconfigureIONodeSession(v2, &v7, &v5, *(a1 + 96), *(a1 + 32), *(a1 + 40));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

- (void)invalidateIONode:(unsigned int)node reply:(id)reply
{
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient invalidateIONode:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  if (node)
  {
    v9 = avas::server::LegacySessionManager::Instance(v8);
    v10 = self->_clientProcess.xpcConnection;
    v11 = v10;
    memset(&v18, 0, sizeof(v18));
    if (v10)
    {
      objc_msgSend_auditToken(v10);
    }

    v13 = v18;
    v14 = 1;
    atoken = v18;
    v15 = audit_token_to_pid(&atoken);
    avas::server::LegacySessionManager::FindIONodeSession(v9, node, &v13, &v16);
    if (v16 && avas::server::LegacySessionManager::RemoveIONodeSession(v9, node))
    {
      v7[2](v7, 0);
    }

    else
    {
      v12 = NSErrorWithCode();
      (v7)[2](v7, v12);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v11 = NSErrorWithCode();
    (v7)[2](v7, v11);
  }
}

- (void)setIONode:(unsigned int)node playState:(unsigned int)state modes:(unsigned int)modes reply:(id)reply
{
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setIONode:playState:modes:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v13 = avas::server::LegacySessionManager::Instance(v12);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  v27 = v26;
  v28 = 1;
  atoken = v26;
  v29 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindIONodeSession(v13, node, &v27, &v30);
  if (v30)
  {
    *v27.val = 0;
    *&v27.val[2] = &v27;
    *&v27.val[4] = 0x2020000000;
    v27.val[6] = 0;
    v17 = avas::server::GetAudioControlQueue(v15, v16);
    v18 = v17;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3321888768;
    v22[2] = __65__AVAudioSessionRemoteXPCClient_setIONode_playState_modes_reply___block_invoke;
    v22[3] = &unk_28535A530;
    v22[4] = &v27;
    v22[5] = v30;
    v23 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    stateCopy = state;
    modesCopy = modes;
    avas::server::DispatchBlock(v17, v22, 1, "[AVAudioSessionRemoteXPCClient setIONode:playState:modes:reply:]", "AVAudioSessionXPCServer.mm", 2452, 0, 0);

    v19 = *(*&v27.val[2] + 24);
    if (v19)
    {
      v20 = NSErrorWithCode();
    }

    else
    {
      v20 = 0;
    }

    (v11)[2](v11, v20);
    if (v19)
    {
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v21 = NSErrorWithCode();
    (v11)[2](v11, v21);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

uint64_t __65__AVAudioSessionRemoteXPCClient_setIONode_playState_modes_reply___block_invoke(uint64_t a1)
{
  result = avas::server::IONodeSessionInfo::SetPlayState(*(a1 + 40), *(a1 + 56), *(a1 + 60));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setPropertiesIONode:(unsigned int)node values:(id)values reply:(id)reply
{
  valuesCopy = values;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient setPropertiesIONode:values:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v12 = avas::server::LegacySessionManager::Instance(v11);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  v20 = v19;
  v21 = 1;
  atoken = v19;
  v22 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindIONodeSession(v12, node, &v20, &v23);
  if (v23)
  {
    allKeys = [valuesCopy allKeys];
    v15 = [(AVAudioSessionRemoteXPCClient *)self containsPrivilegedIONodeProperties:allKeys];

    avas::server::IONodeSessionInfo::SetProperties(v23, valuesCopy, v15, &v20);
    v16 = v20.val[0];
    if (v20.val[0])
    {
      v17 = NSErrorWithCode();
    }

    else
    {
      v17 = 0;
    }

    (v10)[2](v10, v17, *&v20.val[2]);
    if (v16)
    {
    }
  }

  else
  {
    v18 = NSErrorWithCode();
    (v10)[2](v10, v18, 0);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

- (void)getPropertiesIONode:(unsigned int)node properties:(id)properties reply:(id)reply
{
  propertiesCopy = properties;
  replyCopy = reply;
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient getPropertiesIONode:properties:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  v12 = avas::server::LegacySessionManager::Instance(v11);
  xpcConnection = self->_clientProcess.xpcConnection;
  if (xpcConnection)
  {
    objc_msgSend_auditToken(xpcConnection);
  }

  else
  {
    memset(&v18[1], 0, 32);
  }

  v19 = *&v18[1];
  v20 = 1;
  atoken = *&v18[1];
  v21 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindIONodeSession(v12, node, &v19, &v22);
  if (v22)
  {
    v14 = [(AVAudioSessionRemoteXPCClient *)self containsPrivilegedIONodeProperties:propertiesCopy];
    v18[0] = 0;
    avas::server::IONodeSessionInfo::GetProperties(v22, propertiesCopy, v14, v18, &v19);
    v15 = v18[0];
    v16 = v19.val[0];
    if (v19.val[0])
    {
      v17 = NSErrorWithCode();
    }

    else
    {
      v17 = 0;
    }

    (v10)[2](v10, v17, *&v19.val[2], v15);
    if (v16)
    {
    }
  }

  else
  {
    v15 = NSErrorWithCode();
    (v10)[2](v10, v15, 0, 0);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

- (void)updateMicrophonePermission:(int64_t)permission clientToken:(id *)token reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (token)
  {
    v9 = *token->var0;
    v10 = *&token->var0[4];
  }

  else
  {
    xpcConnection = self->_clientProcess.xpcConnection;
    if (xpcConnection)
    {
      objc_msgSend_auditToken(xpcConnection);
    }

    else
    {
      memset(&atoken, 0, sizeof(atoken));
    }

    v9 = *atoken.val;
    v10 = *&atoken.val[4];
  }

  v33 = v9;
  v34 = v10;
  *atoken.val = v9;
  *&atoken.val[4] = v10;
  v12 = audit_token_to_pid(&atoken);
  LOBYTE(atoken.val[0]) = 1;
  atoken.val[1] = 3844;
  *&atoken.val[2] = v12;
  *&atoken.val[4] = 0;
  *&atoken.val[6] = 0;
  v26 = 0;
  kdebug_trace();
  *&self->_invalidated = "[AVAudioSessionRemoteXPCClient updateMicrophonePermission:clientToken:reply:]";
  self->_replyWatchdogFunctionName = (std::chrono::system_clock::now().__d_.__rep_ + 9000000);
  v13 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogMinTimestamp, replyCopy, 0);

  if (!self->_clientRelay)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v15 = *avas::server::gSessionServerLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "AVAudioSessionXPCServer.mm";
    v29 = 1024;
    v30 = 2555;
    v31 = 1024;
    v32 = v12;
    _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Calling out to AudioToolbox to update microphone permission for client process %d", buf, 0x18u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v23 = v33;
  v24 = v34;
  v20[2] = __78__AVAudioSessionRemoteXPCClient_updateMicrophonePermission_clientToken_reply___block_invoke;
  v20[3] = &unk_278CEAB88;
  permissionCopy = permission;
  v20[4] = self;
  v16 = v13;
  v21 = v16;
  v17 = MEMORY[0x245CEF0E0](v20);
  v19 = avas::server::GetAudioControlQueue(v17, v18);
  avas::server::DispatchBlock(v19, v17, 1, "[AVAudioSessionRemoteXPCClient updateMicrophonePermission:clientToken:reply:]", "AVAudioSessionXPCServer.mm", 2575, 0, 0);

  avas::ScopedTrace::~ScopedTrace(&atoken);
}

void __78__AVAudioSessionRemoteXPCClient_updateMicrophonePermission_clientToken_reply___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2 == 1768843892)
  {
    v3 = 0;
    [*(a1[4] + 72) refreshMicrophoneInjectionPermissions:a1 + 7];
  }

  else if (v2 == 1919119972)
  {
    v3 = 0;
    [*(a1[4] + 72) refreshRecordPermissions:a1 + 7];
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA450];
    v7[0] = @"Invalid permission type";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v3 = [v4 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v5];
  }

  (*(a1[5] + 16))();
}

- (void)initWithServer:process:delegate:
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = getpid();
  if ((caulk::is_debugger_attached(v2) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    v4 = WeakRetained;
    if (WeakRetained && (WeakRetained[10] & 1) == 0)
    {
      v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v5.__d_.__rep_ >= v4[12])
      {
        AudioSessionServerXPCTimeout(v4[11]);
      }

      else
      {
        v6 = *avas::server::gSessionServerLog(v5.__d_.__rep_);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315394;
          v8 = "AVAudioSessionXPCServer.mm";
          v9 = 1024;
          v10 = 593;
          _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPC watchdog timer fired too soon, skipping timeout handling", &v7, 0x12u);
        }
      }
    }
  }
}

@end