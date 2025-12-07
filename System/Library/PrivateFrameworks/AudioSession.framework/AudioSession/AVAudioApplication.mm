@interface AVAudioApplication
+ (AVAudioApplication)sharedInstance;
+ (BOOL)allowAppToInitiatePlaybackTemporarily:(id)temporarily error:(id *)error;
+ (BOOL)appleTVSupportsEnhanceDialogue;
+ (BOOL)currentRouteSupportsEnhanceDialogue:(id *)dialogue;
+ (id)muteRunningInputs:(id *)inputs;
+ (void)requestMicrophoneInjectionPermissionWithCompletionHandler:(id)handler;
+ (void)requestRecordPermissionWithCompletionHandler:(void *)response;
- (AVAudioApplication)initWithSpecification:(id)specification;
- (AVAudioApplicationRecordPermission)recordPermission;
- (BOOL)isInputMuted;
- (BOOL)privateCreateAudioApplicationInServer:(id)server;
- (BOOL)privateRecreateAudioApplicationInServer;
- (BOOL)setInputMuteStateChangeHandler:(void *)inputMuteHandler error:(NSError *)outError;
- (BOOL)setInputMuted:(BOOL)muted context:(id)context error:(id *)error;
- (BOOL)stemClickMutingEnabled;
- (id)initDelegateForProcess:(id *)process processAttribution:(id)attribution;
- (id)initPrivate:(id)private;
- (id)initProxyForProcess:(id *)process;
- (id)sessionIDs;
- (int)privateSetAppProperty:(id)property value:(id)value;
- (int)privateSetAppProperty:(id)property value:(id)value guard:(void *)guard;
- (int)privateSetMXPropertyOnAllSessions:(id)sessions value:(id)value;
- (int)privateUpdateAppProperty:(id)property value:(id)value context:(id)context;
- (int64_t)microphoneInjectionPermission;
- (sync_guard<avas::client::AVAudioApplicationImpl,)privateGetImplGuard;
- (tuple<int,)privateGetAppProperty:(id)property;
- (tuple<int,)privateGetMXProperty:(id)property;
- (tuple<std::shared_ptr<avas::client::XPCConnection>,)privateGetConnection;
- (unsigned)clientID;
- (void)dealloc;
- (void)postNotificationName:(id)name userInfo:(id)info;
- (void)privateCreateAudioApplicationInServer:;
- (void)privateEnableSystemMute:(BOOL)mute;
- (void)privateHandlePing;
- (void)privateOptInToStemClickMuting;
- (void)requestRecordPermissionWithCompletionHandler:(id)handler;
@end

@implementation AVAudioApplication

+ (BOOL)appleTVSupportsEnhanceDialogue
{
  device_class = caulk::product::get_device_class(self);
  if (device_class != 4)
  {
    return 0;
  }

  ProductType = PlatformUtilities_iOS::GetProductType(device_class);
  return ProductType == 79 || ProductType == 82;
}

+ (AVAudioApplication)sharedInstance
{
  if (+[AVAudioApplication sharedInstance]::onceToken != -1)
  {
    +[AVAudioApplication sharedInstance];
  }

  v3 = +[AVAudioApplication sharedInstance]::singleton;

  return v3;
}

void __36__AVAudioApplication_sharedInstance__block_invoke(avas::ProcessIdentity *a1)
{
  avas::ProcessIdentity::currentProcess(v9);
  v1 = objc_alloc_init(MEMORY[0x1E698D730]);
  [v1 setAudioAppType:1886546285];
  v8[0] = v9[0];
  v8[1] = v9[1];
  [v1 setAppAuditToken:v8];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  [v1 setAttributionBundleID:v3];
  v5 = ;
  [v1 setProcessName:v5];

  v6 = [[AVAudioApplication alloc] initPrivate:v1];
  v7 = +[AVAudioApplication sharedInstance]::singleton;
  +[AVAudioApplication sharedInstance]::singleton = v6;
}

- (AVAudioApplication)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  if ([specificationCopy audioAppType] == 1886546285)
  {
    v5 = +[AVAudioApplication sharedInstance];
  }

  else
  {
    v5 = [(AVAudioApplication *)self initPrivate:specificationCopy];
    self = v5;
  }

  v6 = v5;

  return v6;
}

- (id)initPrivate:(id)private
{
  v19 = *MEMORY[0x1E69E9840];
  privateCopy = private;
  v5 = privateCopy;
  if (privateCopy)
  {
    objc_msgSend_appAuditToken(privateCopy);
  }

  else
  {
    memset(&v14[1], 0, 32);
  }

  buf = *&v14[1].receiver;
  atoken = *&v14[1].receiver;
  v17 = audit_token_to_pid(&atoken);
  atoken = *&v14[1].receiver;
  v18 = audit_token_to_pidversion(&atoken);
  isValid = avas::ProcessIdentity::isValid(&buf);
  if (!isValid)
  {
    v8 = *avas::client::gSessionClientLog(isValid);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      v9 = {;
      buf.val[0] = 136315650;
      *&buf.val[1] = "AVAudioApplication.mm";
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 196;
      HIWORD(buf.val[4]) = 2112;
      *&buf.val[5] = v9;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - bad audit token provided (creation description: %@)", &buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  v14[0].receiver = self;
  v14[0].super_class = AVAudioApplication;
  self = [(objc_super *)v14 init];
  if (!self)
  {
    goto LABEL_19;
  }

  audioAppType = [v5 audioAppType];
  if (audioAppType == 1684825972)
  {
    if (![(AVAudioApplication *)self privateCreateAudioApplicationInServer:v5])
    {
      goto LABEL_14;
    }

    [(AVAudioApplication *)self privateOptInToStemClickMuting];
    goto LABEL_19;
  }

  if (audioAppType == 1886546285)
  {
    if (![(AVAudioApplication *)self privateCreateAudioApplicationInServer:v5])
    {
      goto LABEL_14;
    }

    _CFNotificationCenterRegisterDependentNotificationList();
LABEL_19:
    self = self;
    selfCopy = self;
    goto LABEL_20;
  }

  if (audioAppType == 1886547832)
  {
    if ([(AVAudioApplication *)self privateCreateAudioApplicationInServer:v5])
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = *avas::client::gSessionClientLog(audioAppType);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      v13 = {;
      buf.val[0] = 136315650;
      *&buf.val[1] = "AVAudioApplication.mm";
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 230;
      HIWORD(buf.val[4]) = 2112;
      *&buf.val[5] = v13;
      _os_log_impl(&dword_1AC8A4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - unknown audio app type. creation description: %@", &buf, 0x1Cu);
    }
  }

LABEL_14:
  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (void)dealloc
{
  if (self->_impl.__ptr_)
  {
    v3 = CADeprecated::TSingleton<ApplicationMap>::instance();
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    ApplicationMap::Remove(v3, ptr[6]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(ptr);
  }

  v5.receiver = self;
  v5.super_class = AVAudioApplication;
  [(AVAudioApplication *)&v5 dealloc];
}

- (unsigned)clientID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  os_unfair_lock_opaque = ptr[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(ptr);
  return os_unfair_lock_opaque;
}

- (BOOL)isInputMuted
{
  objc_msgSend_privateGetAppProperty_(self, a2, @"InputMute");
  v3 = v9;
  v4 = v3;
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v3 BOOLValue];
    self->_inputMuted = bOOLValue;
  }

  return bOOLValue;
}

- (BOOL)setInputMuteStateChangeHandler:(void *)inputMuteHandler error:(NSError *)outError
{
  if (outError)
  {
    *outError = NSErrorUnimplemented();
  }

  return 0;
}

- (AVAudioApplicationRecordPermission)recordPermission
{
  v11 = *MEMORY[0x1E69E9840];
  LOBYTE(v8[0]) = 0;
  v9 = 0;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  if ([*(ptr + 4) audioAppType] == 1886547832)
  {
    v3 = *(ptr + 4);
    if (v3)
    {
      v3 = objc_msgSend_appAuditToken(v3);
    }

    else
    {
      memset(buf, 0, 32);
    }

    v8[0] = *buf;
    v8[1] = *&buf[16];
    v9 = 1;
    v4 = *avas::client::gSessionClientLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioApplication.mm";
      *&buf[12] = 1024;
      *&buf[14] = 292;
      _os_log_impl(&dword_1AC8A4000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d recordPermission called for Proxy AVAudioApplication", buf, 0x12u);
    }
  }

  os_unfair_lock_unlock(ptr);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 1970168948;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AVAudioApplication_recordPermission__block_invoke;
  v7[3] = &unk_1E7986E68;
  v7[4] = buf;
  makeTCCAccessRequest(0, 2, 1919119972, v8, v7);
  v5 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v5;
}

uint64_t __38__AVAudioApplication_recordPermission__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 1684369017;
  if (a2 == 1)
  {
    v2 = 1970168948;
  }

  if (a2 == 2)
  {
    v2 = 1735552628;
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

+ (void)requestRecordPermissionWithCompletionHandler:(void *)response
{
  v4 = response;
  v3 = +[AVAudioSession sharedInstance];
  [v3 requestRecordPermission:v4];
}

- (int64_t)microphoneInjectionPermission
{
  v2 = +[AVAudioSession sharedInstance];
  isMicrophoneInjectionServiceEnabledByUser = [v2 isMicrophoneInjectionServiceEnabledByUser];

  if ((isMicrophoneInjectionServiceEnabledByUser & 1) == 0)
  {
    return 1936876659;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1970168948;
  LOBYTE(v7) = 0;
  v8 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVAudioApplication_microphoneInjectionPermission__block_invoke;
  v6[3] = &unk_1E7986E68;
  v6[4] = &v9;
  makeTCCAccessRequest(0, 2, 1768843892, &v7, v6);
  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __51__AVAudioApplication_microphoneInjectionPermission__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 1684369017;
  if (a2 == 1)
  {
    v2 = 1970168948;
  }

  if (a2 == 2)
  {
    v2 = 1735552628;
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

+ (void)requestMicrophoneInjectionPermissionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[AVAudioApplication sharedInstance];
  microphoneInjectionPermission = [v4 microphoneInjectionPermission];

  if (microphoneInjectionPermission == 1684369017 || microphoneInjectionPermission == 1735552628 || microphoneInjectionPermission == 1936876659)
  {
    handlerCopy[2](handlerCopy, microphoneInjectionPermission);
  }

  else
  {
    LOBYTE(v10) = 0;
    v11 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__AVAudioApplication_requestMicrophoneInjectionPermissionWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7986FA0;
    v9 = handlerCopy;
    makeTCCAccessRequest(1, 0, 1768843892, &v10, v8);
  }
}

void __80__AVAudioApplication_requestMicrophoneInjectionPermissionWithCompletionHandler___block_invoke(avas::client *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "AVAudioApplication.mm";
    v6 = 1024;
    v7 = 390;
    v8 = 1024;
    v9 = a2 == 2;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Got Microphone Injection Permission value %d", buf, 0x18u);
  }

  EphemeralAudioApp::EphemeralAudioApp(v4);
}

- (sync_guard<avas::client::AVAudioApplicationImpl,)privateGetImplGuard
{
  v3 = v2;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  *v3 = ptr;
  v3[1] = ptr + 2;
  result.var1.var0 = v6;
  result.var0 = v5;
  return result;
}

- (tuple<std::shared_ptr<avas::client::XPCConnection>,)privateGetConnection
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(retstr, (ptr + 8));
  if (ptr)
  {

    os_unfair_lock_unlock(ptr);
  }

  return result;
}

- (void)privateOptInToStemClickMuting
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    os_unfair_lock_opaque = ptr[18]._os_unfair_lock_opaque;
    v8 = 136315650;
    v9 = "AVAudioApplication.mm";
    v10 = 1024;
    v11 = 428;
    v12 = 1024;
    v13 = os_unfair_lock_opaque;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App (pid:%d) registered to observe AVAudioApplication input mute notifications", &v8, 0x18u);
    os_unfair_lock_unlock(ptr);
  }

  v6 = [(AVAudioApplication *)self privateSetMXPropertyOnAllSessions:*MEMORY[0x1E69B02A8] value:MEMORY[0x1E695E118]];
  if (v6)
  {
    v7 = *avas::client::gSessionClientLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AVAudioApplication.mm";
      v10 = 1024;
      v11 = 446;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to opt in to PrefersBluetoothAccessoryMuting", &v8, 0x12u);
    }
  }
}

- (void)privateEnableSystemMute:(BOOL)mute
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:mute];
  LODWORD(self) = [(AVAudioApplication *)self privateSetAppProperty:@"EnableSystemMute" value:v4];

  v6 = *avas::client::gSessionClientLog(v5);
  v7 = v6;
  if (self)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = 136315394;
    v12 = "AVAudioApplication.mm";
    v13 = 1024;
    v14 = 458;
    v8 = "%25s:%-5d Failed to set EnableSystemMute property";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 136315394;
    v12 = "AVAudioApplication.mm";
    v13 = 1024;
    v14 = 461;
    v8 = "%25s:%-5d Enabled system mute";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1AC8A4000, v9, v10, v8, &v11, 0x12u);
}

- (BOOL)privateCreateAudioApplicationInServer:(id)server
{
  v5 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  operator new();
}

- (BOOL)privateRecreateAudioApplicationInServer
{
  v77 = *MEMORY[0x1E69E9840];
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  lock = ptr;
  v62 = (ptr + 8);
  v3 = *(ptr + 6);
  v4 = CADeprecated::TSingleton<ApplicationMap>::instance();
  ApplicationMap::Remove(v4, v3);
  v5 = *(ptr + 14);
  v6 = *(ptr + 15);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::client::XPCConnection::sync_message<unsigned int>(v5, v73);
  v7 = objc_autoreleasePoolPush();
  v8 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},unsigned int>::sync_proxy(v73);
  v9 = *(v62 + 3);
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},unsigned int>::reply(v73);
  [v8 createAudioApplicationForSpecification:v9 reply:v10];

  objc_autoreleasePoolPop(v7);
  v11 = *&v73[40];
  v46 = v11;
  if (v11)
  {
    v12 = *avas::client::gSessionClientLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = v13 = [(avas::client *)v46 description];
      *buf = 136315906;
      *&buf[4] = "AVAudioApplication.mm";
      v65 = 1024;
      v66 = 515;
      v67 = 2112;
      v68 = v13;
      v69 = 2112;
      v70 = v14;
      _os_log_impl(&dword_1AC8A4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to recreate application, error: %@, specification: %@", buf, 0x26u);
    }

    v15 = 0;
  }

  else
  {
    v15 = v74;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](&v73[8]);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v46)
  {
    avas::client::AVAudioApplicationImpl::SetClientID(v62, v15);
    v16 = CADeprecated::TSingleton<ApplicationMap>::instance();
    ApplicationMap::Add(v16, v15, self);
    avas::AudioAppState::getPropertyApp(&v59, v62 + 9, &cfstr_Hasinputmuteha.isa);
    v45 = v60;
    if (v45)
    {
      if ([v45 unsignedIntegerValue] == v3)
      {
        v17 = v62;
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
        LOBYTE(v17) = avas::AudioAppState::setPropertyApp(v17 + 9, @"HasInputMuteHandlerSetMacOS", v18) == 0;

        if ((v17 & 1) == 0)
        {
          v20 = *avas::client::gSessionClientLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *v73 = 136315906;
            *&v73[4] = "AVAudioApplication.mm";
            *&v73[12] = 1024;
            *&v73[14] = 534;
            *&v73[18] = 1024;
            *&v73[20] = v3;
            *&v73[24] = 1024;
            *&v73[26] = v15;
            _os_log_impl(&dword_1AC8A4000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d error - failed to update ClientOwningInputMuteHandlerMacOS from old clientID (%u) to new clientID (%u)", v73, 0x1Eu);
          }
        }
      }
    }

    avas::AudioAppState::getAppPropertiesExplicitlySet(v62 + 9);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v48 = v56 = 0u;
    allKeys = [v48 allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v55 objects:v76 count:16];
    if (v22)
    {
      v23 = *v56;
      do
      {
        v24 = 0;
        do
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = *(*(&v55 + 1) + 8 * v24);
          {
            avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
          }

          if (avas::AudioSessionMuteEnabled(void)::enabled != 1 || ([v25 isEqualToString:@"InputMute"] & 1) == 0)
          {
            v26 = [v48 objectForKey:{v25, v45}];
            v27 = [(AVAudioApplication *)self privateSetAppProperty:v25 value:v26 guard:&lock]== 0;

            if (!v27)
            {
              v29 = *avas::client::gSessionClientLog(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = [v48 objectForKey:v25];
                *v73 = 136315906;
                *&v73[4] = "AVAudioApplication.mm";
                *&v73[12] = 1024;
                *&v73[14] = 552;
                *&v73[18] = 2112;
                *&v73[20] = v25;
                *&v73[28] = 2112;
                *&v73[30] = v30;
                _os_log_impl(&dword_1AC8A4000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d error - failed to apply app property {key: %@ value: %@} after server restart", v73, 0x26u);
              }
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v31 = [allKeys countByEnumeratingWithState:&v55 objects:v76 count:16];
        v22 = v31;
      }

      while (v31);
    }

    vala = avas::AudioAppState::getMXPropertiesExplicitlySet(v62 + 9);
    avas::client::AVAudioApplicationImpl::GetConnection(v73, v62);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [vala allKeys];
    v32 = [obj countByEnumeratingWithState:&v51 objects:v72 count:16];
    if (v32)
    {
      v33 = *v52;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v51 + 1) + 8 * i);
          avas::client::XPCConnection::sync_message<>(*v73, buf);
          v36 = objc_autoreleasePoolPush();
          v37 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(buf);
          *v63 = *&v73[16];
          *&v63[16] = *&v73[32];
          v38 = v75;
          v39 = [vala objectForKey:v35];
          v40 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(buf);
          [v37 setMXPropertyOnAllSessions:v63 clientID:v38 MXProperty:v35 values:v39 reply:v40];

          objc_autoreleasePoolPop(v36);
          if (v71)
          {
            v42 = *avas::client::gSessionClientLog(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = [vala objectForKey:v35];
              *v63 = 136315906;
              *&v63[4] = "AVAudioApplication.mm";
              *&v63[12] = 1024;
              *&v63[14] = 572;
              *&v63[18] = 2112;
              *&v63[20] = v35;
              *&v63[28] = 2112;
              *&v63[30] = v43;
              _os_log_impl(&dword_1AC8A4000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d error - failed to apply MX property {key: %@ value: %@} after server restart", v63, 0x26u);
            }
          }

          _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&buf[8]);
        }

        v32 = [obj countByEnumeratingWithState:&v51 objects:v72 count:16];
      }

      while (v32);
    }

    if (*&v73[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v73[8]);
    }
  }

  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  return v46 == 0;
}

- (tuple<int,)privateGetMXProperty:(id)property
{
  v5 = v3;
  propertyCopy = property;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v10, (ptr + 8));
  if (v10[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10[0].n128_u64[1]);
  }

  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  result.var0.var1 = v9;
  *&result.var0.var0 = v8;
  return result;
}

- (tuple<int,)privateGetAppProperty:(id)property
{
  v5 = v3;
  propertyCopy = property;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v10, (ptr + 8));
  if (v10[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10[0].n128_u64[1]);
  }

  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  result.var0.var1 = v9;
  *&result.var0.var0 = v8;
  return result;
}

- (int)privateSetAppProperty:(id)property value:(id)value guard:(void *)guard
{
  v24 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  avas::client::AVAudioApplicationImpl::GetConnection(v19, *(guard + 1));
  avas::client::XPCConnection::sync_message<>(v19[0].n128_u64[0], &v21);
  v9 = objc_autoreleasePoolPush();
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v21);
  v17 = v19[1];
  v18 = v19[2];
  v11 = v20;
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v21);
  [v10 setApplicationProperty:&v17 clientID:v11 propertyID:propertyCopy propertyValue:valueCopy reply:v12];

  objc_autoreleasePoolPop(v9);
  v13 = v23;
  if (v13)
  {
    v14 = v13;
    code = [v13 code];
  }

  else
  {
    code = avas::AudioAppState::setPropertyApp((*(guard + 1) + 72), propertyCopy, valueCopy);
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v22);
  if (v19[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19[0].n128_u64[1]);
  }

  return code;
}

- (int)privateSetAppProperty:(id)property value:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v20, (ptr + 8));
  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  avas::client::XPCConnection::sync_message<>(v20[0].n128_u64[0], &v22);
  v9 = objc_autoreleasePoolPush();
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v22);
  v18 = v20[1];
  v19 = v20[2];
  v11 = v21;
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v22);
  [v10 setApplicationProperty:&v18 clientID:v11 propertyID:propertyCopy propertyValue:valueCopy reply:v12];

  objc_autoreleasePoolPop(v9);
  v13 = v24;
  if (v13)
  {
    v14 = v13;
    code = [v13 code];
  }

  else
  {
    v16 = self->_impl.__ptr_;
    os_unfair_lock_lock(v16);
    code = avas::AudioAppState::setPropertyApp(v16 + 10, propertyCopy, valueCopy);
    if (v16)
    {
      os_unfair_lock_unlock(v16);
    }
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v23);
  if (v20[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20[0].n128_u64[1]);
  }

  return code;
}

- (int)privateUpdateAppProperty:(id)property value:(id)value context:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  contextCopy = context;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v23, (ptr + 8));
  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  avas::client::XPCConnection::sync_message<>(v23[0].n128_u64[0], &v25);
  v12 = objc_autoreleasePoolPush();
  v13 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v25);
  v21 = v23[1];
  v22 = v23[2];
  v14 = v24;
  v15 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v25);
  [v13 updateApplicationProperty:&v21 clientID:v14 propertyID:propertyCopy propertyValue:valueCopy context:contextCopy reply:v15];

  objc_autoreleasePoolPop(v12);
  v16 = v27;
  if (v16)
  {
    v17 = v16;
    code = [v16 code];
  }

  else
  {
    v19 = self->_impl.__ptr_;
    os_unfair_lock_lock(v19);
    code = avas::AudioAppState::setPropertyApp(v19 + 10, propertyCopy, valueCopy);
    if (v19)
    {
      os_unfair_lock_unlock(v19);
    }
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v26);
  if (v23[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23[0].n128_u64[1]);
  }

  return code;
}

- (int)privateSetMXPropertyOnAllSessions:(id)sessions value:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  sessionsCopy = sessions;
  valueCopy = value;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v20, (ptr + 8));
  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  avas::client::XPCConnection::sync_message<>(v20[0].n128_u64[0], &v22);
  v9 = objc_autoreleasePoolPush();
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v22);
  v18 = v20[1];
  v19 = v20[2];
  v11 = v21;
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v22);
  [v10 setMXPropertyOnAllSessions:&v18 clientID:v11 MXProperty:sessionsCopy values:valueCopy reply:v12];

  objc_autoreleasePoolPop(v9);
  v13 = v24;
  if (v13)
  {
    v14 = v13;
    code = [v13 code];
  }

  else
  {
    v16 = self->_impl.__ptr_;
    os_unfair_lock_lock(v16);
    code = avas::AudioAppState::setPropertyMX(&v16[20], sessionsCopy, valueCopy);
    if (v16)
    {
      os_unfair_lock_unlock(v16);
    }
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v23);
  if (v20[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20[0].n128_u64[1]);
  }

  return code;
}

- (id)initProxyForProcess:(id *)process
{
  v5 = objc_alloc_init(MEMORY[0x1E698D730]);
  [v5 setAudioAppType:1886547832];
  v6 = *&process->var0[4];
  v10[0] = *process->var0;
  v10[1] = v6;
  v7 = [v5 setAppAuditToken:v10];
  [v5 setProcessName:v7];

  v8 = [(AVAudioApplication *)self initWithSpecification:v5];
  return v8;
}

- (id)initDelegateForProcess:(id *)process processAttribution:(id)attribution
{
  attributionCopy = attribution;
  v7 = objc_alloc_init(MEMORY[0x1E698D730]);
  [v7 setAudioAppType:1684825972];
  v8 = *&process->var0[4];
  v12[0] = *process->var0;
  v12[1] = v8;
  v9 = [v7 setAppAuditToken:v12];
  [v7 setProcessName:v9];

  v10 = [(AVAudioApplication *)self initWithSpecification:v7];
  return v10;
}

- (void)requestRecordPermissionWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  LOBYTE(v16) = 0;
  LOBYTE(v18) = 0;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  audioAppType = [*(ptr + 4) audioAppType];
  if (audioAppType == 1886547832)
  {
    v7 = *(ptr + 4);
    if (v7)
    {
      v7 = objc_msgSend_appAuditToken(v7);
    }

    else
    {
      memset(buf, 0, 32);
    }

    v16 = *buf;
    v17 = *&buf[16];
    LOBYTE(v18) = 1;
    v8 = *avas::client::gSessionClientLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioApplication.mm";
      *&buf[12] = 1024;
      *&buf[14] = 710;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d requestRecordPermissionWithCompletionHandler called for Proxy AVAudioApplication", buf, 0x12u);
    }
  }

  os_unfair_lock_unlock(ptr);
  recordPermission = [(AVAudioApplication *)self recordPermission];
  if (recordPermission == AVAudioApplicationRecordPermissionDenied || recordPermission == AVAudioApplicationRecordPermissionGranted)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v13 = v16;
    v10[2] = __72__AVAudioApplication_SPI__requestRecordPermissionWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E7986FC8;
    v10[4] = self;
    v12 = audioAppType;
    v14 = v17;
    v15 = v18;
    v11 = handlerCopy;
    makeTCCAccessRequest(1, 0, 1919119972, &v16, v10);
  }
}

void __72__AVAudioApplication_SPI__requestRecordPermissionWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *avas::client::gSessionClientLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVAudioApplication.mm";
    v29 = 1024;
    v30 = 732;
    v31 = 1024;
    v32 = a2 == 2;
    _os_log_impl(&dword_1AC8A4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Got Microphone Permission value %d", buf, 0x18u);
  }

  v5 = *(*(a1 + 32) + 8);
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::client::XPCConnection::sync_message<>(v6, buf);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v20 = v9;
  v21 = v9;
  if (*(a1 + 48) == 1886547832)
  {
    if (*(a1 + 88) == 1)
    {
      v10 = *(a1 + 72);
      v20 = *(a1 + 56);
      v21 = v10;
    }

    else
    {
      v11 = *avas::client::gSessionClientLog(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v22 = 136315394;
        v23 = "AVAudioApplication.mm";
        v24 = 1024;
        v25 = 744;
        _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Invalid client token for proxy AVAudioApplication", v22, 0x12u);
      }
    }
  }

  v12 = objc_autoreleasePoolPush();
  v13 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(buf);
  v14 = *(a1 + 48);
  v15 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(buf);
  if (v14 == 1886547832)
  {
    v16 = &v20;
  }

  else
  {
    v16 = 0;
  }

  [v13 updateMicrophonePermission:1919119972 clientToken:v16 reply:{v15, v20, v21}];

  objc_autoreleasePoolPop(v12);
  if (v33)
  {
    v18 = *avas::client::gSessionClientLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v33;
      *v22 = 136315650;
      v23 = "AVAudioApplication.mm";
      v24 = 1024;
      v25 = 758;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_1AC8A4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Server returned an error from -updateMicrophonePermission:. %@", v22, 0x1Cu);
    }
  }

  (*(*(a1 + 40) + 16))();

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&buf[8]);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  os_unfair_lock_unlock(v5);
}

- (BOOL)setInputMuted:(BOOL)muted context:(id)context error:(id *)error
{
  mutedCopy = muted;
  v21 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{muted, context}];
  v8 = [(AVAudioApplication *)self privateSetAppProperty:@"InputMute" value:v7];

  if (v8)
  {
    v10 = *avas::client::gSessionClientLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = "unmuted";
      v14 = "AVAudioApplication.mm";
      v16 = 788;
      v17 = 2080;
      v13 = 136315906;
      v15 = 1024;
      if (mutedCopy)
      {
        v11 = "muted";
      }

      v18 = v11;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_1AC8A4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set input %s, err:%d", &v13, 0x22u);
    }

    return FormatNSErrorForReturn();
  }

  else
  {
    self->_inputMuted = mutedCopy;
    return 1;
  }
}

+ (id)muteRunningInputs:(id *)inputs
{
  v5 = *MEMORY[0x1E69E9840];
  {
    avas::SmartRoutingPrioritizesCall(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::SmartRoutingPrioritizesCall(void)::enabled == 1)
  {
    EphemeralAudioApp::EphemeralAudioApp(&v4);
  }

  FormatNSErrorForReturn();

  return 0;
}

+ (BOOL)allowAppToInitiatePlaybackTemporarily:(id)temporarily error:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  temporarilyCopy = temporarily;
  _ZNSt3__115allocate_sharedB8ne200100INS_15recursive_mutexENS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

+ (BOOL)currentRouteSupportsEnhanceDialogue:(id *)dialogue
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = +[AVAudioSession sharedInstance];
  currentRoute = [v3 currentRoute];
  outputs = [currentRoute outputs];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = outputs;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v28 = *v31;
    while (2)
    {
      v27 = v6;
      for (i = 0; i != v27; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if (+[AVAudioApplication appleTVSupportsEnhanceDialogue])
        {
          portType = [v8 portType];
          if (portType == @"HDMIOutput")
          {
            goto LABEL_35;
          }

          portType2 = [v8 portType];
          if (portType2 == @"BluetoothA2DPOutput")
          {
            goto LABEL_34;
          }

          portType3 = [v8 portType];
          v12 = portType3 == @"BluetoothHFP";

          if (v12)
          {
            goto LABEL_36;
          }
        }

        if (+[AVAudioApplication iosDeviceSupportsEnhanceDialogue])
        {
          portType = [v8 portType];
          if (portType == @"Speaker")
          {
            goto LABEL_35;
          }

          portType2 = [v8 portType];
          if (portType2 == @"Headphones")
          {
            goto LABEL_34;
          }

          portType4 = [v8 portType];
          if (portType4 == @"LineOut")
          {
            goto LABEL_33;
          }

          v26 = portType4;
          portType5 = [v8 portType];
          if (portType5 == @"BluetoothA2DPOutput")
          {
            goto LABEL_32;
          }

          portType6 = [v8 portType];
          if (portType6 == @"BluetoothHFP")
          {
            goto LABEL_31;
          }

          portType7 = [v8 portType];
          if (portType7 == @"BluetoothLE")
          {
            goto LABEL_30;
          }

          portType8 = [v8 portType];
          if (portType8 == @"USBAudio")
          {
            goto LABEL_29;
          }

          portType9 = [v8 portType];
          v19 = portType9;
          if (portType9 == @"DisplayPort")
          {

LABEL_29:
LABEL_30:

LABEL_31:
LABEL_32:

            portType4 = v26;
LABEL_33:

LABEL_34:
LABEL_35:

LABEL_36:
            v24 = 1;
            goto LABEL_37;
          }

          portType10 = [v8 portType];
          v21 = portType10 == @"HDMIOutput";

          if (v21)
          {
            goto LABEL_36;
          }
        }

        if (+[AVAudioApplication visionosDeviceSupportsEnhanceDialogue])
        {
          portType = [v8 portType];
          if (portType == @"Speaker")
          {
            goto LABEL_35;
          }

          portType2 = [v8 portType];
          if (portType2 == @"BluetoothA2DPOutput")
          {
            goto LABEL_34;
          }

          portType11 = [v8 portType];
          v23 = portType11 == @"BluetoothLE";

          if (v23)
          {
            goto LABEL_36;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v24 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_37:

  return v24;
}

- (id)sessionIDs
{
  v22 = *MEMORY[0x1E69E9840];
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v14, (ptr + 8));
  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  avas::client::XPCConnection::sync_message<NSArray * {__strong}>(v14[0].n128_u64[0], &v18);
  v3 = objc_autoreleasePoolPush();
  v4 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v18);
  *buf = v14[1];
  *&buf[16] = v14[2];
  v5 = v16;
  v6 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v18);
  [v4 sessionIDs:buf clientID:v5 reply:v6];

  objc_autoreleasePoolPop(v3);
  v7 = v20;
  if (v7)
  {
    v8 = v7;
    v9 = *avas::client::gSessionClientLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v15;
      v11 = [(avas::client *)v8 description];
      *buf = 136315906;
      *&buf[4] = "AVAudioApplication.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1029;
      *&buf[18] = 1024;
      *&buf[20] = v10;
      *&buf[24] = 2112;
      *&buf[26] = v11;
      _os_log_impl(&dword_1AC8A4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get session IDs for app: %d, err: %@", buf, 0x22u);
    }

    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v12 = v21;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v19);
  if (v14[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14[0].n128_u64[1]);
  }

  return v12;
}

- (BOOL)stemClickMutingEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  objc_msgSend_privateGetMXProperty_(self, a2, *MEMORY[0x1E69B02A8]);
  v2 = v9;
  v3 = v2;
  if (v8)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v5 = *avas::client::gSessionClientLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AVAudioApplication.mm";
      v12 = 1024;
      v13 = 1051;
      _os_log_impl(&dword_1AC8A4000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get PrefersBluetoothAccessoryMuting", buf, 0x12u);
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [(avas::client *)v2 BOOLValue];
  }

  return bOOLValue;
}

- (void)privateHandlePing
{
  v49[1] = *MEMORY[0x1E69E9840];
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  avas::client::AVAudioApplicationImpl::GetConnection(v39, (ptr + 8));
  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  avas::client::XPCConnection::sync_message<NSArray * {__strong}>(v39[0].n128_u64[0], &v45);
  v3 = objc_autoreleasePoolPush();
  v4 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v45);
  *buf = v39[1];
  *&buf[16] = v39[2];
  v5 = v41;
  v6 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v45);
  [v4 getApplicationMessages:buf clientID:v5 reply:v6];

  objc_autoreleasePoolPop(v3);
  if (v47)
  {
    v8 = *avas::client::gSessionClientLog(v7);
    obj = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AVAudioApplication.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1072;
      *&buf[18] = 2112;
      *&buf[20] = v47;
      v9 = v47;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Server returned an error:. %@", buf, 0x1Cu);
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v48;
    v28 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v28)
    {
      v27 = *v36;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
          v13 = v12;
          if (v12)
          {
            v14 = *v32;
            do
            {
              v15 = 0;
              do
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v31 + 1) + 8 * v15);
                v17 = *avas::client::gSessionClientLog(v12);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315906;
                  *&buf[4] = "AVAudioApplication.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 1083;
                  *&buf[18] = 1024;
                  *&buf[20] = v40;
                  *&buf[24] = 2112;
                  *&buf[26] = v16;
                  _os_log_impl(&dword_1AC8A4000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d Handling application deferred message, PID = %d, notificationName = %@", buf, 0x22u);
                }

                v18 = [v11 objectForKey:v16];
                if ([v16 isEqualToString:@"AVAudioApplicationInputMuteStateChangeNotification"])
                {
                  v19 = [v18 valueForKey:@"AVAudioApplicationMuteStateKey"];
                  if (v19)
                  {
                    v20 = self->_impl.__ptr_;
                    os_unfair_lock_lock(v20);
                    avas::AudioAppState::setPropertyApp(v20 + 10, @"InputMute", v19);
                    if (v20)
                    {
                      os_unfair_lock_unlock(v20);
                    }
                  }
                }

                selfCopy = self;
                v22 = v18;
                if ([v16 isEqualToString:@"AVAudioApplicationInputMuteStateChangeNotification"])
                {
                  v23 = [v22 valueForKey:@"AVAudioApplicationMuteStateKey"];
                  v24 = v23;
                  if (v23)
                  {
                    v49[0] = @"AVAudioApplicationMuteStateKey";
                    *buf = v23;
                    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v49 count:1];
                    [(AVAudioApplication *)selfCopy postNotificationName:@"AVAudioApplicationInputMuteStateChangeNotification" userInfo:v25];
                  }
                }

                v15 = (v15 + 1);
              }

              while (v13 != v15);
              v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
              v13 = v12;
            }

            while (v12);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v28);
    }
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v46);
  if (v39[0].n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39[0].n128_u64[1]);
  }
}

- (void)postNotificationName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AVAudioApplication_Internal__postNotificationName_userInfo___block_invoke;
  v10[3] = &unk_1E7986FF0;
  objc_copyWeak(&v13, &location);
  v11 = nameCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = nameCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__AVAudioApplication_Internal__postNotificationName_userInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:*(a1 + 32) object:v4 userInfo:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)privateCreateAudioApplicationInServer:
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    [WeakRetained privateRecreateAudioApplicationInServer];
  }
}

@end