@interface ASDTIOA2Device
+ (id)ioServiceDependenciesForConfig:(id)config;
+ (id)matcherWithDelegate:(id)delegate;
- (ASDTIOA2Device)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin;
- (ASDTIOA2Device)initWithIOA2Device:(unsigned int)device config:(id)config deviceManager:(id)manager plugin:(id)plugin;
- (BOOL)_createDeviceProperties;
- (BOOL)_openConnection;
- (BOOL)_setControlValues:(const unsigned int *)values withCount:(unint64_t)count resultValues:(unsigned int *)resultValues count:(unint64_t *)a6 forControl:(unsigned int)control;
- (BOOL)_setCurrentFormat:(id)format forStream:(unsigned int)stream;
- (BOOL)_setSamplingRate:(double)rate;
- (BOOL)_updateControls;
- (BOOL)_updateStreams;
- (BOOL)ioRequestBegin;
- (BOOL)nonSecureInputEnabled;
- (BOOL)subclassInitWithConfig:(id)config;
- (id).cxx_construct;
- (id)_channelLayoutForDirection:(unsigned int)direction;
- (id)_controlDictionaryForControl:(unsigned int)control;
- (id)_getControlByUCID:(unsigned int)d;
- (id)_getCurrentFormatForStream:(unsigned int)stream;
- (id)_getObjectByUCID:(unsigned int)d fromObjects:(id)objects;
- (id)_getStreamByUCID:(unsigned int)d;
- (id)_markOrCreateStreamsForDirection:(unsigned int)direction;
- (id)_streamInfoForStream:(unsigned int)stream;
- (id)createStreamForUserClientID:(unsigned int)d direction:(unsigned int)direction registryDict:(id)dict;
- (id)customDataPropertyWithKey:(id)key;
- (id)customPropertyWithKey:(id)key;
- (id)getKeyForCustomPropertyWithSelector:(unsigned int)selector;
- (id)getZeroTimestampBlock;
- (id)samplingRates;
- (id)unmarkedObjects:(id)objects;
- (id)updateClientInputPositionBlock;
- (id)updateClientOutputPositionBlock;
- (int)performPowerStateIdle:(int)idle;
- (int)performPowerStatePrepare:(int)prepare;
- (int)performPowerStatePrewarm:(int)prewarm;
- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case;
- (int)systemSleepPending;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (shared_lock<std::shared_mutex>)lockConfigShared;
- (unique_lock<std::shared_mutex>)lockConfigExclusive;
- (unsigned)customUInt32WithKey:(id)key defaultValue:(unsigned int)value;
- (void)_addControls:(id)controls;
- (void)_addStreams:(id)streams;
- (void)_openConnection;
- (void)_performUnderlyingStopIO:(unint64_t)o;
- (void)_removeControls:(id)controls;
- (void)_removeStreams:(id)streams;
- (void)_requestUnderlyingStopIO;
- (void)_updateProperties;
- (void)clearInputBuffers;
- (void)clearMark:(id)mark;
- (void)clearOutputBuffers;
- (void)dealloc;
- (void)doConfigChange:(IOAudio2Notification *)change;
- (void)exclavesStatusTracker;
- (void)forceStopIO;
- (void)handleConfigChange:(IOAudio2Notification *)change;
- (void)handleControlChange:(IOAudio2Notification *)change;
- (void)handleIOA2PropertyChanged:(const AudioObjectPropertyAddress *)changed forObject:(id)object;
- (void)handleMachPortMessage;
- (void)handlePropertyChanged:(IOAudio2Notification *)changed;
- (void)handleTransportChanged:(IOAudio2Notification *)changed;
- (void)ioRequestBegin;
- (void)ioRequestEnd;
- (void)ioRequestsBlock;
- (void)ioRequestsRelease;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setMuteAllOutputs:(BOOL)outputs;
- (void)setOutputVolumesToNominal;
- (void)setSamplingRate:(double)rate;
- (void)setupCustomPropertySelectorMap;
- (void)updateInjectionVisibility;
- (void)writeZerosToMixMilliseconds:(unsigned int)milliseconds;
@end

@implementation ASDTIOA2Device

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v10[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtDeviceUID = [configCopy asdtDeviceUID];
  if (asdtDeviceUID)
  {
    [objc_msgSend(self "ioServiceManagerClass")];
  }

  else
  {
    [objc_msgSend(self "ioServiceManagerClass")];
  }
  v6 = ;
  v7 = v6;
  if (v6)
  {
    v10[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ASDTIOA2Device)initWithIOA2Device:(unsigned int)device config:(id)config deviceManager:(id)manager plugin:(id)plugin
{
  v29[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  v12 = objc_opt_class();
  if (v12)
  {
    objc_msgSend_createIOA2UserClient_(v12);
    v12 = *buf;
  }

  *buf = 0;
  v14 = *(self + 77);
  *(self + 77) = v12;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = *buf;
    *buf = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v12 = *(self + 77);
  }

  if (v12)
  {
    ASDT::IOA2UserClient::CopyDeviceUID(v12, v13, buf);
    v16 = *buf;
    v17 = v16;
    if (v16)
    {
      CFRelease(v16);
      if (configCopy)
      {
        asdtDeviceUID = [configCopy asdtDeviceUID];
        v19 = [asdtDeviceUID isEqualToString:v17];

        if ((v19 & 1) == 0)
        {
          v22 = ASDTIOA2LogType(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            asdtDeviceUID2 = [configCopy asdtDeviceUID];
            [ASDTIOA2Device initWithIOA2Device:asdtDeviceUID2 config:v17 deviceManager:buf plugin:v22];
          }
        }
      }

      else
      {
        v28 = *MEMORY[0x277CEFBE0];
        v29[0] = v17;
        configCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      }
    }

    v26.receiver = self;
    v26.super_class = ASDTIOA2Device;
    self = [(ASDTAudioDevice *)&v26 initWithConfig:configCopy withDeviceManager:managerCopy andPlugin:pluginCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ASDTIOA2Device)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin
{
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  v11 = MEMORY[0x277CEFB90];
  asdtDeviceUID = [configCopy asdtDeviceUID];
  v13 = [v11 forIdentifier:asdtDeviceUID andClientType:0];

  v14 = [objc_msgSend(objc_opt_class() "ioServiceManagerClass")];
  v15 = -[ASDTIOA2Device initWithIOA2Device:config:deviceManager:plugin:](self, "initWithIOA2Device:config:deviceManager:plugin:", [v14 ioObject], configCopy, managerCopy, pluginCopy);

  return v15;
}

- (BOOL)subclassInitWithConfig:(id)config
{
  cf[3] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtExclavesInputBufferName = [configCopy asdtExclavesInputBufferName];
  [(ASDTIOA2Device *)self setExclavesInputBufferName:asdtExclavesInputBufferName];

  asdtExclavesInjectionBufferName = [configCopy asdtExclavesInjectionBufferName];
  [(ASDTIOA2Device *)self setExclavesInjectionBufferName:asdtExclavesInjectionBufferName];

  -[ASDTIOA2Device setIsolatedInputUseCaseID:](self, "setIsolatedInputUseCaseID:", [configCopy asdtIsolatedInputUseCaseID]);
  if ([configCopy asdtAddNonSecurePathEnable])
  {
    createForInput = [MEMORY[0x277CEFBA0] createForInput];
    [(ASDTIOA2Device *)self setNonSecureInputEnableProperty:createForInput];

    nonSecureInputEnableProperty = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];

    if (!nonSecureInputEnableProperty)
    {
      v26 = ASDTIOA2LogType(v9, v10);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOA2Device subclassInitWithConfig:];
      }

      goto LABEL_38;
    }

    nonSecureInputEnableProperty2 = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];
    [(ASDTAudioDevice *)self addCustomProperty:nonSecureInputEnableProperty2];
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  deviceUID = [(ASDAudioDevice *)self deviceUID];
  v16 = [v12 stringWithFormat:@"%s.%@.%@.stopIO", "com.apple.AudioServerDriverTransports", v14, deviceUID];

  uTF8String = [v16 UTF8String];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create(uTF8String, v18);
  v20 = *(self + 149);
  *(self + 149) = v19;

  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  deviceUID2 = [(ASDAudioDevice *)self deviceUID];
  v25 = [v21 stringWithFormat:@"%s.%@.%@.notification", "com.apple.AudioServerDriverTransports", v23, deviceUID2];

  v26 = v25;
  uTF8String2 = [v25 UTF8String];
  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v29 = dispatch_queue_create(uTF8String2, v28);
  v30 = *(self + 151);
  *(self + 151) = v29;

  if (!*(self + 149) || !*(self + 151))
  {
    v54 = ASDTIOA2LogType(v31, v32);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

    goto LABEL_37;
  }

  NumberStreams = ASDT::IOA2UserClient::GetNumberStreams(*(self + 77), 1);
  v34 = NumberStreams != 0;
  v35 = [configCopy objectForKey:*MEMORY[0x277CEFBC8]];

  if (v35)
  {
    canBeDefaultInputDevice = [(ASDAudioDevice *)self canBeDefaultInputDevice];
    if (NumberStreams)
    {
      v34 = canBeDefaultInputDevice;
    }

    else
    {
      v34 = 0;
    }
  }

  [(ASDAudioDevice *)self setCanBeDefaultInputDevice:v34];
  v37 = ASDT::IOA2UserClient::GetNumberStreams(*(self + 77), 0);
  v38 = v37 != 0;
  v39 = [configCopy objectForKey:*MEMORY[0x277CEFBD0]];

  if (v39)
  {
    canBeDefaultOutputDevice = [(ASDAudioDevice *)self canBeDefaultOutputDevice];
    if (v37)
    {
      v38 = canBeDefaultOutputDevice;
    }

    else
    {
      v38 = 0;
    }
  }

  [(ASDAudioDevice *)self setCanBeDefaultOutputDevice:v38];
  v41 = [configCopy objectForKey:*MEMORY[0x277CEFBD8]];

  if (!v41)
  {
    [(ASDAudioDevice *)self setCanBeDefaultSystemDevice:1];
  }

  ASDT::IOA2UserClient::CopyDeviceName(*(self + 77), v42, cf);
  [(ASDAudioDevice *)self setDeviceName:cf[0]];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  ASDT::IOA2UserClient::CopyDeviceManufacturer(*(self + 77), v43, cf);
  [(ASDAudioDevice *)self setManufacturerName:cf[0]];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  _openConnection = [(ASDTIOA2Device *)self _openConnection];
  if ((_openConnection & 1) == 0)
  {
    v54 = ASDTIOA2LogType(_openConnection, v45);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

    goto LABEL_37;
  }

  _createDeviceProperties = [(ASDTIOA2Device *)self _createDeviceProperties];
  if ((_createDeviceProperties & 1) == 0)
  {
    v54 = ASDTIOA2LogType(_createDeviceProperties, v47);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

    goto LABEL_37;
  }

  _updateControls = [(ASDTIOA2Device *)self _updateControls];
  if ((_updateControls & 1) == 0)
  {
    v54 = ASDTIOA2LogType(_updateControls, v49);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  _updateStreams = [(ASDTIOA2Device *)self _updateStreams];
  if ((_updateStreams & 1) == 0)
  {
    v54 = ASDTIOA2LogType(_updateStreams, v51);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
LABEL_36:
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

LABEL_37:

LABEL_38:
    v53 = 0;
    goto LABEL_39;
  }

  ASDT::IOUserClient::SetAlwaysLoadPropertiesFromRegistry(*(self + 77));
  v52 = *(self + 77);
  v53 = 1;
  ASDT::IOUserClient::SetTerminationNotificationEnabled(v52);
LABEL_39:

  return v53;
}

- (void)dealloc
{
  injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
  [injectionStreamEnableProperty removeObserver:self forKeyPath:@"value"];

  v4.receiver = self;
  v4.super_class = ASDTIOA2Device;
  [(ASDAudioDevice *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
  v11 = injectionStreamEnableProperty;
  if (injectionStreamEnableProperty == objectCopy)
  {
    v12 = [pathCopy isEqualToString:@"value"];

    if (v12)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__ASDTIOA2Device_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v13[3] = &unk_278CE8C18;
      objc_copyWeak(&v14, &location);
      [(ASDAudioDevice *)self requestConfigurationChange:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __65__ASDTIOA2Device_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateInjectionVisibility];
}

- (void)exclavesStatusTracker
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke;
  block[3] = &unk_278CE8C40;
  block[4] = self;
  if (*(self + 145) != -1)
  {
    dispatch_once(self + 145, block);
  }

  return *(self + 146);
}

void __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (asdt_exclaves_available())
  {
    v2 = [*(a1 + 32) exclavesSensorName];
    v3 = [v2 UTF8String];
    v4 = strlen(v3);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v13 = v4;
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    *(&__dst + v5) = 0;
    ASDT::Exclaves::StatusTracker::Create();
    v6 = *(a1 + 32);
    v7 = *(v6 + 1168);
    *(v6 + 1168) = v11;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v13 < 0)
    {
      operator delete(__dst);
    }

    if (!*(*(a1 + 32) + 1168))
    {
      v10 = ASDTIOA2LogType(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 32) deviceUID];
        objc_claimAutoreleasedReturnValue();
        __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke_cold_1();
      }
    }
  }
}

- (unique_lock<std::shared_mutex>)lockConfigExclusive
{
  v3 = (self + 808);
  *v2 = v3;
  *(v2 + 8) = 1;
  std::__shared_mutex_base::lock(v3);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (shared_lock<std::shared_mutex>)lockConfigShared
{
  v3 = (self + 808);
  *v2 = v3;
  *(v2 + 8) = 1;
  std::__shared_mutex_base::lock_shared(v3);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)handleMachPortMessage
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to receive a message.", v5);
}

void __39__ASDTIOA2Device_handleMachPortMessage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleConfigChange:*(*(a1 + 32) + 8) + 48];
}

- (void)ioRequestsBlock
{
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_1_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_3_0(v4, v5, v6);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v7, v8);
}

- (void)ioRequestsRelease
{
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_1_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_3_0(v4, v5, v6);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v7, v8);
}

- (BOOL)ioRequestBegin
{
  std::mutex::lock((self + 1040));
  v5 = *(self + 288);
  if (v5 <= 0)
  {
    *(self + 288) = v5 - 1;
    v6 = ASDTIOA2LogType(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device ioRequestBegin];
    }
  }

  std::mutex::unlock((self + 1040));
  return v5 < 1;
}

- (void)ioRequestEnd
{
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_1_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_3_0(v4, v5, v6);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v7, v8);
}

- (void)handleConfigChange:(IOAudio2Notification *)change
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = ASDTIOA2LogType(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = deviceUID;
    _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@: Handle configuration change.", &buf, 0xCu);
  }

  [(ASDTAudioDevice *)self powerState];
  if ((asdtPowerStateCompare() & 0x80000000) != 0)
  {
    [(ASDTIOA2Device *)self doConfigChange:change];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v12 = 0x5012000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = &unk_2416E317F;
    v7 = *&change->var4;
    v16 = *&change->var0;
    v17 = v7;
    objc_initWeak(&location, self);
    [(ASDTIOA2Device *)self ioRequestsBlock];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__ASDTIOA2Device_handleConfigChange___block_invoke;
    v8[3] = &unk_278CE8C68;
    objc_copyWeak(&v9, &location);
    v8[4] = &buf;
    [(ASDAudioDevice *)self requestConfigurationChange:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }
}

void __37__ASDTIOA2Device_handleConfigChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained doConfigChange:*(*(a1 + 32) + 8) + 48];
  [WeakRetained ioRequestsRelease];
}

- (void)doConfigChange:(IOAudio2Notification *)change
{
  buf[3] = *MEMORY[0x277D85DE8];
  v5 = ASDTIOA2LogType(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = deviceUID;
    _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@: Do configuration change.", buf, 0xCu);
  }

  [(ASDTIOA2Device *)self forceStopIO];
  objc_msgSend_lockConfigExclusive(self);
  v7 = ASDT::IOA2UserClient::PerformConfigChange(*(self + 77), change);
  if (!v7)
  {
    v9 = ASDTIOA2LogType(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device doConfigChange:];
    }
  }

  v10 = *(self + 128);
  std::mutex::lock(v10);
  std::mutex::unlock(v10);
  std::condition_variable::notify_all((self + 976));
  v13 = ASDTIOA2LogType(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    deviceUID2 = [(ASDAudioDevice *)self deviceUID];
    v18 = 138412290;
    v19 = deviceUID2;
    _os_log_impl(&dword_2416BA000, v13, OS_LOG_TYPE_INFO, "%@: Signaled sample rate waiting thread", &v18, 0xCu);
  }

  if (*(self + 91))
  {
    v17 = ASDTIOA2LogType(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device doConfigChange:];
    }

    ASDT::IOMemoryMap::Release((self + 624));
  }

  [(ASDTIOA2Device *)self _updateProperties];
  [(ASDTIOA2Device *)self _updateControls];
  [(ASDTIOA2Device *)self _updateStreams];
  if (LOBYTE(buf[1]) == 1)
  {
    std::__shared_mutex_base::unlock(buf[0]);
  }
}

- (void)handleControlChange:(IOAudio2Notification *)change
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_lockConfigShared(self, a2);
  v5 = [(ASDTIOA2Device *)self _getControlByUCID:change->var0];
  v7 = v5;
  var1 = change->var1;
  if (var1 == 1668443751)
  {
    v12 = (*(**(self + 77) + 24))(*(self + 77));
    v14 = ASDTIOA2LogType(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      if ([v7 objectClass] >> 29 && objc_msgSend(v7, "objectClass") >> 24 <= 0x7E)
      {
        v16 = [v7 objectClass] >> 24;
      }

      else
      {
        v16 = 32;
      }

      if (([v7 objectClass] & 0xE00000) != 0 && (objc_msgSend(v7, "objectClass") >> 16) <= 0x7Eu)
      {
        v18 = ([v7 objectClass] >> 16);
      }

      else
      {
        v18 = 32;
      }

      if (([v7 objectClass] & 0xE000) != 0 && (objc_msgSend(v7, "objectClass") >> 8) <= 0x7Eu)
      {
        v20 = ([v7 objectClass] >> 8);
      }

      else
      {
        v20 = 32;
      }

      if (([v7 objectClass] & 0xE0) != 0 && objc_msgSend(v7, "objectClass") <= 0x7Eu)
      {
        objectClass = [v7 objectClass];
      }

      else
      {
        objectClass = 32;
      }

      *buf = 138413314;
      *&buf[4] = deviceUID;
      v27 = 1024;
      v28 = v16;
      v29 = 1024;
      v30 = v18;
      v31 = 1024;
      v32 = v20;
      v33 = 1024;
      v34 = objectClass;
      _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' range change notification.", buf, 0x24u);
    }

    ASDT::IOA2UserClient::CopyControlDictionaryByID(*(self + 77), change->var0, buf);
    if (v25)
    {
      std::__shared_mutex_base::unlock_shared(v24);
      v25 = 0;
      [v7 synchronizeWithRegistryDictionary:*buf];
      if (*buf)
      {
        CFRelease(*buf);
      }

      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (var1 != 1668702572)
  {
    goto LABEL_44;
  }

  v9 = ASDTIOA2LogType(v5, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID2 = [(ASDAudioDevice *)self deviceUID];
    if ([v7 objectClass] >> 29 && objc_msgSend(v7, "objectClass") >> 24 <= 0x7E)
    {
      v11 = [v7 objectClass] >> 24;
    }

    else
    {
      v11 = 32;
    }

    if (([v7 objectClass] & 0xE00000) != 0 && (objc_msgSend(v7, "objectClass") >> 16) <= 0x7Eu)
    {
      v17 = ([v7 objectClass] >> 16);
    }

    else
    {
      v17 = 32;
    }

    if (([v7 objectClass] & 0xE000) != 0 && (objc_msgSend(v7, "objectClass") >> 8) <= 0x7Eu)
    {
      v19 = ([v7 objectClass] >> 8);
    }

    else
    {
      v19 = 32;
    }

    if (([v7 objectClass] & 0xE0) != 0 && objc_msgSend(v7, "objectClass") <= 0x7Eu)
    {
      objectClass2 = [v7 objectClass];
    }

    else
    {
      objectClass2 = 32;
    }

    var2 = change->var2;
    *buf = 138413570;
    *&buf[4] = deviceUID2;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = v17;
    v31 = 1024;
    v32 = v19;
    v33 = 1024;
    v34 = objectClass2;
    v35 = 1024;
    v36 = var2;
    _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' value change notification: %u", buf, 0x2Au);
  }

  if ((v25 & 1) == 0)
  {
LABEL_47:
    std::__throw_system_error(1, "shared_lock::unlock: not locked");
    __break(1u);
    return;
  }

  std::__shared_mutex_base::unlock_shared(v24);
  v25 = 0;
  [v7 pushValue:change->var2];
LABEL_44:

  if (v25 == 1)
  {
    std::__shared_mutex_base::unlock_shared(v24);
  }
}

- (void)handleTransportChanged:(IOAudio2Notification *)changed
{
  v17 = *MEMORY[0x277D85DE8];
  var1 = changed->var1;
  if (var1 == 1751215220 || var1 == 1735354734)
  {
    v7 = ASDTIOA2LogType(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      v9 = deviceUID;
      v10 = changed->var1;
      v11 = HIBYTE(v10);
      if ((v10 - 0x20000000) >> 24 >= 0x5F)
      {
        v11 = 32;
      }

      v12 = BYTE2(v10);
      if (BYTE2(v10) - 32 >= 0x5F)
      {
        v12 = 32;
      }

      v13 = BYTE1(v10);
      if (BYTE1(v10) - 32 >= 0x5F)
      {
        v13 = 32;
      }

      *v14 = 138413314;
      *&v14[4] = deviceUID;
      v10 = v10;
      *&v14[12] = 1024;
      *&v14[14] = v11;
      *&v14[18] = 1024;
      *&v14[20] = v12;
      LOWORD(v15) = 1024;
      *(&v15 + 2) = v13;
      if (v10 - 32 >= 0x5F)
      {
        v10 = 32;
      }

      HIWORD(v15) = 1024;
      v16 = v10;
      _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@: change in IO state to '%c%c%c%c'", v14, 0x24u);
    }

    [(ASDTIOA2Device *)self setNotifiedIORunning:changed->var1 == 1735354734, *v14, *&v14[8], v15];
  }
}

- (void)handleIOA2PropertyChanged:(const AudioObjectPropertyAddress *)changed forObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    propertyChangedDelegate = [(ASDTIOA2Device *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:changed forObject:objectCopy];
  }
}

- (void)handlePropertyChanged:(IOAudio2Notification *)changed
{
  objectID = [(ASDTIOA2Device *)self objectID];
  selfCopy = self;
  v7 = selfCopy;
  if (!changed->var0)
  {
    v10 = selfCopy;
    if (!objectID)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  objc_msgSend_lockConfigShared(selfCopy);
  (*(*v7[77] + 24))(v7[77]);
  v8 = [v7 _getStreamByUCID:changed->var0];
  v9 = v8;
  if (v8)
  {
    objectID = [v8 objectID];
    v10 = v9;
    v11 = v7;
  }

  else
  {
    v11 = [v7 _getControlByUCID:changed->var0];
    if (v11)
    {
      ASDT::IOA2UserClient::CopyControlDictionaryByID(v7[77], changed->var0, &cf);
      [v11 synchronizeWithRegistryDictionary:cf];
      objectID = [v11 objectID];
      v10 = v11;

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v10 = v7;
    }
  }

  if (var4 == 1)
  {
    std::__shared_mutex_base::unlock_shared(v15);
  }

  if (objectID)
  {
LABEL_9:
    v15 = *&changed->var2;
    var4 = changed->var4;
    [v7 handleIOA2PropertyChanged:&v15 forObject:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      injectionStream = [v12 injectionStream];
      [v7 handleIOA2PropertyChanged:&v15 forObject:injectionStream];
    }
  }

LABEL_11:
}

- (id)_getObjectByUCID:(unsigned int)d fromObjects:(id)objects
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectsCopy = objects;
  v6 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_2853587A0, v12}] && objc_msgSend(v9, "userClientID") == d)
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)_getStreamByUCID:(unsigned int)d
{
  v3 = *&d;
  allStreams = [(ASDTAudioDevice *)self allStreams];
  v6 = [(ASDTIOA2Device *)self _getObjectByUCID:v3 fromObjects:allStreams];

  return v6;
}

- (id)_getControlByUCID:(unsigned int)d
{
  v3 = *&d;
  controls = [(ASDAudioDevice *)self controls];
  v6 = [(ASDTIOA2Device *)self _getObjectByUCID:v3 fromObjects:controls];

  return v6;
}

- (void)clearMark:(id)mark
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  markCopy = mark;
  v4 = [markCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(markCopy);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 setMarked:{0, v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [markCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)unmarkedObjects:(id)objects
{
  v16 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_2853587A0, v11}] && (objc_msgSend(v9, "marked") & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)createStreamForUserClientID:(unsigned int)d direction:(unsigned int)direction registryDict:(id)dict
{
  v5 = *&direction;
  v6 = *&d;
  dictCopy = dict;
  v9 = [[ASDTIOA2Stream alloc] initWithIOA2Device:self userClientID:v6 direction:v5 registryDict:dictCopy];

  return v9;
}

- (id)_markOrCreateStreamsForDirection:(unsigned int)direction
{
  v48 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  ASDT::IOA2UserClient::CopyStreamList(*(self + 77), (direction == 1768845428), (&v44.data + 4));
  v4 = *(&v44.data + 4);
  if (!*(&v44.data + 4))
  {
    goto LABEL_47;
  }

  Count = CFArrayGetCount(*(&v44.data + 4));
  v6 = Count;
  v7 = *(&v44.data + 4);
  if (!*(&v44.data + 4))
  {
    v8 = 0;
    if (!Count)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v8 = CFArrayGetCount(*(&v44.data + 4));
  if (v6)
  {
LABEL_6:
    for (i = 0; v6 != i; ++i)
    {
      if (v4 == v7 && v8 == i)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v4, i, (&v44.info + 4));
      if (*(&v44.info + 4) && (v11 = CFGetTypeID(*(&v44.info + 4)), v11 == CFDictionaryGetTypeID()))
      {
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef((&v44.info + 4), (&v44.isa + 4));
      }

      else
      {
        *(&v44.isa + 4) = 0;
      }

      LODWORD(v44.isa) = 0;
      StreamInfo_ID = ASDT::IOA2UserClient::GetStreamInfo_ID((&v44.isa + 4), &v44, v10);
      if ((StreamInfo_ID & 1) == 0)
      {
        v15 = ASDTIOA2LogType(StreamInfo_ID, v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          deviceUID = [(ASDAudioDevice *)self deviceUID];
          v24 = *(&v44.isa + 4);
          HIDWORD(v44.length) = 138412546;
          v45 = deviceUID;
          v46 = 2112;
          v47 = v24;
          _os_log_error_impl(&dword_2416BA000, v15, OS_LOG_TYPE_ERROR, "%@: Bad stream dict: %@", &v44.length + 4, 0x16u);
        }

        goto LABEL_36;
      }

      v15 = [(ASDTIOA2Device *)self _streamInfoForStream:LODWORD(v44.isa)];
      if (!v15)
      {
        v17 = ASDTIOA2LogType(0, v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          deviceUID2 = [(ASDAudioDevice *)self deviceUID];
          HIDWORD(v44.length) = 138412546;
          v45 = deviceUID2;
          v46 = 1024;
          LODWORD(v47) = v44.isa;
          _os_log_error_impl(&dword_2416BA000, v17, OS_LOG_TYPE_ERROR, "%@: Failed to get stream dictionary for ID: %u", &v44.length + 4, 0x12u);
        }

        goto LABEL_35;
      }

      v16 = [(ASDTIOA2Device *)self _getStreamByUCID:LODWORD(v44.isa)];
      v17 = v16;
      if (v16)
      {
        [v16 setMarked:1];
        [v17 synchronizeWithRegistryDictionary:v15];
        injectionStream = [v17 injectionStream];
        if (!injectionStream)
        {
          goto LABEL_35;
        }

        v20 = ASDT::IOA2UserClient::SupportsInputStreamInjection(*(self + 77), v18);

        if (!v20)
        {
          goto LABEL_35;
        }

        injectionStream2 = [v17 injectionStream];
        [injectionStream2 setMarked:1];

        injectionStream3 = [v17 injectionStream];
        [injectionStream3 synchronizeWithRegistryDictionary:v15];
      }

      else
      {
        v26 = [(ASDTIOA2Device *)self createStreamForUserClientID:LODWORD(v44.isa) direction:direction registryDict:v15];
        injectionStream3 = v26;
        if (v26)
        {
          [v26 setMarked:1];
          [array addObject:injectionStream3];
          if (direction != 1768845428)
          {
            goto LABEL_34;
          }

          if ([injectionStream3 usesIsolatedIO])
          {
            [injectionStream3 setIsolatedUseCaseID:{-[ASDTIOA2Device isolatedInputUseCaseID](self, "isolatedInputUseCaseID")}];
            exclavesInputBufferName = [(ASDTIOA2Device *)self exclavesInputBufferName];
            [injectionStream3 setExclavesBufferName:exclavesInputBufferName];

            [(ASDAudioDevice *)self setSupportsIsolatedIO:1];
          }

          if (!ASDT::IOA2UserClient::SupportsInputStreamInjection(*(self + 77), v28))
          {
            goto LABEL_34;
          }

          exclavesInjectionBufferName = [(ASDTIOA2Device *)self exclavesInjectionBufferName];
          v31 = exclavesInjectionBufferName == 0;

          if (v31)
          {
            goto LABEL_34;
          }

          v33 = [[ASDTIOA2InjectionStream alloc] initWithIOA2Device:self inputStream:injectionStream3 registryDict:v15];
          if (v33)
          {
            [injectionStream3 setInjectionStream:v33];
            [(ASDTIOA2Device *)self setInjectionStream:v33];
          }

          else
          {
            log = ASDTIOA2LogType(0, v32);
            v34 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
            v35 = log;
            if (v34)
            {
              deviceUID3 = [(ASDAudioDevice *)self deviceUID];
              HIDWORD(v44.length) = 138412546;
              v45 = deviceUID3;
              v46 = 2112;
              v47 = v15;
              v39 = deviceUID3;
              _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Failed to create injection stream from %@.", &v44.length + 4, 0x16u);

              v35 = log;
            }
          }
        }

        else
        {
          v33 = ASDTIOA2LogType(0, v27);
          if (os_log_type_enabled(&v33->super.super.super.super.super, OS_LOG_TYPE_ERROR))
          {
            deviceUID4 = [(ASDAudioDevice *)self deviceUID];
            HIDWORD(v44.length) = 138412546;
            v45 = deviceUID4;
            v46 = 2112;
            v47 = v15;
            loga = deviceUID4;
            _os_log_error_impl(&dword_2416BA000, &v33->super.super.super.super.super, OS_LOG_TYPE_ERROR, "%@: Failed to create stream from: %@", &v44.length + 4, 0x16u);
          }
        }
      }

LABEL_34:

LABEL_35:
LABEL_36:

      if (*(&v44.isa + 4))
      {
        CFRelease(*(&v44.isa + 4));
      }

      if (*(&v44.info + 4))
      {
        CFRelease(*(&v44.info + 4));
      }
    }
  }

LABEL_45:
  if (*(&v44.data + 4))
  {
    CFRelease(*(&v44.data + 4));
  }

LABEL_47:

  return array;
}

- (BOOL)_createDeviceProperties
{
  v17[5] = *MEMORY[0x277D85DE8];
  if (ASDT::IOA2UserClient::SupportsInputStreamInjection(*(self + 77), a2))
  {
    exclavesInjectionBufferName = [(ASDTIOA2Device *)self exclavesInjectionBufferName];

    if (exclavesInjectionBufferName)
    {
      v15 = 0;
      v4 = MEMORY[0x277CEFB88];
      v5 = *MEMORY[0x277CEFC58];
      v17[0] = @"ASDTRawProperty";
      v6 = *MEMORY[0x277CEFC18];
      v16[0] = v5;
      v16[1] = v6;
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v15 length:4];
      v17[1] = v7;
      v8 = *MEMORY[0x277CEFC20];
      v16[2] = *MEMORY[0x277CEFC28];
      v16[3] = v8;
      v17[2] = &unk_2853578B8;
      v17[3] = &unk_2853578D0;
      v16[4] = *MEMORY[0x277CEFBE8];
      v17[4] = &unk_2853578E8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
      v10 = [v4 customPropertyForConfig:v9];
      [(ASDTIOA2Device *)self setInjectionStreamEnableProperty:v10];

      injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
      LOBYTE(v7) = injectionStreamEnableProperty == 0;

      if (v7)
      {
        return 0;
      }

      injectionStreamEnableProperty2 = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
      [injectionStreamEnableProperty2 addObserver:self forKeyPath:@"value" options:1 context:0];

      injectionStreamEnableProperty3 = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
      [(ASDTAudioDevice *)self addCustomProperty:injectionStreamEnableProperty3];
    }
  }

  [(ASDTIOA2Device *)self _updateProperties];
  return 1;
}

- (void)updateInjectionVisibility
{
  v20 = *MEMORY[0x277D85DE8];
  injectionStream = [(ASDTIOA2Device *)self injectionStream];

  if (injectionStream)
  {
    injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
    value = [injectionStreamEnableProperty value];

    bytes = [value bytes];
    if (!bytes || [value length] < 4)
    {
      goto LABEL_13;
    }

    v7 = *bytes;
    outputStreams = [(ASDAudioDevice *)self outputStreams];
    injectionStream2 = [(ASDTIOA2Device *)self injectionStream];
    v10 = [outputStreams containsObject:injectionStream2];

    if ((v7 == 0) | v10 & 1)
    {
      if (((v7 == 0) & v10) != 1)
      {
LABEL_13:

        return;
      }

      v13 = ASDTIOA2LogType(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID = [(ASDAudioDevice *)self deviceUID];
        v18 = 138412290;
        v19 = deviceUID;
        _os_log_impl(&dword_2416BA000, v13, OS_LOG_TYPE_DEFAULT, "%@: Removing injection stream.", &v18, 0xCu);
      }

      injectionStream3 = [(ASDTIOA2Device *)self injectionStream];
      [(ASDTAudioDevice *)self removeOutputStream:injectionStream3];
    }

    else
    {
      v16 = ASDTIOA2LogType(v11, v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID2 = [(ASDAudioDevice *)self deviceUID];
        v18 = 138412290;
        v19 = deviceUID2;
        _os_log_impl(&dword_2416BA000, v16, OS_LOG_TYPE_DEFAULT, "%@: Adding injection stream.", &v18, 0xCu);
      }

      injectionStream3 = [(ASDTIOA2Device *)self injectionStream];
      [(ASDTAudioDevice *)self addOutputStream:injectionStream3];
    }

    goto LABEL_13;
  }
}

- (void)_updateProperties
{
  v17 = *MEMORY[0x277D85DE8];
  (*(**(self + 77) + 24))(*(self + 77), a2);
  [(ASDTIOA2Device *)self setupCustomPropertySelectorMap];
  v3 = [ASDTIOA2DefaultChannelLayout forIOA2Device:self andScope:1869968496];
  v4 = [ASDTIOA2DefaultChannelLayout addressForDirection:1869968496];
  v5 = [(ASDTAudioDevice *)self updateCustomProperty:v3 withAddress:v4];
  if (v5)
  {
    v7 = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 description];
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v15, 0xCu);
    }
  }

  v9 = [ASDTIOA2DefaultChannelLayout forIOA2Device:self andScope:1768845428];

  v10 = [ASDTIOA2DefaultChannelLayout addressForDirection:1768845428];

  v11 = [(ASDTAudioDevice *)self updateCustomProperty:v9 withAddress:v10];
  if (v11)
  {
    v13 = ASDTIOA2LogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 description];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_2416BA000, v13, OS_LOG_TYPE_DEFAULT, "%@", &v15, 0xCu);
    }
  }
}

- (BOOL)_updateStreams
{
  allStreams = [(ASDTAudioDevice *)self allStreams];
  [(ASDTIOA2Device *)self clearMark:allStreams];

  v4 = [(ASDTIOA2Device *)self _markOrCreateStreamsForDirection:1768845428];
  [(ASDTIOA2Device *)self _addStreams:v4];

  v5 = [(ASDTIOA2Device *)self _markOrCreateStreamsForDirection:1869968496];
  [(ASDTIOA2Device *)self _addStreams:v5];

  allStreams2 = [(ASDTAudioDevice *)self allStreams];
  v7 = [(ASDTIOA2Device *)self unmarkedObjects:allStreams2];
  [(ASDTIOA2Device *)self _removeStreams:v7];

  return 1;
}

- (BOOL)_updateControls
{
  v42 = *MEMORY[0x277D85DE8];
  controls = [(ASDAudioDevice *)self controls];
  [(ASDTIOA2Device *)self clearMark:controls];

  ASDT::IOA2UserClient::CopyControlList(*(self + 77), v4, buf);
  v5 = *buf;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v10 = *v34;
    *&v9 = 138412546;
    v28 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKeyedSubscript:@"control ID"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = -[ASDTIOA2Device _getControlByUCID:](self, "_getControlByUCID:", [v13 unsignedIntValue]);
            v15 = v14;
            if (v14)
            {
              [v14 setMarked:1];
              [v15 synchronizeWithRegistryDictionary:v12];
            }

            else
            {
              v16 = [ASDTIOA2Control controlWithDictionary:v12 owningDevice:self];
              v18 = v16;
              if (v16)
              {
                [v16 setMarked:1];
                [(ASDTAudioDevice *)self addControl:v18];
                v15 = v18;
                [v18 synchronizeWithRegistryDictionary:v12];
              }

              else
              {
                v19 = ASDTIOA2LogType(0, v17);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  deviceUID = [(ASDAudioDevice *)self deviceUID];
                  *buf = v28;
                  *&buf[4] = deviceUID;
                  v39 = 2112;
                  v40 = v12;
                  _os_log_error_impl(&dword_2416BA000, v19, OS_LOG_TYPE_ERROR, "%@: Failed to create control for dict: %@", buf, 0x16u);
                }

                v15 = 0;
              }
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  controls2 = [(ASDAudioDevice *)self controls];
  v22 = [(ASDTIOA2Device *)self unmarkedObjects:controls2];

  v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v23)
  {
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [(ASDTAudioDevice *)self removeControl:*(*(&v29 + 1) + 8 * j), v28];
      }

      v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  subclassUpdateControls = [(ASDTIOA2Device *)self subclassUpdateControls];
  return subclassUpdateControls;
}

- (void)setSamplingRate:(double)rate
{
  if ([(ASDTIOA2Device *)self _setSamplingRate:?])
  {
    v5.receiver = self;
    v5.super_class = ASDTIOA2Device;
    [(ASDTAudioDevice *)&v5 setSamplingRate:rate];
  }
}

- (BOOL)_setSamplingRate:(double)rate
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_lockConfigExclusive(self, a2);
  [(ASDTIOA2Device *)self _samplingRate];
  if (v5 == rate)
  {
    goto LABEL_14;
  }

  v6 = ASDT::IOA2UserClient::SetNominalSampleRate(*(self + 77), rate);
  if (!v6)
  {
    v19 = ASDTIOA2LogType(v6, v7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device _setSamplingRate:];
    }

LABEL_14:
    v20 = 0;
LABEL_15:
    if (v30 == 1)
    {
      std::__shared_mutex_base::unlock(v29);
    }

    return v20;
  }

  v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v28 = v8.__d_.__rep_ + 5000000.0;
  while (1)
  {
    v10 = ASDTIOA2LogType(v8.__d_.__rep_, v9.__d_.__rep_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412290;
      v32 = deviceUID;
      _os_log_impl(&dword_2416BA000, v10, OS_LOG_TYPE_INFO, "%@: Waiting to be signaled from IOA2 config change notification thread...", buf, 0xCu);
    }

    v12 = std::condition_variable_any::wait_until<std::unique_lock<std::shared_mutex>,std::chrono::system_clock,std::chrono::duration<double,std::ratio<1l,1000000l>>>(self + 976, &v29, &v28);
    _samplingRate = [(ASDTIOA2Device *)self _samplingRate];
    v15 = v14;
    v17 = ASDTIOA2LogType(_samplingRate, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v32 = deviceUID2;
      v33 = 2048;
      rateCopy2 = v15;
      v35 = 2048;
      rateCopy = rate;
      _os_log_impl(&dword_2416BA000, v17, OS_LOG_TYPE_INFO, "%@: Woke! currentRate = %f, desiredRate = %f", buf, 0x20u);
    }

    if (v12)
    {
      break;
    }

    if (v15 == rate)
    {
      goto LABEL_21;
    }
  }

  v22 = ASDTIOA2LogType(v8.__d_.__rep_, v9.__d_.__rep_);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID3 = [(ASDAudioDevice *)self deviceUID];
    *buf = 138412290;
    v32 = deviceUID3;
    _os_log_impl(&dword_2416BA000, v22, OS_LOG_TYPE_DEFAULT, "%@: setSamplingRate timed out", buf, 0xCu);
  }

  if (v15 != rate)
  {
    v26 = ASDTIOA2LogType(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      deviceUID4 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v32 = deviceUID4;
      v33 = 2048;
      rateCopy2 = rate;
      v35 = 2048;
      rateCopy = v15;
      _os_log_error_impl(&dword_2416BA000, v26, OS_LOG_TYPE_ERROR, "%@: setSamplingRate failed. Desired: %lf, Existing: %lf", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_21:
  if (v30)
  {
    std::__shared_mutex_base::unlock(v29);
    v30 = 0;
    v20 = 1;
    goto LABEL_15;
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
  return result;
}

- (id)_getCurrentFormatForStream:(unsigned int)stream
{
  cf[4] = *MEMORY[0x277D85DE8];
  ASDT::IOA2UserClient::CopyStreamDictionaryByID(*(self + 77), stream, cf);
  StreamInfo_CurrentFormat = ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(cf, &v10, v4);
  if (StreamInfo_CurrentFormat)
  {
    v7 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:&v10];
  }

  else
  {
    v8 = ASDTIOA2LogType(StreamInfo_CurrentFormat, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device _getCurrentFormatForStream:];
    }

    v7 = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v7;
}

- (BOOL)_setCurrentFormat:(id)format forStream:(unsigned int)stream
{
  v4 = *&stream;
  v36 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  objc_msgSend_lockConfigExclusive(self);
  v7 = [(ASDTIOA2Device *)self _getCurrentFormatForStream:v4];
  if ([formatCopy isEqual:v7])
  {
LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v8 = *(self + 77);
  if (formatCopy)
  {
    objc_msgSend_audioStreamBasicDescription(formatCopy);
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  v9 = ASDT::IOA2UserClient::SetStreamCurrentFormat(v8, v4, &buf);
  if (!v9)
  {
    v27 = ASDTIOA2LogType(v9, v10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      LODWORD(buf.mSampleRate) = 138412802;
      *(&buf.mSampleRate + 4) = deviceUID;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v4;
      HIWORD(buf.mBytesPerPacket) = 2112;
      *&buf.mFramesPerPacket = formatCopy;
      _os_log_error_impl(&dword_2416BA000, v27, OS_LOG_TYPE_ERROR, "%@: Failed to set stream %u current format to: %@", &buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  LOBYTE(v13) = 0;
  v32 = v11.__d_.__rep_ + 5000000.0;
  do
  {
    if (v13)
    {
      v26 = 1;
      goto LABEL_21;
    }

    v14 = ASDTIOA2LogType(v11.__d_.__rep_, v12.__d_.__rep_);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      LODWORD(buf.mSampleRate) = 138412290;
      *(&buf.mSampleRate + 4) = deviceUID2;
      _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_INFO, "%@: Waiting to be signaled from IOA2 config change notification thread...", &buf, 0xCu);
    }

    v16 = std::condition_variable_any::wait_until<std::unique_lock<std::shared_mutex>,std::chrono::system_clock,std::chrono::duration<double,std::ratio<1l,1000000l>>>(self + 976, &v33, &v32);
    v17 = [(ASDTIOA2Device *)self _getCurrentFormatForStream:v4];

    v18 = [formatCopy isEqual:v17];
    v13 = v18;
    v20 = ASDTIOA2LogType(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      deviceUID3 = [(ASDAudioDevice *)self deviceUID];
      LODWORD(buf.mSampleRate) = 138412546;
      *(&buf.mSampleRate + 4) = deviceUID3;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v13;
      _os_log_impl(&dword_2416BA000, v20, OS_LOG_TYPE_INFO, "%@: Woke! Desired format set: %hhu", &buf, 0x12u);
    }

    v7 = v17;
  }

  while (!v16);
  v22 = ASDTIOA2LogType(v11.__d_.__rep_, v12.__d_.__rep_);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID4 = [(ASDAudioDevice *)self deviceUID];
    LODWORD(buf.mSampleRate) = 138412290;
    *(&buf.mSampleRate + 4) = deviceUID4;
    _os_log_impl(&dword_2416BA000, v22, OS_LOG_TYPE_DEFAULT, "%@: _setCurrentFormat timed out", &buf, 0xCu);
  }

  if (v13)
  {
    v26 = 1;
  }

  else
  {
    v29 = ASDTIOA2LogType(v24, v25);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      deviceUID5 = [(ASDAudioDevice *)self deviceUID];
      LODWORD(buf.mSampleRate) = 138412802;
      *(&buf.mSampleRate + 4) = deviceUID5;
      LOWORD(buf.mFormatFlags) = 2112;
      *(&buf.mFormatFlags + 2) = formatCopy;
      HIWORD(buf.mFramesPerPacket) = 2112;
      *&buf.mBytesPerFrame = v17;
      _os_log_error_impl(&dword_2416BA000, v29, OS_LOG_TYPE_ERROR, "%@: _setCurrentFormat failed.\nDesired: %@\nCurrent: %@", &buf, 0x20u);
    }

    v26 = 0;
  }

  v7 = v17;
LABEL_21:

  if (v34 == 1)
  {
    std::__shared_mutex_base::unlock(v33);
  }

  return v26;
}

- (id)samplingRates
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allStreams = [(ASDTAudioDevice *)self allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    obj = allStreams;
    v25 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        physicalFormats = [v7 physicalFormats];
        v9 = [physicalFormats countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = *v27;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(physicalFormats);
              }

              v12 = *(*(&v26 + 1) + 8 * j);
              [v12 sampleRate];
              if (v13 != 0.0)
              {
                v14 = MEMORY[0x277CCABB0];
                [v12 sampleRate];
                v15 = [v14 numberWithDouble:?];
                [v3 addObject:v15];
LABEL_17:

                continue;
              }

              [v12 minimumSampleRate];
              if (v16 != 0.0)
              {
                v17 = MEMORY[0x277CCABB0];
                [v12 minimumSampleRate];
                v18 = [v17 numberWithDouble:?];
                [v3 addObject:v18];
              }

              [v12 maximumSampleRate];
              if (v19 != 0.0)
              {
                v20 = MEMORY[0x277CCABB0];
                [v12 maximumSampleRate];
                v15 = [v20 numberWithDouble:?];
                [v3 addObject:v15];
                goto LABEL_17;
              }
            }

            v9 = [physicalFormats countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }
      }

      allStreams = obj;
      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  allObjects = [v3 allObjects];
  v22 = [allObjects sortedArrayUsingComparator:&__block_literal_global];

  return v22;
}

- (BOOL)_openConnection
{
  v28 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  NotificationPort = objc_msgSend_createNotificationPort(self);
  if (v24)
  {
    v26 = *(self + 151);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __33__ASDTIOA2Device__openConnection__block_invoke;
    v22 = &unk_278CE8C18;
    objc_copyWeak(&v23, &location);
    v27 = MEMORY[0x245CEDA00](&v19);
    v5 = (*(*v24 + 16))(v24, &v26);
    if (v5)
    {
      v7 = ASDT::IOUserClient::OpenConnection(*(self + 77));
      if (v7)
      {
        v9 = v24;
        v24 = 0;
        v18 = v9;
        [(ASDTIOA2Device *)self objectID];
        v11 = ASDT::IOUserClient::SetConnectionNotification();
        v12 = v18;
        if (v18)
        {
          v12 = (*(*v18 + 8))(v18);
        }

        if (v11)
        {
          v13 = 1;
LABEL_18:

          objc_destroyWeak(&v23);
          goto LABEL_19;
        }

        v15 = ASDTIOA2LogType(v12, v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(ASDAudioDevice *)self deviceUID:0];
          objc_claimAutoreleasedReturnValue();
          [ASDTIOA2Device _openConnection];
        }
      }

      else
      {
        v15 = ASDTIOA2LogType(v7, v8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(ASDAudioDevice *)self deviceUID];
          objc_claimAutoreleasedReturnValue();
          [ASDTIOA2Device _openConnection];
        }
      }
    }

    else
    {
      v15 = ASDTIOA2LogType(v5, v6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOA2Device _openConnection];
      }
    }

    v13 = 0;
    goto LABEL_18;
  }

  v14 = ASDTIOA2LogType(NotificationPort, v4);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(ASDAudioDevice *)self deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTIOA2Device _openConnection];
  }

  v13 = 0;
LABEL_19:
  v16 = v24;
  v24 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  objc_destroyWeak(&location);
  return v13;
}

void __33__ASDTIOA2Device__openConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleMachPortMessage];
}

- (void)_addStreams:(id)streams
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(streamsCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 direction] == 1768845428)
        {
          [(ASDTAudioDevice *)self addInputStream:v8];
        }

        else
        {
          [(ASDTAudioDevice *)self addOutputStream:v8];
        }
      }

      v5 = [streamsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_removeStreams:(id)streams
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(streamsCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 direction] == 1768845428)
        {
          [(ASDTAudioDevice *)self removeInputStream:v8];
        }

        else
        {
          [(ASDTAudioDevice *)self removeOutputStream:v8];
        }
      }

      v5 = [streamsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_addControls:(id)controls
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  controlsCopy = controls;
  v5 = [controlsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(controlsCopy);
        }

        [(ASDTAudioDevice *)self addControl:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [controlsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_removeControls:(id)controls
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  controlsCopy = controls;
  v5 = [controlsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(controlsCopy);
        }

        [(ASDTAudioDevice *)self removeControl:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [controlsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)getZeroTimestampBlock
{
  objc_initWeak(&location, self);
  engineStatusIndirection = [(ASDTIOA2Device *)self engineStatusIndirection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke;
  v6[3] = &unk_278CE8CB0;
  v7[1] = engineStatusIndirection;
  objc_copyWeak(v7, &location);
  v4 = MEMORY[0x245CEDA00](v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);

  return v4;
}

uint64_t __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke(uint64_t a1, double *a2, unint64_t *a3, unint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 40);
  if (!v4)
  {
    return 1937010544;
  }

  v20 = *v4;
  v19 = v4[1];
  v18 = v4[2];
  v17 = *v4;
  v16 = v19;
  v15 = v18;
  v9 = -3;
  while (v20 != v17 || v19 != v16 || v18 != v15)
  {
    v20 = *v4;
    v19 = v4[1];
    v18 = v4[2];
    v17 = *v4;
    v16 = v19;
    v15 = v18;
    if (__CFADD__(v9++, 1))
    {
      v11 = ASDTIOA2LogType(a1, a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v13 = [WeakRetained deviceUID];
        __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke_cold_1(v13, v21, v11, WeakRetained);
      }

      break;
    }
  }

  result = 0;
  *a2 = v20;
  *a3 = v19;
  *a4 = v18;
  return result;
}

- (void)setupCustomPropertySelectorMap
{
  v28 = *MEMORY[0x277D85DE8];
  ASDT::IOA2UserClient::CopyCustomPropertyInfo(*(self + 77), a2, buf);
  v2 = *buf;
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:{0, self}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 valueForKey:@"registry key"];
        v11 = [v9 valueForKey:@"property selector"];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = [v4 setObject:v10 forKey:v11];
          v16 = ASDTIOA2LogType(v14, v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            unsignedIntValue = [v12 unsignedIntValue];
            *buf = 138412546;
            *&buf[4] = v10;
            v25 = 1024;
            v26 = unsignedIntValue;
            _os_log_debug_impl(&dword_2416BA000, v16, OS_LOG_TYPE_DEBUG, "Registry Key: %@, Selector: %u", buf, 0x12u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v6);
  }

  [v19 setCustomPropertySelectorMap:v4];
}

- (id)getKeyForCustomPropertyWithSelector:(unsigned int)selector
{
  v3 = *&selector;
  customPropertySelectorMap = [(ASDTIOA2Device *)self customPropertySelectorMap];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [customPropertySelectorMap objectForKey:v5];

  return v6;
}

- (id)customPropertyWithKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v5 = *(self + 77);
  applesauce::CF::StringRef::from_ns_noexcept(&cf, keyCopy);
  v6 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(v5, &cf, &v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

- (unsigned)customUInt32WithKey:(id)key defaultValue:(unsigned int)value
{
  keyCopy = key;
  valueCopy = value;
  v7 = *(self + 77);
  applesauce::CF::StringRef::from_ns_noexcept(&cf, keyCopy);
  v8 = ASDT::IOUserClient::CopyProperty<unsigned int>(v7, &cf, &valueCopy);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    value = valueCopy;
  }

  return value;
}

- (id)customDataPropertyWithKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v5 = *(self + 77);
  applesauce::CF::StringRef::from_ns_noexcept(&cf, keyCopy);
  v6 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DataRef>(v5, &cf, &v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

- (void)setMuteAllOutputs:(BOOL)outputs
{
  outputsCopy = outputs;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  controls = [(ASDAudioDevice *)self controls];
  v5 = [controls countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(controls);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 controlScope] == 1869968496)
        {
          [v8 changeValue:outputsCopy];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [controls countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setOutputVolumesToNominal
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  controls = [(ASDAudioDevice *)self controls];
  v3 = [controls countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(controls);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 controlScope] == 1869968496 && objc_msgSend(v6, "objectClass") == 1986817381)
        {
          LODWORD(v7) = 1.0;
          [v6 changeScalarValue:v7];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [controls countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (int)performPowerStatePrewarm:(int)prewarm
{
  v24 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = ASDTIOA2Device;
  v5 = [(ASDTAudioDevice *)&v19 performPowerStatePrewarm:?];
  v7 = v5;
  if (prewarm != 1970304877 || v5)
  {
    return v7;
  }

  v8 = ASDTIOA2LogType(v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    *buf = 138412290;
    v21 = deviceUID;
    _os_log_impl(&dword_2416BA000, v8, OS_LOG_TYPE_DEFAULT, "%@ Starting IO", buf, 0xCu);
  }

  ioRequestBegin = [(ASDTIOA2Device *)self ioRequestBegin];
  if (ioRequestBegin)
  {
    std::mutex::lock((self + 744));
    ++*(self + 150);
    *(self + 1177) = 0;
    if (![(ASDTIOA2Device *)self ucDeviceStarted])
    {
      if (!ASDT::IOA2UserClient::StartIO(*(self + 77)))
      {
        v7 = 2003329396;
        goto LABEL_14;
      }

      [(ASDTIOA2Device *)self setUcDeviceStarted:1];
    }

    v7 = 0;
LABEL_14:
    std::mutex::unlock((self + 744));
    v16 = ASDTIOA2LogType(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412546;
      v21 = deviceUID2;
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_2416BA000, v16, OS_LOG_TYPE_DEFAULT, "%@ Start of IO result %d", buf, 0x12u);
    }

    [(ASDTIOA2Device *)self ioRequestEnd];
    return v7;
  }

  v12 = ASDTIOA2LogType(ioRequestBegin, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID3 = [(ASDAudioDevice *)self deviceUID];
    *buf = 138412290;
    v21 = deviceUID3;
    _os_log_impl(&dword_2416BA000, v12, OS_LOG_TYPE_DEFAULT, "%@ Start of IO faked.", buf, 0xCu);
  }

  return 0;
}

- (int)performPowerStatePrepare:(int)prepare
{
  v26 = *MEMORY[0x277D85DE8];
  if (prepare == 1970303090)
  {
    v21.receiver = self;
    v21.super_class = ASDTIOA2Device;
    v4 = [(ASDTAudioDevice *)&v21 performPowerStatePrepare:1970303090];
    if (!v4)
    {
      objc_msgSend_lockConfigExclusive(self);
      ASDT::IOA2UserClient::MapEngineStatus(*(self + 77), buf);
      ASDT::IOMemoryMap::operator=();
      MEMORY[0x245CED200](buf);
      if (*(self + 91))
      {
        v4 = 0;
      }

      else
      {
        v4 = 1852990585;
      }

      if (v20 == 1)
      {
        std::__shared_mutex_base::unlock(v19);
      }
    }
  }

  else
  {
    v5 = *&prepare;
    v6 = ASDTIOA2LogType(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412290;
      v23 = deviceUID;
      _os_log_impl(&dword_2416BA000, v6, OS_LOG_TYPE_DEFAULT, "%@ Stopping IO", buf, 0xCu);
    }

    std::mutex::lock((self + 744));
    if ([(ASDTIOA2Device *)self delayedStopIO]&& [(ASDTIOA2Device *)self ucDeviceStarted]&& (v8 = [(ASDTAudioDevice *)self configurationChangesPending], (v8 & 1) == 0))
    {
      v16 = ASDTIOA2LogType(v8, v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID2 = [(ASDAudioDevice *)self deviceUID];
        *buf = 138412290;
        v23 = deviceUID2;
        _os_log_impl(&dword_2416BA000, v16, OS_LOG_TYPE_DEFAULT, "%@ Postpone underlying StopIO", buf, 0xCu);
      }

      [(ASDTIOA2Device *)self _requestUnderlyingStopIO];
      v10 = 0;
    }

    else
    {
      [(ASDTIOA2Device *)self setUcDeviceStarted:0];
      if (ASDT::IOA2UserClient::StopIO(*(self + 77)))
      {
        v10 = 0;
      }

      else
      {
        v10 = 2003329396;
      }
    }

    std::mutex::unlock((self + 744));
    v13 = ASDTIOA2LogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID3 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412546;
      v23 = deviceUID3;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&dword_2416BA000, v13, OS_LOG_TYPE_DEFAULT, "%@ Stop of IO result %d", buf, 0x12u);
    }

    v18.receiver = self;
    v18.super_class = ASDTIOA2Device;
    return [(ASDTAudioDevice *)&v18 performPowerStatePrepare:v5];
  }

  return v4;
}

- (int)performPowerStateIdle:(int)idle
{
  v3 = *&idle;
  if (idle == 1684628588)
  {
    objc_msgSend_lockConfigExclusive(self, a2);
    ASDT::IOMemoryMap::Release((self + 624));
    if (v8 == 1)
    {
      std::__shared_mutex_base::unlock(v7);
    }
  }

  v6.receiver = self;
  v6.super_class = ASDTIOA2Device;
  return [(ASDTAudioDevice *)&v6 performPowerStateIdle:v3];
}

- (void)_requestUnderlyingStopIO
{
  v3 = dispatch_time(0, 500000000);
  v4 = *(self + 150);
  *(self + 1177) = 1;
  objc_initWeak(&location, self);
  v5 = *(self + 149);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDTIOA2Device__requestUnderlyingStopIO__block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v7, &location);
  v7[1] = v4;
  dispatch_after(v3, v5, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __42__ASDTIOA2Device__requestUnderlyingStopIO__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performUnderlyingStopIO:*(a1 + 40)];
}

- (void)_performUnderlyingStopIO:(unint64_t)o
{
  v22 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 744));
  if (*(self + 1177) == 1 && *(self + 150) == o)
  {
    v7 = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      v18 = 138412290;
      v19 = deviceUID;
      _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@ PerformUnderlyingStopIO", &v18, 0xCu);
    }

    *(self + 1177) = 0;
    ucDeviceStarted = [(ASDTIOA2Device *)self ucDeviceStarted];
    if (ucDeviceStarted)
    {
      [(ASDTIOA2Device *)self setUcDeviceStarted:0];
      v11 = ASDT::IOA2UserClient::StopIO(*(self + 77));
      v12 = v11;
      v14 = ASDTIOA2LogType(v11, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID2 = [(ASDAudioDevice *)self deviceUID];
        v16 = deviceUID2;
        v17 = "failed";
        if (v12)
        {
          v17 = "succeeded";
        }

        v18 = 138412546;
        v19 = deviceUID2;
        v20 = 2080;
        v21 = v17;
        _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEFAULT, "%@ PerformUnderlyingStopIO %s", &v18, 0x16u);
      }
    }

    else
    {
      v14 = ASDTIOA2LogType(ucDeviceStarted, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOA2Device _performUnderlyingStopIO:];
      }
    }
  }

  std::mutex::unlock((self + 744));
}

- (void)forceStopIO
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = ASDTIOA2LogType(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    v5 = *(self + 1177);
    *buf = 138412546;
    v9 = deviceUID;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_2416BA000, v3, OS_LOG_TYPE_DEFAULT, "%@ forceStopIO, shouldStopIO %d", buf, 0x12u);
  }

  v6 = *(self + 149);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDTIOA2Device_forceStopIO__block_invoke;
  block[3] = &unk_278CE8C40;
  block[4] = self;
  dispatch_sync(v6, block);
}

- (int)systemSleepPending
{
  [(ASDTIOA2Device *)self forceStopIO];
  v4.receiver = self;
  v4.super_class = ASDTIOA2Device;
  return [(ASDTAudioDevice *)&v4 systemSleepPending];
}

- (id)updateClientOutputPositionBlock
{
  engineStatusIndirection = [(ASDTIOA2Device *)self engineStatusIndirection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ASDTIOA2Device_updateClientOutputPositionBlock__block_invoke;
  v5[3] = &__block_descriptor_40_e8_v16__0Q8l;
  v5[4] = engineStatusIndirection;
  v3 = MEMORY[0x245CEDA00](v5);

  return v3;
}

uint64_t __49__ASDTIOA2Device_updateClientOutputPositionBlock__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = **(result + 32);
  if (v2)
  {
    *(v2 + 32) = a2;
  }

  return result;
}

- (id)updateClientInputPositionBlock
{
  engineStatusIndirection = [(ASDTIOA2Device *)self engineStatusIndirection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ASDTIOA2Device_updateClientInputPositionBlock__block_invoke;
  v5[3] = &__block_descriptor_40_e8_v16__0Q8l;
  v5[4] = engineStatusIndirection;
  v3 = MEMORY[0x245CEDA00](v5);

  return v3;
}

uint64_t __48__ASDTIOA2Device_updateClientInputPositionBlock__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = **(result + 32);
  if (v2)
  {
    *(v2 + 24) = a2;
  }

  return result;
}

- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case
{
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = streamCopy;
    if ([v9 usesIsolatedIO])
    {
      if (ASDT::IOA2UserClient::SetupForIsolatedIO(*(self + 77), [v9 userClientID], case, size))
      {
        v10 = 0;
      }

      else
      {
        v10 = 2003329396;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 561214578;
  }

  return v10;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  streamCopy = stream;
  objc_opt_class();
  v7 = 561214578;
  if (objc_opt_isKindOfClass())
  {
    v8 = streamCopy;
    if ([v8 usesIsolatedIO])
    {
      if (ASDT::IOA2UserClient::TeardownForIsolatedIO(*(self + 77), [v8 userClientID], case))
      {
        v7 = 0;
      }

      else
      {
        v7 = 2003329396;
      }
    }
  }

  return v7;
}

- (id)_streamInfoForStream:(unsigned int)stream
{
  ASDT::IOA2UserClient::CopyStreamDictionaryByID(*(self + 77), stream, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (id)_controlDictionaryForControl:(unsigned int)control
{
  ASDT::IOA2UserClient::CopyControlDictionaryByID(*(self + 77), *&control, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (BOOL)_setControlValues:(const unsigned int *)values withCount:(unint64_t)count resultValues:(unsigned int *)resultValues count:(unint64_t *)a6 forControl:(unsigned int)control
{
  if (a6)
  {
    v8 = *a6;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v9 = ASDT::IOA2UserClient::SetMultiControlValue(*(self + 77), *&control, values, count, resultValues, &v11);
  if (a6 && v9)
  {
    *a6 = v11;
  }

  return v9;
}

- (id)_channelLayoutForDirection:(unsigned int)direction
{
  ASDT::IOA2UserClient::CopyDefaultChannelLayoutData(*(self + 77), (direction == 1768845428), &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (void)clearOutputBuffers
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  outputStreams = [(ASDAudioDevice *)self outputStreams];
  v3 = [outputStreams countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(outputStreams);
        }

        [*(*(&v6 + 1) + 8 * v5++) clearBuffer];
      }

      while (v3 != v5);
      v3 = [outputStreams countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)clearInputBuffers
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  v3 = [inputStreams countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(inputStreams);
        }

        [*(*(&v6 + 1) + 8 * v5++) clearBuffer];
      }

      while (v3 != v5);
      v3 = [inputStreams countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)writeZerosToMixMilliseconds:(unsigned int)milliseconds
{
  v3 = *&milliseconds;
  v18 = *MEMORY[0x277D85DE8];
  objc_msgSend_lockConfigShared(self, a2);
  v5 = *(self + 91);
  if (v5)
  {
    v6 = *(v5 + 32);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    outputStreams = [(ASDAudioDevice *)self outputStreams];
    v8 = [outputStreams countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(outputStreams);
          }

          [*(*(&v11 + 1) + 8 * v10++) writeZerosToMixMilliseconds:v3 atSampleTime:v6];
        }

        while (v8 != v10);
        v8 = [outputStreams countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v8);
    }
  }

  if (v16 == 1)
  {
    std::__shared_mutex_base::unlock_shared(v15);
  }
}

+ (id)matcherWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(MEMORY[0x277CEFB98]) initForIOServiceWithClassName:@"IOAudio2Device" withDelegate:delegateCopy];

  return v4;
}

- (BOOL)nonSecureInputEnabled
{
  nonSecureInputEnableProperty = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];

  if (!nonSecureInputEnableProperty)
  {
    return 1;
  }

  nonSecureInputEnableProperty2 = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];
  enabled = [nonSecureInputEnableProperty2 enabled];

  return enabled;
}

- (id).cxx_construct
{
  *(self + 77) = 0;
  v3 = self + 624;
  *(self + 78) = MEMORY[0x277CEFBA8] + 16;
  ASDT::IOConnect::IOConnect((self + 632));
  *(v3 + 13) = 0;
  *(v3 + 28) = 0;
  *(self + 93) = 850045863;
  *(self + 47) = 0u;
  *(self + 48) = 0u;
  *(self + 49) = 0u;
  *(self + 100) = 0;
  std::__shared_mutex_base::__shared_mutex_base((self + 808));
  *(self + 122) = 1018212795;
  *(self + 984) = 0u;
  *(self + 1000) = 0u;
  *(self + 127) = 0;
  operator new();
}

- (void)initWithIOA2Device:(void *)a1 config:(uint64_t)a2 deviceManager:(uint8_t *)buf plugin:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "ASDTIOA2Device: Configuration device UID does not match: %@ vs. %@", buf, 0x16u);
}

- (void)subclassInitWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to open connection.", v5);
}

- (void)subclassInitWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Error creating device properties.", v5);
}

- (void)subclassInitWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Error creating streams", v5);
}

- (void)subclassInitWithConfig:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to allocate dispatch queue.", v5);
}

- (void)subclassInitWithConfig:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to add non-secure input property.", v5);
}

void __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to allocate memory for status tracker.", v5);
}

- (void)ioRequestBegin
{
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_1_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_3_0(v4, v5, v6);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v7, v8);
}

- (void)doConfigChange:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Error performing config change.", v5);
}

- (void)doConfigChange:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Engine status is not released!", v5);
}

- (void)_setSamplingRate:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to set nominal sampling rate.", v5);
}

- (void)_getCurrentFormatForStream:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2416BA000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to retrieve format for stream %u", v5, 0x12u);
}

- (void)_openConnection
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to create mach port.", v5);
}

void __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_4_0(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v6, v7, "%@: Too many attempts at reading engine status.", v8);
}

- (void)_performUnderlyingStopIO:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@ PerformUnderlyingStopIO ucDevice not started.", v5);
}

@end