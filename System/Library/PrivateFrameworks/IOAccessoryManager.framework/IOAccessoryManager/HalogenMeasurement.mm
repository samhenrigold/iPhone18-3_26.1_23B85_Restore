@interface HalogenMeasurement
- (BOOL)_allocBuffers;
- (BOOL)_connectToAccessoryManager:(int)manager;
- (BOOL)_createSleepWakeNotifier;
- (BOOL)_doHalogenLdcmCalc:(BOOL)calc isReceptacleWet:(BOOL)wet withWetTransitionThreshold:(double)threshold withDryTransitionThreshold:(double)transitionThreshold;
- (BOOL)_initArbiter;
- (BOOL)_initAudioPath;
- (BOOL)shouldInvertData;
- (HalogenMeasurement)initWithSize:(int)size onPort:(int)port;
- (id)getResultString;
- (int)doMeasurement:(BOOL)measurement onPin:(int)pin isReceptacleEmpty:(BOOL)empty isReceptacleWet:(BOOL)wet withWetTransitionThreshold:(double)threshold withDryTransitionThreshold:(double)transitionThreshold;
- (int)saveAsWav:(id)wav;
- (unsigned)maxOutputAmplitude;
- (unsigned)signalOffset;
- (void)_allocBuffers;
- (void)_createSleepWakeNotifier;
- (void)_deinitArbiter;
- (void)_deinitAudioPath;
- (void)_destroySleepWakeNotifier;
- (void)_disconnectFromAccessoryManager;
- (void)_freeBuffers;
- (void)_generateSineWave;
- (void)_initArbiter;
- (void)_initAudioPath;
- (void)_resetCalcValues;
- (void)dealloc;
@end

@implementation HalogenMeasurement

- (HalogenMeasurement)initWithSize:(int)size onPort:(int)port
{
  v4 = *&port;
  v5 = *&size;
  v10.receiver = self;
  v10.super_class = HalogenMeasurement;
  v6 = [(HalogenMeasurement *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  *(v6 + 36) = xmmword_25491C810;
  *(v6 + 52) = xmmword_25491C820;
  *(v6 + 17) = v5;
  *(v6 + 9) = 0x780000012C0;
  *(v6 + 20) = 2 * v5 + 10816;
  *(v6 + 21) = 4096;
  *(v6 + 20) = 0x12C000000EC0;
  *(v6 + 54) = objc_alloc_init(MEMORY[0x277CCA928]);
  v7->_audioTimeoutInSec = 1;
  v7->_signalFreq = 110.0;
  v7->_initalPhaseInDegrees = 0;
  v7->_halogenLdcmCalc = [[HalogenLdcmCalc alloc] initWithSize:v5];
  if (![(HalogenMeasurement *)v7 _allocBuffers])
  {
    [HalogenMeasurement initWithSize:onPort:];
LABEL_11:

    return 0;
  }

  [(HalogenMeasurement *)v7 _generateSineWave];
  if (![(HalogenMeasurement *)v7 _connectToAccessoryManager:v4])
  {
    [HalogenMeasurement initWithSize:onPort:];
    goto LABEL_11;
  }

  if (![(HalogenMeasurement *)v7 _createSleepWakeNotifier])
  {
    [HalogenMeasurement initWithSize:onPort:];
    goto LABEL_11;
  }

  [(HalogenMeasurement *)v7 _initArbiter];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:HalogenMeasurement Started!", v9, 2u);
  }

  return v7;
}

- (void)dealloc
{
  [(HalogenMeasurement *)self _destroySleepWakeNotifier];
  [(HalogenMeasurement *)self _disconnectFromAccessoryManager];
  [(HalogenMeasurement *)self _deinitArbiter];
  [(HalogenMeasurement *)self _freeBuffers];

  v3.receiver = self;
  v3.super_class = HalogenMeasurement;
  [(HalogenMeasurement *)&v3 dealloc];
}

- (BOOL)_connectToAccessoryManager:(int)manager
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  self->_service = ServiceWithPrimaryPort;
  if (ServiceWithPrimaryPort)
  {
    if (IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &self->_connect))
    {
      [HalogenMeasurement _connectToAccessoryManager:];
      return v6;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [HalogenMeasurement _connectToAccessoryManager:];
    return v7;
  }
}

- (void)_disconnectFromAccessoryManager
{
  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
    self->_connect = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }
}

- (BOOL)_initArbiter
{
  self->_arbiterLocked = 0;
  v3 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(self->_service, @"SupportsEisAfe", *MEMORY[0x277CBECE8], 0);
  v5 = IORegistryEntryCreateCFProperty(self->_service, @"RequiresEisAfeArbiter", v3, 0);
  v6 = v5;
  self->_arbitrationRequired = 1;
  if (v5)
  {
    self->_arbitrationRequired = CFBooleanGetValue(v5) != 0;
  }

  else if (CFProperty)
  {
    if (CFBooleanGetValue(CFProperty))
    {
      self->_arbitrationRequired = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:Skipping arbitration.", v10, 2u);
      }
    }
  }

  if (self->_arbitrationRequired)
  {
    v7 = [objc_alloc(MEMORY[0x277D81FB0]) initWithID:0];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D81FA8]);
  }

  v8 = v7;
  self->_arbiterClient = v7;
  if (v7)
  {
    if (!CFProperty)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [HalogenMeasurement _initArbiter];
  if (CFProperty)
  {
LABEL_8:
    CFRelease(CFProperty);
  }

LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  return v8 != 0;
}

- (void)_deinitArbiter
{
  if (self->_arbiterLocked)
  {
    [(BaseResourceArbiterClient *)self->_arbiterClient releaseResourceAccess];
  }

  arbiterClient = self->_arbiterClient;
}

- (BOOL)_allocBuffers
{
  v3 = self->_inputFrameSizeInBytes * self->_nTotalSamples;
  *&self->_pcmInputDataIndexInBytes = 0;
  self->_pcmInputDataMaxSzInBytes = v3;
  v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
  self->_pcmInputData = v4;
  if (v4)
  {
    *&self->_pcmOutputDataMaxSzInBytes = (self->_outputFrameSizeInBytes * self->_nTotalSamples);
    v5 = [MEMORY[0x277CBEB28] dataWithLength:?];
    self->_pcmOutputData = v5;
    if (v5)
    {
      v6 = [MEMORY[0x277CBEB28] dataWithLength:8 * self->_nMeasurementSamples];
      self->_currentData = v6;
      if (v6)
      {
        v7 = [MEMORY[0x277CBEB28] dataWithLength:8 * self->_nMeasurementSamples];
        self->_voltageData = v7;
        if (v7)
        {
          return 1;
        }

        else
        {
          [(HalogenMeasurement *)&v9 _allocBuffers];
          return v9;
        }
      }

      else
      {
        [(HalogenMeasurement *)&v10 _allocBuffers];
        return v10;
      }
    }

    else
    {
      [(HalogenMeasurement *)&v11 _allocBuffers];
      return v11;
    }
  }

  else
  {
    [(HalogenMeasurement *)&v12 _allocBuffers];
    return v12;
  }
}

- (void)_freeBuffers
{
  voltageData = self->_voltageData;
}

- (void)_generateSineWave
{
  bytes = [(NSMutableData *)self->_pcmOutputData bytes];
  if (self->_nTotalSamples >= 1)
  {
    v4 = bytes;
    v5 = 0;
    v6 = self->_signalFreq * 6.28318531 / self->_sampleRate;
    v7 = (self->_initalPhaseInDegrees / 360.0 + self->_initalPhaseInDegrees / 360.0) * 3.14159265;
    do
    {
      v8 = sin(v7);
      maxOutputAmplitude = [(HalogenMeasurement *)self maxOutputAmplitude];
      *(v4 + 2 * v5) = -([(HalogenMeasurement *)self signalOffset]- v8 * maxOutputAmplitude);
      v7 = v6 + v7;
      ++v5;
    }

    while (v5 < self->_nTotalSamples);
  }
}

- (BOOL)_initAudioPath
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  selfCopy2 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  bitDepth = self->_bitDepth;
  sampleRate = self->_sampleRate;
  nOutputChannels = self->_nOutputChannels;
  inputFrameSizeInBytes = self->_inputFrameSizeInBytes;
  outputFrameSizeInBytes = self->_outputFrameSizeInBytes;
  nInputChannels = self->_nInputChannels;
  LODWORD(v25) = bitDepth;
  v18 = nOutputChannels;
  v19 = bitDepth;
  v21 = inputFrameSizeInBytes;
  v22 = 1;
  v23 = inputFrameSizeInBytes;
  *v20 = sampleRate;
  v20[1] = 0xC6C70636DLL;
  v16 = 1;
  v17 = outputFrameSizeInBytes;
  v15 = outputFrameSizeInBytes;
  *v14 = sampleRate;
  v14[1] = 0xC6C70636DLL;
  *&inDesc.componentType = xmmword_25491C130;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    [(HalogenMeasurement *)&v28 _initAudioPath];
    return v28;
  }

  if (AudioComponentInstanceNew(Next, &self->_audioComponentInst) || (audioComponentInst = self->_audioComponentInst) == 0)
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  inData = 1;
  if (AudioUnitSetProperty(audioComponentInst, 0x7D3u, 1u, 1u, &inData, 4u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 0x7D3u, 2u, 0, &inData, 4u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 8u, 1u, 0, v14, 0x28u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  v11 = 0;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x33u, 2u, 1u, &v11, 4u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 8u, 2u, 1u, v20, 0x28u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  v26 = recordCallback_0;
  selfCopy2 = self;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x7D5u, 0, 1u, &v26, 0x10u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  v26 = playbackCallback_0;
  selfCopy2 = self;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x17u, 0, 0, &v26, 0x10u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitInitialize(self->_audioComponentInst))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  return 1;
}

- (void)_deinitAudioPath
{
  audioComponentInst = self->_audioComponentInst;
  if (audioComponentInst)
  {
    AudioUnitUninitialize(audioComponentInst);
    AudioComponentInstanceDispose(self->_audioComponentInst);
    self->_audioComponentInst = 0;
  }
}

- (BOOL)_createSleepWakeNotifier
{
  [(HalogenMeasurement *)self setPowerState:2];
  [(HalogenMeasurement *)self setSystemPowerPort:0];
  [(HalogenMeasurement *)self setSystemPowerIterator:0];
  [(HalogenMeasurement *)self setSystemPowerNotifyPortRef:0];
  [(HalogenMeasurement *)self setSystemPowerQueue:dispatch_queue_create("com.apple.ioaccessorymanager.halogenMeasurement.systemPower.queue", 0)];
  if ([(HalogenMeasurement *)self systemPowerQueue])
  {
    [(HalogenMeasurement *)self setSystemPowerPort:IORegisterForSystemPower(self, &self->_systemPowerNotifyPortRef, systemPowerCallback_0, &self->_systemPowerIterator)];
    if ([(HalogenMeasurement *)self systemPowerPort])
    {
      [(HalogenMeasurement *)self setPowerStateCond:objc_alloc_init(MEMORY[0x277CCA928])];
      if ([(HalogenMeasurement *)self powerStateCond])
      {
        IONotificationPortSetDispatchQueue([(HalogenMeasurement *)self systemPowerNotifyPortRef], [(HalogenMeasurement *)self systemPowerQueue]);
        return 1;
      }

      else
      {
        [(HalogenMeasurement *)&v4 _createSleepWakeNotifier];
        return v4;
      }
    }

    else
    {
      [(HalogenMeasurement *)&v5 _createSleepWakeNotifier];
      return v5;
    }
  }

  else
  {
    [(HalogenMeasurement *)&v6 _createSleepWakeNotifier];
    return v6;
  }
}

- (void)_destroySleepWakeNotifier
{
  if ([(HalogenMeasurement *)self systemPowerIterator])
  {
    IODeregisterForSystemPower(&self->_systemPowerIterator);
  }

  if ([(HalogenMeasurement *)self systemPowerNotifyPortRef])
  {
    IONotificationPortDestroy([(HalogenMeasurement *)self systemPowerNotifyPortRef]);
  }

  if ([(HalogenMeasurement *)self systemPowerPort])
  {
    IOServiceClose([(HalogenMeasurement *)self systemPowerPort]);
  }

  if ([(HalogenMeasurement *)self systemPowerQueue])
  {
    dispatch_release([(HalogenMeasurement *)self systemPowerQueue]);
  }

  powerStateCond = [(HalogenMeasurement *)self powerStateCond];
}

- (int)doMeasurement:(BOOL)measurement onPin:(int)pin isReceptacleEmpty:(BOOL)empty isReceptacleWet:(BOOL)wet withWetTransitionThreshold:(double)threshold withDryTransitionThreshold:(double)transitionThreshold
{
  wetCopy = wet;
  emptyCopy = empty;
  v35 = *MEMORY[0x277D85DE8];
  *&self->_pcmInputDataIndexInBytes = 0;
  self->_pcmOutputDataIndexInBytes = 0;
  *&self->_isCalibrationDone = 0;
  self->_pinToMeasure = pin;
  synchRequestResourceAccess = [(BaseResourceArbiterClient *)self->_arbiterClient synchRequestResourceAccess];
  self->_arbiterLocked = synchRequestResourceAccess;
  if (synchRequestResourceAccess)
  {
    v14 = IOAccessoryManagerSelectEisPin();
    if (!v14)
    {
      self->_eisPinToken2 = self->_eisPinToken1;
      if ([(HalogenMeasurement *)self powerState])
      {
        if ([(HalogenMeasurement *)self powerState]== 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:Waiting for kHalogenPowerStateAwake", buf, 2u);
          }

          [(NSCondition *)[(HalogenMeasurement *)self powerStateCond] lock];
          v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
          if ([(HalogenMeasurement *)self powerState]== 1)
          {
            do
            {
              v16 = [(NSCondition *)self->_powerStateCond waitUntilDate:v15];
            }

            while ([(HalogenMeasurement *)self powerState]== 1 && v16);
          }

          [(NSCondition *)[(HalogenMeasurement *)self powerStateCond] unlock];
        }

        if ([(HalogenMeasurement *)self powerState]== 2)
        {
          if ([(HalogenMeasurement *)self _initAudioPath])
          {
            v17 = AudioOutputUnitStart(self->_audioComponentInst);
            if (v17)
            {
              v29 = v17;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                v34 = v29;
                _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:AudioUnitStart() failed (status = 0x%x)", buf, 8u);
              }

              v24 = 3;
            }

            else
            {
              v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_audioTimeoutInSec];
              [(NSCondition *)self->_audioTimeoutCond lock];
              if (self->_isMeasurementDone)
              {
                v19 = 0;
              }

              else
              {
                do
                {
                  v19 = ![(NSCondition *)self->_audioTimeoutCond waitUntilDate:v18];
                }

                while (!self->_isMeasurementDone && !v19);
              }

              [(NSCondition *)self->_audioTimeoutCond unlock];
              AudioOutputUnitStop(self->_audioComponentInst);
              [(BaseResourceArbiterClient *)self->_arbiterClient releaseResourceAccess];
              self->_arbiterLocked = 0;
              v20 = IOAccessoryManagerSelectEisPin();
              if (!v20)
              {
                eisPinToken2 = self->_eisPinToken2;
                if (eisPinToken2 == 0xAAAAAAAAAAAAAAAALL)
                {
                  if (self->_pinToMeasure == 6 || eisPinToken2 == LODWORD(self->_eisPinToken1) + 1)
                  {
                    if (v19)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:Timeout!", buf, 2u);
                      }

                      v22 = 0;
                      v23 = 1;
                      v24 = 1;
                      goto LABEL_28;
                    }

                    [(HalogenMeasurement *)self _doHalogenLdcmCalc:emptyCopy isReceptacleWet:wetCopy withWetTransitionThreshold:threshold withDryTransitionThreshold:transitionThreshold];
                    v22 = 0;
                    v24 = 0;
LABEL_27:
                    v23 = 1;
                    goto LABEL_28;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    v34 = v19;
                    v31 = MEMORY[0x277D86220];
                    v32 = "HalogenMeasurement:_eisPinToken2 != _eisPinToken1+1 due to change on lightning port. isTimeout=%d";
                    goto LABEL_67;
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v34 = v19;
                  v31 = MEMORY[0x277D86220];
                  v32 = "HalogenMeasurement:_eisPinToken2 != eisPinTokenFinal due to change on lightning port. isTimeout=%d";
LABEL_67:
                  _os_log_impl(&dword_2548F1000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 8u);
                }

                v22 = 0;
                v24 = 2;
                goto LABEL_27;
              }

              v30 = v20;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                v34 = v30;
                _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:IOAccessoryManagerSelectEisPin() failed (ret = 0x%x)", buf, 8u);
              }

              v24 = 2;
            }

            v23 = 1;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:AudioUnit is not initialized", buf, 2u);
            }

            v23 = 0;
            v24 = 3;
          }

LABEL_61:
          v22 = 1;
          goto LABEL_28;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v27 = MEMORY[0x277D86220];
          v28 = "HalogenMeasurement:abort measurement... system is not yet awake";
          goto LABEL_49;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = MEMORY[0x277D86220];
        v28 = "HalogenMeasurement:abort measurement... system going to sleep";
LABEL_49:
        _os_log_impl(&dword_2548F1000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
      }

      v23 = 0;
      v24 = 4;
      goto LABEL_61;
    }

    v26 = v14;
    if (v14 == -536870187)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v34 = -536870187;
        v24 = 8;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:IOAccessoryManagerSelectEisPin() device busy (ret = 0x%x)", buf, 8u);
        v23 = 0;
        v22 = 0;
      }

      else
      {
        v23 = 0;
        v22 = 0;
        v24 = 8;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v34 = v26;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:IOAccessoryManagerSelectEisPin() failed (ret = 0x%x)", buf, 8u);
      }

      v23 = 0;
      v22 = 0;
      v24 = 2;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:Arbiter failed to grant access to Halogen", buf, 2u);
    }

    v23 = 0;
    v22 = 0;
    v24 = 6;
  }

LABEL_28:
  if (self->_arbiterLocked)
  {
    self->_arbiterLocked = 0;
    [(BaseResourceArbiterClient *)self->_arbiterClient releaseResourceAccess];
    if (!v22)
    {
      goto LABEL_30;
    }

LABEL_34:
    IOAccessoryManagerSelectEisPin();
    if (!v23)
    {
      return v24;
    }

    goto LABEL_31;
  }

  if (v22)
  {
    goto LABEL_34;
  }

LABEL_30:
  if (v23)
  {
LABEL_31:
    [(HalogenMeasurement *)self _deinitAudioPath];
  }

  return v24;
}

- (int)saveAsWav:(id)wav
{
  outExtAudioFile = 0xAAAAAAAAAAAAAAAALL;
  uTF8String = [wav UTF8String];
  if (!self->_isMeasurementDone)
  {
    [HalogenMeasurement saveAsWav:?];
    return LODWORD(inStreamDesc.mSampleRate);
  }

  v5 = uTF8String;
  v6 = strlen(uTF8String);
  v7 = CFURLCreateFromFileSystemRepresentation(0, v5, v6, 0);
  if (!v7)
  {
    [HalogenMeasurement saveAsWav:?];
    return LODWORD(inStreamDesc.mSampleRate);
  }

  v8 = v7;
  *&inStreamDesc.mBitsPerChannel = 0;
  bitDepth = self->_bitDepth;
  sampleRate = self->_sampleRate;
  inStreamDesc.mChannelsPerFrame = self->_nInputChannels;
  inStreamDesc.mBitsPerChannel = bitDepth;
  inStreamDesc.mBytesPerPacket = self->_inputFrameSizeInBytes;
  inStreamDesc.mFramesPerPacket = 1;
  inStreamDesc.mBytesPerFrame = inStreamDesc.mBytesPerPacket;
  inStreamDesc.mSampleRate = sampleRate;
  *&inStreamDesc.mFormatID = 0xC6C70636DLL;
  if (ExtAudioFileCreateWithURL(v7, 0x57415645u, &inStreamDesc, 0, 1u, &outExtAudioFile))
  {
    [HalogenMeasurement saveAsWav:];
    v13 = v18;
  }

  else
  {
    v15.mBuffers[0].mData = [(NSMutableData *)self->_pcmInputData bytes];
    pcmInputDataSampleCnt = self->_pcmInputDataSampleCnt;
    v12 = self->_inputFrameSizeInBytes * pcmInputDataSampleCnt;
    v15.mBuffers[0].mNumberChannels = self->_nInputChannels;
    v15.mBuffers[0].mDataByteSize = v12;
    ExtAudioFileWrite(outExtAudioFile, pcmInputDataSampleCnt, &v15);
    ExtAudioFileDispose(outExtAudioFile);
    v13 = 0;
  }

  CFRelease(v8);
  return v13;
}

- (void)_resetCalcValues
{
  self->_precalVoltageSNR = 0.0;
  self->_calVoltageSNR = 0.0;
  self->_measurementVoltageSNR = 0.0;
  *&self->_precalCurrentSNR = 0u;
  *&self->_currentGainCorrection = 0u;
  *&self->_calCurrentSNR = 0u;
  *&self->_goertzelPhase = 0u;
  *&self->_compensatedPhase = 0u;
  *&self->_capacitanceInNanoF = 0u;
  self->_measurementCurrentSNR = 0.0;
  self->_measurementCondetSNR = 0.0;
}

- (BOOL)_doHalogenLdcmCalc:(BOOL)calc isReceptacleWet:(BOOL)wet withWetTransitionThreshold:(double)threshold withDryTransitionThreshold:(double)transitionThreshold
{
  wetCopy = wet;
  calcCopy = calc;
  bytes = [(NSMutableData *)self->_pcmInputData bytes];
  shouldInvertData = [(HalogenMeasurement *)self shouldInvertData];
  if (shouldInvertData)
  {
    v13 = 424;
  }

  else
  {
    v13 = 416;
  }

  if (shouldInvertData)
  {
    v14 = 416;
  }

  else
  {
    v14 = 424;
  }

  bytes2 = [*(&self->super.isa + v13) bytes];
  bytes3 = [*(&self->super.isa + v14) bytes];
  [(HalogenMeasurement *)self _resetCalcValues];
  nMeasurementSamples = self->_nMeasurementSamples;
  if (nMeasurementSamples >= 1)
  {
    v18 = (bytes + 4 * self->_precalibrationSampleOffsetInFrames + 2);
    v19 = bytes2;
    v20 = bytes3;
    do
    {
      *v19++ = vcvtd_n_f64_s32(*(v18 - 1), 0xFuLL);
      *v20++ = vcvtd_n_f64_s32(*v18, 0xFuLL);
      v18 += 2;
      --nMeasurementSamples;
    }

    while (nMeasurementSamples);
  }

  v21 = [(HalogenLdcmCalc *)self->_halogenLdcmCalc doPreCalibration:self->_voltageData withCurrentData:self->_currentData];
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc precalVoltageSignalLevel];
  self->_precalVoltageSignalLevel = v22;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc precalVoltageNoiseLevel];
  self->_precalVoltageNoiseLevel = v23;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc precalVoltageSNR];
  self->_precalVoltageSNR = v24;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc precalCurrentSignalLevel];
  self->_precalCurrentSignalLevel = v25;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc precalCurrentNoiseLevel];
  self->_precalCurrentNoiseLevel = v26;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc precalCurrentSNR];
  self->_precalCurrentSNR = v27;
  v28 = self->_nMeasurementSamples;
  if (v28 >= 1)
  {
    v29 = (bytes + 4 * self->_calibrationSampleOffsetInFrames + 2);
    v30 = bytes2;
    v31 = bytes3;
    do
    {
      *v30++ = vcvtd_n_f64_s32(*(v29 - 1), 0xFuLL);
      *v31++ = vcvtd_n_f64_s32(*v29, 0xFuLL);
      v29 += 2;
      --v28;
    }

    while (v28);
  }

  v32 = [(HalogenLdcmCalc *)self->_halogenLdcmCalc doCalibration:self->_voltageData withCurrentData:self->_currentData];
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc calVoltageSignalLevel];
  self->_calVoltageSignalLevel = v33;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc calVoltageNoiseLevel];
  self->_calVoltageNoiseLevel = v34;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc calVoltageSNR];
  self->_calVoltageSNR = v35;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc calCurrentSignalLevel];
  self->_calCurrentSignalLevel = v36;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc calCurrentNoiseLevel];
  self->_calCurrentNoiseLevel = v37;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc calCurrentSNR];
  self->_calCurrentSNR = v38;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc voltageGainCorrection];
  self->_voltageGainCorrection = v39;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc currentGainCorrection];
  self->_currentGainCorrection = v40;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc currentPhaseCompensation];
  self->_currentPhaseCompensation = v41;
  v42 = self->_nMeasurementSamples;
  if (v42 >= 1)
  {
    v43 = (bytes + 4 * self->_measurementSampleOffsetInFrames + 2);
    do
    {
      *bytes2++ = vcvtd_n_f64_s32(*(v43 - 1), 0xFuLL);
      *bytes3++ = vcvtd_n_f64_s32(*v43, 0xFuLL);
      v43 += 2;
      --v42;
    }

    while (v42);
  }

  v44 = [(HalogenLdcmCalc *)self->_halogenLdcmCalc doLiquidDetection:self->_voltageData withCurrentData:self->_currentData isReceptacleEmpty:calcCopy isReceptacleWet:wetCopy withWetTransitionThreshold:threshold withDryTransitionThreshold:transitionThreshold];
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc goertzelImpedance];
  self->_goertzelImpedance = v45;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc goertzelPhase];
  self->_goertzelPhase = v46;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc compensatedImpedance];
  self->_compensatedImpedance = v47;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc compensatedPhase];
  self->_compensatedPhase = v48;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc resistanceInOhms];
  self->_resistanceInOhms = v49;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc capacitanceInNanoF];
  self->_capacitanceInNanoF = v50;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc clippingScore];
  self->_clippingScore = v51;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementVoltageSignalLevel];
  self->_measurementVoltageSignalLevel = v52;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementVoltageNoiseLevel];
  self->_measurementVoltageNoiseLevel = v53;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementVoltageSNR];
  self->_measurementVoltageSNR = v54;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementCurrentSignalLevel];
  self->_measurementCurrentSignalLevel = v55;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementCurrentNoiseLevel];
  self->_measurementCurrentNoiseLevel = v56;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementCurrentSNR];
  self->_measurementCurrentSNR = v57;
  [(HalogenLdcmCalc *)self->_halogenLdcmCalc measurementCondetSNR];
  self->_measurementCondetSNR = v58;
  if (v21 == 2)
  {
    v44 = 5;
    goto LABEL_22;
  }

  switch(v32)
  {
    case 1:
      v44 = 4;
      goto LABEL_22;
    case 2:
      v44 = 6;
LABEL_22:
      self->_halogenResult = v44;
      return 1;
    case 0:
      goto LABEL_22;
  }

  return 1;
}

- (id)getResultString
{
  halogenResult = self->_halogenResult;
  if (halogenResult > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_279793320[halogenResult];
  }
}

- (unsigned)maxOutputAmplitude
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HalogenMeasurement_maxOutputAmplitude__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (maxOutputAmplitude_onceToken != -1)
  {
    dispatch_once(&maxOutputAmplitude_onceToken, block);
  }

  return self->_maxOutputAmplitude;
}

void __40__HalogenMeasurement_maxOutputAmplitude__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MGGetStringAnswer();
  v3 = 0x7FFF;
  if (([v4 hasPrefix:{@"iPhone12, 8"}] & 1) == 0)
  {
    if ([v4 hasPrefix:@"iPhone11"])
    {
      v3 = 0x7FFF;
    }

    else
    {
      v3 = 1057;
    }
  }

  *(*(a1 + 32) + 14) = v3;
  if (v4)
  {
  }
}

- (unsigned)signalOffset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HalogenMeasurement_signalOffset__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (signalOffset_onceToken != -1)
  {
    dispatch_once(&signalOffset_onceToken, block);
  }

  return self->_signalOffset;
}

void __34__HalogenMeasurement_signalOffset__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MGGetStringAnswer();
  if ([v4 hasPrefix:{@"iPhone12, 8"}])
  {
    v3 = 0;
  }

  else if ([v4 hasPrefix:@"iPhone11"])
  {
    v3 = 0;
  }

  else
  {
    v3 = 15308;
  }

  *(*(a1 + 32) + 16) = v3;
  if (v4)
  {
  }
}

- (BOOL)shouldInvertData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HalogenMeasurement_shouldInvertData__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (shouldInvertData_onceToken != -1)
  {
    dispatch_once(&shouldInvertData_onceToken, block);
  }

  return self->_shouldInvertData;
}

void __38__HalogenMeasurement_shouldInvertData__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MGGetStringAnswer();
  if ([v4 hasPrefix:{@"iPhone12, 8"}])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v4 hasPrefix:@"iPhone11"] ^ 1;
  }

  *(*(a1 + 32) + 8) = v3;
  if (v4)
  {
  }
}

- (void)initWithSize:onPort:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)initWithSize:onPort:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }
}

- (void)initWithSize:onPort:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }
}

- (void)_connectToAccessoryManager:.cold.1()
{
  OUTLINED_FUNCTION_2();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

- (void)_connectToAccessoryManager:.cold.2()
{
  OUTLINED_FUNCTION_2();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  OUTLINED_FUNCTION_2_0();
}

- (void)_initArbiter
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)_allocBuffers
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *self = 0;
}

- (void)_initAudioPath
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *self = 0;
}

- (void)_createSleepWakeNotifier
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *self = 0;
}

- (void)saveAsWav:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = -1;
}

- (void)saveAsWav:.cold.2()
{
  OUTLINED_FUNCTION_2();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  *v0 = -1;
}

- (void)saveAsWav:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = -1;
}

@end