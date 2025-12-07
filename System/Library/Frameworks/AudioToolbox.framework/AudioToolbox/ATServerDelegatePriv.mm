@interface ATServerDelegatePriv
- (ATServerDelegatePriv)init;
- (BOOL)dolbyDigitalEncoderAvailable;
- (BOOL)spatialAudioEnabled:(unsigned int)enabled mode:(id)mode;
- (BOOL)waitForConclaveLaunch;
- (id).cxx_construct;
- (id)setIOPropertiesForSession:(unsigned int)session values:(id)values;
- (id)spatialPreferencesForSession:(unsigned int)session contentType:(unsigned int)type;
- (int)muteSessionInput:(unsigned int)input clientPID:(int)d muted:(BOOL)muted;
- (int)refreshMicrophoneInjectionPermissions:(id *)permissions;
- (int)refreshRecordPermissions:(id *)permissions;
- (int)updateMicrophoneInjectionPreference:(int64_t)preference forSession:(unsigned int)session;
- (void)conclaveLaunched;
- (void)setTelephonyClientSessionID:(unsigned int)d;
@end

@implementation ATServerDelegatePriv

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 1018212795;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 14) = 0;
  return self;
}

- (BOOL)waitForConclaveLaunch
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MGGetBoolAnswer();
  if (!v4)
  {
    return v2 & 1 | ((v4 & 1) == 0);
  }

  v13.__m_ = (self + 8);
  v2 = 1;
  v13.__owns_ = 1;
  std::mutex::lock((self + 8));
  if ((*(self + 120) & 1) == 0)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "ATServerDelegatePriv.mm";
      v16 = 1024;
      v17 = 232;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d waiting for conclave launch", buf, 0x12u);
    }

    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v8.__d_.__rep_)
    {
      v9.__d_.__rep_ = 10000000000;
      goto LABEL_13;
    }

    if (v8.__d_.__rep_ < 1)
    {
      if (v8.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v9.__d_.__rep_ = 0x80000002540BE400;
        goto LABEL_13;
      }
    }

    else if (v8.__d_.__rep_ >= 0x20C49BA54ABD78)
    {
      v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_13;
    }

    v9.__d_.__rep_ = 1000 * v8.__d_.__rep_ + 10000000000;
LABEL_13:
    std::condition_variable::__do_timed_wait((self + 72), &v13, v9);
    if (std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_ <= 0x2540BE3FFLL)
    {
      v2 = 1;
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "ATServerDelegatePriv.mm";
        v16 = 1024;
        v17 = 236;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d waiting for conclave launch timed out", buf, 0x12u);
      }

      v2 = 0;
    }
  }

  if (v13.__owns_)
  {
    std::mutex::unlock(v13.__m_);
  }

  return v2 & 1 | ((v4 & 1) == 0);
}

- (void)conclaveLaunched
{
  v9 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer())
  {
    std::mutex::lock((self + 8));
    *(self + 120) = 1;
    std::mutex::unlock((self + 8));
    std::condition_variable::notify_all((self + 72));
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "ATServerDelegatePriv.mm";
      v7 = 1024;
      v8 = 218;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d conclave launched", &v5, 0x12u);
    }
  }
}

- (id)spatialPreferencesForSession:(unsigned int)session contentType:(unsigned int)type
{
  v4 = *&type;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v16 = 0;
  v6 = AQIONodeManager::systemMixEngine(self);
  AQMESession::AQMESession(&v22, session, 0);
  v18[0] = v6;
  v18[1] = 0x300000000;
  v19 = 0;
  v21 = 0;
  SpatializationManager::GetPreferences(&v22, v18, v4, &v14, 0, 0);
  if (v21 == 1 && v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (*(&v22.mDescription.__rep_.__l + 23) < 0)
  {
    operator delete(v22.mDescription.__rep_.__l.__data_);
  }

  if (v22.mSubsessionRef.mCFObject)
  {
    CFRelease(v22.mSubsessionRef.mCFObject);
  }

  v7 = objc_alloc_init(MEMORY[0x1E698D728]);
  [v7 setPrefersHeadTrackedSpatialization:v14 != 0];
  [v7 setPrefersLossyAudioSources:BYTE1(v14) != 0];
  [v7 setAlwaysSpatialize:BYTE2(v14) != 0];
  [v7 setMaximumSpatializableChannels:v15];
  v8 = objc_opt_new();
  v9 = HIDWORD(v15);
  if (HIDWORD(v15))
  {
    v10 = &v16;
    do
    {
      v11 = *v10++;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
      [v8 addObject:v12];

      --v9;
    }

    while (v9);
  }

  [v7 setSpatialAudioSources:v8];

  return v7;
}

- (BOOL)dolbyDigitalEncoderAvailable
{
  v18 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  inSpecifier = 1633889587;
  PropertyInfo = AudioFormatGetPropertyInfo(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize);
  if (PropertyInfo)
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "ATServerDelegatePriv.mm";
      v14 = 1024;
      v15 = 145;
      v16 = 1024;
      v17 = PropertyInfo;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioFormatGetPropertyInfo kAudioFormatProperty_Encoders error %d", buf, 0x18u);
    }

LABEL_11:

    return 0;
  }

  if (outPropertyDataSize >= 0xC)
  {
    operator new();
  }

  Property = AudioFormatGetProperty(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize, 0);
  v6 = Property;
  if (Property)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "ATServerDelegatePriv.mm";
      v14 = 1024;
      v15 = 156;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioFormatGetProperty kAudioFormatProperty_Encoders error %d", buf, 0x18u);
    }

    goto LABEL_11;
  }

  return 0;
}

- (BOOL)spatialAudioEnabled:(unsigned int)enabled mode:(id)mode
{
  v4 = *&enabled;
  v25 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  if ([modeCopy isEqualToString:*MEMORY[0x1E69AF8A0]])
  {
    v6 = 1836019574;
  }

  else
  {
    v6 = 1936684398;
  }

  AudioGetSessionSpatialPreferencesForContentType(v4, v6, v14);
  v7 = v15;
  if (v15)
  {
    v8 = 0;
    v9 = &v16;
    do
    {
      v10 = *v9++;
      v8 |= v10 == 1835824233;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = MEMORY[0x1E69E9C10];
  v12 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v18 = "ATServerDelegatePriv.mm";
    v19 = 1024;
    v20 = 130;
    v21 = 1024;
    v22 = v8 & 1;
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d spatialEnabled is %d SessionID is 0x%x", buf, 0x1Eu);
  }

  return v8 & 1;
}

- (id)setIOPropertiesForSession:(unsigned int)session values:(id)values
{
  v34 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  if (gAQMELogScope)
  {
    v5 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "AudioToolboxServers.mm";
    v28 = 1024;
    v29 = 864;
    v30 = 1024;
    sessionCopy = session;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerSetIOPropertiesForSession; session id: 0x%x", buf, 0x18u);
  }

LABEL_7:
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = valuesCopy;
  keyEnumerator = [v7 keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v11 = *MEMORY[0x1E698D9C8];
    *&v10 = 136315906;
    v24 = v10;
    while (![nextObject isEqualToString:v11])
    {
      [v6 setObject:&unk_1F37D4168 forKeyedSubscript:nextObject];
LABEL_37:
      nextObject = [keyEnumerator nextObject];
      if (!nextObject)
      {
        goto LABEL_40;
      }
    }

    v12 = gAQME_TelephonyClientSession;
    if (gAQME_TelephonyClientSession || (v12 = gAQME_VPIOClientSession) != 0)
    {
      v13 = AQMESession::sessionID(v12);
    }

    else
    {
      v13 = 0;
    }

    if (v13 != session)
    {
      if (gAQMELogScope)
      {
        v14 = *gAQMELogScope;
        if (!*gAQMELogScope)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v24;
        v27 = "AudioToolboxServers.mm";
        v28 = 1024;
        v29 = 881;
        v30 = 1024;
        sessionCopy = v13;
        v32 = 1024;
        sessionCopy2 = session;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerSetIOPropertiesForSession; gAQME's call session=0x%x != inSessionID=0x%x", buf, 0x1Eu);
      }
    }

LABEL_21:
    v15 = [v7 objectForKey:{nextObject, v24}];
    if (v15)
    {
      v15 = CFRetain(v15);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = AQIONodeManager::systemMixEngine(v15);
    os_unfair_recursive_lock_lock_with_options();
    buf[0] = 0;
    for (i = *(v17 + 8); ; ++i)
    {
      if (i == *(v17 + 16))
      {
        v20 = 4294956433;
        goto LABEL_30;
      }

      v19 = (*(**i + 160))(*i, v16, buf);
      if (buf[0])
      {
        break;
      }
    }

    v20 = v19;
LABEL_30:
    os_unfair_recursive_lock_unlock();
    if (gAQMELogScope)
    {
      v21 = *gAQMELogScope;
      if (!*gAQMELogScope)
      {
LABEL_36:
        [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v20), nextObject}];
        goto LABEL_37;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "AudioToolboxServers.mm";
      v28 = 1024;
      v29 = 887;
      v30 = 1024;
      sessionCopy = v20;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerSetIOPropertiesForSession; set call translation properties. status: %i", buf, 0x18u);
    }

    goto LABEL_36;
  }

LABEL_40:
  if (v6)
  {
    v22 = CFRetain(v6);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (int)updateMicrophoneInjectionPreference:(int64_t)preference forSession:(unsigned int)session
{
  v24 = *MEMORY[0x1E69E9840];
  if (session == -1)
  {
    return -50;
  }

  v4 = *&session;
  if (gAQMELogScope)
  {
    v6 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  self = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (self)
  {
    if (preference >= 0x2000)
    {
      if (preference == 0x2000)
      {
        v8 = "SpokenAudioBypassesMicMute";
        goto LABEL_18;
      }

      if (preference == 0x4000)
      {
        v8 = "SpokenAudioBypassesMicMuteAndLocalPlayback";
        goto LABEL_18;
      }
    }

    else
    {
      if (!preference)
      {
        v8 = "None";
        goto LABEL_18;
      }

      if (preference == 1)
      {
        v8 = "SpokenAudio";
LABEL_18:
        v16 = 136315906;
        v17 = "AudioToolboxServers.mm";
        v18 = 1024;
        v19 = 841;
        v20 = 2080;
        v21 = v8;
        v22 = 1024;
        v23 = v4;
        _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerMixToTelephonyUplink; -> injectionMode: %s, session id: 0x%x", &v16, 0x22u);
        goto LABEL_19;
      }
    }

    v8 = "Unknown";
    goto LABEL_18;
  }

LABEL_19:
  v9 = AQIONodeManager::systemMixEngine(self);
  os_unfair_recursive_lock_lock_with_options();
  v10 = *(v9 + 56);
  v11 = *(v9 + 64);
  if (v10 == v11)
  {
    v7 = 0;
  }

  else
  {
    do
    {
      v12 = *v10;
      v13 = v10[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (*(*v12 + 136))(v12, v4, preference);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (!v7)
      {
        break;
      }

      v10 += 2;
    }

    while (v10 != v11);
  }

  os_unfair_recursive_lock_unlock();
  if (gAQMELogScope)
  {
    v14 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      return v7;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "AudioToolboxServers.mm";
    v18 = 1024;
    v19 = 853;
    v20 = 1024;
    LODWORD(v21) = v7;
    _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerMixToTelephonyUplink; <- status: %d", &v16, 0x18u);
  }

  return v7;
}

- (int)muteSessionInput:(unsigned int)input clientPID:(int)d muted:(BOOL)muted
{
  v43 = *MEMORY[0x1E69E9840];
  if (input == -1)
  {
    return -50;
  }

  mutedCopy = muted;
  if (gAQMELogScope)
  {
    v8 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "unmuting";
    buf.mProcessID = 136315906;
    *&buf.mSessionID = "AudioToolboxServers.mm";
    *(&buf.mSourceSessionID.__engaged_ + 2) = 777;
    WORD1(buf.mSubsessionRef.mCFObject) = 2080;
    *&buf.mSourceSessionID.__engaged_ = 1024;
    if (mutedCopy)
    {
      v10 = "muting";
    }

    *(&buf.mSubsessionRef.mCFObject + 4) = v10;
    WORD2(buf.mSubsessionID) = 1024;
    *(&buf.mSubsessionID + 6) = input;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s all client input, session id: 0x%x", &buf, 0x22u);
  }

LABEL_11:
  AQMESession::AQMESession(&buf, input, d);
  v11 = CADeprecated::TSingleton<RemoteIOServer>::instance();
  v12 = (*(*v11 + 80))(v11, &buf, mutedCopy);
  v13 = AQ::Server::global(v12);
  v14 = v13;
  v29 = mutedCopy;
  {
    if (v13)
    {
      CASIsDarwinOS(void)::global = os_variant_is_darwinos();
    }
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    v28 = 0;
    v27[0] = &v29;
    v27[1] = &v28;
    *v33 = caulk::function_ref<void ()(QueueAccessor &)>::functor_invoker<AQ::Server::Base::SetInputMuted(AQMESession const&,BOOL)::$_0>;
    *&v33[8] = v27;
    v30[0] = &buf;
    v30[1] = v33;
    *&v24.mProcessID = caulk::function_ref<void ()(QueueAccessor &)>::functor_invoker<AQ::Server::Base::forEachQueueInSession(AQMESession const&,caulk::function_ref<void ()(QueueAccessor &)> const&)::$_0>;
    v24.mSourceSessionID = v30;
    v31 = &v24;
    v32[0] = caulk::function_ref<void ()>::functor_invoker<AQ::Server::Base::forEachQueue(BOOL,caulk::function_ref<void ()(QueueAccessor &)> const&)::$_0>;
    v32[1] = &v31;
    v13 = (*(*v14 + 40))(v14, 0, v32);
  }

  HasPlatform = PhaseServer::HasPlatform(v13);
  if (HasPlatform)
  {
    v16 = PhaseServer::instance(void)::global;
    if (*(AT::SessionFacade::global(HasPlatform) + 8) == 1 && !buf.mSessionID)
    {
      std::terminate();
    }

    LODWORD(v17) = 1008981770;
    [v16 muteSessionInput:buf.mSessionID mute:mutedCopy fadeTime:v17];
  }

  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    goto LABEL_46;
  }

  AQMESession::AQMESession(&v24, input, 0);
  v18 = gAQME_TelephonyClientSession;
  if (gAQME_TelephonyClientSession && AQMESession::isSameAudioSession(gAQME_TelephonyClientSession, &v24))
  {
    goto LABEL_24;
  }

  v19 = gAQME_VPIOClientSession;
  if (gAQME_VPIOClientSession)
  {
    if (AQMESession::isSameAudioSession(gAQME_VPIOClientSession, &v24))
    {
LABEL_24:
      AudioToolboxServerSetTelephonyMutes(mutedCopy | 0x100, 0);
      goto LABEL_39;
    }
  }

  else if (v18 == 0)
  {
    v21 = 0;
    goto LABEL_31;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = AQMESession::sessionID(v20);
LABEL_31:
  if (!gAQMELogScope)
  {
    v22 = MEMORY[0x1E69E9C10];
LABEL_35:
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *&v33[4] = "AudioToolboxServers.mm";
      *&v33[14] = 809;
      v23 = "unmuting";
      v34 = 2080;
      *v33 = 136316162;
      *&v33[12] = 1024;
      if (mutedCopy)
      {
        v23 = "muting";
      }

      v35 = v23;
      v36 = 1024;
      inputCopy = input;
      v38 = 1024;
      v39 = v21;
      _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d not %s the voice processor, session id: 0x%x does not match the voice processor's session id: 0x%x", v33, 0x28u);
    }

    goto LABEL_39;
  }

  v22 = *gAQMELogScope;
  if (*gAQMELogScope)
  {
    goto LABEL_35;
  }

LABEL_39:
  if (v26 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (*(&v24.mDescription.__rep_.__l + 23) < 0)
  {
    operator delete(v24.mDescription.__rep_.__l.__data_);
  }

  if (v24.mSubsessionRef.mCFObject)
  {
    CFRelease(v24.mSubsessionRef.mCFObject);
  }

LABEL_46:
  if (v42 == 1 && v41)
  {
    CFRelease(v41);
  }

  if (*(&buf.mDescription.__rep_.__l + 23) < 0)
  {
    operator delete(buf.mDescription.__rep_.__l.__data_);
  }

  if (buf.mSubsessionRef.mCFObject)
  {
    CFRelease(buf.mSubsessionRef.mCFObject);
  }

  return 0;
}

- (int)refreshMicrophoneInjectionPermissions:(id *)permissions
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = *permissions;
  *atoken.val = *permissions->var0;
  *&atoken.val[4] = *&v12.val[4];
  v3 = audit_token_to_pid(&atoken);
  v4 = v3;
  if (gAQMELogScope)
  {
    v5 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  v3 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    atoken.val[0] = 136315650;
    *&atoken.val[1] = "AudioToolboxServers.mm";
    LOWORD(atoken.val[3]) = 1024;
    *(&atoken.val[3] + 2) = 820;
    HIWORD(atoken.val[4]) = 1024;
    atoken.val[5] = v4;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioToolboxServerRefreshMicrophoneInjectionPermissions for pid %d", &atoken, 0x18u);
  }

LABEL_7:
  v6 = AQIONodeManager::systemMixEngine(v3);
  os_unfair_recursive_lock_lock_with_options();
  v7 = *(v6 + 56);
  for (i = *(v6 + 64); v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    atoken = v12;
    (*(*v9 + 152))(v9, &atoken);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (int)refreshRecordPermissions:(id *)permissions
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *&permissions->var0[4];
  v29 = *permissions->var0;
  v30 = v3;
  v4 = *&permissions->var0[4];
  *&atoken.mProcessID = *permissions->var0;
  *&atoken.mSubsessionRef.mCFObject = v4;
  v5 = audit_token_to_pid(&atoken);
  v6 = v5;
  if (gAQMELogScope)
  {
    v7 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    atoken.mProcessID = 136315650;
    *&atoken.mSessionID = "AudioToolboxServers.mm";
    *&atoken.mSourceSessionID.__engaged_ = 1024;
    *(&atoken.mSourceSessionID.__engaged_ + 2) = 460;
    WORD1(atoken.mSubsessionRef.mCFObject) = 1024;
    HIDWORD(atoken.mSubsessionRef.mCFObject) = v6;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioToolboxServerRefreshRecordPermissions for pid %d", &atoken, 0x18u);
  }

LABEL_7:
  v8 = AQ::Server::global(v5);
  v19 = v29;
  v20 = v30;
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    *&atoken.mProcessID = v19;
    *&atoken.mSubsessionRef.mCFObject = v20;
    v9 = audit_token_to_pid(&atoken);
    if (gAQMELogScope)
    {
      v10 = *gAQMELogScope;
      if (!*gAQMELogScope)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      atoken.mProcessID = 136315650;
      *&atoken.mSessionID = "AQ_Server.cpp";
      *&atoken.mSourceSessionID.__engaged_ = 1024;
      *(&atoken.mSourceSessionID.__engaged_ + 2) = 176;
      WORD1(atoken.mSubsessionRef.mCFObject) = 1024;
      HIDWORD(atoken.mSubsessionRef.mCFObject) = v9;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d AQServer::RefreshRecordPermissionsForClients (pid = %d)", &atoken, 0x18u);
    }

LABEL_15:
    {
      CASIsDarwinOS(void)::global = os_variant_is_darwinos();
    }

    if (CASIsDarwinOS(void)::global != 1)
    {
      if (sSessionServer)
      {
        v11 = AudioSessionServerInstance();
        objc_msgSend_getSessionIDsForToken_(v11);

        v12 = v23;
LABEL_23:
        v16 = *(&v12 + 1);
        v15 = v12;
        if (v12 != *(&v12 + 1))
        {
          do
          {
            AQMESession::AQMESession(&atoken, *v15, 0);
            v21 = &v19;
            v22[0] = caulk::function_ref<void ()(QueueAccessor &)>::functor_invoker<AQ::Server::Base::RefreshRecordPermissionsForClients(audit_token_t)::$_0>;
            v22[1] = &v21;
            v25[0] = &atoken;
            v25[1] = v22;
            v26[0] = caulk::function_ref<void ()(QueueAccessor &)>::functor_invoker<AQ::Server::Base::forEachQueueInSession(AQMESession const&,caulk::function_ref<void ()(QueueAccessor &)> const&)::$_0>;
            v26[1] = v25;
            v27 = v26;
            v28[0] = caulk::function_ref<void ()>::functor_invoker<AQ::Server::Base::forEachQueue(BOOL,caulk::function_ref<void ()(QueueAccessor &)> const&)::$_0>;
            v28[1] = &v27;
            (*(*v8 + 40))(v8, 0, v28);
            if (v33 == 1 && cf)
            {
              CFRelease(cf);
            }

            if (*(&atoken.mDescription.__rep_.__l + 23) < 0)
            {
              operator delete(atoken.mDescription.__rep_.__l.__data_);
            }

            if (atoken.mSubsessionRef.mCFObject)
            {
              CFRelease(atoken.mSubsessionRef.mCFObject);
            }

            ++v15;
          }

          while (v15 != v16);
          v15 = v23;
        }

        if (v15)
        {
          *(&v23 + 1) = v15;
          operator delete(v15);
        }

        goto LABEL_35;
      }

      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        atoken.mProcessID = 136315394;
        *&atoken.mSessionID = "AudioSessionServerImp.mm";
        *&atoken.mSourceSessionID.__engaged_ = 1024;
        *(&atoken.mSourceSessionID.__engaged_ + 2) = 1149;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioSessionServer has not been initialized", &atoken, 0x12u);
      }
    }

    v24 = 0;
    v12 = 0uLL;
    v23 = 0u;
    goto LABEL_23;
  }

LABEL_35:
  v17 = CADeprecated::TSingleton<RemoteIOServer>::instance();
  *&atoken.mProcessID = v29;
  *&atoken.mSubsessionRef.mCFObject = v30;
  (*(*v17 + 24))(v17, &atoken);
  return 0;
}

- (void)setTelephonyClientSessionID:(unsigned int)d
{
  v3 = *&d;
  v4 = AQIONodeManager::systemMixEngine(self);

  AQIONodeManager::_SetTelephonyClientSessionID(v4, v3, 0);
}

- (ATServerDelegatePriv)init
{
  v3.receiver = self;
  v3.super_class = ATServerDelegatePriv;
  result = [(ATServerDelegatePriv *)&v3 init];
  if (result)
  {
    *(result + 120) = 0;
  }

  return result;
}

@end