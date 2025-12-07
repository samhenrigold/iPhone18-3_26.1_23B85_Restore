@interface AVAudioSessionServerPriv
- (AVAudioSessionServerPriv)init;
- (AVAudioSessionServerPriv)initWithAudioControlQueue:(id)queue delegate:(id)delegate;
- (BOOL)checkMicrophoneInjectionPermission;
- (id)createTimestampWriterForDevice:(id)device halID:(unsigned int)d isDecoupledInput:(BOOL)input;
- (id)getSessionsWithMicrophoneInjectionPreference;
- (int)destroyCMSessionForPID:(int)d sessionID:(unsigned int)iD;
- (int)destroySession:(unsigned int)session auditToken:(id *)token;
- (int)handleInterruptionForPid:(int)pid audioSessionID:(unsigned int)d interruptionState:(unsigned int)state interruptionInfo:(__CFDictionary *)info;
- (int)handleInterruptionForPid:(int)pid audioSessionID:(unsigned int)d mxSessionID:(unint64_t)iD interruptionState:(unsigned int)state interruptionInfo:(__CFDictionary *)info;
- (int)queuePIDOverridden:(int)overridden;
- (int)requestApplyInputMuteForSession:(unsigned int)session inputMuted:(BOOL)muted;
- (int)setMXSessionProperty:(id)property forSessionID:(unsigned int)d value:(id)value;
- (int)setMicrophoneInjectionCapability:(BOOL)capability;
- (opaqueCMSession)copyCMSession:(unsigned int)session;
- (tuple<int,)allowEnhanceDialogue:(unsigned int)dialogue;
- (tuple<int,)checkBooleanEntitlementForSession:(unsigned int)session entitlementIdentifier:(const char *)identifier;
- (tuple<int,)getDescriptionForSession:(int> *__return_ptr)retstr;
- (tuple<int,)getJSONDescriptionForSession:(int> *__return_ptr)retstr;
- (tuple<int,)getMXSessionProperty:(id)property forSessionID:(unsigned int)d;
- (tuple<int,)getSourceProcessAuditToken:(AVAudioSessionServerPriv *)self;
- (tuple<int,)isSessionMuted:(unsigned int)muted;
- (tuple<int,)setPlayState:(unsigned int)state sessionID:(unsigned int)d playerType:(unsigned int)type playerRef:(void *)ref modes:(unsigned int)modes subsessionRef:(void *)subsessionRef;
- (tuple<opaqueCMSession)createCoreMXSession:(unsigned int> *__return_ptr)retstr type:(AVAudioSessionServerPriv *)self;
- (tuple<opaqueCMSession)createCoreMXSessionForPID:(unsigned int> *__return_ptr)retstr;
- (tuple<opaqueCMSession)createCoreMXSessionForProcID:(unsigned int> *__return_ptr)retstr type:(AVAudioSessionServerPriv *)self;
- (tuple<opaqueCMSession)getPrimarySession:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self;
- (tuple<opaqueCMSession)getPrimarySessionForPID:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self;
- (tuple<opaqueCMSession)getPrimarySessionForProcID:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self;
- (unint64_t)dynamicLatencyForDevice:(unsigned int)device isInput:(BOOL)input;
- (vector<unsigned)getSessionIDsForToken:(AVAudioSessionServerPriv *)self;
- (void)destroyTimestampWriterForDevice:(id)device;
- (void)generateIOControllerEvent:(unint64_t)event forDevice:(unsigned int)device;
- (void)getDefaultMXSession:(unsigned int)session;
- (void)mapSession:(unsigned int)session isInput:(BOOL)input toDevice:(id)device;
- (void)sampleRateChanged:(double)changed forDevice:(unsigned int)device;
- (void)startXPCServer;
@end

@implementation AVAudioSessionServerPriv

- (AVAudioSessionServerPriv)init
{
  v6.receiver = self;
  v6.super_class = AVAudioSessionServerPriv;
  v2 = [(AVAudioSessionServerPriv *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVAudioSessionXPCServer);
    xpcServer = v2->_xpcServer;
    v2->_xpcServer = v3;
  }

  return v2;
}

- (AVAudioSessionServerPriv)initWithAudioControlQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AVAudioSessionServerPriv;
  v8 = [(AVAudioSessionServerPriv *)&v12 init];
  if (v8)
  {
    avas::server::SetAudioControlQueue(queueCopy);
    v9 = [[AVAudioSessionXPCServer alloc] initWithDelegate:delegateCopy];
    xpcServer = v8->_xpcServer;
    v8->_xpcServer = v9;

    objc_storeStrong(&v8->_serverDelegate, delegate);
  }

  return v8;
}

- (void)startXPCServer
{
  avas::server::forbid_acq::SystemController::Instance(self);
  xpcServer = self->_xpcServer;

  [(AVAudioSessionXPCServer *)xpcServer start];
}

- (tuple<int,)checkBooleanEntitlementForSession:(unsigned int)session entitlementIdentifier:(const char *)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(*&session))
  {
    return 4294967246;
  }

  else
  {
    avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v11, session);
    v7 = v11;
    if (!v11)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf, "sessionID");
    }

    v8 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasBooleanEntitlement = avas::server::ConstAudioSessionInfo::HasBooleanEntitlement(v7, identifier);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v8 = 0;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v10 = 0x100000000;
    if (!HasBooleanEntitlement)
    {
      v10 = 0;
    }

    return (v10 | v8);
  }
}

- (vector<unsigned)getSessionIDsForToken:(AVAudioSessionServerPriv *)self
{
  v6 = avas::server::LegacySessionManager::Instance(self);

  avas::server::LegacySessionManager::GetSessionIDsForToken(v6, a4, &retstr->__begin_);
  return result;
}

- (void)getDefaultMXSession:(unsigned int)session
{
  cf[13] = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(*&session))
  {
    return 0;
  }

  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v8, session);
  v5 = v8;
  if (!v8)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(cf, "sessionID");
  }

  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**(*(v5 + 120) + 8) + 64))(cf);
  v4 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v4;
}

- (tuple<int,)getDescriptionForSession:(int> *__return_ptr)retstr
{
  v3 = v2;
  v15 = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(v2))
  {
    retstr->var0.var0 = -50;
    result = std::string::basic_string[abi:ne200100]<0>(&retstr->var0.var1.__rep_.__l.__data_, "");
    retstr[1].var0.var0 = 0;
  }

  else
  {
    avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v12, v3);
    v6 = v12;
    if (!v12)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf, "sessionID");
    }

    v7 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v6 + 88))(v6);
    v9 = v12;
    if (!v12)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v10 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 84);
    retstr->var0.var0 = 0;
    std::string::basic_string[abi:ne200100]<0>(&retstr->var0.var1.__rep_.__l.__data_, v8);
    retstr[1].var0.var0 = v11;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    result = v13;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return result;
}

- (tuple<int,)getJSONDescriptionForSession:(int> *__return_ptr)retstr
{
  v3 = v2;
  v15 = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(v2))
  {
    retstr->var0.var0 = -50;
    result = std::string::basic_string[abi:ne200100]<0>(&retstr->var0.var1.__rep_.__l.__data_, "");
    retstr[1].var0.var0 = 0;
  }

  else
  {
    avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v12, v3);
    v6 = v12;
    if (!v12)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&buf, "sessionID");
    }

    v7 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v6, v3, &buf);
    v8 = v12;
    if (!v12)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->var0.var1.__rep_.__l, 1uLL, memory_order_relaxed);
    }

    v10 = *(v8 + 21);
    retstr->var0.var0 = 0;
    p_var1 = &retstr->var0.var1;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(p_var1, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      *&p_var1->__r_.__value_.__l.__data_ = *&buf.__r_.__value_.__l.__data_;
      *(&retstr->var0.var1.__rep_.__l + 2) = *(&buf.__r_.__value_.__l + 2);
    }

    retstr[1].var0.var0 = v10;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    result = v13;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return result;
}

- (tuple<int,)isSessionMuted:(unsigned int)muted
{
  v3 = *&muted;
  v16 = *MEMORY[0x277D85DE8];
  {
    if (self)
    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled)
  {
    if (avas::server::SessionIDIsReserved(v3))
    {
      return 4294967246;
    }

    else
    {
      avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v10, v3);
      v6 = v10;
      if (!v10)
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf, "sessionID");
      }

      v7 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IsSessionInputMuted = avas::server::AudioSessionInfo::IsSessionInputMuted(v6);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v10);
      if (IsSessionInputMuted)
      {
        return 0x100000000;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = 4294967246;
    v5 = *avas::server::gSessionServerLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "AVAudioSessionServer.mm";
      v14 = 1024;
      LODWORD(v15) = 222;
      _os_log_impl(&dword_241701000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d SessionBasedMuting feature flag disabled", buf, 0x12u);
    }
  }

  return v4;
}

- (int)requestApplyInputMuteForSession:(unsigned int)session inputMuted:(BOOL)muted
{
  mutedCopy = muted;
  v30 = *MEMORY[0x277D85DE8];
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  v6 = 561210739;
  if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
  {
    v7 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v23, session);
    if (v23)
    {
      v8 = *avas::server::gSessionServerLog(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        v10 = "UNMUTE";
        *buf = 136315906;
        *&buf[4] = "AVAudioSessionServer.mm";
        *&buf[14] = 245;
        v26 = 2080;
        *&buf[12] = 1024;
        if (mutedCopy)
        {
          v10 = "MUTE";
        }

        v27 = v10;
        v28 = 1024;
        sessionCopy = session;
        _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Toolbox is requesting applying session %s for Session ID: 0x%x", buf, 0x22u);
      }

      v11 = avas::server::LegacySessionManager::Instance(v9);
      v12 = v23;
      if (!v23)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v13 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v12;
      v22 = v13;
      avas::server::LegacySessionManager::FindAudioApplicationForSession(v11, &v21, 1, buf);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v19 = *buf;
      v20 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      v6 = avas::server::require_acq::MuteSessionInput(&v19, &v23, mutedCopy, 0);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v23);
  }

  else
  {
    v14 = avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(buf, session);
    if (*buf)
    {
      v15 = avas::server::LegacySessionManager::Instance(v14);
      if (!*buf)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v21 = *buf;
      v22 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      avas::server::LegacySessionManager::FindAudioApplicationForSession(v15, &v21, 1, &v23);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v16 = v23;
      if (v23)
      {
        v17 = [MEMORY[0x277CCABB0] numberWithBool:mutedCopy];
        v6 = avas::server::AudioApplicationInfo::SetProperty(v16, @"InputMute", v17);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  return v6;
}

- (int)queuePIDOverridden:(int)overridden
{
  v5 = avas::server::LegacySessionManager::Instance(self);
  v8[0] = 0;
  v8[32] = 0;
  overriddenCopy = overridden;
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(v5, v8, 0, self->_serverDelegate, 1, &v10);
  if (v10)
  {
    v6 = 0;
    *(v10 + 224) = 1;
  }

  else
  {
    v6 = 2003329396;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v6;
}

- (tuple<int,)setPlayState:(unsigned int)state sessionID:(unsigned int)d playerType:(unsigned int)type playerRef:(void *)ref modes:(unsigned int)modes subsessionRef:(void *)subsessionRef
{
  memset(v12, 0, 12);
  v11[0] = d;
  v11[4] = 0;
  v8 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v11, *&type, ref, *&modes, *&state, v12, subsessionRef);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  v9 = *(v12 + 4);
  v10 = v8 | (LODWORD(v12[0]) << 32);
  *&result.var0.var1.var1 = v9;
  *&result.var0.var0 = v10;
  return result;
}

- (opaqueCMSession)copyCMSession:(unsigned int)session
{
  cf[13] = *MEMORY[0x277D85DE8];
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v7, session);
  v3 = v7;
  if (!v7)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(cf, "sessionID");
  }

  v4 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**(*(v3 + 120) + 8) + 72))(cf);
  v5 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v5)
  {
    CFRetain(v5);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

- (tuple<opaqueCMSession)createCoreMXSessionForProcID:(unsigned int> *__return_ptr)retstr type:(AVAudioSessionServerPriv *)self
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 1);
  v23[0] = *a4;
  v23[1] = v7;
  v24 = *(a4 + 4);
  v25 = a5;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v8 = avas::server::LegacySessionManager::Instance(self);
  avas::server::LegacySessionManager::CreateSession(v8, v23, 0, self->_serverDelegate, &v21);
  if (v21)
  {
    strcpy(v36, "create_core_session");
    v10 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v21;
      v12 = (*(*v21 + 16))(v21);
      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v11, v12, &cf);
      v17[0] = 0;
      v18 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
    }

    (*(**(*(v21 + 15) + 8) + 72))(buf);
    v13 = *buf;
    (*(**(*(v21 + 15) + 8) + 64))(&cf);
    v14 = cf.__r_.__value_.__r.__words[0];
    v15 = (*(*v21 + 16))(v21);
    retstr->var0.var0 = v13;
    retstr->var0.var1 = v14;
    retstr->var0.var2 = v15;
    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRelease(cf.__r_.__value_.__l.__data_);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }

  return result;
}

- (tuple<opaqueCMSession)createCoreMXSession:(unsigned int> *__return_ptr)retstr type:(AVAudioSessionServerPriv *)self
{
  v8 = *&a4->var0[4];
  *atoken.val = *a4->var0;
  v7 = *atoken.val;
  *&atoken.val[4] = v8;
  audit_token_to_pid(&atoken);
  return objc_msgSend_createCoreMXSessionForProcID_type_(self, v7, v8, 1);
}

- (tuple<opaqueCMSession)createCoreMXSessionForPID:(unsigned int> *__return_ptr)retstr
{
  v5[0] = 0;
  v5[32] = 0;
  v6 = a4;
  return objc_msgSend_createCoreMXSessionForProcID_type_(self, a3, v5, 1718183795);
}

- (tuple<opaqueCMSession)getPrimarySessionForProcID:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self
{
  v5 = a5;
  v9 = avas::server::LegacySessionManager::Instance(self);
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(v9, a4, 0, self->_serverDelegate, v5, &v16);
  if (v16)
  {
    (*(**(v16[15] + 8) + 72))(&v15);
    v10 = v15;
    (*(**(v16[15] + 8) + 64))(&cf);
    v11 = cf;
    v12 = (*(*v16 + 16))(v16);
    retstr->var0.var0 = v10;
    retstr->var0.var1 = v11;
    retstr->var0.var2 = v12;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
  }

  result = v17;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return result;
}

- (tuple<opaqueCMSession)getPrimarySession:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self
{
  v8 = *&a4->var0[4];
  *atoken.val = *a4->var0;
  v7 = *atoken.val;
  *&atoken.val[4] = v8;
  audit_token_to_pid(&atoken);
  return objc_msgSend_getPrimarySessionForProcID_createIfNecessary_(self, v7, v8, 1);
}

- (tuple<opaqueCMSession)getPrimarySessionForPID:(unsigned int> *__return_ptr)retstr createIfNecessary:(AVAudioSessionServerPriv *)self
{
  v6[0] = 0;
  v6[32] = 0;
  v7 = a4;
  return objc_msgSend_getPrimarySessionForProcID_createIfNecessary_(self, a3, v6, a5);
}

- (int)destroyCMSessionForPID:(int)d sessionID:(unsigned int)iD
{
  v5[0] = 0;
  v5[32] = 0;
  dCopy = d;
  return [(AVAudioSessionServerPriv *)self destroySession:*&iD procID:v5];
}

- (int)destroySession:(unsigned int)session auditToken:(id *)token
{
  v4 = *&session;
  v6 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v6;
  v10 = 1;
  v7 = *&token->var0[4];
  *atoken.val = *token->var0;
  *&atoken.val[4] = v7;
  v11 = audit_token_to_pid(&atoken);
  return [(AVAudioSessionServerPriv *)self destroySession:v4 procID:v9];
}

- (id)createTimestampWriterForDevice:(id)device halID:(unsigned int)d isDecoupledInput:(BOOL)input
{
  inputCopy = input;
  deviceCopy = device;
  v8 = avas::server::LegacySessionManager::Instance(deviceCopy);
  v9 = *(v8 + 37);
  if (v9)
  {
    os_unfair_lock_lock(*(v8 + 37));
    LODWORD(v13) = d;
    applesauce::CF::StringRef::from_ns(deviceCopy, &cf);
    v15 = inputCopy;
    v10 = mach_absolute_time();
    v16 = avas::server::DeviceTimeObserver::createDevice(&v9[2], &v13, v10, !inputCopy);
    v17 = v11;
    if (cf)
    {
      CFRelease(cf);
    }

    os_unfair_lock_unlock(v9);
    v9 = avas::server::DeviceTimeObserver::DeviceSlot::timestampWriter(&v16);
  }

  return v9;
}

- (void)destroyTimestampWriterForDevice:(id)device
{
  deviceCopy = device;
  v4 = avas::server::LegacySessionManager::Instance(deviceCopy);
  v5 = *(v4 + 37);
  if (v5)
  {
    os_unfair_lock_lock(*(v4 + 37));
    applesauce::CF::StringRef::from_ns(deviceCopy, &cf);
    v6 = mach_absolute_time();
    avas::server::DeviceTimeObserver::removeDevice(&v5[2], &cf, v6);
    if (cf)
    {
      CFRelease(cf);
    }

    os_unfair_lock_unlock(v5);
  }
}

- (void)mapSession:(unsigned int)session isInput:(BOOL)input toDevice:(id)device
{
  inputCopy = input;
  deviceCopy = device;
  v8 = avas::server::LegacySessionManager::Instance(deviceCopy);
  v9 = *(v8 + 37);
  if (v9)
  {
    os_unfair_lock_lock(*(v8 + 37));
    applesauce::CF::StringRef::from_ns(deviceCopy, &cf);
    v10 = mach_absolute_time();
    avas::server::DeviceTimeObserver::mapSessionToDevice((v9 + 8), session, inputCopy, &cf, v10);
    if (cf)
    {
      CFRelease(cf);
    }

    os_unfair_lock_unlock(v9);
  }
}

- (void)generateIOControllerEvent:(unint64_t)event forDevice:(unsigned int)device
{
  v4 = *&device;
  v6 = avas::server::LegacySessionManager::Instance(self);
  v7 = *(v6 + 37);
  if (v7)
  {
    v8 = v6;
    v9 = avas::server::DeviceTimeObserver::DeviceSupportsDynamicLatency(v4);
    os_unfair_lock_lock(v7);
    avas::server::DeviceTimeObserver::sessionsObservingDeviceEvent((v7 + 8), v4, event, v9, &__p);
    os_unfair_lock_unlock(v7);
    v10 = __p;
    if (__p != v12)
    {
      avas::server::LegacySessionManager::GenerateIOControllerEventForSessions(v8, event, &__p);
      v10 = __p;
    }

    if (v10)
    {
      v12 = v10;
      operator delete(v10);
    }
  }
}

- (void)sampleRateChanged:(double)changed forDevice:(unsigned int)device
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = avas::server::LegacySessionManager::Instance(self);
  v7 = *(v6 + 37);
  if (v7)
  {
    os_unfair_lock_lock(*(v6 + 37));
    avas::server::DeviceTimeObserver::setSampleRate(&v7[2], device, changed);
    os_unfair_lock_unlock(v7);
    outData = 0;
    ioDataSize = 4;
    inAddress = *"tlwhptuo";
    *&v14.mSelector = *"tlwhtpni";
    v14.mElement = 0;
    PropertyData = AudioObjectGetPropertyData(device, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v9 = *avas::server::gSessionServerLog(PropertyData);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v19 = "AVAudioSessionServer.mm";
      v20 = 1024;
      v21 = 471;
LABEL_8:
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to get output device constant latency", buf, 0x12u);
      return;
    }

    v10 = AudioObjectGetPropertyData(device, &v14, 0, 0, &ioDataSize, &inAddress + 12);
    if (v10)
    {
      v9 = *avas::server::gSessionServerLog(v10);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v19 = "AVAudioSessionServer.mm";
      v20 = 1024;
      v21 = 477;
      goto LABEL_8;
    }

    os_unfair_lock_lock(v7);
    LODWORD(v11) = HIDWORD(inAddress);
    v12 = 1000000000.0 / changed * v11;
    v13 = llround(v12);
    LODWORD(v12) = outData;
    avas::server::DeviceTimeObserver::setFixedLatency(&v7[2], device, v13, llround(1000000000.0 / changed * *&v12));
    os_unfair_lock_unlock(v7);
  }
}

- (int)setMicrophoneInjectionCapability:(BOOL)capability
{
  capabilityCopy = capability;
  v4 = avas::server::LegacySessionManager::Instance(self);
  avas::server::LegacySessionManager::SetMicrophoneInjectionIsEnabled(v4, capabilityCopy);
  return 0;
}

- (BOOL)checkMicrophoneInjectionPermission
{
  v2 = avas::server::LegacySessionManager::Instance(self);

  return avas::server::LegacySessionManager::UserAllowsMicrophoneInjection(v2);
}

- (id)getSessionsWithMicrophoneInjectionPreference
{
  v2 = avas::server::LegacySessionManager::Instance(self);

  return avas::server::LegacySessionManager::GetSessionsWithMicrophoneInjectionPreference(v2);
}

- (unint64_t)dynamicLatencyForDevice:(unsigned int)device isInput:(BOOL)input
{
  v6 = avas::server::LegacySessionManager::Instance(self);
  v7 = *(v6 + 37);
  if (!v7)
  {
    return 0;
  }

  os_unfair_lock_lock(*(v6 + 37));
  v8 = avas::server::DeviceTimeObserver::nanosecondLatency(&v7[2], device, input);
  os_unfair_lock_unlock(v7);
  return v8;
}

- (tuple<int,)getSourceProcessAuditToken:(AVAudioSessionServerPriv *)self
{
  v16 = *MEMORY[0x277D85DE8];
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v12, a4);
  v5 = v12;
  if (v12)
  {
    v6 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->var0.var1.var0[1], 1uLL, memory_order_relaxed);
      v7 = *(v5 + 64);
      v14 = *(v5 + 48);
      v15 = v7;
      v8 = *(v5 + 80);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (v8)
      {
LABEL_4:
        retstr->var0.var0 = 0;
        v9 = v15;
        *retstr->var0.var1.var0 = v14;
        *&retstr->var0.var1.var0[4] = v9;
        goto LABEL_7;
      }
    }

    else
    {
      v10 = *(v12 + 64);
      v14 = *(v12 + 48);
      v15 = v10;
      if (*(v12 + 80))
      {
        goto LABEL_4;
      }
    }
  }

  *&retstr->var0.var1.var0[4] = 0u;
  *retstr->var0.var1.var0 = 0u;
  retstr->var0.var0 = -50;
LABEL_7:
  result = v13;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return result;
}

- (tuple<int,)getMXSessionProperty:(id)property forSessionID:(unsigned int)d
{
  v6 = v4;
  propertyCopy = property;
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v12, d);
  v8 = v12;
  if (v12)
  {
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::mx::MXAccessor::GetMXProperty(*(v8 + 120), propertyCopy, v6);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    *v6 = -50;
    *(v6 + 8) = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  result.var0.var1 = v11;
  *&result.var0.var0 = v10;
  return result;
}

- (int)setMXSessionProperty:(id)property forSessionID:(unsigned int)d value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v13, d);
  v9 = v13;
  if (v13)
  {
    v10 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = avas::server::mx::MXAccessor::SetMXProperty(*(v9 + 120), propertyCopy, valueCopy);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v11 = -50;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v11;
}

- (tuple<int,)allowEnhanceDialogue:(unsigned int)dialogue
{
  v14 = *MEMORY[0x277D85DE8];
  if (avas::server::SessionIDIsReserved(*&dialogue))
  {
    return 4294967246;
  }

  else
  {
    avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v10, dialogue);
    if (!v10)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&buf, "sessionID");
    }

    {
      avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
    }

    v5 = v10;
    if (avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled == 1)
    {
      if (!v10)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v6 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::mx::MXAccessor::GetMXProperty(v5[15], *MEMORY[0x277D27198], &buf);
    }

    else
    {
      if (!v10)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v6 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::ConstAudioSessionInfo::GetAVASProperty(&buf, v5, &cfstr_Allowenhancedi.isa);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    bOOLValue = [v13 BOOLValue];
    v8 = buf;

    if (bOOLValue)
    {
      v9 = 0x100000000;
    }

    else
    {
      v9 = 0;
    }

    avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v10);
    return (v9 | v8);
  }
}

- (int)handleInterruptionForPid:(int)pid audioSessionID:(unsigned int)d mxSessionID:(unint64_t)iD interruptionState:(unsigned int)state interruptionInfo:(__CFDictionary *)info
{
  v8 = *&state;
  v10 = *&d;
  v11 = *&pid;
  avas::server::RequireAudioControlQueue(self);
  v13 = avas::server::LegacySessionManager::Instance(v12);

  return avas::server::LegacySessionManager::HandleInterruptionWithMXSessionID(v13, v11, v10, iD, v8, info);
}

- (int)handleInterruptionForPid:(int)pid audioSessionID:(unsigned int)d interruptionState:(unsigned int)state interruptionInfo:(__CFDictionary *)info
{
  v7 = *&state;
  v8 = *&d;
  v9 = *&pid;
  avas::server::RequireAudioControlQueue(self);
  v11 = avas::server::LegacySessionManager::Instance(v10);

  return avas::server::LegacySessionManager::HandleInterruptionWithID(v11, v9, v8, v7, info);
}

@end