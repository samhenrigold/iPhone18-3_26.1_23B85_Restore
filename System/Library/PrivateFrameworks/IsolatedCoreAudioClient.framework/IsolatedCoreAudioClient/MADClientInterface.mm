@interface MADClientInterface
- (MADClientInterface)init;
- (id).cxx_construct;
- (id)initForTest:(id)test;
- (id)listenForMicrophoneActivity:reply:;
- (shared_ptr<MADMultiplexer>)mMADMultiplexer;
- (uint64_t)createClientReaper;
- (uint64_t)listenForMicrophoneActivity:reply:;
- (void)createClientReaper;
- (void)disableMicrophoneActivityDetection:(id)detection;
- (void)enableMicrophoneActivityDetection:(id)detection;
- (void)listenForMicrophoneActivity:(id)activity reply:(id)reply;
- (void)listenForMicrophoneActivity:reply:;
- (void)setMMADMultiplexer:(shared_ptr<MADMultiplexer>)multiplexer;
- (void)setupReverseConnection:(id)connection;
- (void)stopListeningForMicrophoneActivity:(id)activity;
@end

@implementation MADClientInterface

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (void)setMMADMultiplexer:(shared_ptr<MADMultiplexer>)multiplexer
{
  p_mMADMultiplexer = &self->_mMADMultiplexer;
  v5 = *multiplexer.__ptr_;
  v4 = *(multiplexer.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mMADMultiplexer.__cntrl_;
  p_mMADMultiplexer->__ptr_ = v5;
  p_mMADMultiplexer->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<MADMultiplexer>)mMADMultiplexer
{
  cntrl = self->_mMADMultiplexer.__cntrl_;
  *v2 = self->_mMADMultiplexer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)stopListeningForMicrophoneActivity:(id)activity
{
  v11 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "MADClientInterface.mm";
    v9 = 1024;
    v10 = 112;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface stopListeningForMicrophoneActivity", &v7, 0x12u);
  }

  cntrl = self->mClient.__cntrl_;
  self->mClient.__ptr_ = 0;
  self->mClient.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  activityCopy[2](activityCopy, 0);
}

- (void)listenForMicrophoneActivity:(id)activity reply:(id)reply
{
  v20[3] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  replyCopy = reply;
  v8 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 136315394;
    *&v18[4] = "MADClientInterface.mm";
    *&v18[12] = 1024;
    *&v18[14] = 94;
    _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface listenForMicrophoneActivity", v18, 0x12u);
  }

  [(MADClientInterface *)self setupReverseConnection:activityCopy];
  selfCopy = self;
  p_mClient = &selfCopy->mClient;
  ptr = selfCopy->mClient.__ptr_;
  v12 = ptr + 24;
  *v18 = &unk_286777070;
  *&v18[8] = selfCopy;
  v19 = v18;
  v13 = selfCopy;
  if (ptr + 24 != v18)
  {
    if (*(ptr + 6) == v12)
    {
      std::__function::__func<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1,std::allocator<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1>,void ()(BOOL)>::__clone(v18, v20);
      (*(*v19 + 32))(v19);
      v19 = 0;
      (*(**(ptr + 6) + 24))(*(ptr + 6), v18);
      (*(**(ptr + 6) + 32))(*(ptr + 6));
      *(ptr + 6) = 0;
      v19 = v18;
      (*(v20[0] + 24))(v20, ptr + 24);
      (*(v20[0] + 32))(v20);
    }

    else
    {
      std::__function::__func<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1,std::allocator<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1>,void ()(BOOL)>::__clone(v18, ptr + 3);
      (*(*v19 + 32))(v19);
      v19 = *(ptr + 6);
    }

    *(ptr + 6) = v12;
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v18);

  objc_msgSend_mMADMultiplexer(v13);
  v14 = *v18;
  v15 = p_mClient->__ptr_;
  cntrl = p_mClient->__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v14[1];
  *v14 = v15;
  v14[1] = cntrl;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  if (*&v18[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v18[8]);
  }

  replyCopy[2](replyCopy, 0);
}

- (uint64_t)listenForMicrophoneActivity:reply:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z56-[MADClientInterface listenForMicrophoneActivity:reply:]E3$_1"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)listenForMicrophoneActivity:reply:
{

  JUMPOUT(0x259C39250);
}

- (id)listenForMicrophoneActivity:reply:
{
  *a2 = &unk_286777070;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (void)disableMicrophoneActivityDetection:(id)detection
{
  v10 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v5 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "MADClientInterface.mm";
    v8 = 1024;
    v9 = 87;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface disableMicrophoneActivityDetection", &v6, 0x12u);
  }

  *(self->mClient.__ptr_ + 16) = 0;
  detectionCopy[2](detectionCopy, 0);
}

- (void)enableMicrophoneActivityDetection:(id)detection
{
  v10 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v5 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "MADClientInterface.mm";
    v8 = 1024;
    v9 = 80;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface enableMicrophoneActivityDetection", &v6, 0x12u);
  }

  *(self->mClient.__ptr_ + 16) = 1;
  detectionCopy[2](detectionCopy, 0);
}

- (void)setupReverseConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:connectionCopy];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677B190];
  [v4 setRemoteObjectInterface:v5];

  [v4 setInterruptionHandler:&__block_literal_global_700];
  [v4 setInvalidationHandler:&__block_literal_global_18];
  [v4 activate];
  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
  v7 = *self->mClient.__ptr_;
  v8 = *v7;
  *v7 = v6;

  mReverseConnections = [(MADClientInterface *)self mReverseConnections];
  [mReverseConnections addObject:v4];
}

void __45__MADClientInterface_setupReverseConnection___block_invoke_19(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = [v2 localizedFailureReason];
    v6 = 136316162;
    v7 = "MADClientInterface.mm";
    v8 = 1024;
    v9 = 71;
    v10 = 2112;
    v11 = @"Error on remote object proxy";
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %@: %@ %@\n", &v6, 0x30u);
  }
}

void __45__MADClientInterface_setupReverseConnection___block_invoke_16()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "MADClientInterface.mm";
    v3 = 1024;
    v4 = 66;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Reverse connection invalidated", &v1, 0x12u);
  }
}

void __45__MADClientInterface_setupReverseConnection___block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "MADClientInterface.mm";
    v3 = 1024;
    v4 = 65;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Reverse connection interrupted", &v1, 0x12u);
  }
}

- (void)createClientReaper
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_286776FE0;
  v4[3] = v4;
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v3, v4);
  [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self setClientReaper:v3];
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v3);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v4);
}

- (uint64_t)createClientReaper
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z40-[MADClientInterface createClientReaper]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)initForTest:(id)test
{
  v12 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A168];
  v10.receiver = self;
  v10.super_class = MADClientInterface;
  v6 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v10 initWithInterface:v5 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient.micactivity"];

  if (v6)
  {
    v7 = sIsolatedCoreAudioMicActivityLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "MADClientInterface.mm";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 43;
      _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface test constructor", buf, 0x12u);
    }

    LOBYTE(buf[0]) = 1;
    std::allocate_shared[abi:ne200100]<MADMultiplexer,std::allocator<MADMultiplexer>,BOOL,0>(&v9, buf);
  }

  return 0;
}

- (MADClientInterface)init
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A168];
  v8.receiver = self;
  v8.super_class = MADClientInterface;
  v4 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v8 initWithInterface:v3 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient.micactivity"];

  if (v4)
  {
    v5 = sIsolatedCoreAudioMicActivityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "MADClientInterface.mm";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 29;
      _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface constructor", buf, 0x12u);
    }

    LOBYTE(buf[0]) = 0;
    std::allocate_shared[abi:ne200100]<MADMultiplexer,std::allocator<MADMultiplexer>,BOOL,0>(&v7, buf);
  }

  return 0;
}

@end