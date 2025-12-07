@interface ASDTIOPAudioLPMicDevice
+ (id)enableListeningOnGesturePropertyForService:(id)service;
+ (id)enableListeningPropertyForService:(id)service;
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioLPMicDevice)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin;
- (ASDTIOPAudioLPMicStream)inputStream;
- (BOOL)getEnabledChannelMask:(unsigned int *)mask;
- (BOOL)nonSecureInputEnabled;
- (BOOL)setEnabledChannelMask:(unsigned int)mask;
- (BOOL)setupCustomProperties:(id)properties;
- (BOOL)subclassInitWithConfig:(id)config;
- (BOOL)updateFromStreamDescription;
- (id).cxx_construct;
- (id)getZeroTimestampBlock;
- (int)performPowerStateIdle:(int)idle;
- (int)performPowerStatePrepare:(int)prepare;
- (int)performPowerStatePrewarm:(int)prewarm;
- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (unsigned)availablePastDataFrames;
- (unsigned)ioBufferSizeFrames;
- (unsigned)timestampPeriod;
- (void)exclavesStatusTracker;
- (void)updateFromStreamDescription;
@end

@implementation ASDTIOPAudioLPMicDevice

+ (id)enableListeningPropertyForService:(id)service
{
  v11[4] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = *MEMORY[0x277CEFC28];
  v10[0] = *MEMORY[0x277CEFC58];
  v10[1] = v4;
  v11[0] = @"ASDTIOPAudioCMEnableProperty";
  v11[1] = &unk_285359B20;
  v5 = *MEMORY[0x277CEFC38];
  v11[2] = serviceCopy;
  v6 = *MEMORY[0x277CEFC30];
  v10[2] = v5;
  v10[3] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

+ (id)enableListeningOnGesturePropertyForService:(id)service
{
  v11[4] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = *MEMORY[0x277CEFC28];
  v10[0] = *MEMORY[0x277CEFC58];
  v10[1] = v4;
  v11[0] = @"ASDTIOPAudioCMEnableProperty";
  v11[1] = &unk_285359B38;
  v5 = *MEMORY[0x277CEFC38];
  v11[2] = serviceCopy;
  v6 = *MEMORY[0x277CEFC30];
  v10[2] = v5;
  v10[3] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v8[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtServiceID = [configCopy asdtServiceID];
  v5 = [(ASDTIOServiceManager *)ASDTIOPAudioLPMicServiceManager dependencyForID:asdtServiceID andConfiguration:configCopy];

  if (v5)
  {
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ASDTIOPAudioLPMicDevice)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin
{
  v13 = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  asdtServiceID = [configCopy asdtServiceID];
  v11 = [(ASDTIOServiceManager *)ASDTIOPAudioLPMicServiceManager matchedIOServiceForID:asdtServiceID];

  [v11 ioObject];
  [v11 idValue];
  [objc_claimAutoreleasedReturnValue() clientType];
  operator new();
}

- (BOOL)subclassInitWithConfig:(id)config
{
  configCopy = config;
  ASDT::IOUserClient::SetAlwaysLoadPropertiesFromRegistry(self->_lpMicUserClient.__ptr_);
  v5 = ASDT::IOUserClient::OpenConnection(self->_lpMicUserClient.__ptr_);
  if ((v5 & 1) == 0)
  {
    v19 = ASDTIOPLogType(v5, v6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice subclassInitWithConfig:];
    }

    goto LABEL_17;
  }

  modelName = [(ASDAudioDevice *)self modelName];
  v8 = [modelName isEqualToString:@"AOP Audio-1"];

  if (v8)
  {
    [(ASDAudioDevice *)self setModelName:@"ASDTIOPAudioLPMicDevice"];
  }

  deviceName = [(ASDAudioDevice *)self deviceName];
  v10 = [deviceName isEqualToString:@"AOP Audio-1"];

  if (v10)
  {
    [(ASDAudioDevice *)self setDeviceName:@"AOP Audio"];
  }

  if (![(ASDAudioDevice *)self transportType])
  {
    [(ASDAudioDevice *)self setTransportType:1651274862];
  }

  [(ASDAudioDevice *)self setClockDomain:ASDT::IOPAudio::LPMic::UserClient::GetClockDomain(self->_lpMicUserClient.__ptr_)];
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  firstObject = [inputStreams firstObject];
  [(ASDTIOPAudioLPMicDevice *)self setInputStream:firstObject];

  inputStream = [(ASDTIOPAudioLPMicDevice *)self inputStream];
  objc_opt_class();
  LOBYTE(firstObject) = objc_opt_isKindOfClass();

  if ((firstObject & 1) == 0)
  {
    v19 = ASDTIOPLogType(v14, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice subclassInitWithConfig:];
    }

    goto LABEL_17;
  }

  v16 = [(ASDTIOPAudioLPMicDevice *)self setupCustomProperties:configCopy];
  if ((v16 & 1) == 0)
  {
    v19 = ASDTIOPLogType(v16, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice subclassInitWithConfig:];
    }

LABEL_17:

    updateFromStreamDescription = 0;
    goto LABEL_18;
  }

  updateFromStreamDescription = [(ASDTIOPAudioLPMicDevice *)self updateFromStreamDescription];
LABEL_18:

  return updateFromStreamDescription;
}

- (BOOL)nonSecureInputEnabled
{
  nonSecureInputEnableProperty = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];
  if (nonSecureInputEnableProperty)
  {
    nonSecureInputEnableProperty2 = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];
    enabled = [nonSecureInputEnableProperty2 enabled];
  }

  else
  {
    enabled = 1;
  }

  return enabled;
}

- (BOOL)setupCustomProperties:(id)properties
{
  v36[8] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  HistoricDataSupported = ASDT::IOPAudio::LPMic::UserClient::GetHistoricDataSupported(self->_lpMicUserClient.__ptr_);
  if (![propertiesCopy asdtAddNonSecurePathEnable])
  {
    goto LABEL_4;
  }

  createForInput = [MEMORY[0x277CEFBA0] createForInput];
  [(ASDTIOPAudioLPMicDevice *)self setNonSecureInputEnableProperty:createForInput];

  nonSecureInputEnableProperty = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];

  if (nonSecureInputEnableProperty)
  {
    nonSecureInputEnableProperty2 = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];
    [(ASDTAudioDevice *)self addCustomProperty:nonSecureInputEnableProperty2];

LABEL_4:
    v11 = *MEMORY[0x277CEFC28];
    v34[0] = *MEMORY[0x277CEFC58];
    v10 = v34[0];
    v34[1] = v11;
    v12 = *MEMORY[0x277CEFC00];
    v13 = MEMORY[0x277CBEC28];
    v35[1] = &unk_285359B50;
    v35[2] = MEMORY[0x277CBEC28];
    v14 = *MEMORY[0x277CEFC18];
    v34[4] = *MEMORY[0x277CEFC10];
    v35[0] = @"ASDTPListProperty";
    v34[2] = v12;
    v34[3] = v14;
    v15 = *MEMORY[0x277CEFC60];
    v35[3] = @"com.apple.private.audio.hal.aop-audio.user-access";
    v35[4] = v15;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
    v36[0] = v24;
    v32[0] = v10;
    v32[1] = v11;
    v33[0] = @"ASDTRawProperty";
    v33[1] = &unk_285359B68;
    v33[2] = v13;
    v32[2] = v12;
    v32[3] = v14;
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&HistoricDataSupported length:4];
    v33[3] = v23;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v36[1] = v16;
    v30[0] = v10;
    v30[1] = v11;
    v31[0] = @"ASDTIOPAudioLPMicUInt32Property";
    v31[1] = &unk_285359B80;
    v30[2] = v12;
    v31[2] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v36[2] = v17;
    v28[0] = v10;
    v28[1] = v11;
    v29[0] = @"ASDTIOPAudioLPMicUInt32Property";
    v29[1] = &unk_285359B98;
    v28[2] = v12;
    v29[2] = v13;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v36[3] = v18;
    v26[0] = v10;
    v26[1] = v11;
    v27[0] = @"ASDTIOPAudioLPMicUInt32Property";
    v27[1] = &unk_285359BB0;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v36[4] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];

    v21 = [(ASDTAudioDevice *)self addCustomProperties:v20];
    goto LABEL_5;
  }

  v20 = ASDTIOPLogType(v7, v8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(ASDAudioDevice *)self deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTIOPAudioLPMicDevice setupCustomProperties:];
  }

  v21 = 0;
LABEL_5:

  return v21;
}

- (BOOL)updateFromStreamDescription
{
  v15 = *MEMORY[0x277D85DE8];
  isRunning = [(ASDAudioDevice *)self isRunning];
  if (isRunning)
  {
    v5 = ASDTIOPLogType(isRunning, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice updateFromStreamDescription];
    }
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
    StreamDescription = ASDT::IOPAudio::LPMic::UserClient::GetStreamDescription(self->_lpMicUserClient.__ptr_, &v14);
    if (StreamDescription)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v14.var0];
      v13 = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      [(ASDAudioDevice *)self setSamplingRates:v9];

      inputStream = [(ASDTIOPAudioLPMicDevice *)self inputStream];
      LOBYTE(v9) = [inputStream updateFromStreamDescription:&v14];

      if (v9)
      {
        [(ASDTAudioDevice *)self setSamplingRate:v14.var0];
        return 1;
      }
    }

    else
    {
      v12 = ASDTIOPLogType(StreamDescription, v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOPAudioLPMicDevice updateFromStreamDescription];
      }
    }
  }

  return 0;
}

- (unsigned)timestampPeriod
{
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice timestampPeriod];
  }

  return ASDT::IOPAudio::LPMic::UserClient::GetZeroTimeStampInterval(ptr);
}

- (unsigned)ioBufferSizeFrames
{
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice ioBufferSizeFrames];
  }

  return ASDT::IOPAudio::LPMic::UserClient::GetRingBufferSize(ptr);
}

- (unsigned)availablePastDataFrames
{
  lpMicEngineStatus = [(ASDTIOPAudioLPMicDevice *)self lpMicEngineStatus];
  if (lpMicEngineStatus)
  {
    v4 = lpMicEngineStatus;
    LODWORD(lpMicEngineStatus) = [(ASDAudioDevice *)self isRunning];
    if (lpMicEngineStatus)
    {
      ASDT::IOPAudio::LPMic::EngineStatus::Snapshot(v4, &v8);
      v5 = LODWORD(v8.var1) - LODWORD(v8.var0);
      v6 = v8.var1 - v8.var0 + 1;
      LODWORD(lpMicEngineStatus) = [(ASDTIOPAudioLPMicDevice *)self maximumPastDataFrames];
      if (v6 < lpMicEngineStatus)
      {
        LODWORD(lpMicEngineStatus) = v5 + 1;
      }
    }
  }

  return lpMicEngineStatus;
}

- (BOOL)getEnabledChannelMask:(unsigned int *)mask
{
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice getEnabledChannelMask:];
  }

  if (!mask)
  {
    [ASDTIOPAudioLPMicDevice getEnabledChannelMask:];
  }

  return ASDT::IOPAudio::LPMic::UserClient::GetEnabledChannelMask(ptr, mask);
}

- (BOOL)setEnabledChannelMask:(unsigned int)mask
{
  v18 = *MEMORY[0x277D85DE8];
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice setEnabledChannelMask:];
  }

  v11 = 0;
  SupportedChannelMask = ASDT::IOPAudio::LPMic::UserClient::GetSupportedChannelMask(ptr, &v11);
  if (SupportedChannelMask)
  {
    if ((v11 | mask) == v11)
    {
      LOBYTE(SupportedChannelMask) = ASDT::IOPAudio::LPMic::UserClient::SetEnabledChannelMask(self->_lpMicUserClient.__ptr_, mask);
    }

    else
    {
      v8 = ASDTIOPLogType(SupportedChannelMask, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        deviceUID = [(ASDAudioDevice *)self deviceUID];
        *buf = 138412802;
        v13 = deviceUID;
        v14 = 1024;
        maskCopy = mask;
        v16 = 1024;
        v17 = v11;
        _os_log_error_impl(&dword_2416E9000, v8, OS_LOG_TYPE_ERROR, "%@: Bad enabled channel mask value: %x; supported %x", buf, 0x18u);
      }

      LOBYTE(SupportedChannelMask) = 0;
    }
  }

  return SupportedChannelMask;
}

- (int)performPowerStateIdle:(int)idle
{
  v3 = *&idle;
  ASDT::IOMemoryMap::Release(&self->_lpMicEngineStatus);
  v6.receiver = self;
  v6.super_class = ASDTIOPAudioLPMicDevice;
  return [(ASDTAudioDevice *)&v6 performPowerStateIdle:v3];
}

- (int)performPowerStatePrepare:(int)prepare
{
  v12 = *MEMORY[0x277D85DE8];
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice performPowerStatePrepare:];
  }

  v5 = *&prepare;
  if (prepare != 1970303090)
  {
    if (prepare == 1685090418)
    {
      ASDT::IOPAudio::LPMic::UserClient::StopIO(ptr);
    }

    goto LABEL_6;
  }

  ASDT::IOPAudio::LPMic::UserClient::MapEngineStatus(ptr, v11);
  ASDT::IOMemoryMap::operator=();
  v6 = MEMORY[0x245CEDC00](v11);
  if (*&self->_anon_2a0[56])
  {
LABEL_6:
    v10.receiver = self;
    v10.super_class = ASDTIOPAudioLPMicDevice;
    return [(ASDTAudioDevice *)&v10 performPowerStatePrepare:v5];
  }

  v9 = ASDTIOPLogType(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ASDAudioDevice *)self deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTIOPAudioLPMicDevice performPowerStatePrepare:];
  }

  return 2003329396;
}

- (int)performPowerStatePrewarm:(int)prewarm
{
  v11 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = ASDTIOPAudioLPMicDevice;
  result = [(ASDTAudioDevice *)&v10 performPowerStatePrewarm:?];
  if (!result)
  {
    if (prewarm != 1970304877)
    {
      return 0;
    }

    ptr = self->_lpMicUserClient.__ptr_;
    if (!ptr)
    {
      [ASDTIOPAudioLPMicDevice performPowerStatePrewarm:];
    }

    started = ASDT::IOPAudio::LPMic::UserClient::StartIO(ptr);
    if (!started)
    {
      v9 = ASDTIOPLogType(started, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOPAudioLPMicDevice performPowerStatePrewarm:];
      }

      return 1852990585;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)getZeroTimestampBlock
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke;
  aBlock[3] = &unk_278CE9C68;
  v6[1] = &self->_anon_2a0[56];
  objc_copyWeak(v6, &location);
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke(uint64_t a1, double *a2, unint64_t *a3, unint64_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = **(a1 + 40);
  if (!v5)
  {
    return 1937010544;
  }

  v9 = ASDT::IOPAudio::LPMic::EngineStatus::Snapshot(v5, &v16);
  if ((v9 & 1) == 0)
  {
    v11 = ASDTIOPLogType(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13 = [WeakRetained deviceUID];
      __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke_cold_1(v13, v17, v11, WeakRetained);
    }
  }

  if (v16.var2)
  {
    v14 = (v16.var1 - v16.var0 + 1);
  }

  else
  {
    v14 = 0.0;
  }

  result = 0;
  *a2 = v14;
  *a3 = v16.var2;
  *a4 = v16.var3;
  return result;
}

- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case
{
  v6 = *&size;
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [streamCopy setupIsolatedIOForUseCase:case withFrameSize:v6];
  }

  else
  {
    v8 = 561214578;
  }

  return v8;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [streamCopy teardownIsolatedIOForUseCase:case];
  }

  else
  {
    v6 = 561214578;
  }

  return v6;
}

- (void)exclavesStatusTracker
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke;
  block[3] = &unk_278CE9C90;
  block[4] = self;
  if (self->_exclavesStatusTrackerOnce != -1)
  {
    dispatch_once(&self->_exclavesStatusTrackerOnce, block);
  }

  return self->_exclavesStatusTracker.__ptr_;
}

void __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke(uint64_t a1)
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
    v7 = *(v6 + 760);
    *(v6 + 760) = v11;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v13 < 0)
    {
      operator delete(__dst);
    }

    if (!*(*(a1 + 32) + 760))
    {
      v10 = ASDTIOPLogType(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 32) deviceUID];
        objc_claimAutoreleasedReturnValue();
        __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke_cold_1();
      }
    }
  }
}

- (ASDTIOPAudioLPMicStream)inputStream
{
  WeakRetained = objc_loadWeakRetained(&self->_inputStream);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_lpMicUserClient.__ptr_ = 0;
  p_lpMicEngineStatus = &self->_lpMicEngineStatus;
  self->_lpMicEngineStatus.__vftable = (MEMORY[0x277CEFBA8] + 16);
  ASDT::IOConnect::IOConnect(&self->_lpMicEngineStatus.refcount);
  *&p_lpMicEngineStatus[2].refcount = 0;
  LODWORD(p_lpMicEngineStatus[2].meta) = 0;
  self->_exclavesStatusTracker.__ptr_ = 0;
  return self;
}

- (void)initWithConfig:withDeviceManager:andPlugin:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to create LPMicDevice user client", v5);
}

- (void)subclassInitWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to open connection to LPMicDevice user client", v5);
}

- (void)subclassInitWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Bad input stream.", v5);
}

- (void)subclassInitWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to allocate custom properties.", v5);
}

- (void)setupCustomProperties:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to add non-secure input property.", v5);
}

- (void)updateFromStreamDescription
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Attempt to update stream description while running.", v5);
}

- (void)performPowerStatePrepare:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to map the engine status.", v5);
}

- (void)performPowerStatePrewarm:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to StartIO.", v5);
}

void __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_2(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v6, v7, "%@: Too many attempts at reading engine status.", v8);
}

void __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to allocate memory for status tracker.", v5);
}

@end