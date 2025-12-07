@interface MicActivityDXPCConnection
- (MicActivityDXPCConnection)init;
- (void)disableMicrophoneActivityDetection:(id)detection;
- (void)enableMicrophoneActivityDetection:(id)detection;
- (void)listenForMicrophoneActivity:(id)activity reply:(id)reply;
- (void)stopListeningForMicrophoneActivity:(id)activity;
@end

@implementation MicActivityDXPCConnection

- (void)stopListeningForMicrophoneActivity:(id)activity
{
  activityCopy = activity;
  [(MicActivityClientProtocol *)self->server stopListeningForMicrophoneActivity:activityCopy];
}

- (void)listenForMicrophoneActivity:(id)activity reply:(id)reply
{
  activityCopy = activity;
  replyCopy = reply;
  [(MicActivityClientProtocol *)self->server listenForMicrophoneActivity:activityCopy reply:replyCopy];
}

- (void)disableMicrophoneActivityDetection:(id)detection
{
  detectionCopy = detection;
  [(MicActivityClientProtocol *)self->server disableMicrophoneActivityDetection:detectionCopy];
}

- (void)enableMicrophoneActivityDetection:(id)detection
{
  detectionCopy = detection;
  [(MicActivityClientProtocol *)self->server enableMicrophoneActivityDetection:detectionCopy];
}

- (MicActivityDXPCConnection)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MicActivityDXPCConnection;
  v2 = [(MicActivityDXPCConnection *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.isolated.micactivityd" options:4096];
    connection = v2->connection;
    v2->connection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599B200];
    [(NSXPCConnection *)v2->connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->connection setInterruptionHandler:&__block_literal_global_7273];
    [(NSXPCConnection *)v2->connection setInvalidationHandler:&__block_literal_global_13];
    v6 = [(NSXPCConnection *)v2->connection remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
    server = v2->server;
    v2->server = v6;

    [(NSXPCConnection *)v2->connection resume];
  }

  return v2;
}

void __33__MicActivityDXPCConnection_init__block_invoke_14(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v5;
    AMCP::Log::Scope::get_os_log_t(*v5);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v7 = *v5;
    AMCP::Log::Scope::get_os_log_t(*v5);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_104[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_104[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
    }

    v14 = [v3 localizedDescription];
    v15 = [v3 localizedFailureReason];
    v16 = 136316162;
    v17 = v13;
    v18 = 1024;
    v19 = 36;
    v20 = 2112;
    v21 = @"Error on remote object proxy";
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d %@: %@ %@\n", &v16, 0x30u);
  }
}

void __33__MicActivityDXPCConnection_init__block_invoke_11(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_104[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_104[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
    }

    v11 = 136315394;
    v12 = v10;
    v13 = 1024;
    v14 = 33;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Connection with MAD was invalidated", &v11, 0x12u);
  }
}

void __33__MicActivityDXPCConnection_init__block_invoke(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_104[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_104[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
    }

    v11 = 136315394;
    v12 = v10;
    v13 = 1024;
    v14 = 30;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Connection with MAD was interrupted", &v11, 0x12u);
  }
}

@end