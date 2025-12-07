@interface PHASESessionInterfaceImpl
- (BOOL)registerActivateAudioSessionBlock:(id)block;
- (BOOL)registerFadeClientsInAudioSessionBlock:(id)block;
- (BOOL)registerMuteInputClientsInAudioSessionBlock:(id)block;
- (BOOL)setClientStateFromCallbackOnSession:(unsigned int)session clientToken:(void *)token modes:(unsigned int)modes state:(unsigned int)state outDuckingInfo:(AudioSessionDuckingInfo *)info;
- (BOOL)setClientStateOnSession:(unsigned int)session clientToken:(void *)token modes:(unsigned int)modes state:(unsigned int)state outDuckingInfo:(AudioSessionDuckingInfo *)info;
- (BOOL)setInputMuteStateFromCallbackOnSession:(unsigned int)session clientToken:(void *)token isMuted:(BOOL)muted;
- (BOOL)setInputMuteStateOnSession:(unsigned int)session clientToken:(void *)token isMuted:(BOOL)muted;
- (PHASESessionInterfaceImpl)init;
- (PHASESessionInterfaceImpl)initWithPhasePlatform:(id)platform;
- (id).cxx_construct;
- (id)getInputMuteStateForSession:(unsigned int)session fromCallback:(BOOL)callback;
- (int)fadeClientsInSession:(unsigned int)session activating:(BOOL)activating fadeLevel:(float)level fadeTime:(float)time;
- (int)muteSessionInput:(unsigned int)input mute:(BOOL)mute fadeTime:(float)time;
- (uint64_t)getInputMuteStateForSession:fromCallback:;
- (void)activateSession:(unsigned int)session activate:(BOOL)activate;
- (void)dealloc;
- (void)refreshInputMuteOnAllSessions:(float)sessions;
- (void)removeInputClientToken:(void *)token fromSessionID:(unsigned int)d;
@end

@implementation PHASESessionInterfaceImpl

- (id).cxx_construct
{
  MEMORY[0x1BFAE4070](&self->_callbackMutex, a2);
  self->audioSessionInputClients.__table_.__bucket_list_ = 0u;
  *&self->audioSessionInputClients.__table_.__first_node_.__next_ = 0u;
  self->audioSessionInputClients.__table_.__max_load_factor_ = 1.0;
  return self;
}

- (int)muteSessionInput:(unsigned int)input mute:(BOOL)mute fadeTime:(float)time
{
  muteCopy = mute;
  v7 = *&input;
  v19 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock(&self->_callbackMutex);
  muteSessionInputBlock = self->_muteSessionInputBlock;
  if (muteSessionInputBlock)
  {
    v10 = muteSessionInputBlock[2](muteSessionInputBlock, v7, muteCopy, time);
  }

  else
  {
    v11 = gPhaseManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "ATPhasePlatform.mm";
      v15 = 1024;
      v16 = 439;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d sessioninterface@%p: no muteSessionInputBlock", &v13, 0x1Cu);
    }

    v10 = 0;
  }

  std::recursive_mutex::unlock(&self->_callbackMutex);
  return v10;
}

- (void)activateSession:(unsigned int)session activate:(BOOL)activate
{
  activateCopy = activate;
  v5 = *&session;
  v15 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock(&self->_callbackMutex);
  activateSessionBlock = self->_activateSessionBlock;
  if (activateSessionBlock)
  {
    activateSessionBlock[2](activateSessionBlock, v5, activateCopy);
  }

  else
  {
    v8 = gPhaseManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "ATPhasePlatform.mm";
      v11 = 1024;
      v12 = 426;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d sessioninterface@%p: no activateAudioSessionBlock", &v9, 0x1Cu);
    }
  }

  std::recursive_mutex::unlock(&self->_callbackMutex);
}

- (int)fadeClientsInSession:(unsigned int)session activating:(BOOL)activating fadeLevel:(float)level fadeTime:(float)time
{
  activatingCopy = activating;
  v9 = *&session;
  v21 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock(&self->_callbackMutex);
  fadeSessionOutputBlock = self->_fadeSessionOutputBlock;
  if (fadeSessionOutputBlock)
  {
    v12 = fadeSessionOutputBlock[2](fadeSessionOutputBlock, v9, activatingCopy, level, time);
  }

  else
  {
    v13 = gPhaseManagerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "ATPhasePlatform.mm";
      v17 = 1024;
      v18 = 413;
      v19 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d sessioninterface@%p: no fadeClientsInAudioSessionBlock", &v15, 0x1Cu);
    }

    v12 = 0;
  }

  std::recursive_mutex::unlock(&self->_callbackMutex);
  return v12;
}

- (BOOL)registerActivateAudioSessionBlock:(id)block
{
  blockCopy = block;
  if (self->_activateSessionBlock != blockCopy)
  {
    std::recursive_mutex::lock(&self->_callbackMutex);
    activateSessionBlock = self->_activateSessionBlock;
    self->_activateSessionBlock = 0;

    if (blockCopy)
    {
      v6 = [blockCopy copy];
      v7 = self->_activateSessionBlock;
      self->_activateSessionBlock = v6;
    }

    std::recursive_mutex::unlock(&self->_callbackMutex);
  }

  return 1;
}

- (BOOL)registerFadeClientsInAudioSessionBlock:(id)block
{
  blockCopy = block;
  if (self->_fadeSessionOutputBlock != blockCopy)
  {
    std::recursive_mutex::lock(&self->_callbackMutex);
    fadeSessionOutputBlock = self->_fadeSessionOutputBlock;
    self->_fadeSessionOutputBlock = 0;

    if (blockCopy)
    {
      v6 = [blockCopy copy];
      v7 = self->_fadeSessionOutputBlock;
      self->_fadeSessionOutputBlock = v6;
    }

    std::recursive_mutex::unlock(&self->_callbackMutex);
  }

  return 1;
}

- (BOOL)registerMuteInputClientsInAudioSessionBlock:(id)block
{
  blockCopy = block;
  if (self->_muteSessionInputBlock != blockCopy)
  {
    std::recursive_mutex::lock(&self->_callbackMutex);
    muteSessionInputBlock = self->_muteSessionInputBlock;
    self->_muteSessionInputBlock = 0;

    if (blockCopy)
    {
      v6 = [blockCopy copy];
      v7 = self->_muteSessionInputBlock;
      self->_muteSessionInputBlock = v6;
    }

    std::recursive_mutex::unlock(&self->_callbackMutex);
  }

  return 1;
}

- (BOOL)setInputMuteStateFromCallbackOnSession:(unsigned int)session clientToken:(void *)token isMuted:(BOOL)muted
{
  mutedCopy = muted;
  v7 = *&session;
  v25 = *MEMORY[0x1E69E9840];
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if (CASIsDarwinOS(void)::global)
  {
    return 1;
  }

  v9 = AudioSessionSetClientMuteState(v7, 1885888883, token, mutedCopy);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  v11 = gPhaseManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136316418;
    v14 = "ATPhasePlatform.mm";
    v15 = 1024;
    v16 = 345;
    v17 = 2048;
    selfCopy = self;
    v19 = 2048;
    tokenCopy = token;
    v21 = 1024;
    v22 = mutedCopy;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: error setting client@%p session mute state %u from callback, err = %d", &v13, 0x32u);
  }

  return 0;
}

- (BOOL)setInputMuteStateOnSession:(unsigned int)session clientToken:(void *)token isMuted:(BOOL)muted
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    if (AudioControlQueue(void)::once != -1)
    {
      dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
    }

    v9 = AudioControlQueue(void)::gAudioControlQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PHASESessionInterfaceImpl_setInputMuteStateOnSession_clientToken_isMuted___block_invoke;
    v12[3] = &unk_1E7ECF278;
    sessionCopy = session;
    v12[5] = &v15;
    v12[6] = token;
    mutedCopy = muted;
    v12[4] = self;
    AT::DispatchBlock(v9, v12, 0, "[PHASESessionInterfaceImpl setInputMuteStateOnSession:clientToken:isMuted:]", "ATPhasePlatform.mm", 330);
  }

  v10 = *(v16 + 6) == 0;
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __76__PHASESessionInterfaceImpl_setInputMuteStateOnSession_clientToken_isMuted___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = AudioSessionSetClientMuteState(*(a1 + 56), 1885888883, *(a1 + 48), *(a1 + 60));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = gPhaseManagerLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 60);
      v5 = *(a1 + 32);
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = 136316418;
      v8 = "ATPhasePlatform.mm";
      v9 = 1024;
      v10 = 328;
      v11 = 2048;
      v12 = v5;
      v13 = 2048;
      v14 = v3;
      v15 = 1024;
      v16 = v4;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: error setting client@%p session mute state %u, err = %d", &v7, 0x32u);
    }
  }
}

- (id)getInputMuteStateForSession:(unsigned int)session fromCallback:(BOOL)callback
{
  v23[4] = *MEMORY[0x1E69E9840];
  v23[0] = &unk_1F37BE6A8;
  v23[3] = v23;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3812000000;
  v15 = __Block_byref_object_copy__5806;
  v16 = __Block_byref_object_dispose__5807;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  if (!callback)
  {
    if (AudioControlQueue(void)::once != -1)
    {
      dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
    }

    v8 = AudioControlQueue(void)::gAudioControlQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = __70__PHASESessionInterfaceImpl_getInputMuteStateForSession_fromCallback___block_invoke;
    v21[3] = &unk_1F37BE668;
    v21[4] = &v12;
    std::__function::__value_func<caulk::expected<BOOL,int> ()>::__value_func[abi:ne200100](v22, v23);
    v22[8] = session;
    AT::DispatchBlock(v8, v21, 0, "[PHASESessionInterfaceImpl getInputMuteStateForSession:fromCallback:]", "ATPhasePlatform.mm", 305);

    std::__function::__value_func<caulk::expected<BOOL,int> ()>::~__value_func[abi:ne200100](v22);
    v6 = v13;
    if (*(v13 + 52))
    {
      goto LABEL_13;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_14;
  }

  sessionCopy = session;
  v5 = std::__function::__func<[PHASESessionInterfaceImpl getInputMuteStateForSession:fromCallback:]::$_0,std::allocator<[PHASESessionInterfaceImpl getInputMuteStateForSession:fromCallback:]::$_0>,caulk::expected<BOOL,int> ()>::operator()(self, &sessionCopy);
  v6 = v13;
  v7 = *(v13 + 52);
  if ((v5 & 0x100000000) == 0)
  {
    *(v13 + 12) = v5;
    if (v7)
    {
      v9 = 0;
      *(v6 + 52) = BYTE4(v5);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  *(v13 + 48) = v5;
  if (!v7)
  {
    *(v6 + 52) = BYTE4(v5);
  }

LABEL_13:
  v10 = MEMORY[0x1E696AD98];
  caulk::expected<BOOL,int>::value((v6 + 6));
  v9 = [v10 numberWithBool:*(v6 + 48)];
LABEL_14:
  _Block_object_dispose(&v12, 8);
  std::__function::__value_func<caulk::expected<BOOL,int> ()>::~__value_func[abi:ne200100](v23);

  return v9;
}

- (uint64_t)getInputMuteStateForSession:fromCallback:
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  AQMESession::AQMESession(&v10, *a2, 0);
  v4 = AT::SessionFacade::global(v3);
  v5 = (*(*v4 + 64))(v4, &v10);
  LODWORD(v13) = v5;
  BYTE4(v13) = BYTE4(v5);
  v6 = gPhaseManagerLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 0x100000000) != 0)
  {
    if (v7)
    {
      caulk::expected<BOOL,int>::value(&v13);
      *buf = 136315906;
      v15 = "ATPhasePlatform.mm";
      v16 = 1024;
      v17 = 286;
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      v21 = v2;
      v8 = "%25s:%-5d getInputMuteStateForSession mute=%d for session=0x%x";
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    *buf = 136315906;
    v15 = "ATPhasePlatform.mm";
    v16 = 1024;
    v17 = 290;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v2;
    v8 = "%25s:%-5d error %i getting mute value in getInputMuteStateForSession for session=0x%x";
LABEL_6:
    _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Eu);
  }

  if (v12 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (*(&v10.mDescription.__rep_.__l + 23) < 0)
  {
    operator delete(v10.mDescription.__rep_.__l.__data_);
  }

  if (v10.mSubsessionRef.mCFObject)
  {
    CFRelease(v10.mSubsessionRef.mCFObject);
  }

  return v13 & 0xFFFFFFFFFFLL;
}

unint64_t __70__PHASESessionInterfaceImpl_getInputMuteStateForSession_fromCallback___block_invoke(uint64_t a1)
{
  v7 = *(a1 + 72);
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2, &v7);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 52);
  if ((result & 0x100000000) != 0)
  {
    if (*(v4 + 52))
    {
      *(v4 + 48) = result;
      return result;
    }

    v6 = HIDWORD(result);
    *(v4 + 48) = result;
  }

  else
  {
    *(v4 + 48) = result;
    if (!v5)
    {
      return result;
    }

    v6 = HIDWORD(result);
  }

  *(v4 + 52) = v6;
  return result;
}

- (void)refreshInputMuteOnAllSessions:(float)sessions
{
  v32 = *MEMORY[0x1E69E9840];
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    for (i = self->audioSessionInputClients.__table_.__first_node_.__next_; i; i = *i)
    {
      v19 = *(i + 4);
      memset(v20, 0, sizeof(v20));
      v21 = *(i + 14);
      std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>>>::__rehash<true>(v20, *(i + 4));
      for (j = *(i + 5); j; j = *j)
      {
        std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void * const&>(v20, j[2], j + 2);
      }

      AQMESession::AQMESession(&v16, v19, 0);
      v8 = AT::SessionFacade::global(v7);
      v9 = (*(*v8 + 64))(v8, &v16);
      v14 = v9;
      v15 = BYTE4(v9);
      if ((v9 & 0x100000000) != 0)
      {
        caulk::expected<BOOL,int>::value(&v14);
        v11 = v14;
        v12 = gPhaseManagerLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v23 = "ATPhasePlatform.mm";
          v24 = 1024;
          v25 = 269;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 1024;
          v29 = v11;
          v30 = 1024;
          v31 = v19;
          _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d platform@%p: refreshAudioSessionInputMute mute=%d for session=0x%x", buf, 0x28u);
        }

        *&v13 = sessions;
        [(PHASESessionInterfaceImpl *)self muteSessionInput:v19 mute:v11 fadeTime:v13];
      }

      else
      {
        v10 = gPhaseManagerLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v23 = "ATPhasePlatform.mm";
          v24 = 1024;
          v25 = 272;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 1024;
          v29 = v14;
          v30 = 1024;
          v31 = v19;
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d platform@%p: error %i getting mute value in refreshAudioSessionInputMute for session=0x%x", buf, 0x28u);
        }
      }

      if (v18 == 1 && cf)
      {
        CFRelease(cf);
      }

      if (*(&v16.mDescription.__rep_.__l + 23) < 0)
      {
        operator delete(v16.mDescription.__rep_.__l.__data_);
      }

      if (v16.mSubsessionRef.mCFObject)
      {
        CFRelease(v16.mSubsessionRef.mCFObject);
      }

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v20);
    }
  }
}

- (BOOL)setClientStateFromCallbackOnSession:(unsigned int)session clientToken:(void *)token modes:(unsigned int)modes state:(unsigned int)state outDuckingInfo:(AudioSessionDuckingInfo *)info
{
  v8 = *&state;
  v9 = *&modes;
  v11 = *&session;
  v30 = *MEMORY[0x1E69E9840];
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if (CASIsDarwinOS(void)::global)
  {
    if (info)
    {
      *&info->var1 = 0x3F80000000000000;
      info->var0 = 0;
    }

    return 1;
  }

  v13 = AudioSessionSetClientPlayState(v11, 1885888883, token, v9, v8, info, 0);
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  v15 = gPhaseManagerLog();
  v16 = v15;
  if (v8)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136316418;
      v19 = "ATPhasePlatform.mm";
      v20 = 1024;
      v21 = 228;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2048;
      tokenCopy2 = token;
      v26 = 1024;
      v27 = v8;
      v28 = 1024;
      v29 = v14;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: error setting client@%p session state %u from callback, err = %d", &v18, 0x32u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136316418;
    v19 = "ATPhasePlatform.mm";
    v20 = 1024;
    v21 = 224;
    v22 = 2048;
    selfCopy2 = self;
    v24 = 2048;
    tokenCopy2 = token;
    v26 = 1024;
    v27 = 0;
    v28 = 1024;
    v29 = v14;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sessioninterface@%p: error setting client@%p session state %u from callback, err = %d", &v18, 0x32u);
  }

  return 0;
}

- (void)removeInputClientToken:(void *)token fromSessionID:(unsigned int)d
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>>>::find<unsigned int>(&self->audioSessionInputClients.__table_.__bucket_list_.__ptr_, d);
  if (v7)
  {
    v8 = v7;
    v9 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(v7 + 3, token);
    if (v9)
    {
      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(v8 + 3, v9);
      if (!v8[6])
      {
        v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>>>::find<unsigned int>(&self->audioSessionInputClients.__table_.__bucket_list_.__ptr_, d);
        if (v10)
        {
          v11 = v10;
          size = self->audioSessionInputClients.__table_.__bucket_list_.__deleter_.__size_;
          v13 = v10[1];
          v14 = vcnt_s8(size);
          v14.i16[0] = vaddlv_u8(v14);
          if (v14.u32[0] > 1uLL)
          {
            if (v13 >= size)
            {
              v13 %= size;
            }
          }

          else
          {
            v13 &= size - 1;
          }

          ptr = self->audioSessionInputClients.__table_.__bucket_list_.__ptr_;
          v18 = ptr[v13];
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18 != v10);
          if (v19 == &self->audioSessionInputClients.__table_.__first_node_)
          {
            goto LABEL_29;
          }

          phasePlatform = v19->_phasePlatform;
          if (v14.u32[0] > 1uLL)
          {
            if (phasePlatform >= size)
            {
              phasePlatform %= size;
            }
          }

          else
          {
            phasePlatform &= size - 1;
          }

          if (phasePlatform != v13)
          {
LABEL_29:
            if (!*v10)
            {
              goto LABEL_30;
            }

            v21 = *(*v10 + 8);
            if (v14.u32[0] > 1uLL)
            {
              if (v21 >= size)
              {
                v21 %= size;
              }
            }

            else
            {
              v21 &= size - 1;
            }

            if (v21 != v13)
            {
LABEL_30:
              ptr[v13] = 0;
            }
          }

          v22 = *v10;
          if (*v10)
          {
            v23 = *(v22 + 1);
            if (v14.u32[0] > 1uLL)
            {
              if (v23 >= size)
              {
                v23 %= size;
              }
            }

            else
            {
              v23 &= size - 1;
            }

            if (v23 != v13)
            {
              self->audioSessionInputClients.__table_.__bucket_list_.__ptr_[v23] = v19;
              v22 = *v10;
            }
          }

          v19->super.isa = v22;
          *v10 = 0;
          --self->audioSessionInputClients.__table_.__size_;
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((v10 + 3));

          operator delete(v11);
        }
      }
    }

    else
    {
      v16 = gPhaseManagerLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = 136316162;
        v25 = "ATPhasePlatform.mm";
        v26 = 1024;
        v27 = 165;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2048;
        tokenCopy2 = token;
        v32 = 1024;
        dCopy2 = d;
        _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: can't remove unknown client@%p from session 0x%x", &v24, 0x2Cu);
      }
    }
  }

  else
  {
    v15 = gPhaseManagerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136316162;
      v25 = "ATPhasePlatform.mm";
      v26 = 1024;
      v27 = 171;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2048;
      tokenCopy2 = token;
      v32 = 1024;
      dCopy2 = d;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: can't remove client@%p from unknown session 0x%x", &v24, 0x2Cu);
    }
  }
}

- (BOOL)setClientStateOnSession:(unsigned int)session clientToken:(void *)token modes:(unsigned int)modes state:(unsigned int)state outDuckingInfo:(AudioSessionDuckingInfo *)info
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if (CASIsDarwinOS(void)::global)
  {
    if (info)
    {
      *&info->var1 = 0x3F80000000000000;
      info->var0 = 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    if (AudioControlQueue(void)::once != -1)
    {
      dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
    }

    v13 = AudioControlQueue(void)::gAudioControlQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__PHASESessionInterfaceImpl_setClientStateOnSession_clientToken_modes_state_outDuckingInfo___block_invoke;
    v16[3] = &unk_1E7ECF250;
    objc_copyWeak(v17, &location);
    v16[4] = &v22;
    v17[1] = token;
    v17[2] = info;
    sessionCopy = session;
    modesCopy = modes;
    stateCopy = state;
    AT::DispatchBlock(v13, v16, 0, "[PHASESessionInterfaceImpl setClientStateOnSession:clientToken:modes:state:outDuckingInfo:]", "ATPhasePlatform.mm", 134);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  v14 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void __92__PHASESessionInterfaceImpl_setClientStateOnSession_clientToken_modes_state_outDuckingInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(*(*(a1 + 32) + 8) + 24) = [WeakRetained setClientStateFromCallbackOnSession:*(a1 + 64) clientToken:*(a1 + 48) modes:*(a1 + 68) state:*(a1 + 72) outDuckingInfo:*(a1 + 56)];
    WeakRetained = v3;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)dealloc
{
  muteSessionInputBlock = self->_muteSessionInputBlock;
  self->_muteSessionInputBlock = 0;

  fadeSessionOutputBlock = self->_fadeSessionOutputBlock;
  self->_fadeSessionOutputBlock = 0;

  activateSessionBlock = self->_activateSessionBlock;
  self->_activateSessionBlock = 0;

  sessionVolumeImpl = self->_sessionVolumeImpl;
  self->_sessionVolumeImpl = 0;

  objc_storeWeak(&self->_phasePlatform, 0);
  v7.receiver = self;
  v7.super_class = PHASESessionInterfaceImpl;
  [(PHASESessionInterfaceImpl *)&v7 dealloc];
}

- (PHASESessionInterfaceImpl)initWithPhasePlatform:(id)platform
{
  platformCopy = platform;
  v11.receiver = self;
  v11.super_class = PHASESessionInterfaceImpl;
  v5 = [(PHASESessionInterfaceImpl *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_phasePlatform, platformCopy);
    muteSessionInputBlock = v6->_muteSessionInputBlock;
    v6->_muteSessionInputBlock = 0;

    fadeSessionOutputBlock = v6->_fadeSessionOutputBlock;
    v6->_fadeSessionOutputBlock = 0;

    activateSessionBlock = v6->_activateSessionBlock;
    v6->_activateSessionBlock = 0;
  }

  return v6;
}

- (PHASESessionInterfaceImpl)init
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = gPhaseManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "ATPhasePlatform.mm";
    v7 = 1024;
    v8 = 85;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: unsupported initializer for PHASESessionInterfaceImpl!", &v5, 0x12u);
  }

  return 0;
}

@end