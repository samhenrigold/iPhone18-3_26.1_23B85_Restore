@interface ATPhasePlatform
- (ATPhasePlatform)init;
- (BOOL)enableIO:(BOOL)o direction:(unsigned __int8)direction;
- (BOOL)registerIOBlock:(id)block;
- (BOOL)registerOverloadNotification:(id)notification;
- (BOOL)registerRouteChangeNotification:(id)notification;
- (BOOL)start;
- (BOOL)stop;
- (OS_os_workgroup)workgroup;
- (double)sampleRate;
- (float)volumeScalarMappedToHWCurve:(float)curve;
- (id)lazyInitRoomCongruenceInterface;
- (id)lazyInitSessionInterface;
- (id)streamInfoForIndex:(unsigned int)index direction:(unsigned __int8)direction;
- (int)fadeClientsInSession:(unsigned int)session activating:(BOOL)activating fadeLevel:(float)level fadeTime:(float)time;
- (int)muteAudioSessionBidirectional:(unsigned int)bidirectional mute:(BOOL)mute inputFadeTime:(float)time outputFadeTime:(float)fadeTime;
- (int)muteSessionInput:(unsigned int)input mute:(BOOL)mute fadeTime:(float)time;
- (unsigned)bufferFrameSize;
- (unsigned)deviceLatencyInFramesForDirection:(unsigned __int8)direction;
- (void)activateSession:(unsigned int)session activate:(BOOL)activate;
- (void)dealloc;
- (void)lazyInitServerManager;
- (void)refreshInputMuteOnAllSessions:(float)sessions;
- (void)registerTapInterface:(id)interface;
@end

@implementation ATPhasePlatform

- (OS_os_workgroup)workgroup
{
  v9[8] = *MEMORY[0x1E69E9840];
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v3 = *lazyInitServerManager;
  if (*lazyInitServerManager)
  {
    v4 = lazyInitServerManager;
    os_unfair_recursive_lock_lock_with_options();
    v5 = (*(*v3 + 408))(v3, v4 + 3);
    (*(*v5 + 88))(v9);
    v7 = caulk::mach::details::retain_os_object(v9[1], v6);
    caulk::mach::os_workgroup_managed::~os_workgroup_managed(v9);
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (float)volumeScalarMappedToHWCurve:(float)curve
{
  v21 = *MEMORY[0x1E69E9840];
  ptr = self->_serverManager.__ptr_;
  if (ptr)
  {
    v5 = *ptr;
    if (*ptr)
    {
      os_unfair_recursive_lock_lock_with_options();
      v6 = (*(*v5 + 408))(v5, ptr + 24);
      v7.n128_u32[0] = 1.0;
      if (curve <= 1.0)
      {
        v7.n128_f32[0] = curve;
      }

      if (curve < 0.0)
      {
        v7.n128_f32[0] = 0.0;
      }

      v8 = (*(*v6 + 176))(v6, v7);
      os_unfair_recursive_lock_unlock();
      v9 = gPhaseManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136316162;
        v12 = "PhaseServerManager.mm";
        v13 = 1024;
        v14 = 239;
        v15 = 2048;
        v16 = ptr;
        v17 = 2048;
        curveCopy = curve;
        v19 = 2048;
        v20 = v8;
        _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d servermgr@%p: volume %.3f, HW mapped volume %.3f", &v11, 0x30u);
      }

      return v8;
    }
  }

  return curve;
}

- (int)muteAudioSessionBidirectional:(unsigned int)bidirectional mute:(BOOL)mute inputFadeTime:(float)time outputFadeTime:(float)fadeTime
{
  muteCopy = mute;
  v8 = *&bidirectional;
  v10 = [ATPhasePlatform muteSessionInput:"muteSessionInput:mute:fadeTime:" mute:? fadeTime:?];
  LODWORD(v11) = 1.0;
  if (muteCopy)
  {
    *&v11 = 0.0;
  }

  return [(ATPhasePlatform *)self fadeClientsInSession:v8 activating:0 fadeLevel:v11 fadeTime:COERCE_DOUBLE(LODWORD(fadeTime))]+ v10;
}

- (int)muteSessionInput:(unsigned int)input mute:(BOOL)mute fadeTime:(float)time
{
  muteCopy = mute;
  v7 = *&input;
  lazyInitSessionInterface = [(ATPhasePlatform *)self lazyInitSessionInterface];

  if (!lazyInitSessionInterface)
  {
    return 0;
  }

  lazyInitSessionInterface2 = [(ATPhasePlatform *)self lazyInitSessionInterface];
  *&v11 = time;
  v12 = [lazyInitSessionInterface2 muteSessionInput:v7 mute:muteCopy fadeTime:v11];

  return v12;
}

- (void)refreshInputMuteOnAllSessions:(float)sessions
{
  lazyInitSessionInterface = [(ATPhasePlatform *)self lazyInitSessionInterface];

  if (lazyInitSessionInterface)
  {
    lazyInitSessionInterface2 = [(ATPhasePlatform *)self lazyInitSessionInterface];
    *&v6 = sessions;
    [lazyInitSessionInterface2 refreshInputMuteOnAllSessions:v6];
  }
}

- (void)activateSession:(unsigned int)session activate:(BOOL)activate
{
  activateCopy = activate;
  v5 = *&session;
  lazyInitSessionInterface = [(ATPhasePlatform *)self lazyInitSessionInterface];

  if (lazyInitSessionInterface)
  {
    lazyInitSessionInterface2 = [(ATPhasePlatform *)self lazyInitSessionInterface];
    [lazyInitSessionInterface2 activateSession:v5 activate:activateCopy];
  }
}

- (int)fadeClientsInSession:(unsigned int)session activating:(BOOL)activating fadeLevel:(float)level fadeTime:(float)time
{
  activatingCopy = activating;
  v9 = *&session;
  lazyInitSessionInterface = [(ATPhasePlatform *)self lazyInitSessionInterface];

  if (!lazyInitSessionInterface)
  {
    return 0;
  }

  lazyInitSessionInterface2 = [(ATPhasePlatform *)self lazyInitSessionInterface];
  *&v13 = level;
  *&v14 = time;
  v15 = [lazyInitSessionInterface2 fadeClientsInSession:v9 activating:activatingCopy fadeLevel:v13 fadeTime:v14];

  return v15;
}

- (void)registerTapInterface:(id)interface
{
  v14 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  tapInterface = self->_tapInterface;
  if (tapInterface != interfaceCopy)
  {
    if (interfaceCopy && tapInterface)
    {
      v7 = gPhaseManagerLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315650;
        v9 = "ATPhasePlatform.mm";
        v10 = 1024;
        v11 = 781;
        v12 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d platform@%p: error: cannot override tapsInterface", &v8, 0x1Cu);
      }
    }

    else
    {
      objc_storeStrong(&self->_tapInterface, interface);
    }
  }
}

- (BOOL)stop
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = gPhaseManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "ATPhasePlatform.mm";
    v7 = 1024;
    v8 = 764;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d platform@%p: stopping IO", &v5, 0x1Cu);
  }

  Phase::ServerManager::stop([(ATPhasePlatform *)self lazyInitServerManager]);
  return 1;
}

- (BOOL)start
{
  v35 = *MEMORY[0x1E69E9840];
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v4 = lazyInitServerManager;
  sessionInterface_high = HIDWORD(lazyInitServerManager->_sessionInterface);
  if ((sessionInterface_high & 3) == 0)
  {
    v7 = -66681;
    v8 = gPhaseManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "PhaseServerManager.mm";
      v29 = 1024;
      v30 = 427;
      v31 = 2048;
      selfCopy2 = v4;
      v33 = 1024;
      v34 = -66681;
      _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: both input and output are disabled, err = %d", buf, 0x22u);
    }

    goto LABEL_14;
  }

  if (!lazyInitServerManager[16]._tapInterface)
  {
    v7 = -66681;
    v8 = gPhaseManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "PhaseServerManager.mm";
      v29 = 1024;
      v30 = 434;
      v31 = 2048;
      selfCopy2 = v4;
      v33 = 1024;
      v34 = -66681;
      _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: IOBlock is nil, err = %d", buf, 0x22u);
    }

    goto LABEL_14;
  }

  if (!lazyInitServerManager->super.isa)
  {
    v7 = -66681;
    v8 = gPhaseManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "PhaseServerManager.mm";
      v29 = 1024;
      v30 = 440;
      v31 = 2048;
      selfCopy2 = v4;
      v33 = 1024;
      v34 = -66681;
      _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: error initializing, err = %d", buf, 0x22u);
    }

LABEL_14:

    goto LABEL_26;
  }

  if ((HIDWORD(lazyInitServerManager->_sessionInterface) & 3) == 3)
  {
    Phase::ServerManager::maxBufferSizeFrames(lazyInitServerManager);
    std::__optional_destruct_base<CA::AudioBuffersBase,false>::reset[abi:ne200100](&v4[18]);
    v6 = ExtendedAudioBufferList_Create();
    CA::AudioBuffersBase::AudioBuffersBase(&v4[18].super.isa, v6, 1);
    LOBYTE(v4[18]._serverManager.__ptr_) = 1;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    goto LABEL_16;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if ((sessionInterface_high & 2) != 0)
  {
LABEL_16:
    (*(v4[8]._tapInterface + 8))(&v19);
    operator new();
  }

  if ((sessionInterface_high & 1) == 0)
  {
    goto LABEL_24;
  }

  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v9 = AudioControlQueue(void)::gAudioControlQueue;
  __p[0] = MEMORY[0x1E69E9820];
  __p[1] = 3221225472;
  __p[2] = ___ZN5Phase13ServerManager5startEv_block_invoke_30;
  __p[3] = &unk_1E7ED0258;
  __p[4] = &v20;
  __p[5] = v4;
  AT::DispatchBlock(v9, __p, 0, "start", "PhaseServerManager.mm", 479);

  if (*(v21 + 6))
  {
    Phase::ServerManager::stop(v4);
    v10 = gPhaseManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v21 + 6);
      v24[0] = 136315906;
      *&v24[1] = "PhaseServerManager.mm";
      LOWORD(v24[3]) = 1024;
      *(&v24[3] + 2) = 484;
      HIWORD(v24[4]) = 2048;
      *&v24[5] = v4;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: could not start output client, err = %d", v24, 0x22u);
    }

    v7 = *(v21 + 6);
  }

  else
  {
LABEL_24:
    v7 = 0;
    LOBYTE(v4->_sessionInterface) = 1;
  }

  _Block_object_dispose(&v20, 8);
LABEL_26:
  v12 = gPhaseManagerLog();
  v13 = v12;
  if (v7)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "ATPhasePlatform.mm";
      v29 = 1024;
      v30 = 755;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 1024;
      v34 = v7;
      v14 = "%25s:%-5d platform@%p: failed to start IO, err = %d";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 34;
LABEL_31:
      _os_log_impl(&dword_1B9A08000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "ATPhasePlatform.mm";
    v29 = 1024;
    v30 = 751;
    v31 = 2048;
    selfCopy2 = self;
    v14 = "%25s:%-5d platform@%p: successfully started IO";
    v15 = v13;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 28;
    goto LABEL_31;
  }

  return v7 == 0;
}

- (BOOL)registerRouteChangeNotification:(id)notification
{
  notificationCopy = notification;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v6 = notificationCopy;
  v7 = lazyInitServerManager[84];
  if (v7)
  {
    _Block_release(v7);
    v8 = lazyInitServerManager[84];
    lazyInitServerManager[84] = 0;
  }

  if (v6)
  {
    v9 = _Block_copy(v6);
    v10 = lazyInitServerManager[84];
    lazyInitServerManager[84] = v9;
  }

  return 1;
}

- (BOOL)registerOverloadNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  if (notification)
  {
    v5 = gPhaseManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ATPhasePlatform.mm";
      v9 = 1024;
      v10 = 735;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d platform@%p: registering overload notification not supported yet!", &v7, 0x1Cu);
    }
  }

  return notification == 0;
}

- (BOOL)registerIOBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v6 = blockCopy;
  if ((*(lazyInitServerManager + 43) & 1) != 0 || *(lazyInitServerManager + 363) == 1)
  {
    v7 = gPhaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = _Block_copy(v6);
      v15 = 136315906;
      v16 = "PhaseServerManager.mm";
      v17 = 1024;
      v18 = 146;
      v19 = 2048;
      v20 = lazyInitServerManager;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d servermgr@%p: cannot set the block@%p when IO is running!", &v15, 0x26u);
    }

    if (!lazyInitServerManager[83])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v9 = 0;
  }

  else
  {
    v10 = lazyInitServerManager[83];
    if (v10)
    {
      _Block_release(v10);
      v11 = lazyInitServerManager[83];
      lazyInitServerManager[83] = 0;
    }

    if (v6)
    {
      v12 = _Block_copy(v6);
      v13 = lazyInitServerManager[83];
      lazyInitServerManager[83] = v12;
    }

    v9 = 1;
  }

  return v9;
}

- (id)streamInfoForIndex:(unsigned int)index direction:(unsigned __int8)direction
{
  directionCopy = direction;
  v6 = Phase::ServerManager::ioFormat([(ATPhasePlatform *)self lazyInitServerManager], direction);
  v7 = Phase::ServerManager::deviceLatencyInFrames([(ATPhasePlatform *)self lazyInitServerManager], directionCopy);
  memset(v29, 0, sizeof(v29));
  v26 = 0;
  v27 = 0;
  v28 = 0;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];
  v9 = *lazyInitServerManager;
  if (*lazyInitServerManager)
  {
    v10 = directionCopy ? 344 : 24;
    os_unfair_recursive_lock_lock_with_options();
    v11 = (*(*v9 + 408))(v9, lazyInitServerManager + v10);
    v12 = directionCopy ? 65 : 1;
    v13 = (*(*v11 + 296))(v11, v12, &v26);
    os_unfair_recursive_lock_unlock();
    if (v13)
    {
      if (v26 != v27)
      {
        std::vector<unsigned int>::vector[abi:ne200100](v25, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2));
        std::vector<unsigned int>::vector[abi:ne200100](__p, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2));
        if (v27 != v26)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2);
          v15 = v25[0];
          v16 = __p[0];
          if (v14 <= 1)
          {
            v14 = 1;
          }

          v17 = v26 + 4;
          do
          {
            *v15 = *(v17 - 1);
            if (v17[4] == 1)
            {
              v18 = *v17;
            }

            else
            {
              v18 = 0;
            }

            *v16++ = v18;
            ++v15;
            v17 += 12;
            --v14;
          }

          while (v14);
        }

        applesauce::CF::TypeRefPair::TypeRefPair<char const*,std::vector<unsigned int> &>(&v22, [@"port type" UTF8String], v25);
        std::vector<applesauce::CF::TypeRefPair>::push_back[abi:ne200100](v29, &v22);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        applesauce::CF::TypeRefPair::TypeRefPair<char const*,std::vector<unsigned int> &>(&v22, [@"port subtype" UTF8String], __p);
        std::vector<applesauce::CF::TypeRefPair>::push_back[abi:ne200100](v29, &v22);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v25[0])
        {
          v25[1] = v25[0];
          operator delete(v25[0]);
        }
      }
    }
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v29);
  v25[0] = CFDictionaryRef;
  v20 = [[PHASEStreamInfoImpl alloc] initWithFormat:v6 latencyInFrames:v7 streamDescription:CFDictionaryRef];
  CFRelease(CFDictionaryRef);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  v26 = v29;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v26);

  return v20;
}

- (unsigned)deviceLatencyInFramesForDirection:(unsigned __int8)direction
{
  directionCopy = direction;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];

  return Phase::ServerManager::deviceLatencyInFrames(lazyInitServerManager, directionCopy);
}

- (BOOL)enableIO:(BOOL)o direction:(unsigned __int8)direction
{
  directionCopy = direction;
  oCopy = o;
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];

  return Phase::ServerManager::enableIO(lazyInitServerManager, oCopy, directionCopy);
}

- (unsigned)bufferFrameSize
{
  lazyInitServerManager = [(ATPhasePlatform *)self lazyInitServerManager];

  return Phase::ServerManager::maxBufferSizeFrames(lazyInitServerManager);
}

- (double)sampleRate
{
  v2 = Phase::ServerManager::ioFormat([(ATPhasePlatform *)self lazyInitServerManager], 0);
  [v2 sampleRate];
  v4 = v3;

  return v4;
}

- (id)lazyInitRoomCongruenceInterface
{
  roomCongruenceInterface = self->_roomCongruenceInterface;
  if (roomCongruenceInterface || (v4 = objc_opt_new(), v5 = self->_roomCongruenceInterface, self->_roomCongruenceInterface = v4, v5, (roomCongruenceInterface = self->_roomCongruenceInterface) != 0))
  {

    return roomCongruenceInterface;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

- (id)lazyInitSessionInterface
{
  sessionInterface = self->_sessionInterface;
  if (sessionInterface || (v4 = [[PHASESessionInterfaceImpl alloc] initWithPhasePlatform:self], v5 = self->_sessionInterface, self->_sessionInterface = v4, v5, (sessionInterface = self->_sessionInterface) != 0))
  {

    return sessionInterface;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

- (void)lazyInitServerManager
{
  v3 = *MEMORY[0x1E69E9840];
  result = self->_serverManager.__ptr_;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)dealloc
{
  std::unique_ptr<Phase::ServerManager>::reset[abi:ne200100](&self->_serverManager, 0);
  sessionInterface = self->_sessionInterface;
  self->_sessionInterface = 0;

  tapInterface = self->_tapInterface;
  self->_tapInterface = 0;

  roomCongruenceInterface = self->_roomCongruenceInterface;
  self->_roomCongruenceInterface = 0;

  v6.receiver = self;
  v6.super_class = ATPhasePlatform;
  [(ATPhasePlatform *)&v6 dealloc];
}

- (ATPhasePlatform)init
{
  v8.receiver = self;
  v8.super_class = ATPhasePlatform;
  v2 = [(ATPhasePlatform *)&v8 init];
  v3 = v2;
  if (v2)
  {
    std::unique_ptr<Phase::ServerManager>::reset[abi:ne200100](v2 + 1, 0);
    sessionInterface = v3->_sessionInterface;
    v3->_sessionInterface = 0;

    tapInterface = v3->_tapInterface;
    v3->_tapInterface = 0;

    roomCongruenceInterface = v3->_roomCongruenceInterface;
    v3->_roomCongruenceInterface = 0;
  }

  return v3;
}

@end