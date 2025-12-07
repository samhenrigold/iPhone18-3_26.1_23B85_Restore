@interface ASDTIOPAudioLPMicStream
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioLPMicStream)initWithConfig:(id)config withDevice:(id)device;
- (BOOL)mapIOBuffer;
- (BOOL)updateFromStreamDescription:(StreamDescription *)description;
- (char)ioBufferRef;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)readIsolatedInputBlock;
- (int)pmIdleStream:(int)stream;
- (int)pmPrepareStream:(int)stream;
- (int)pmPrewarmStream:(int)stream;
- (int)setupIsolatedIOForUseCase:(unint64_t)case withFrameSize:(unsigned int)size;
- (int)teardownIsolatedIOForUseCase:(unint64_t)case;
- (void)ioThreadStateChange:(id)change;
- (void)releaseIOBuffer;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDTIOPAudioLPMicStream

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtExclavesBufferName = [configCopy asdtExclavesBufferName];
  asdtServiceID = [configCopy asdtServiceID];
  v6 = off_278CE9AB8;
  if (asdtExclavesBufferName)
  {
    v6 = off_278CE9AC8;
  }

  v7 = [(__objc2_class *)*v6 dependencyForID:asdtServiceID andConfiguration:configCopy];
  v8 = v7;
  if (v7)
  {
    v11[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ASDTIOPAudioLPMicStream)initWithConfig:(id)config withDevice:(id)device
{
  v81[5] = *MEMORY[0x277D85DE8];
  configCopy = config;
  deviceCopy = device;
  v8 = [configCopy mutableCopy];
  v80[0] = *MEMORY[0x277CEFC58];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = *MEMORY[0x277CEFC40];
  v12 = *MEMORY[0x277CEFBC0];
  v81[0] = v10;
  v81[1] = v12;
  v13 = *MEMORY[0x277CEFC08];
  v80[1] = v11;
  v80[2] = v13;
  v81[2] = @"RX";
  v80[3] = *MEMORY[0x277CEFC48];
  v14 = *MEMORY[0x277CEFBF8];
  v77[0] = *MEMORY[0x277CEFBF0];
  v77[1] = v14;
  v15 = *MEMORY[0x277CEFBB8];
  v78[0] = &unk_285359C10;
  v78[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v79 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v80[4] = *MEMORY[0x277CEFC50];
  v81[3] = v17;
  v81[4] = &unk_285359C28;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:5];
  [v8 asdtAddMissingEntriesFromDictionary:v18];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    asdtServiceID = [configCopy asdtServiceID];
    asdtExclavesBufferName = [configCopy asdtExclavesBufferName];
    v71 = asdtExclavesBufferName;
    v23 = 0;
    if (asdtServiceID)
    {
      if (asdtExclavesBufferName)
      {
        v24 = [(ASDTIOServiceManager *)ASDTIOPAudioIsolatedIOBufferServiceManager matchedIOServiceForID:asdtServiceID];
      }

      else
      {
        v25 = [(ASDTIOServiceManager *)ASDTIOPAudioIOBufferServiceManager matchedIOServiceForID:asdtServiceID];
        v24 = 0;
        v23 = v25;
      }

      v26 = v23;
      v23 = v24;
      if (!(v26 | v24))
      {
        v30 = ASDTIOPLogType(v24, v25);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          [(ASDTIOPAudioLPMicStream *)v32 initWithConfig:buf withDevice:v30];
        }

        v23 = 0;
        v26 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = 0;
    }

    v72.receiver = self;
    v72.super_class = ASDTIOPAudioLPMicStream;
    v28 = [(ASDTExclavesStream *)&v72 initWithConfig:v8 withDevice:deviceCopy];
    self = v28;
    if (v28)
    {
      [(ASDTIOPAudioLPMicStream *)v28 setIoBufferDevice:v26];
      [(ASDTIOPAudioLPMicStream *)self setIsolatedIOBufferDevice:v23];
      ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      if (ioBufferDevice)
      {
      }

      else
      {
        isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
        v34 = isolatedIOBufferDevice == 0;

        if (v34)
        {
          v54 = ASDTIOPLogType(v35, v36);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            device = [(ASDTStream *)self device];
            deviceUID = [device deviceUID];
            streamName = [(ASDStream *)self streamName];
            *buf = 138412546;
            v74 = deviceUID;
            v75 = 2112;
            v76 = streamName;
            _os_log_error_impl(&dword_2416E9000, v54, OS_LOG_TYPE_ERROR, "%@:%@: No (Isolated)IOBuffer defined for this stream.", buf, 0x16u);
          }

          goto LABEL_36;
        }
      }

      ioBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      if (ioBufferDevice2)
      {
        ioBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
        open = [ioBufferDevice3 open];

        if ((open & 1) == 0)
        {
          v54 = ASDTIOPLogType(v40, v41);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            device2 = [(ASDTStream *)self device];
            deviceUID2 = [device2 deviceUID];
            streamName2 = [(ASDStream *)self streamName];
            *buf = 138412546;
            v74 = deviceUID2;
            v75 = 2112;
            v76 = streamName2;
            _os_log_error_impl(&dword_2416E9000, v54, OS_LOG_TYPE_ERROR, "%@:%@: Failed to open connection to IOBuffer user client", buf, 0x16u);
          }

          goto LABEL_36;
        }
      }

      isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
      v43 = isolatedIOBufferDevice2 == 0;

      if (!v43)
      {
        isolatedIOBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
        open2 = [isolatedIOBufferDevice3 open];

        if (open2)
        {
          if (![(ASDTStream *)self isolatedUseCaseID])
          {
            identifier = [asdtServiceID identifier];
            v49 = identifier;
            uTF8String = [identifier UTF8String];
            if (uTF8String)
            {
              v51 = 0;
              v52 = 0;
              do
              {
                if (!*(uTF8String + v51))
                {
                  break;
                }

                v52 = *(uTF8String + v51++) | (v52 << 8);
              }

              while (v51 != 4);
              v53 = v52;
            }

            else
            {
              v53 = 0;
            }

            [(ASDTStream *)self setIsolatedUseCaseID:v53];
          }

          parent = [(ASDTIOPAudioLPMicStream *)self parent];
          setupExclavesStatusTracker = [parent setupExclavesStatusTracker];

          if (setupExclavesStatusTracker)
          {
            goto LABEL_40;
          }

LABEL_41:
          selfCopy = 0;
          goto LABEL_42;
        }

        v54 = ASDTIOPLogType(v46, v47);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          device3 = [(ASDTStream *)self device];
          deviceUID3 = [device3 deviceUID];
          streamName3 = [(ASDStream *)self streamName];
          *buf = 138412546;
          v74 = deviceUID3;
          v75 = 2112;
          v76 = streamName3;
          _os_log_error_impl(&dword_2416E9000, v54, OS_LOG_TYPE_ERROR, "%@:%@: Failed to open connection to IsolatedIOBuffer user client", buf, 0x16u);
        }

LABEL_36:

        goto LABEL_41;
      }
    }

LABEL_40:
    self = self;
    selfCopy = self;
LABEL_42:

    goto LABEL_43;
  }

  v26 = ASDTIOPLogType(isKindOfClass, v20);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    *buf = 138412546;
    v74 = v56;
    v75 = 2112;
    v76 = v58;
    _os_log_error_impl(&dword_2416E9000, v26, OS_LOG_TYPE_ERROR, "%@: Bad parent device class: %@", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_43:

  return selfCopy;
}

- (BOOL)updateFromStreamDescription:(StreamDescription *)description
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:description];
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

  if (isolatedIOBufferDevice)
  {
    asdtEquivalentNativeFloatPacked = [v5 asdtEquivalentNativeFloatPacked];

    v5 = asdtEquivalentNativeFloatPacked;
  }

  if (v5)
  {
    [(ASDStream *)self setLatency:description->var9];
    [(ASDTStream *)self setSafetyOffset:description->var10];
    v19 = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [(ASDStream *)self setPhysicalFormats:v10];

    [(ASDTStream *)self setPhysicalFormat:v5];
    isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
    if (!isolatedIOBufferDevice2)
    {
      v14 = 1;
      goto LABEL_11;
    }

    isolatedIOBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
    parent = [(ASDTIOPAudioLPMicStream *)self parent];
    v14 = [isolatedIOBufferDevice3 setStreamDescription:description withBufferFrameSize:{objc_msgSend(parent, "ioBufferSizeFrames")}];
  }

  else
  {
    isolatedIOBufferDevice2 = ASDTIOPLogType(v7, v8);
    if (os_log_type_enabled(isolatedIOBufferDevice2, OS_LOG_TYPE_ERROR))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412546;
      v21 = deviceUID;
      v22 = 2112;
      v23 = streamName;
      _os_log_error_impl(&dword_2416E9000, isolatedIOBufferDevice2, OS_LOG_TYPE_ERROR, "%@:%@: Failed to allocate stream format.", buf, 0x16u);
    }

    v14 = 0;
  }

LABEL_11:
  return v14 & 1;
}

- (char)ioBufferRef
{
  ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
  ioBufferRef = [ioBufferDevice ioBufferRef];

  return ioBufferRef;
}

- (BOOL)mapIOBuffer
{
  v42 = *MEMORY[0x277D85DE8];
  parent = [(ASDTIOPAudioLPMicStream *)self parent];
  ioBufferSizeFrames = [parent ioBufferSizeFrames];

  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];

  if (exclavesBufferName)
  {
    physicalFormat = [(ASDStream *)self physicalFormat];
    v7 = [physicalFormat bytesPerFrame] << 12;

    v8 = [(ASDTExclavesStream *)self allocExclavesAudioBuffer:v7];
    if (v8)
    {
      self->_ioBufferSize = v7;
      return 1;
    }

    v23 = ASDTIOPLogType(v8, v9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      v34 = 138412546;
      v35 = deviceUID;
      v36 = 2112;
      v37 = streamName;
      _os_log_error_impl(&dword_2416E9000, v23, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map exclaves named buffer", &v34, 0x16u);
    }

LABEL_16:

    return 0;
  }

  ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];

  if (ioBufferDevice)
  {
    ioBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
    mapIOBuffer = [ioBufferDevice2 mapIOBuffer];

    if (mapIOBuffer)
    {
      physicalFormat2 = [(ASDStream *)self physicalFormat];
      bytesPerFrame = [physicalFormat2 bytesPerFrame];

      ioBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      ioBufferSize = [ioBufferDevice3 ioBufferSize];
      v20 = bytesPerFrame * ioBufferSizeFrames;

      if (ioBufferSize >= bytesPerFrame * ioBufferSizeFrames)
      {
        self->_ioBufferSize = v20;
        return 1;
      }

      v23 = ASDTIOPLogType(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        ioBufferDevice4 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
        v34 = 138413058;
        v35 = deviceUID2;
        v36 = 2112;
        v37 = streamName2;
        v38 = 1024;
        ioBufferSize2 = [ioBufferDevice4 ioBufferSize];
        v40 = 1024;
        v41 = v20;
        _os_log_error_impl(&dword_2416E9000, v23, OS_LOG_TYPE_ERROR, "%@:%@: Mapped IO buffer is too small: %u < %u", &v34, 0x22u);
      }
    }

    else
    {
      v23 = ASDTIOPLogType(v14, v15);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        device3 = [(ASDTStream *)self device];
        deviceUID3 = [device3 deviceUID];
        streamName3 = [(ASDStream *)self streamName];
        v34 = 138412546;
        v35 = deviceUID3;
        v36 = 2112;
        v37 = streamName3;
        _os_log_error_impl(&dword_2416E9000, v23, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map IO buffer", &v34, 0x16u);
      }
    }

    goto LABEL_16;
  }

  return 0;
}

- (void)releaseIOBuffer
{
  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];

  if (exclavesBufferName)
  {
    [(ASDTExclavesStream *)self freeExclavesAudioBuffer];
  }

  ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];

  if (ioBufferDevice)
  {
    ioBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
    [ioBufferDevice2 releaseIOBuffer];
  }

  self->_ioBufferSize = 0;
}

- (int)pmPrewarmStream:(int)stream
{
  v9.receiver = self;
  v9.super_class = ASDTIOPAudioLPMicStream;
  result = [(ASDTStream *)&v9 pmPrewarmStream:?];
  if (stream == 1970304877 && !result)
  {
    isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

    if (isolatedIOBufferDevice && (-[ASDTIOPAudioLPMicStream isolatedIOBufferDevice](self, "isolatedIOBufferDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 setupIO], v7, (v8 & 1) == 0))
    {
      return 1852990585;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int)pmPrepareStream:(int)stream
{
  v3 = *&stream;
  if (stream == 1685090418)
  {
    isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

    if (isolatedIOBufferDevice)
    {
      isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
      [isolatedIOBufferDevice2 teardownIO];
    }
  }

  else if (stream == 1970303090 && ![(ASDTIOPAudioLPMicStream *)self mapIOBuffer])
  {
    return 561214578;
  }

  v8.receiver = self;
  v8.super_class = ASDTIOPAudioLPMicStream;
  return [(ASDTExclavesStream *)&v8 pmPrepareStream:v3];
}

- (int)pmIdleStream:(int)stream
{
  v3 = *&stream;
  if (stream == 1684628588)
  {
    [(ASDTIOPAudioLPMicStream *)self releaseIOBuffer];
  }

  v6.receiver = self;
  v6.super_class = ASDTIOPAudioLPMicStream;
  return [(ASDTExclavesStream *)&v6 pmIdleStream:v3];
}

- (void)ioThreadStateChange:(id)change
{
  v32 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  asdtIOThreadChangeIsolatedUseCase = [changeCopy asdtIOThreadChangeIsolatedUseCase];
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

  if (!isolatedIOBufferDevice || asdtIOThreadChangeIsolatedUseCase)
  {
    v27.receiver = self;
    v27.super_class = ASDTIOPAudioLPMicStream;
    [(ASDTExclavesStream *)&v27 ioThreadStateChange:changeCopy];
  }

  else
  {
    parent = [(ASDTIOPAudioLPMicStream *)self parent];
    nonSecureInputEnabled = [parent nonSecureInputEnabled];

    if (nonSecureInputEnabled)
    {
      asdtIOThreadUseCaseIsFirstOrWasLast = [changeCopy asdtIOThreadUseCaseIsFirstOrWasLast];
      asdtIOThreadChangeEvent = [changeCopy asdtIOThreadChangeEvent];
      if (asdtIOThreadChangeEvent == 1937010544)
      {
        if (asdtIOThreadUseCaseIsFirstOrWasLast)
        {
          isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
          [isolatedIOBufferDevice2 teardownClientIO:{-[ASDTStream isolatedUseCaseID](self, "isolatedUseCaseID")}];
        }
      }

      else if (asdtIOThreadChangeEvent == 1937011316)
      {
        if (asdtIOThreadUseCaseIsFirstOrWasLast)
        {
          isolatedIOBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
          v14 = [isolatedIOBufferDevice3 setupClientIO:-[ASDTStream isolatedUseCaseID](self withBufferFrameSize:{"isolatedUseCaseID"), 0}];

          if ((v14 & 1) == 0)
          {
            v17 = ASDTIOPLogType(v15, v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              device = [(ASDTStream *)self device];
              deviceUID = [device deviceUID];
              streamName = [(ASDStream *)self streamName];
              *buf = 138412546;
              v29 = deviceUID;
              v30 = 2112;
              v31 = streamName;
              _os_log_error_impl(&dword_2416E9000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Failed to setup non-secure input path.", buf, 0x16u);
            }
          }
        }
      }

      v26.receiver = self;
      v26.super_class = ASDTIOPAudioLPMicStream;
      [(ASDTExclavesStream *)&v26 ioThreadStateChange:changeCopy];
    }

    else
    {
      v18 = ASDTIOPLogType(v9, v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v29 = deviceUID2;
        v30 = 2112;
        v31 = streamName2;
        _os_log_error_impl(&dword_2416E9000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Non-secure input is disabled.", buf, 0x16u);
      }
    }
  }
}

- (void)startStream
{
  [(ASDTExclavesStream *)self clearBuffer];
  v3.receiver = self;
  v3.super_class = ASDTIOPAudioLPMicStream;
  [(ASDStream *)&v3 startStream];
}

- (void)stopStream
{
  v2.receiver = self;
  v2.super_class = ASDTIOPAudioLPMicStream;
  [(ASDStream *)&v2 stopStream];
}

- (id)exclavesReadInput
{
  v42 = *MEMORY[0x277D85DE8];
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  isolatedUseCaseID = [(ASDTStream *)self isolatedUseCaseID];
  device = [(ASDTStream *)self device];
  timestampPeriod = [device timestampPeriod];

  if (!timestampPeriod || !bytesPerFrame)
  {
    v21 = ASDTIOPLogType(v8, v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID = [device2 deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138413058;
      v35 = deviceUID;
      v36 = 2112;
      v37 = streamName;
      v38 = 1024;
      v39 = bytesPerFrame;
      v40 = 1024;
      v41 = timestampPeriod;
      _os_log_error_impl(&dword_2416E9000, v21, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, period: %u", buf, 0x22u);
    }

    goto LABEL_13;
  }

  exclavesAudioBuffer = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  if (!exclavesAudioBuffer)
  {
    goto LABEL_15;
  }

  v11 = exclavesAudioBuffer;
  ramper = [(ASDTExclavesStream *)self ramper];
  if (!ramper || (v14 = ramper, !ramper[9]))
  {
    v21 = ASDTIOPLogType(ramper, v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID2 = [device3 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v35 = deviceUID2;
      v36 = 2112;
      v37 = streamName2;
      _os_log_error_impl(&dword_2416E9000, v21, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
  ioBufferFramesUnexpectedSizeCount = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  userClient = [isolatedIOBufferDevice userClient];

  if (userClient)
  {
    exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
    parent = [(ASDTIOPAudioLPMicStream *)self parent];
    nonSecureInputEnabled = [parent nonSecureInputEnabled];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke;
    aBlock[3] = &__block_descriptor_97_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v33 = nonSecureInputEnabled;
    aBlock[4] = ioBufferFramesSizeMax;
    aBlock[5] = v14;
    aBlock[6] = ioBufferFramesUnexpectedSizeCount;
    aBlock[7] = userClient;
    aBlock[8] = isolatedUseCaseID;
    aBlock[9] = v11;
    v31 = timestampPeriod;
    v32 = bytesPerFrame;
    aBlock[10] = exclavesStatusTracker;
    exclavesAudioBuffer = _Block_copy(aBlock);
    goto LABEL_15;
  }

LABEL_14:
  exclavesAudioBuffer = 0;
LABEL_15:

  return exclavesAudioBuffer;
}

uint64_t __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke_cold_2();
  }

  v4 = a4;
  if (!a4)
  {
    __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke_cold_1();
  }

  if (*(a1 + 96) != 1)
  {
    return 1852990585;
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

  if (*(a1 + 88) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(a1 + 88);
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v6;
  while (1)
  {
    v12 = *(*(a1 + 40) + 36) >= v10 ? v10 : *(*(a1 + 40) + 36);
    if (!ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(*(a1 + 56), *(a1 + 64), v11, v12))
    {
      break;
    }

    v13 = ASDT::Exclaves::AudioBuffer::Read();
    v14 = v13;
    if (!v13)
    {
      v13 = ASDT::Ramper::Process();
    }

    if (*(a1 + 80))
    {
      ASDTTime::machAbsoluteTime(&v17, v13);
      ASDT::Exclaves::StatusTracker::Push();
    }

    v10 -= v12;
    v11 += v12;
    v4 += *(a1 + 92) * v12;
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10 == 0;
    }

    if (v15)
    {
      return v14;
    }
  }

  return 560227702;
}

- (id)readIsolatedInputBlock
{
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  userClient = [isolatedIOBufferDevice userClient];

  if (userClient)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke;
    aBlock[3] = &__block_descriptor_40_e187_i28__0Q8I16r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_20l;
    aBlock[4] = userClient;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  if (ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(*(a1 + 32), a2, *(a4 + 80), a3))
  {
    return 0;
  }

  else
  {
    return 560227702;
  }
}

- (int)setupIsolatedIOForUseCase:(unint64_t)case withFrameSize:(unsigned int)size
{
  v4 = *&size;
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  LODWORD(v4) = [isolatedIOBufferDevice setupClientIO:case withBufferFrameSize:v4];

  if (v4)
  {
    return 0;
  }

  else
  {
    return 561214578;
  }
}

- (int)teardownIsolatedIOForUseCase:(unint64_t)case
{
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  LODWORD(case) = [isolatedIOBufferDevice teardownClientIO:case];

  if (case)
  {
    return 0;
  }

  else
  {
    return 561214578;
  }
}

- (id).cxx_construct
{
  p_ioBufferMap = &self->_ioBufferMap;
  self->_ioBufferMap.__vftable = (MEMORY[0x277CEFBA8] + 16);
  ASDT::IOConnect::IOConnect(&self->_ioBufferMap.refcount);
  *&p_ioBufferMap[2].refcount = 0;
  LODWORD(p_ioBufferMap[2].meta) = 0;
  return self;
}

- (void)initWithConfig:(uint8_t *)buf withDevice:(os_log_t)log .cold.1(void *a1, char a2, uint8_t *buf, os_log_t log)
{
  v5 = "Isolated";
  if (a2)
  {
    v5 = "";
  }

  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Failed to create %sIOBufferDevice user client", buf, 0x16u);
}

@end