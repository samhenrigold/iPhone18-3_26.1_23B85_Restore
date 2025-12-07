@interface ASDTExclavesStream
- (ASDTExclavesStream)initWithConfig:(id)config withDevice:(id)device;
- (ASDTExclavesStream)initWithDirection:(unsigned int)direction withDevice:(id)device;
- (BOOL)allocExclavesAudioBuffer:(unsigned int)buffer;
- (BOOL)unexpectedSensorStatus:(int)status;
- (BOOL)usesExclavesAudioBuffer;
- (NSDictionary)status;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)exclavesWriteMix;
- (id)readInputBlock;
- (id)writeMixBlock;
- (int)pmIdleStream:(int)stream;
- (int)pmPrepareStream:(int)stream;
- (void)clearBuffer;
- (void)exclavesStatusTracker;
- (void)freeExclavesAudioBuffer;
- (void)ioThreadStateChange:(id)change;
- (void)updateSensorForIOThreadStateChange:(id)change;
@end

@implementation ASDTExclavesStream

- (ASDTExclavesStream)initWithConfig:(id)config withDevice:(id)device
{
  configCopy = config;
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = ASDTExclavesStream;
  v8 = [(ASDTStream *)&v12 initWithConfig:configCopy withDevice:deviceCopy];
  if (v8)
  {
    asdtExclavesBufferName = [configCopy asdtExclavesBufferName];
    [(ASDTExclavesStream *)v8 setExclavesBufferName:asdtExclavesBufferName];

    exclavesBufferName = [(ASDTExclavesStream *)v8 exclavesBufferName];

    if (exclavesBufferName)
    {
      [deviceCopy setSupportsIsolatedIO:1];
    }
  }

  return v8;
}

- (ASDTExclavesStream)initWithDirection:(unsigned int)direction withDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = ASDTExclavesStream;
  return [(ASDTStream *)&v5 initWithDirection:*&direction withDevice:device];
}

- (BOOL)usesExclavesAudioBuffer
{
  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];
  v3 = exclavesBufferName != 0;

  return v3;
}

- (BOOL)allocExclavesAudioBuffer:(unsigned int)buffer
{
  ptr = self->_audioBuffer.__ptr_;
  self->_audioBuffer.__ptr_ = 0;
  if (ptr)
  {
    (*(*&ptr->mNumberChannels + 8))(ptr, a2, *&buffer);
  }

  v5 = self->_inboundBuffer.__ptr_;
  self->_inboundBuffer.__ptr_ = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, a2, *&buffer);
  }

  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];

  if (exclavesBufferName)
  {
    if ([(ASDStream *)self direction]== 1768845428)
    {
      [(ASDTExclavesStream *)self exclavesBufferName];
      [objc_claimAutoreleasedReturnValue() UTF8String];
      ASDT::Exclaves::AudioBuffer::Create();
    }

    [(ASDTExclavesStream *)self exclavesBufferName];
    [objc_claimAutoreleasedReturnValue() UTF8String];
    ASDT::Exclaves::InboundBuffer::Create();
  }

  [(ASDTExclavesStream *)self setExclavesBufferSize:0];
  return 0;
}

- (void)freeExclavesAudioBuffer
{
  ptr = self->_audioBuffer.__ptr_;
  self->_audioBuffer.__ptr_ = 0;
  if (ptr)
  {
    (*(*&ptr->mNumberChannels + 8))(ptr, a2);
  }

  v4 = self->_inboundBuffer.__ptr_;
  self->_inboundBuffer.__ptr_ = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  [(ASDTExclavesStream *)self setExclavesBufferSize:0];
}

- (int)pmPrepareStream:(int)stream
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = ASDTExclavesStream;
  v5 = [(ASDTStream *)&v20 pmPrepareStream:?];
  if (!v5)
  {
    if (stream == 1970303090 && [(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
    {
      device = [(ASDTStream *)self device];
      exclavesSensorName = [device exclavesSensorName];
      v8 = [ASDTExclavesSensorManager forSensorName:exclavesSensorName];
      [(ASDTExclavesStream *)self setExclavesSensorManager:v8];

      exclavesSensorManager = [(ASDTExclavesStream *)self exclavesSensorManager];
      LODWORD(device) = exclavesSensorManager == 0;

      if (!device)
      {
        physicalFormat = [(ASDStream *)self physicalFormat];
        if (physicalFormat)
        {
          objc_msgSend_audioStreamBasicDescription(physicalFormat);
        }

        else
        {
          v22 = 0;
          memset(buf, 0, sizeof(buf));
        }

        operator new();
      }

      v13 = ASDTBaseLogType(v10, v11);
      v5 = 2003329396;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID = [device2 deviceUID];
        streamName = [(ASDStream *)self streamName];
        device3 = [(ASDTStream *)self device];
        exclavesSensorName2 = [device3 exclavesSensorName];
        *buf = 138412802;
        *&buf[4] = deviceUID;
        *&buf[12] = 2112;
        *&buf[14] = streamName;
        *&buf[22] = 2112;
        *&buf[24] = exclavesSensorName2;
        _os_log_error_impl(&dword_241659000, v13, OS_LOG_TYPE_ERROR, "%@:%@: Failed to start with bad sensor name: %@", buf, 0x20u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (int)pmIdleStream:(int)stream
{
  v3 = *&stream;
  ptr = self->_ramper.__ptr_;
  self->_ramper.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  [(ASDTExclavesStream *)self setExclavesSensorManager:0];
  v7.receiver = self;
  v7.super_class = ASDTExclavesStream;
  return [(ASDTStream *)&v7 pmIdleStream:v3];
}

- (void)ioThreadStateChange:(id)change
{
  changeCopy = change;
  [(ASDTExclavesStream *)self updateSensorForIOThreadStateChange:changeCopy];
  v5.receiver = self;
  v5.super_class = ASDTExclavesStream;
  [(ASDTStream *)&v5 ioThreadStateChange:changeCopy];
}

- (void)exclavesStatusTracker
{
  device = [(ASDTStream *)self device];
  v4 = [device conformsToProtocol:&unk_285364AE8];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  device2 = [(ASDTStream *)self device];
  exclavesStatusTracker = [device2 exclavesStatusTracker];

  return exclavesStatusTracker;
}

- (BOOL)unexpectedSensorStatus:(int)status
{
  nonSecureStreamStarted = [(ASDTExclavesStream *)self nonSecureStreamStarted];
  if (status <= 4)
  {
    v5 = 5u >> status;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if (!nonSecureStreamStarted)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)updateSensorForIOThreadStateChange:(id)change
{
  v67 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (![changeCopy asdtIOThreadChangeIsolatedUseCase])
  {
    if ([changeCopy asdtIOThreadUseCaseIsFirstOrWasLast])
    {
      asdtIOThreadChangeEvent = [changeCopy asdtIOThreadChangeEvent];
      exclavesSensorManager = [(ASDTExclavesStream *)self exclavesSensorManager];
      [exclavesSensorManager ioThreadStartStop:asdtIOThreadChangeEvent == 1937011316 withStatusTracker:{-[ASDTExclavesStream exclavesStatusTracker](self, "exclavesStatusTracker")}];

      [(ASDTExclavesStream *)self setNonSecureStreamStarted:asdtIOThreadChangeEvent == 1937011316];
      exclavesSensorManager2 = [(ASDTExclavesStream *)self exclavesSensorManager];
      sensor = [exclavesSensorManager2 sensor];

      if (sensor)
      {
        v61 = 4;
        v62 = 0;
        device = [(ASDTStream *)self device];
        v10 = [device getProperty:"SxEatpni" withQualifierSize:0 qualifierData:0 dataSize:&v61 andData:&v62 forClient:0];

        if ((v10 & 1) == 0)
        {
          v62 = 1;
        }

        device2 = [(ASDTStream *)self device];
        exclavesSensorName = [device2 exclavesSensorName];

        if (!exclavesSensorName)
        {
          v27 = ASDTBaseLogType(v13, v14);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            device3 = [(ASDTStream *)self device];
            deviceUID = [device3 deviceUID];
            streamName = [(ASDStream *)self streamName];
            *buf = 138412546;
            *&buf[4] = deviceUID;
            *&buf[12] = 2112;
            *&buf[14] = streamName;
            _os_log_error_impl(&dword_241659000, v27, OS_LOG_TYPE_ERROR, "%@:%@: Bad sensor name!", buf, 0x16u);
          }

          goto LABEL_32;
        }

        v15 = ASDTBaseLogType(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          device4 = [(ASDTStream *)self device];
          deviceUID2 = [device4 deviceUID];
          streamName2 = [(ASDStream *)self streamName];
          *buf = 138412802;
          *&buf[4] = deviceUID2;
          *&buf[12] = 2112;
          *&buf[14] = streamName2;
          *&buf[22] = 2112;
          *&buf[24] = exclavesSensorName;
          _os_log_impl(&dword_241659000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@: Using sensor: %@", buf, 0x20u);
        }

        v60 = 0;
        if (v62)
        {
          device5 = [(ASDTStream *)self device];
          deviceUID3 = [device5 deviceUID];

          if (asdtIOThreadChangeEvent == 1937011316)
          {
            device6 = [(ASDTStream *)self device];
            deviceManager = [device6 deviceManager];
            concurrentQueue = [deviceManager concurrentQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke;
            block[3] = &unk_278CE64F0;
            v59 = deviceUID3;
            dispatch_async(concurrentQueue, block);

            v24 = ASDT::Exclaves::Sensor::Start(sensor, &v60);
            v25 = &v59;
            v26 = 1;
          }

          else
          {
            v24 = ASDT::Exclaves::Sensor::Stop(sensor, &v60);
            device7 = [(ASDTStream *)self device];
            deviceManager2 = [device7 deviceManager];
            concurrentQueue2 = [deviceManager2 concurrentQueue];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke_2;
            v56[3] = &unk_278CE64F0;
            v57 = deviceUID3;
            dispatch_async(concurrentQueue2, v56);

            v25 = &v57;
            v26 = 2;
          }

          if (v24)
          {
            v35 = ASDTBaseLogType(v33, v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [(ASDTExclavesStream *)exclavesSensorName updateSensorForIOThreadStateChange:v35];
            }
          }

          else
          {
            exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
            if (exclavesStatusTracker)
            {
              v37 = v60;
              ASDTTime::machAbsoluteTime(&v63);
              *&buf[8] = v63;
              *buf = -1;
              *&buf[24] = v64;
              *&buf[32] = v37;
              *&buf[36] = v26;
              ASDT::Exclaves::StatusTracker::Push(exclavesStatusTracker, buf);
            }

            v38 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v60];
            v39 = v38;
            v35 = ASDTBaseLogType(v38, v40);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v60;
              v42 = ASDT::Exclaves::Sensor::StatusString(v60);
              v43 = "stop";
              *buf = 138413314;
              *&buf[4] = exclavesSensorName;
              if (asdtIOThreadChangeEvent == 1937011316)
              {
                v43 = "start";
              }

              *&buf[12] = 2080;
              *&buf[14] = v43;
              v44 = "un";
              *&buf[22] = 1024;
              *&buf[24] = v41;
              *&buf[28] = 2080;
              if (!v39)
              {
                v44 = "";
              }

              *&buf[30] = v42;
              *&buf[38] = 2080;
              v66 = v44;
              _os_log_impl(&dword_241659000, v35, OS_LOG_TYPE_DEFAULT, "%@: %s : resulting status: [%u] %s (%sexpected)", buf, 0x30u);
            }
          }
        }

        else
        {
          Status = ASDT::Exclaves::Sensor::GetStatus(sensor, &v60);
          if (!Status)
          {
            v45 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v60];
            v46 = v45;
            v48 = ASDTBaseLogType(v45, v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = v60;
              v50 = ASDT::Exclaves::Sensor::StatusString(v60);
              v51 = "";
              *buf = 138413058;
              *&buf[4] = exclavesSensorName;
              *&buf[12] = 1024;
              if (v46)
              {
                v51 = "un";
              }

              *&buf[14] = v49;
              *&buf[18] = 2080;
              *&buf[20] = v50;
              *&buf[28] = 2080;
              *&buf[30] = v51;
              _os_log_impl(&dword_241659000, v48, OS_LOG_TYPE_DEFAULT, "%@: current status: [%u] %s (%sexpected)", buf, 0x26u);
            }

            ptr = self->_ramper.__ptr_;
            if (ptr)
            {
              ASDT::Ramper::MuteForSensorStatus(ptr, v60, 1);
            }

            goto LABEL_32;
          }

          deviceUID3 = ASDTBaseLogType(Status, v29);
          if (os_log_type_enabled(deviceUID3, OS_LOG_TYPE_ERROR))
          {
            [(ASDTExclavesStream *)exclavesSensorName updateSensorForIOThreadStateChange:deviceUID3];
          }
        }

LABEL_32:
      }
    }
  }
}

void __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke(uint64_t a1)
{
  v2 = +[ASDTSystemStatus systemStatus];
  [v2 recordingIsEnabled:1 forDeviceUID:*(a1 + 32)];
}

void __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke_2(uint64_t a1)
{
  v2 = +[ASDTSystemStatus systemStatus];
  [v2 recordingIsEnabled:0 forDeviceUID:*(a1 + 32)];
}

- (id)exclavesReadInput
{
  v43 = *MEMORY[0x277D85DE8];
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  ioBufferSize = [(ASDTExclavesStream *)self ioBufferSize];
  device = [(ASDTStream *)self device];
  timestampPeriod = [device timestampPeriod];

  if (!timestampPeriod || !bytesPerFrame || !ioBufferSize)
  {
    v21 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID = [device2 deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138413314;
      v34 = deviceUID;
      v35 = 2112;
      v36 = streamName;
      v37 = 1024;
      v38 = bytesPerFrame;
      v39 = 1024;
      v40 = ioBufferSize;
      v41 = 1024;
      v42 = timestampPeriod;
      _os_log_error_impl(&dword_241659000, v21, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, streamBufferSize: %u, period: %u", buf, 0x28u);
    }

LABEL_13:

    goto LABEL_14;
  }

  ptr = self->_ramper.__ptr_;
  exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
  updateClientPositionBlock = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:updateClientPositionBlock];

  getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  v15 = self->_audioBuffer.__ptr_;
  if (v15)
  {
    if (ptr && *(ptr + 9))
    {
      v16 = getUpdateClientPositionUnretainedAddress;
      v17 = ioBufferSize / bytesPerFrame;
      ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
      ioBufferFramesUnexpectedSizeCount = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __39__ASDTExclavesStream_exclavesReadInput__block_invoke;
      v29[3] = &__block_descriptor_92_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
      v29[4] = ioBufferFramesSizeMax;
      v29[5] = ptr;
      v29[6] = ioBufferFramesUnexpectedSizeCount;
      v29[7] = v15;
      v30 = timestampPeriod;
      v31 = bytesPerFrame;
      v32 = v17;
      v29[8] = exclavesStatusTracker;
      v29[9] = v16;
      v20 = _Block_copy(v29);
      goto LABEL_15;
    }

    v21 = ASDTBaseLogType(getUpdateClientPositionUnretainedAddress, v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID2 = [device3 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v34 = deviceUID2;
      v35 = 2112;
      v36 = streamName2;
      _os_log_error_impl(&dword_241659000, v21, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

uint64_t __39__ASDTExclavesStream_exclavesReadInput__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    __39__ASDTExclavesStream_exclavesReadInput__block_invoke_cold_2();
  }

  v4 = a4;
  if (!a4)
  {
    __39__ASDTExclavesStream_exclavesReadInput__block_invoke_cold_1();
  }

  v6 = *(a3 + 80);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *v7;
  if (*v7 <= a2)
  {
    v9 = a2;
  }

  *v7 = v9;
  if (*(v8 + 36) < a2)
  {
    ++**(a1 + 48);
  }

  v10 = v6;
  if (*(a1 + 80) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = *(a1 + 80);
  }

  if (v11)
  {
    v12 = *(a1 + 84);
    v22 = v6;
    v21 = v11;
    do
    {
      v13 = *(a1 + 40);
      if (*(v13 + 36) >= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = *(v13 + 36);
      }

      v28 = 0;
      v15 = ASDT::Exclaves::AudioBuffer::Read(*(a1 + 56), *(v13 + 24), v14, v12, *(a1 + 88), v10, &v28);
      if (!v15)
      {
        ASDT::Ramper::Process(*(a1 + 40), v14, *(*(a1 + 40) + 24), v4, v28);
      }

      v16 = *(a1 + 64);
      if (v16)
      {
        v17 = v28;
        ASDTTime::machAbsoluteTime(&v29);
        v23 = v10;
        v24 = v29;
        v25 = v30;
        v26 = v17;
        v27 = 3;
        ASDT::Exclaves::StatusTracker::Push(v16, &v23);
      }

      v11 -= v14;
      v10 += v14;
      v12 = *(a1 + 84);
      v4 += v12 * v14;
      if (v15)
      {
        v18 = 1;
      }

      else
      {
        v18 = v11 == 0;
      }
    }

    while (!v18);
    v10 = v22;
    v11 = v21;
  }

  else
  {
    v15 = 0;
  }

  v19 = **(a1 + 72);
  if (v19)
  {
    (*(v19 + 16))(v19, v10 + v11);
  }

  return v15;
}

- (id)readInputBlock
{
  if ([(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
  {
    exclavesReadInput = [(ASDTExclavesStream *)self exclavesReadInput];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    exclavesReadInput = [(ASDTStream *)&v5 readInputBlock];
  }

  return exclavesReadInput;
}

- (id)exclavesWriteMix
{
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  ioBufferSize = [(ASDTExclavesStream *)self ioBufferSize];
  updateClientPositionBlock = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:updateClientPositionBlock];

  getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  ptr = self->_inboundBuffer.__ptr_;
  if (ptr)
  {
    v9 = getUpdateClientPositionUnretainedAddress;
    ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__ASDTExclavesStream_exclavesWriteMix__block_invoke;
    v13[3] = &__block_descriptor_64_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v13[4] = ioBufferFramesSizeMax;
    v13[5] = ptr;
    v14 = bytesPerFrame;
    v15 = ioBufferSize / bytesPerFrame;
    v13[6] = v9;
    v11 = _Block_copy(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __38__ASDTExclavesStream_exclavesWriteMix__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    __38__ASDTExclavesStream_exclavesWriteMix__block_invoke_cold_2();
  }

  if (!a4)
  {
    __38__ASDTExclavesStream_exclavesWriteMix__block_invoke_cold_1();
  }

  v4 = a2;
  v6 = *(a3 + 144);
  v7 = v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *v9;
  if (*v9 <= a2)
  {
    v10 = a2;
  }

  *v9 = v10;
  v11 = ASDT::Exclaves::InboundBuffer::Write(v8, a4, a2, *(a1 + 56), *(a1 + 60), v6);
  v12 = **(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v7 + v4);
  }

  return v11;
}

- (id)writeMixBlock
{
  if ([(ASDStream *)self direction]== 1869968496 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
  {
    exclavesWriteMix = [(ASDTExclavesStream *)self exclavesWriteMix];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    exclavesWriteMix = [(ASDTStream *)&v5 writeMixBlock];
  }

  return exclavesWriteMix;
}

- (void)clearBuffer
{
  if ([(ASDStream *)self direction]== 1869968496 && self->_inboundBuffer.__ptr_)
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:{-[ASDTExclavesStream exclavesBufferSize](self, "exclavesBufferSize")}];
    bytes = [v4 bytes];
    if (bytes)
    {
      ASDT::Exclaves::InboundBuffer::Write(self->_inboundBuffer.__ptr_, bytes, [(ASDTExclavesStream *)self exclavesBufferSize], 1);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    [(ASDTStream *)&v5 clearBuffer];
  }
}

- (NSDictionary)status
{
  exclavesSensorManager = [(ASDTExclavesStream *)self exclavesSensorManager];
  sensor = [exclavesSensorManager sensor];

  if (sensor)
  {
    v16 = 0;
    if (ASDT::Exclaves::Sensor::GetStatus(sensor, &v16))
    {
      goto LABEL_3;
    }

    v5 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v16];
    v6 = MEMORY[0x277CCACA8];
    v7 = v16;
    v8 = ASDT::Exclaves::Sensor::StatusString(v16);
    v9 = "";
    if (v5)
    {
      v9 = "un";
    }

    v10 = [v6 stringWithFormat:@"[%u] %s (%sexpected)", v7, v8, v9];
    if (!v10)
    {
LABEL_3:
      sensor = 0;
    }

    else
    {
      v11 = v10;
      v12 = MEMORY[0x277CBEAC0];
      device = [(ASDTStream *)self device];
      exclavesSensorName = [device exclavesSensorName];
      sensor = [v12 dictionaryWithObject:v11 forKey:exclavesSensorName];
    }
  }

  return sensor;
}

- (id).cxx_construct
{
  *(self + 43) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0;
  return self;
}

- (void)updateSensorForIOThreadStateChange:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = "start";
  if ((a2 & 1) == 0)
  {
    v3 = "stop";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2080;
  v7 = v3;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Failed to %s sensor", &v4, 0x16u);
}

- (void)updateSensorForIOThreadStateChange:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to get sensor status", &v2, 0xCu);
}

@end