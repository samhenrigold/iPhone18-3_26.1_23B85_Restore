@interface ASDTIOA2InjectionStream
- (ASDTIOA2InjectionStream)initWithIOA2Device:(id)device inputStream:(id)stream registryDict:(id)dict;
- (ASDTIOA2Stream)inputStream;
- (BOOL)changePhysicalFormat:(id)format;
- (BOOL)deviceChangedToSamplingRate:(double)rate;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (id)physicalFormat;
- (int)pmPrepareStream:(int)stream;
- (int)pmPrewarmStream:(int)stream;
- (void)asyncDeviceChangedToSamplingRate:(double)rate;
- (void)setIsActive:(BOOL)active;
- (void)setPhysicalFormat:(id)format alwaysNotify:(BOOL)notify;
- (void)setPhysicalFormats:(id)formats;
@end

@implementation ASDTIOA2InjectionStream

- (ASDTIOA2InjectionStream)initWithIOA2Device:(id)device inputStream:(id)stream registryDict:(id)dict
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  streamCopy = stream;
  dictCopy = dict;
  v24.receiver = self;
  v24.super_class = ASDTIOA2InjectionStream;
  v11 = [(ASDTExclavesStream *)&v24 initWithDirection:1869968496 withDevice:deviceCopy];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  [(ASDTIOA2InjectionStream *)v11 setUserClientID:0xFFFFFFFFLL];
  [(ASDTIOA2InjectionStream *)v12 setInputStream:streamCopy];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u-Injection", objc_msgSend(streamCopy, "userClientID")];
  [(ASDStream *)v12 setStreamName:v13];

  [(ASDStream *)v12 setTerminalType:1768843885];
  exclavesInjectionBufferName = [deviceCopy exclavesInjectionBufferName];
  [(ASDTExclavesStream *)v12 setExclavesBufferName:exclavesInjectionBufferName];

  exclavesBufferName = [(ASDTExclavesStream *)v12 exclavesBufferName];
  v16 = exclavesBufferName == 0;

  if (v16)
  {
    v20 = ASDTIOA2LogType(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      deviceUID = [deviceCopy deviceUID];
      streamName = [(ASDStream *)v12 streamName];
      [(ASDTIOA2InjectionStream *)deviceUID initWithIOA2Device:streamName inputStream:buf registryDict:v20];
    }

    goto LABEL_8;
  }

  if (![(ASDTIOA2InjectionStream *)v12 synchronizeWithRegistryDictionary:dictCopy])
  {
LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

LABEL_4:
  v19 = v12;
LABEL_9:

  return v19;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  applesauce::CF::DictionaryRef::from_ns_noexcept(&v27, dictionaryCopy);
  v7 = v27;
  if (v27)
  {
    [(ASDStream *)self setStartingChannel:ASDT::IOA2UserClient::GetStreamInfo_StartingChannel(&v27, v6)];
    array = [MEMORY[0x277CBEB18] array];
    ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats(&v27, v9, buf);
    v10 = buf[0].isa;
    v11 = v10;
    if (v10)
    {
      CFRelease(v10);
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          applesauce::CF::DictionaryRef::from_ns_noexcept(&cf, *(*(&v23 + 1) + 8 * i));
          if (ASDT::IOA2UserClient::ConstructASRDFromDictionary(&cf, buf, v16))
          {
            v17 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamRangedDescription:buf];
            [array addObject:v17];
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v13);
    }

    [(ASDTIOA2InjectionStream *)self setPhysicalFormats:array];
  }

  else
  {
    array = ASDTIOA2LogType(v5, v6);
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      LODWORD(buf[0].isa) = 138412546;
      *(&buf[0].isa + 4) = deviceUID;
      WORD2(buf[0].info) = 2112;
      *(&buf[0].info + 6) = streamName;
      _os_log_error_impl(&dword_2416BA000, array, OS_LOG_TYPE_ERROR, "%@:%@: Bad registry dictionary.", buf, 0x16u);
    }
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v7 != 0;
}

- (void)setPhysicalFormats:(id)formats
{
  formatsCopy = formats;
  physicalFormats = [(ASDStream *)self physicalFormats];
  v6 = [physicalFormats isEqual:formatsCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ASDTIOA2InjectionStream;
    [(ASDStream *)&v7 setPhysicalFormats:formatsCopy];
  }
}

- (id)physicalFormat
{
  ioa2Device = [(ASDTIOA2InjectionStream *)self ioa2Device];
  inputStream = [(ASDTIOA2InjectionStream *)self inputStream];
  v5 = [ioa2Device _streamInfoForStream:{objc_msgSend(inputStream, "userClientID")}];

  applesauce::CF::DictionaryRef::from_ns_noexcept(&cf, v5);
  v10 = 0;
  memset(&v9, 0, sizeof(v9));
  if (ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(&cf, &v9, v6))
  {
    v7 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:&v9];
  }

  else
  {
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (void)setPhysicalFormat:(id)format alwaysNotify:(BOOL)notify
{
  v29 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  physicalFormat = [(ASDTIOA2InjectionStream *)self physicalFormat];
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
      v24 = deviceUID;
      v25 = 2112;
      v26 = streamName;
      v27 = 2112;
      v28 = physicalFormat;
      _os_log_debug_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEBUG, "%@:%@: setPhysicalFormat: Old: %@", buf, 0x20u);
    }

    ioa2Device = [(ASDTIOA2InjectionStream *)self ioa2Device];
    inputStream = [(ASDTIOA2InjectionStream *)self inputStream];
    v10 = [ioa2Device _setCurrentFormat:formatCopy forStream:objc_msgSend(inputStream, "userClientID")];
  }

  if (notify || v10)
  {
    v22.receiver = self;
    v22.super_class = ASDTIOA2InjectionStream;
    v8 = [(ASDTStream *)&v22 setPhysicalFormat:formatCopy];
  }

  if (v10)
  {
    v14 = ASDTIOA2LogType(v8, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID2 = [device2 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      physicalFormat2 = [(ASDTIOA2InjectionStream *)self physicalFormat];
      *buf = 138412802;
      v24 = deviceUID2;
      v25 = 2112;
      v26 = streamName2;
      v27 = 2112;
      v28 = physicalFormat2;
      _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: setPhysicalFormat: New: %@", buf, 0x20u);
    }
  }
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormat = [(ASDTIOA2InjectionStream *)self physicalFormat];
  v6 = [physicalFormat isEqual:formatCopy];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    device = [(ASDTStream *)self device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ASDTIOA2InjectionStream_changePhysicalFormat___block_invoke;
    v9[3] = &unk_278CE8B40;
    objc_copyWeak(&v11, &location);
    v10 = formatCopy;
    [device requestConfigurationChange:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __48__ASDTIOA2InjectionStream_changePhysicalFormat___block_invoke(uint64_t a1)
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
  v3.super_class = ASDTIOA2InjectionStream;
  [(ASDStream *)&v3 deviceChangedToSamplingRate:rate];
}

- (BOOL)deviceChangedToSamplingRate:(double)rate
{
  objc_initWeak(&location, self);
  device = [(ASDTStream *)self device];
  concurrentQueue = [device concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ASDTIOA2InjectionStream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v9, &location);
  v9[1] = *&rate;
  dispatch_async(concurrentQueue, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  return 1;
}

void __55__ASDTIOA2InjectionStream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained asyncDeviceChangedToSamplingRate:*(a1 + 40)];
}

- (void)setIsActive:(BOOL)active
{
  v5.receiver = self;
  v5.super_class = ASDTIOA2InjectionStream;
  [(ASDStream *)&v5 setIsActive:active];
  inputStream = [(ASDTIOA2InjectionStream *)self inputStream];
  [inputStream updateActiveState];
}

- (int)pmPrewarmStream:(int)stream
{
  v30 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = ASDTIOA2InjectionStream;
  v5 = [(ASDTStream *)&v23 pmPrewarmStream:?];
  v6 = v5;
  if (stream == 1970304877 && !v5)
  {
    ioa2Device = [(ASDTIOA2InjectionStream *)self ioa2Device];
    _getIOBufferFrameSize = [ioa2Device _getIOBufferFrameSize];

    physicalFormat = [(ASDTIOA2InjectionStream *)self physicalFormat];
    bytesPerFrame = [physicalFormat bytesPerFrame];

    v11 = [(ASDTExclavesStream *)self allocExclavesAudioBuffer:(bytesPerFrame * _getIOBufferFrameSize)];
    LOBYTE(_getIOBufferFrameSize) = v11;
    v13 = ASDTIOA2LogType(v11, v12);
    v14 = v13;
    if (_getIOBufferFrameSize)
    {
      v6 = 0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        device = [(ASDTStream *)self device];
        deviceUID = [device deviceUID];
        streamName = [(ASDStream *)self streamName];
        exclavesBufferSize = [(ASDTExclavesStream *)self exclavesBufferSize];
        *buf = 138412802;
        v25 = deviceUID;
        v26 = 2112;
        v27 = streamName;
        v28 = 1024;
        v29 = exclavesBufferSize;
        _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: Exclaves inbound buffer size: %u", buf, 0x1Cu);

        v6 = 0;
      }
    }

    else
    {
      v6 = 1852990585;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v25 = deviceUID2;
        v26 = 2112;
        v27 = streamName2;
        _os_log_error_impl(&dword_2416BA000, v14, OS_LOG_TYPE_ERROR, "%@:%@: Failed to allocate exclaves inbound buffer.", buf, 0x16u);
      }
    }
  }

  return v6;
}

- (int)pmPrepareStream:(int)stream
{
  v3 = *&stream;
  if (stream == 1685090418)
  {
    [(ASDTExclavesStream *)self clearBuffer];
    [(ASDTExclavesStream *)self freeExclavesAudioBuffer];
  }

  v6.receiver = self;
  v6.super_class = ASDTIOA2InjectionStream;
  return [(ASDTExclavesStream *)&v6 pmPrepareStream:v3];
}

- (ASDTIOA2Stream)inputStream
{
  WeakRetained = objc_loadWeakRetained(&self->_inputStream);

  return WeakRetained;
}

- (void)initWithIOA2Device:(uint8_t *)buf inputStream:(os_log_t)log registryDict:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@:%@: Exclaves injection buffer name is not supplied.", buf, 0x16u);
}

@end