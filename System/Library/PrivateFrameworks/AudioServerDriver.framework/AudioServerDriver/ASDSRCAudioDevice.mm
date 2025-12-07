@interface ASDSRCAudioDevice
- (ASDSRCAudioDevice)initWithDeviceUID:(id)d underlyingDevice:(id)device plugin:(id)plugin;
- (BOOL)changeSamplingRate:(double)rate;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (double)sampleRateRatio;
- (double)samplingRate;
- (id)getZeroTimestampBlock;
- (id)samplingRates;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)performStopIO;
- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case;
- (int)startIOForClient:(unsigned int)client;
- (int)stopIOForClient:(unsigned int)client;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (unsigned)inputSafetyOffset;
- (unsigned)outputSafetyOffset;
- (unsigned)timestampPeriod;
- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object;
- (void)setSamplingRate:(double)rate;
- (void)setSamplingRates:(id)rates;
@end

@implementation ASDSRCAudioDevice

- (ASDSRCAudioDevice)initWithDeviceUID:(id)d underlyingDevice:(id)device plugin:(id)plugin
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  deviceCopy = device;
  v47.receiver = self;
  v47.super_class = ASDSRCAudioDevice;
  v10 = [(ASDAudioDevice *)&v47 initWithDeviceUID:dCopy withPlugin:plugin];
  if (v10)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v11 bundleIdentifier];
    objc_storeStrong(&v10->_underlyingDevice, device);
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.sampleRate", bundleIdentifier, dCopy];
    v14 = dispatch_queue_create([dCopy UTF8String], 0);
    sampleRateQueue = v10->_sampleRateQueue;
    v10->_sampleRateQueue = v14;

    *&v10->_lastTimestamp.valid = 0u;
    *&v10->_lastTimestamp.hostTime = 0u;
    if (deviceCopy)
    {
      v16 = MEMORY[0x277CBEB18];
      samplingRates = [(ASDAudioDevice *)v10->_underlyingDevice samplingRates];
      v18 = [v16 arrayWithArray:samplingRates];
      [(ASDSRCAudioDevice *)v10 setSamplingRates:v18];

      [(ASDAudioDevice *)v10->_underlyingDevice samplingRate];
      [(ASDSRCAudioDevice *)v10 setSamplingRate:?];
      [deviceCopy setConfigurationChangeDelegate:v10];
      [deviceCopy setPropertyChangedDelegate:v10];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      inputStreams = [deviceCopy inputStreams];
      v20 = [inputStreams countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v44;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v44 != v22)
            {
              objc_enumerationMutation(inputStreams);
            }

            [*(*(&v43 + 1) + 8 * i) setPropertyChangedDelegate:v10];
          }

          v21 = [inputStreams countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v21);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      outputStreams = [deviceCopy outputStreams];
      v25 = [outputStreams countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(outputStreams);
            }

            [*(*(&v39 + 1) + 8 * j) setPropertyChangedDelegate:v10];
          }

          v26 = [outputStreams countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v26);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      controls = [deviceCopy controls];
      v30 = [controls countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v36;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v36 != v32)
            {
              objc_enumerationMutation(controls);
            }

            [*(*(&v35 + 1) + 8 * k) setPropertyChangedDelegate:v10];
          }

          v31 = [controls countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v31);
      }
    }

    else
    {
      controls = v10;
      v10 = 0;
    }
  }

  return v10;
}

- (int)startIOForClient:(unsigned int)client
{
  v3 = *&client;
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(ASDAudioDevice *)self->_underlyingDevice startIOForClient:?];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6 >> 24;
      if (((v6 >> 24) - 32) >= 0x5F)
      {
        v7 = 32;
      }

      v8 = v6 << 8 >> 24;
      if ((v8 - 32) >= 0x5F)
      {
        v8 = 32;
      }

      v9 = v6 >> 8;
      if ((v9 - 32) >= 0x5F)
      {
        v9 = 32;
      }

      *buf = 67109888;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      if ((v6 - 32) >= 0x5F)
      {
        v10 = 32;
      }

      else
      {
        v10 = v6;
      }

      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Underlying device failed to start with error: %c%c%c%c", buf, 0x1Au);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ASDSRCAudioDevice;
    if ([(ASDAudioDevice *)&v12 startIOForClient:v3])
    {
      [(ASDSRCAudioDevice *)a2 startIOForClient:?];
    }
  }

  return v6;
}

- (int)stopIOForClient:(unsigned int)client
{
  v3 = *&client;
  v21 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ASDSRCAudioDevice;
  v6 = [(ASDAudioDevice *)&v12 stopIOForClient:?];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6 >> 24;
      if (((v6 >> 24) - 32) >= 0x5F)
      {
        v7 = 32;
      }

      v8 = v6 << 8 >> 24;
      if ((v8 - 32) >= 0x5F)
      {
        v8 = 32;
      }

      v9 = v6 >> 8;
      if ((v9 - 32) >= 0x5F)
      {
        v9 = 32;
      }

      *buf = 67109888;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      if ((v6 - 32) >= 0x5F)
      {
        v10 = 32;
      }

      else
      {
        v10 = v6;
      }

      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASDAudioDevice failed to stop with error: %c%c%c%c", buf, 0x1Au);
    }
  }

  else if ([(ASDAudioDevice *)self->_underlyingDevice stopIOForClient:v3])
  {
    [(ASDSRCAudioDevice *)a2 stopIOForClient:?];
  }

  return v6;
}

- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case
{
  v6 = *&size;
  v37 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = streamCopy;
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    underlyingStreams = [v9 underlyingStreams];
    v26 = [v10 initWithCapacity:{objc_msgSend(underlyingStreams, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    underlyingStreams2 = [v9 underlyingStreams];
    v13 = [underlyingStreams2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v25 = streamCopy;
      v15 = *v32;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(underlyingStreams2);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [(ASDAudioDevice *)self->_underlyingDevice setupIsolatedIOForStream:v17 frameSize:v6 useCase:case];
          if (v18)
          {
            v19 = v18;

            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            underlyingStreams2 = v26;
            v20 = [underlyingStreams2 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v28;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v28 != v22)
                  {
                    objc_enumerationMutation(underlyingStreams2);
                  }

                  [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:*(*(&v27 + 1) + 8 * j) useCase:case];
                }

                v21 = [underlyingStreams2 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v21);
            }

            goto LABEL_19;
          }

          [v26 addObject:v17];
        }

        v14 = [underlyingStreams2 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_19:
      streamCopy = v25;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = [(ASDAudioDevice *)self->_underlyingDevice setupIsolatedIOForStream:streamCopy frameSize:v6 useCase:case];
  }

  return v19;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  v20 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    underlyingStreams = [streamCopy underlyingStreams];
    v8 = [underlyingStreams countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(underlyingStreams);
          }

          v13 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:*(*(&v15 + 1) + 8 * i) useCase:case];
          if (v13)
          {
            v10 = v13;
          }
        }

        v9 = [underlyingStreams countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:streamCopy useCase:case];
  }

  return v10;
}

- (void)setSamplingRate:(double)rate
{
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ASDSRCAudioDevice_setSamplingRate___block_invoke;
  block[3] = &unk_278CE3F90;
  block[4] = self;
  *&block[5] = rate;
  dispatch_sync(sampleRateQueue, block);
  LODWORD(v7) = 0;
  v5 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737274];
  [v5 changedProperty:&v6 forObject:self];
}

void __37__ASDSRCAudioDevice_setSamplingRate___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 528) samplingRate];
  if (v3 != *(a1 + 40))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v4 = [*(*(a1 + 32) + 528) samplingRates];
    v5 = [v4 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v41;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v41 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 40);
          [*(*(&v40 + 1) + 8 * i) doubleValue];
          if (vabdd_f64(v9, v10) < 0.001)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v11 = [*(a1 + 32) underlyingDevice];
              v12 = [v11 deviceUID];
              v13 = *(a1 + 40);
              *buf = 138412546;
              v47 = v12;
              v48 = 2048;
              v49 = v13;
              _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting %@ sample rate to %f", buf, 0x16u);
            }

            v14 = *(a1 + 40);
            v15 = [*(a1 + 32) underlyingDevice];
            [v15 setSamplingRate:v14];

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  *(*(a1 + 32) + 472) = *(a1 + 40);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [*(a1 + 32) inputStreams];
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v36 + 1) + 8 * j) deviceChangedToSamplingRate:*(a1 + 40)];
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v18);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = [*(a1 + 32) outputStreams];
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v32 + 1) + 8 * k) deviceChangedToSamplingRate:*(a1 + 40)];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v23);
  }

  v26 = [*(*(a1 + 32) + 528) inputLatency];
  [*(a1 + 32) sampleRateRatio];
  LODWORD(v28) = vcvtpd_u64_f64(v27 * v26);
  [*(a1 + 32) setInputLatency:v28];
  v29 = [*(*(a1 + 32) + 528) outputLatency];
  [*(a1 + 32) sampleRateRatio];
  LODWORD(v31) = vcvtpd_u64_f64(v30 * v29);
  [*(a1 + 32) setOutputLatency:v31];
  objc_autoreleasePoolPop(v2);
}

- (double)samplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ASDSRCAudioDevice_samplingRate__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleRateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __33__ASDSRCAudioDevice_samplingRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 472);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)changeSamplingRate:(double)rate
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    uTF8String = [v7 UTF8String];
    v9 = NSStringFromSelector(a2);
    *buf = 136315906;
    v19 = uTF8String;
    v20 = 2048;
    selfCopy2 = self;
    v22 = 2080;
    uTF8String2 = [v9 UTF8String];
    v24 = 2048;
    rateCopy = rate;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "+ %s(%p)::%s(%f)\n", buf, 0x2Au);
  }

  [(ASDSRCAudioDevice *)self samplingRate];
  if (v10 != rate)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__ASDSRCAudioDevice_changeSamplingRate___block_invoke;
    v17[3] = &unk_278CE4120;
    v17[4] = self;
    *&v17[5] = rate;
    v17[6] = a2;
    [(ASDAudioDevice *)self requestConfigurationChange:v17];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    uTF8String3 = [v12 UTF8String];
    v14 = NSStringFromSelector(a2);
    uTF8String4 = [v14 UTF8String];
    *buf = 136315906;
    v19 = uTF8String3;
    v20 = 2048;
    selfCopy2 = self;
    v22 = 2080;
    uTF8String2 = uTF8String4;
    v24 = 1024;
    LODWORD(rateCopy) = 1;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "- %s(%p)::%s(%d)\n", buf, 0x26u);
  }

  return 1;
}

void __40__ASDSRCAudioDevice_changeSamplingRate___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) setSamplingRate:*(a1 + 40)];
  [*(*v2 + 66) samplingRate];
  v4 = v3;
  [*v2 samplingRate];
  if (v4 != v5)
  {
    v6 = *(a1 + 40) * [*(*(a1 + 32) + 528) timestampPeriod];
    [*(*(a1 + 32) + 528) samplingRate];
    v8 = v6 / v7;
    v9 = v8;
    if (v8 != ceilf(v9))
    {
      __40__ASDSRCAudioDevice_changeSamplingRate___block_invoke_cold_1(a1, v2, 528, v8);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [*v2 inputStreams];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 updateLatency];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [*v2 outputStreams];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 updateLatency];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (void)setSamplingRates:(id)rates
{
  ratesCopy = rates;
  sampleRateQueue = self->_sampleRateQueue;
  block = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __38__ASDSRCAudioDevice_setSamplingRates___block_invoke;
  v13 = &unk_278CE3E78;
  selfCopy = self;
  v15 = ratesCopy;
  v6 = ratesCopy;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v9) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v7 changedProperty:&v8 forObject:self];
}

void __38__ASDSRCAudioDevice_setSamplingRates___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 480);
  *(v4 + 480) = v3;

  objc_autoreleasePoolPop(v2);
}

- (id)samplingRates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__ASDSRCAudioDevice_samplingRates__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleRateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__ASDSRCAudioDevice_samplingRates__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 480) copy];

  return MEMORY[0x2821F96F8]();
}

- (unsigned)timestampPeriod
{
  [(ASDAudioDevice *)self->_underlyingDevice samplingRate];
  if (v3 == 0.0)
  {
    return 0;
  }

  timestampPeriod = [(ASDAudioDevice *)self->_underlyingDevice timestampPeriod];
  [(ASDSRCAudioDevice *)self samplingRate];
  v6 = timestampPeriod * v5;
  [(ASDAudioDevice *)self->_underlyingDevice samplingRate];
  return v6 / v7;
}

- (double)sampleRateRatio
{
  [(ASDAudioDevice *)self->_underlyingDevice samplingRate];
  if (v3 == 0.0)
  {
    return 1.0;
  }

  samplingRate = self->_samplingRate;
  [(ASDAudioDevice *)self->_underlyingDevice samplingRate];
  return samplingRate / v5;
}

- (unsigned)inputSafetyOffset
{
  inputSafetyOffset = [(ASDAudioDevice *)self->_underlyingDevice inputSafetyOffset];
  [(ASDSRCAudioDevice *)self sampleRateRatio];
  return inputSafetyOffset * vcvtpd_s64_f64(v4);
}

- (unsigned)outputSafetyOffset
{
  outputSafetyOffset = [(ASDAudioDevice *)self->_underlyingDevice outputSafetyOffset];
  [(ASDSRCAudioDevice *)self sampleRateRatio];
  return outputSafetyOffset * vcvtpd_s64_f64(v4);
}

- (int)performStopIO
{
  v4.receiver = self;
  v4.super_class = ASDSRCAudioDevice;
  result = [(ASDAudioDevice *)&v4 performStopIO];
  *&self->_lastTimestamp.valid = 0u;
  *&self->_lastTimestamp.hostTime = 0u;
  return result;
}

- (id)getZeroTimestampBlock
{
  [(ASDSRCAudioDevice *)self samplingRate];
  v4 = v3;
  [(ASDAudioDevice *)self->_underlyingDevice samplingRate];
  v6 = v4 / v5;
  getZeroTimestampBlock = [(ASDAudioDevice *)self->_underlyingDevice getZeroTimestampBlock];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__ASDSRCAudioDevice_getZeroTimestampBlock__block_invoke;
  v10[3] = &unk_278CE4148;
  v10[4] = getZeroTimestampBlock;
  *&v10[5] = v6;
  v8 = MEMORY[0x245CEBEA0](v10);

  return v8;
}

double __42__ASDSRCAudioDevice_getZeroTimestampBlock__block_invoke(uint64_t a1, double *a2, void *a3, void *a4)
{
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  result = round(0.0 * *(a1 + 40));
  *a2 = result;
  *a3 = 0;
  *a4 = 0;
  return result;
}

- (id)willDoReadInputBlock
{
  hasInput = [(ASDAudioDevice *)self hasInput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ASDSRCAudioDevice_willDoReadInputBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = hasInput;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __41__ASDSRCAudioDevice_willDoReadInputBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (id)willDoWriteMixBlock
{
  hasOutput = [(ASDAudioDevice *)self hasOutput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASDSRCAudioDevice_willDoWriteMixBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = hasOutput;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __40__ASDSRCAudioDevice_willDoWriteMixBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  blockCopy = block;
  plugin = [(ASDObject *)self plugin];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__ASDSRCAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke;
  v9[3] = &unk_278CE4190;
  v10 = blockCopy;
  v7 = blockCopy;
  LOBYTE(self) = [plugin requestConfigurationChangeForDevice:self withBlock:v9];

  return self;
}

- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object
{
  v6 = [(ASDObject *)self plugin:property];
  [v6 changedProperty:property forObject:self];
}

- (void)startIOForClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDSRCAudioDevice.m" lineNumber:93 description:@"ASDAudioDevice startIOForClient must succeed"];
}

- (void)stopIOForClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDSRCAudioDevice.m" lineNumber:111 description:@"Underlying stopIOForClient must succeed"];
}

void __40__ASDSRCAudioDevice_changeSamplingRate___block_invoke_cold_1(uint64_t a1, id *a2, uint64_t a3, double a4)
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v8 = *(a1 + 48);
  v9 = *a2;
  [*a2 samplingRate];
  v11 = v10;
  [*(*a2 + a3) samplingRate];
  [v13 handleFailureInMethod:v8 object:v9 file:@"ASDSRCAudioDevice.m" lineNumber:273 description:{@"Timestamp period is not an integer (%f) for sample rate combination %f (SRC) %f (Underlying)", *&a4, v11, v12}];
}

@end