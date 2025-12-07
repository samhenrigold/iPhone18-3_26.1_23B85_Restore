@interface ASDTIOA2Stream
- (ASDTIOA2InjectionStream)injectionStream;
- (ASDTIOA2Stream)initWithIOA2Device:(id)device userClientID:(unsigned int)d direction:(unsigned int)direction;
- (ASDTIOA2Stream)initWithIOA2Device:(id)device userClientID:(unsigned int)d direction:(unsigned int)direction registryDict:(id)dict;
- (BOOL)_mapIOBuffer;
- (BOOL)changePhysicalFormat:(id)format;
- (BOOL)deviceChangedToSamplingRate:(double)rate;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)physicalFormat;
- (id)readIsolatedInputBlock;
- (id)readOrWriteBlock;
- (id)updateClientPositionBlock;
- (int)pmPrepareStream:(int)stream;
- (int)pmPrewarmStream:(int)stream;
- (void)_releaseIOBuffer;
- (void)asyncDeviceChangedToSamplingRate:(double)rate;
- (void)dealloc;
- (void)ioThreadStateChange:(id)change;
- (void)setIsActive:(BOOL)active;
- (void)setPhysicalFormat:(id)format alwaysNotify:(BOOL)notify;
- (void)setPhysicalFormats:(id)formats;
- (void)updateActiveState;
@end

@implementation ASDTIOA2Stream

- (ASDTIOA2Stream)initWithIOA2Device:(id)device userClientID:(unsigned int)d direction:(unsigned int)direction registryDict:(id)dict
{
  v7 = *&direction;
  v8 = *&d;
  deviceCopy = device;
  dictCopy = dict;
  v17.receiver = self;
  v17.super_class = ASDTIOA2Stream;
  v12 = [(ASDTExclavesStream *)&v17 initWithDirection:v7 withDevice:deviceCopy];
  v13 = v12;
  if (v12 && (v12->_userClientID = v8, [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v8], v14 = objc_claimAutoreleasedReturnValue(), -[ASDStream setStreamName:](v13, "setStreamName:", v14), v14, !-[ASDTIOA2Stream synchronizeWithRegistryDictionary:](v13, "synchronizeWithRegistryDictionary:", dictCopy)))
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  return v15;
}

- (ASDTIOA2Stream)initWithIOA2Device:(id)device userClientID:(unsigned int)d direction:(unsigned int)direction
{
  v5 = *&direction;
  v6 = *&d;
  deviceCopy = device;
  v9 = [deviceCopy _streamInfoForStream:v6];
  v10 = [(ASDTIOA2Stream *)self initWithIOA2Device:deviceCopy userClientID:v6 direction:v5 registryDict:v9];

  return v10;
}

- (void)dealloc
{
  [(ASDTIOA2Stream *)self _releaseIOBuffer];
  v3.receiver = self;
  v3.super_class = ASDTIOA2Stream;
  [(ASDTIOA2Stream *)&v3 dealloc];
}

- (void)updateActiveState
{
  if ([(ASDStream *)self isActive])
  {
    isActive = 1;
  }

  else
  {
    injectionStream = [(ASDTIOA2Stream *)self injectionStream];
    isActive = [injectionStream isActive];
  }

  ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
  [ioa2Device _setStreamActive:isActive streamUCID:self->_userClientID];
}

- (void)setIsActive:(BOOL)active
{
  v4.receiver = self;
  v4.super_class = ASDTIOA2Stream;
  [(ASDStream *)&v4 setIsActive:active];
  [(ASDTIOA2Stream *)self updateActiveState];
}

- (BOOL)_mapIOBuffer
{
  v26 = *MEMORY[0x277D85DE8];
  self->_ioBufferByteSize = 0;
  p_ioBufferMap = &self->_ioBufferMap;
  ASDT::IOMemoryMap::Release(&self->_ioBufferMap);
  if ([(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
  {
    physicalFormat = [(ASDTIOA2Stream *)self physicalFormat];
    v5 = [physicalFormat bytesPerFrame] << 12;

    LOBYTE(physicalFormat) = [(ASDTExclavesStream *)self allocExclavesAudioBuffer:v5];
    exclavesBufferSize = [(ASDTExclavesStream *)self exclavesBufferSize];
    self->_ioBufferByteSize = exclavesBufferSize;
    if ((physicalFormat & 1) == 0)
    {
LABEL_12:
      v10 = ASDTIOA2LogType(exclavesBufferSize, v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        device = [(ASDTStream *)self device];
        deviceUID = [device deviceUID];
        streamName = [(ASDStream *)self streamName];
        v20 = 138412546;
        v21 = deviceUID;
        v22 = 2112;
        v23 = streamName;
        _os_log_error_impl(&dword_2416BA000, v10, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map IO buffer", &v20, 0x16u);
      }

      v15 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
    ioa2UserClient = [ioa2Device ioa2UserClient];

    if (ioa2UserClient)
    {
      ASDT::IOA2UserClient::MapIOBufferForStream(ioa2UserClient, self->_userClientID, &v20);
      ASDT::IOMemoryMap::operator=();
      exclavesBufferSize = MEMORY[0x245CED200](&v20);
    }

    if (!*&p_ioBufferMap[2].refcount)
    {
      goto LABEL_12;
    }

    self->_ioBufferByteSize = p_ioBufferMap[2].meta;
  }

  v10 = ASDTIOA2LogType(exclavesBufferSize, v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    device2 = [(ASDTStream *)self device];
    deviceUID2 = [device2 deviceUID];
    streamName2 = [(ASDStream *)self streamName];
    ioBufferByteSize = self->_ioBufferByteSize;
    v20 = 138412802;
    v21 = deviceUID2;
    v22 = 2112;
    v23 = streamName2;
    v24 = 1024;
    v25 = ioBufferByteSize;
    _os_log_impl(&dword_2416BA000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: Buffer mapped with size %d", &v20, 0x1Cu);
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (void)_releaseIOBuffer
{
  v15 = *MEMORY[0x277D85DE8];
  exclavesAudioBuffer = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  v5 = exclavesAudioBuffer != 0;
  if (exclavesAudioBuffer)
  {
    [(ASDTExclavesStream *)self freeExclavesAudioBuffer];
  }

  p_ioBufferMap = &self->_ioBufferMap;
  if (*&self->_anon_1b8[56])
  {
    p_ioBufferMap = ASDT::IOMemoryMap::Release(p_ioBufferMap);
    v5 = 1;
  }

  if (self->_ioBufferByteSize)
  {
    self->_ioBufferByteSize = 0;
  }

  if (v5)
  {
    v7 = ASDTIOA2LogType(p_ioBufferMap, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      v11 = 138412546;
      v12 = deviceUID;
      v13 = 2112;
      v14 = streamName;
      _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@: Buffer released", &v11, 0x16u);
    }
  }
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  v51 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  applesauce::CF::DictionaryRef::from_ns_noexcept(&v42, dictionaryCopy);
  if (v42)
  {
    [(ASDStream *)self setStartingChannel:ASDT::IOA2UserClient::GetStreamInfo_StartingChannel(&v42, v5)];
    [(ASDStream *)self setTerminalType:ASDT::IOA2UserClient::GetStreamInfo_TerminalType(&v42, v6)];
    [(ASDTIOA2Stream *)self setUsesIsolatedIO:ASDT::IOA2UserClient::GetStreamInfo_UsesIsolatedIO(&v42, v7)];
    if ([(ASDTIOA2Stream *)self usesIsolatedIO])
    {
      log = [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      log = 0;
    }

    array = [MEMORY[0x277CBEB18] array];
    ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats(&v42, v9, v49);
    v10 = v49[0].isa;
    v11 = v10;
    if (v10)
    {
      CFRelease(v10);
    }

    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v13)
    {
      v14 = *v39;
      do
      {
        v15 = 0;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v12);
          }

          applesauce::CF::DictionaryRef::from_ns_noexcept(&cf, *(*(&v38 + 1) + 8 * v15));
          if (ASDT::IOA2UserClient::ConstructASRDFromDictionary(&cf, v49, v16))
          {
            v17 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamRangedDescription:v49];
            if ([(ASDTIOA2Stream *)self usesIsolatedIO])
            {
              asdtEquivalentNativeFloatPacked = [v17 asdtEquivalentNativeFloatPacked];
              v19 = [log objectForKey:asdtEquivalentNativeFloatPacked];
              v20 = v19 == 0;

              if (v20)
              {
                [log setObject:v17 forKey:asdtEquivalentNativeFloatPacked];
                [array addObject:asdtEquivalentNativeFloatPacked];
              }

              else
              {
                v23 = ASDTIOA2LogType(v21, v22);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  device = [(ASDTStream *)self device];
                  deviceUID = [device deviceUID];
                  streamName = [(ASDStream *)self streamName];
                  *buf = 138412802;
                  v44 = deviceUID;
                  v45 = 2112;
                  v46 = streamName;
                  v47 = 2112;
                  v48 = v17;
                  _os_log_error_impl(&dword_2416BA000, v23, OS_LOG_TYPE_ERROR, "%@:%@: Duplicate isolated IO format: %@", buf, 0x20u);
                }
              }
            }

            else
            {
              [array addObject:v17];
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v13);
    }

    if (-[ASDTIOA2Stream usesIsolatedIO](self, "usesIsolatedIO") && (-[ASDTIOA2Stream ioa2Device](self, "ioa2Device"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 _setupExclavesStatusTracker], v26, (v27 & 1) == 0))
    {
      v8 = 0;
    }

    else
    {
      v28 = [log copy];
      [(ASDTIOA2Stream *)self setIsolatedIOFormatMap:v28];

      [(ASDTIOA2Stream *)self setPhysicalFormats:array];
      v8 = 1;
    }
  }

  else
  {
    log = ASDTIOA2LogType(v4, v5);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID2 = [device2 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      LODWORD(v49[0].isa) = 138412546;
      *(&v49[0].isa + 4) = deviceUID2;
      WORD2(v49[0].info) = 2112;
      *(&v49[0].info + 6) = streamName2;
      _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@:%@: Bad registry dictionary.", v49, 0x16u);
    }

    v8 = 0;
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v8;
}

- (void)setPhysicalFormats:(id)formats
{
  formatsCopy = formats;
  physicalFormats = [(ASDStream *)self physicalFormats];
  v6 = [physicalFormats isEqual:formatsCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ASDTIOA2Stream;
    [(ASDStream *)&v7 setPhysicalFormats:formatsCopy];
  }
}

- (id)physicalFormat
{
  ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
  v4 = [ioa2Device _streamInfoForStream:self->_userClientID];
  applesauce::CF::DictionaryRef::from_ns_noexcept(&cf, v4);
  v10 = 0;
  memset(&v9, 0, sizeof(v9));
  if (ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(&cf, &v9, v5))
  {
    v6 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:&v9];
    if ([(ASDTIOA2Stream *)self usesIsolatedIO])
    {
      asdtEquivalentNativeFloatPacked = [v6 asdtEquivalentNativeFloatPacked];

      v6 = asdtEquivalentNativeFloatPacked;
    }
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

- (void)setPhysicalFormat:(id)format alwaysNotify:(BOOL)notify
{
  v36 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  physicalFormat = [(ASDTIOA2Stream *)self physicalFormat];
  v8 = [formatCopy isEqual:physicalFormat];
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = ASDTIOA2LogType(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412802;
      v31 = deviceUID;
      v32 = 2112;
      v33 = streamName;
      v34 = 2112;
      v35 = physicalFormat;
      _os_log_debug_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEBUG, "%@:%@: setPhysicalFormat: Old: %@", buf, 0x20u);
    }

    v12 = formatCopy;
    if ([(ASDTIOA2Stream *)self usesIsolatedIO])
    {
      isolatedIOFormatMap = [(ASDTIOA2Stream *)self isolatedIOFormatMap];
      v14 = [isolatedIOFormatMap objectForKey:v12];

      v12 = v14;
      if (!v14)
      {
        v18 = ASDTIOA2LogType(v15, v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          device2 = [(ASDTStream *)self device];
          deviceUID2 = [device2 deviceUID];
          streamName2 = [(ASDStream *)self streamName];
          *buf = 138412546;
          v31 = deviceUID2;
          v32 = 2112;
          v33 = streamName2;
          _os_log_error_impl(&dword_2416BA000, v18, OS_LOG_TYPE_ERROR, "%@:%@: setPhysicalFormat: Failed to identify physical format from map.", buf, 0x16u);
        }

        goto LABEL_16;
      }
    }

    ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
    v10 = [ioa2Device _setCurrentFormat:v12 forStream:self->_userClientID];
  }

  if (notify || v10)
  {
    v29.receiver = self;
    v29.super_class = ASDTIOA2Stream;
    v8 = [(ASDTStream *)&v29 setPhysicalFormat:formatCopy];
  }

  if (v10)
  {
    v18 = ASDTIOA2LogType(v8, v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID3 = [device3 deviceUID];
      streamName3 = [(ASDStream *)self streamName];
      physicalFormat2 = [(ASDTIOA2Stream *)self physicalFormat];
      *buf = 138412802;
      v31 = deviceUID3;
      v32 = 2112;
      v33 = streamName3;
      v34 = 2112;
      v35 = physicalFormat2;
      _os_log_impl(&dword_2416BA000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@: setPhysicalFormat: New: %@", buf, 0x20u);
    }

LABEL_16:
  }
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormat = [(ASDTIOA2Stream *)self physicalFormat];
  v6 = [physicalFormat isEqual:formatCopy];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    device = [(ASDTStream *)self device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__ASDTIOA2Stream_changePhysicalFormat___block_invoke;
    v9[3] = &unk_278CE8B40;
    objc_copyWeak(&v11, &location);
    v10 = formatCopy;
    [device requestConfigurationChange:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __39__ASDTIOA2Stream_changePhysicalFormat___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPhysicalFormat:*(a1 + 32) alwaysNotify:1];

  v11 = objc_loadWeakRetained((a1 + 40));
  v2 = [v11 device];
  [v2 samplingRate];
  v4 = v3;
  [*(a1 + 32) sampleRate];
  v6 = v5;

  if (v4 != v6)
  {
    [*(a1 + 32) sampleRate];
    v8 = v7;
    v12 = objc_loadWeakRetained((a1 + 40));
    v9 = [v12 device];
    [v9 setSamplingRate:v8];
  }
}

- (void)asyncDeviceChangedToSamplingRate:(double)rate
{
  v3.receiver = self;
  v3.super_class = ASDTIOA2Stream;
  [(ASDStream *)&v3 deviceChangedToSamplingRate:rate];
}

- (BOOL)deviceChangedToSamplingRate:(double)rate
{
  objc_initWeak(&location, self);
  device = [(ASDTStream *)self device];
  concurrentQueue = [device concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ASDTIOA2Stream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v9, &location);
  v9[1] = *&rate;
  dispatch_async(concurrentQueue, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  return 1;
}

void __46__ASDTIOA2Stream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained asyncDeviceChangedToSamplingRate:*(a1 + 40)];
}

- (id)updateClientPositionBlock
{
  direction = [(ASDStream *)self direction];
  ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
  v5 = ioa2Device;
  if (direction == 1768845428)
  {
    [ioa2Device updateClientInputPositionBlock];
  }

  else
  {
    [ioa2Device updateClientOutputPositionBlock];
  }
  v6 = ;
  v7 = MEMORY[0x245CEDA00]();

  return v7;
}

- (int)pmPrewarmStream:(int)stream
{
  v25 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = ASDTIOA2Stream;
  result = [(ASDTStream *)&v16 pmPrewarmStream:?];
  if (stream == 1970304877 && !result)
  {
    if ([(ASDTIOA2Stream *)self _mapIOBuffer])
    {
      ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
      ioa2UserClient = [ioa2Device ioa2UserClient];

      v10 = ASDTIOA2LogType(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        device = [(ASDTStream *)self device];
        deviceUID = [device deviceUID];
        streamName = [(ASDStream *)self streamName];
        if (ioa2UserClient)
        {
          UserClientRefCount = ASDT::IOUserClient::GetUserClientRefCount(ioa2UserClient);
          ConnectionRefCount = ASDT::IOUserClient::GetConnectionRefCount(ioa2UserClient);
        }

        else
        {
          UserClientRefCount = -1;
          ConnectionRefCount = -1;
        }

        *buf = 138413058;
        v18 = deviceUID;
        v19 = 2112;
        v20 = streamName;
        v21 = 1024;
        v22 = UserClientRefCount;
        v23 = 1024;
        v24 = ConnectionRefCount;
        _os_log_impl(&dword_2416BA000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: Clearing buffer; user client refs: %u, connection refs: %u", buf, 0x22u);
      }

      [(ASDTExclavesStream *)self clearBuffer];
      return 0;
    }

    else
    {
      return 1852990585;
    }
  }

  return result;
}

- (int)pmPrepareStream:(int)stream
{
  v3 = *&stream;
  if (stream == 1685090418)
  {
    [(ASDTIOA2Stream *)self _releaseIOBuffer];
  }

  v6.receiver = self;
  v6.super_class = ASDTIOA2Stream;
  return [(ASDTExclavesStream *)&v6 pmPrepareStream:v3];
}

- (void)ioThreadStateChange:(id)change
{
  v31 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  asdtIOThreadChangeIsolatedUseCase = [changeCopy asdtIOThreadChangeIsolatedUseCase];
  if ([(ASDTIOA2Stream *)self usesIsolatedIO]&& [(ASDStream *)self direction]== 1768845428 && !asdtIOThreadChangeIsolatedUseCase)
  {
    ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
    nonSecureInputEnabled = [ioa2Device nonSecureInputEnabled];

    if (nonSecureInputEnabled)
    {
      asdtIOThreadUseCaseIsFirstOrWasLast = [changeCopy asdtIOThreadUseCaseIsFirstOrWasLast];
      asdtIOThreadChangeEvent = [changeCopy asdtIOThreadChangeEvent];
      if (asdtIOThreadChangeEvent == 1937010544)
      {
        if (asdtIOThreadUseCaseIsFirstOrWasLast)
        {
          ioa2Device2 = [(ASDTIOA2Stream *)self ioa2Device];
          [ioa2Device2 _teardownForIsolatedIO:self->_userClientID forUseCase:{-[ASDTStream isolatedUseCaseID](self, "isolatedUseCaseID")}];
        }
      }

      else if (asdtIOThreadChangeEvent == 1937011316)
      {
        if (asdtIOThreadUseCaseIsFirstOrWasLast)
        {
          ioa2Device3 = [(ASDTIOA2Stream *)self ioa2Device];
          v13 = [ioa2Device3 _setupForIsolatedIO:self->_userClientID forUseCase:-[ASDTStream isolatedUseCaseID](self withIOFrameBufferSize:{"isolatedUseCaseID"), 0}];

          if ((v13 & 1) == 0)
          {
            v16 = ASDTIOA2LogType(v14, v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              device = [(ASDTStream *)self device];
              deviceUID = [device deviceUID];
              streamName = [(ASDStream *)self streamName];
              *buf = 138412546;
              v28 = deviceUID;
              v29 = 2112;
              v30 = streamName;
              _os_log_error_impl(&dword_2416BA000, v16, OS_LOG_TYPE_ERROR, "%@:%@: Failed to setup non-secure input path.", buf, 0x16u);
            }
          }
        }
      }

      v25.receiver = self;
      v25.super_class = ASDTIOA2Stream;
      [(ASDTExclavesStream *)&v25 ioThreadStateChange:changeCopy];
    }

    else
    {
      v17 = ASDTIOA2LogType(v8, v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v28 = deviceUID2;
        v29 = 2112;
        v30 = streamName2;
        _os_log_error_impl(&dword_2416BA000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Non-secure input is disabled.", buf, 0x16u);
      }
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = ASDTIOA2Stream;
    [(ASDTExclavesStream *)&v26 ioThreadStateChange:changeCopy];
  }
}

- (id)exclavesReadInput
{
  v46 = *MEMORY[0x277D85DE8];
  physicalFormat = [(ASDTIOA2Stream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  userClientID = [(ASDTIOA2Stream *)self userClientID];
  isolatedUseCaseID = [(ASDTStream *)self isolatedUseCaseID];
  device = [(ASDTStream *)self device];
  timestampPeriod = [device timestampPeriod];

  if (!timestampPeriod || !bytesPerFrame)
  {
    v22 = ASDTIOA2LogType(v9, v10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID = [device2 deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138413058;
      v39 = deviceUID;
      v40 = 2112;
      v41 = streamName;
      v42 = 1024;
      v43 = bytesPerFrame;
      v44 = 1024;
      v45 = timestampPeriod;
      _os_log_error_impl(&dword_2416BA000, v22, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, period: %u", buf, 0x22u);
    }

    goto LABEL_13;
  }

  updateClientPositionBlock = [(ASDTIOA2Stream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:updateClientPositionBlock];

  getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  exclavesAudioBuffer = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  if (!exclavesAudioBuffer)
  {
    goto LABEL_15;
  }

  v14 = exclavesAudioBuffer;
  ramper = [(ASDTExclavesStream *)self ramper];
  if (!ramper || (v17 = ramper, !ramper[9]))
  {
    v22 = ASDTIOA2LogType(ramper, v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID2 = [device3 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v39 = deviceUID2;
      v40 = 2112;
      v41 = streamName2;
      _os_log_error_impl(&dword_2416BA000, v22, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
  ioBufferFramesUnexpectedSizeCount = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
  ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
  ioa2UserClient = [ioa2Device ioa2UserClient];

  if (ioa2UserClient)
  {
    exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
    ioa2Device2 = [(ASDTIOA2Stream *)self ioa2Device];
    nonSecureInputEnabled = [ioa2Device2 nonSecureInputEnabled];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __35__ASDTIOA2Stream_exclavesReadInput__block_invoke;
    v33[3] = &__block_descriptor_109_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v37 = nonSecureInputEnabled;
    v33[4] = ioBufferFramesSizeMax;
    v33[5] = v17;
    v33[6] = ioBufferFramesUnexpectedSizeCount;
    v33[7] = ioa2UserClient;
    v34 = timestampPeriod;
    v35 = userClientID;
    v33[8] = isolatedUseCaseID;
    v33[9] = v14;
    v36 = bytesPerFrame;
    v33[10] = exclavesStatusTracker;
    v33[11] = getUpdateClientPositionUnretainedAddress;
    exclavesAudioBuffer = MEMORY[0x245CEDA00](v33);
    goto LABEL_15;
  }

LABEL_14:
  exclavesAudioBuffer = 0;
LABEL_15:

  return exclavesAudioBuffer;
}

uint64_t __35__ASDTIOA2Stream_exclavesReadInput__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    __35__ASDTIOA2Stream_exclavesReadInput__block_invoke_cold_2();
  }

  v4 = a4;
  if (!a4)
  {
    __35__ASDTIOA2Stream_exclavesReadInput__block_invoke_cold_1();
  }

  if (*(a1 + 108) != 1)
  {
    return 1852990585;
  }

  v6 = *(a3 + 80);
  v7 = *(a3 + 88);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *v8;
  if (*v8 <= a2)
  {
    v10 = a2;
  }

  *v8 = v10;
  if (*(v9 + 36) < a2)
  {
    ++**(a1 + 48);
  }

  v11 = v6;
  if (*(a1 + 96) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = *(a1 + 96);
  }

  if (v12)
  {
    v20 = v6;
    v19 = v12;
    while (1)
    {
      v13 = *(*(a1 + 40) + 36) >= v12 ? v12 : *(*(a1 + 40) + 36);
      if (!ASDT::IOA2UserClient::DoIsolatedIO(*(a1 + 56), *(a1 + 100), *(a1 + 64), 0x72656164u, v13, v11, v7))
      {
        break;
      }

      v14 = ASDT::Exclaves::AudioBuffer::Read();
      v15 = v14;
      if (!v14)
      {
        v14 = ASDT::Ramper::Process();
      }

      if (*(a1 + 80))
      {
        ASDTTime::machAbsoluteTime(&v21, v14);
        ASDT::Exclaves::StatusTracker::Push();
      }

      v12 -= v13;
      v11 += v13;
      v4 += *(a1 + 104) * v13;
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12 == 0;
      }

      if (v16)
      {
        goto LABEL_30;
      }
    }

    v15 = 560227702;
LABEL_30:
    v11 = v20;
    v12 = v19;
  }

  else
  {
    v15 = 0;
  }

  v17 = **(a1 + 88);
  if (v17)
  {
    (*(v17 + 16))(v17, v11 + v12);
  }

  return v15;
}

- (id)readIsolatedInputBlock
{
  userClientID = [(ASDTIOA2Stream *)self userClientID];
  ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
  ioa2UserClient = [ioa2Device ioa2UserClient];

  if (ioa2UserClient && [(ASDTIOA2Stream *)self usesIsolatedIO])
  {
    getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__ASDTIOA2Stream_readIsolatedInputBlock__block_invoke;
    v9[3] = &__block_descriptor_52_e187_i28__0Q8I16r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_20l;
    v10 = userClientID;
    v9[4] = ioa2UserClient;
    v9[5] = getUpdateClientPositionUnretainedAddress;
    v7 = MEMORY[0x245CEDA00](v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __40__ASDTIOA2Stream_readIsolatedInputBlock__block_invoke(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    __40__ASDTIOA2Stream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  v6 = *(a4 + 80);
  v7 = ASDT::IOA2UserClient::DoIsolatedIO(*(a1 + 32), *(a1 + 48), a2, 0x72656164u, a3, v6, *(a4 + 88));
  v8 = **(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6 + a3);
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 560227702;
  }
}

- (id)readOrWriteBlock
{
  v29 = *MEMORY[0x277D85DE8];
  ioa2Device = [(ASDTIOA2Stream *)self ioa2Device];
  ioa2UserClient = [ioa2Device ioa2UserClient];

  if (!ioa2UserClient)
  {
    v11 = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412546;
      v26 = deviceUID;
      v27 = 2112;
      v28 = streamName;
      _os_log_error_impl(&dword_2416BA000, v11, OS_LOG_TYPE_ERROR, "%@:%@: Failed to get IOA2UserClient", buf, 0x16u);
    }

    goto LABEL_9;
  }

  direction = [(ASDStream *)self direction];
  v24.receiver = self;
  v24.super_class = ASDTIOA2Stream;
  readOrWriteBlock = [(ASDTStream *)&v24 readOrWriteBlock];
  if (!readOrWriteBlock)
  {
    v11 = ASDTIOA2LogType(0, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID2 = [device2 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v26 = deviceUID2;
      v27 = 2112;
      v28 = streamName2;
      _os_log_error_impl(&dword_2416BA000, v11, OS_LOG_TYPE_ERROR, "%@:%@: Failed to get ADSTStream readOrWriteBlock", buf, 0x16u);
    }

LABEL_9:
    readOrWriteBlock = 0;
    goto LABEL_10;
  }

  if (!ASDT::IOA2UserClient::WantsDoIOTrapCall(ioa2UserClient, (direction == 1768845428)))
  {
    goto LABEL_11;
  }

  ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__ASDTIOA2Stream_readOrWriteBlock__block_invoke;
  v19[3] = &unk_278CE8BD0;
  v23 = direction == 1768845428;
  v19[4] = self;
  v20 = readOrWriteBlock;
  v21 = ioBufferFramesSizeMax;
  v22 = ioa2UserClient;
  v11 = readOrWriteBlock;
  readOrWriteBlock = MEMORY[0x245CEDA00](v19);

LABEL_10:
LABEL_11:

  return readOrWriteBlock;
}

uint64_t __34__ASDTIOA2Stream_readOrWriteBlock__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    __34__ASDTIOA2Stream_readOrWriteBlock__block_invoke_cold_1();
  }

  v5 = 144;
  if (*(a1 + 64))
  {
    v5 = 80;
  }

  v6 = a3 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(a1 + 48);
  v10 = *v9;
  if (*v9 <= a2)
  {
    v10 = a2;
  }

  *v9 = v10;
  v11 = (*(*(a1 + 40) + 16))();
  if (v11)
  {
    v13 = v11;
    v14 = ASDTIOA2LogType(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) device];
      v16 = [v15 deviceUID];
      v17 = [*(a1 + 32) streamName];
      v18 = v17;
      v19 = BYTE3(v13);
      if ((v13 - 0x20000000) >> 24 >= 0x5F)
      {
        v19 = 32;
      }

      v20 = BYTE2(v13);
      if (BYTE2(v13) - 32 >= 0x5F)
      {
        v20 = 32;
      }

      v29 = 138413570;
      v30 = v16;
      v21 = BYTE1(v13);
      if (BYTE1(v13) - 32 >= 0x5F)
      {
        v21 = 32;
      }

      v31 = 2112;
      v32 = v17;
      v33 = 1024;
      v34 = v19;
      v35 = 1024;
      v36 = v20;
      v37 = 1024;
      v38 = v21;
      if (v13 - 32 >= 0x5F)
      {
        v22 = 32;
      }

      else
      {
        v22 = v13;
      }

      v39 = 1024;
      v40 = v22;
      _os_log_error_impl(&dword_2416BA000, v14, OS_LOG_TYPE_ERROR, "%@:%@: readOrWriteBlock Failed: %c%c%c%c", &v29, 0x2Eu);
    }

LABEL_22:

    return v13;
  }

  v23 = ASDT::IOA2UserClient::DoIO(*(a1 + 56), *(a1 + 64), a2, v7, v8);
  if (!v23)
  {
    v14 = ASDTIOA2LogType(v23, v24);
    v13 = 560227702;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 32) device];
      v27 = [v26 deviceUID];
      v28 = [*(a1 + 32) streamName];
      v29 = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = v28;
      _os_log_error_impl(&dword_2416BA000, v14, OS_LOG_TYPE_ERROR, "%@:%@: IOA2UserClient::DoIO Failed", &v29, 0x16u);
    }

    goto LABEL_22;
  }

  return 0;
}

- (ASDTIOA2InjectionStream)injectionStream
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionStream);

  return WeakRetained;
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

@end