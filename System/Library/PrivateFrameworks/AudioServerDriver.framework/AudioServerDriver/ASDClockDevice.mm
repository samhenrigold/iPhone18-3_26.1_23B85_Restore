@interface ASDClockDevice
- (ASDClockDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin;
- (ASDClockDevice)initWithPlugin:(id)plugin;
- (ASDDeviceConfigurationChangeDelegate)configurationChangeDelegate;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)supportsSamplingRate:(double)rate;
- (NSArray)samplingRateRanges;
- (NSArray)samplingRates;
- (double)samplingRate;
- (id)controls;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (int)performStartIO;
- (int)performStopIO;
- (int)startIOForClient:(unsigned int)client;
- (int)stopIOForClient:(unsigned int)client;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)addControl:(id)control;
- (void)dealloc;
- (void)ioThreadStateChange:(id)change;
- (void)performConfigurationChange:(void *)change;
- (void)performStartIO;
- (void)performStopIO;
- (void)removeControl:(id)control;
- (void)requestConfigurationChange:(id)change;
- (void)setBeginIOOperationBlock:(id)block;
- (void)setClockAlgorithm:(unsigned int)algorithm;
- (void)setClockDomain:(unsigned int)domain;
- (void)setClockIsStable:(BOOL)stable;
- (void)setDeviceName:(id)name;
- (void)setEndIOOperationBlock:(id)block;
- (void)setGetZeroTimestampBlock:(id)block;
- (void)setInputLatency:(unsigned int)latency;
- (void)setOutputLatency:(unsigned int)latency;
- (void)setSamplingRate:(double)rate;
- (void)setSamplingRateRanges:(id)ranges;
- (void)setSamplingRates:(id)rates;
- (void)setTimestampPeriod:(unsigned int)period;
- (void)setTransportType:(unsigned int)type;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)updateTimestampPeriod;
@end

@implementation ASDClockDevice

- (ASDClockDevice)initWithPlugin:(id)plugin
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDClockDevice initWithPlugin:]"];
  [v4 raise:v5 format:{@"Do not call %@", v6}];

  return 0;
}

- (ASDClockDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin
{
  dCopy = d;
  pluginCopy = plugin;
  v27.receiver = self;
  v27.super_class = ASDClockDevice;
  v9 = [(ASDObject *)&v27 initWithPlugin:pluginCopy];
  v10 = v9;
  if (v9)
  {
    v9->_isAlive = 1;
    v9->_transportType = 0;
    v9->_clockAlgorithm = 1768518246;
    v9->_clockIsStable = 1;
    objc_storeStrong(&v9->_deviceUID, d);
    objc_storeWeak(&v10->_configurationChangeDelegate, pluginCopy);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v11 bundleIdentifier];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controls = v10->_controls;
    v10->_controls = v13;

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.controls", bundleIdentifier, v10->_deviceUID];
    v16 = dispatch_queue_create([v15 UTF8String], 0);
    controlQueue = v10->_controlQueue;
    v10->_controlQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samplingRateRanges = v10->_samplingRateRanges;
    v10->_samplingRateRanges = v18;

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.sampleRate", bundleIdentifier, v10->_deviceUID];
    v21 = dispatch_queue_create([v20 UTF8String], 0);
    sampleRateQueue = v10->_sampleRateQueue;
    v10->_sampleRateQueue = v21;

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.ioReference", bundleIdentifier, v10->_deviceUID];
    v24 = dispatch_queue_create([v23 UTF8String], 0);
    ioReferenceQueue = v10->_ioReferenceQueue;
    v10->_ioReferenceQueue = v24;

    [(ASDObject *)v10 setupDiagnosticStateDumpHandlerWithTreeWalk:1];
  }

  return v10;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  result = 1;
  if (property->mSelector > 1819107690)
  {
    if (mSelector <= 1853059618)
    {
      if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          return result;
        }

        v8 = 1836411236;
      }

      else
      {
        if (mSelector == 1819107691)
        {
          return result;
        }

        v8 = 1819173229;
      }

      goto LABEL_28;
    }

    if (mSelector <= 1919512166)
    {
      if (mSelector == 1853059619)
      {
        return result;
      }

      v8 = 1853059700;
      goto LABEL_28;
    }

    if (mSelector != 1919512167 && mSelector != 1935763060)
    {
      v8 = 1953653102;
LABEL_28:
      if (mSelector != v8)
      {
        v10 = v3;
        v11 = v4;
        v9.receiver = self;
        v9.super_class = ASDClockDevice;
        return [(ASDObject *)&v9 hasProperty:?];
      }
    }
  }

  else
  {
    if (mSelector <= 1668575851)
    {
      if (mSelector > 1668050794)
      {
        if (mSelector == 1668050795)
        {
          return result;
        }

        v8 = 1668510818;
      }

      else
      {
        if (mSelector == 1634429294)
        {
          return result;
        }

        v8 = 1668049764;
      }

      goto LABEL_28;
    }

    if (mSelector <= 1735354733)
    {
      if (mSelector == 1668575852)
      {
        return result;
      }

      v8 = 1668639076;
      goto LABEL_28;
    }

    if (mSelector != 1735354734 && mSelector != 1751737454)
    {
      v8 = 1818850926;
      goto LABEL_28;
    }
  }

  return result;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  v6 = 8;
  if (property->mSelector <= 1819107690)
  {
    if (mSelector <= 1668575851)
    {
      if (mSelector > 1668050794)
      {
        if (mSelector == 1668050795)
        {
          return 4;
        }

        v9 = 1668510818;
      }

      else
      {
        if (mSelector == 1634429294)
        {
          v24 = 1633969526;
          v20 = *&property->mSelector;
          LODWORD(v21) = property->mElement;
          LODWORD(v20) = 1870098020;
          owner = [(ASDObject *)self owner];
          v6 = [owner dataSizeForProperty:&v20 withQualifierSize:4 andQualifierData:&v24];

          return v6;
        }

        v9 = 1668049764;
      }

      goto LABEL_23;
    }

    if (mSelector > 1735354733)
    {
      if (mSelector == 1735354734 || mSelector == 1751737454)
      {
        return 4;
      }

      v9 = 1818850926;
LABEL_23:
      if (mSelector != v9)
      {
        goto LABEL_39;
      }

      return 4;
    }

    if (mSelector != 1668575852)
    {
      v10 = 1668639076;
LABEL_29:
      if (mSelector == v10)
      {
        return v6;
      }

      goto LABEL_39;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    controlQueue = self->_controlQueue;
    v23 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
    v19[3] = &unk_278CE4030;
    v19[5] = &v20;
    v19[6] = property;
    v19[4] = self;
    v14 = v19;
    goto LABEL_42;
  }

  if (mSelector > 1853059699)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector == 1919512167 || mSelector == 1953653102)
      {
        return 4;
      }

      v9 = 1935763060;
      goto LABEL_23;
    }

    if (mSelector == 1853059700)
    {
      return v6;
    }

    if (mSelector != 1870098020)
    {
      goto LABEL_39;
    }

    if (size)
    {
      if ((size & 3) != 0)
      {
        return 0;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      controlQueue = self->_controlQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      block[3] = &unk_278CE4058;
      v18 = size >> 2;
      block[6] = data;
      block[7] = property;
      block[4] = self;
      block[5] = &v20;
      v14 = block;
    }

    else
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      controlQueue = self->_controlQueue;
      v23 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
      v16[3] = &unk_278CE4030;
      v16[5] = &v20;
      v16[6] = property;
      v16[4] = self;
      v14 = v16;
    }

LABEL_42:
    dispatch_sync(controlQueue, v14);
    v6 = 4 * *(v21 + 6);
    _Block_object_dispose(&v20, 8);
    return v6;
  }

  if (mSelector <= 1819569762)
  {
    if (mSelector == 1819107691)
    {
      return v6;
    }

    v10 = 1819173229;
    goto LABEL_29;
  }

  if (mSelector == 1819569763)
  {
    return 4;
  }

  if (mSelector != 1836411236)
  {
    if (mSelector == 1853059619)
    {
      samplingRateRanges = [(ASDClockDevice *)self samplingRateRanges];
      v8 = [samplingRateRanges count];

      return 16 * v8;
    }

LABEL_39:
    v15.receiver = self;
    v15.super_class = ASDClockDevice;
    return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  return v6;
}

void __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 64);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1[6] + 4) == 1735159650 || [*(*(&v8 + 1) + 8 * v7) controlScope] == *(a1[6] + 4))
        {
          ++*(*(a1[5] + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 64);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 64))
        {
          v8 = 0;
          v9 = *(*(&v10 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8) && (*(*(a1 + 56) + 4) == 1735159650 || objc_msgSend(v9, "controlScope") == *(*(a1 + 56) + 4)))
            {
              ++*(*(*(a1 + 40) + 8) + 24);
            }

            ++v8;
          }

          while (v8 < *(a1 + 64));
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 64);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1[6] + 4) == 1735159650 || [*(*(&v8 + 1) + 8 * v7) controlScope] == *(a1[6] + 4))
        {
          ++*(*(a1[5] + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v8 = 0;
  v67 = *MEMORY[0x277D85DE8];
  if (!property || !dataSize || !andData)
  {
    return v8;
  }

  v11 = *&client;
  v13 = *&size;
  mSelector = property->mSelector;
  if (property->mSelector > 1819173228)
  {
    if (mSelector <= 1870098019)
    {
      if (mSelector <= 1836411235)
      {
        if (mSelector != 1819173229)
        {
          if (mSelector != 1819569763)
          {
            goto LABEL_84;
          }

          if (*dataSize < 4)
          {
            return 0;
          }

          mScope = property->mScope;
          if (mScope != 1869968496)
          {
            if (mScope == 1768845428)
            {
              goto LABEL_41;
            }

            if (mScope != 1735159650)
            {
              goto LABEL_93;
            }

            inputLatency = [(ASDClockDevice *)self inputLatency];
            if (inputLatency > [(ASDClockDevice *)self outputLatency])
            {
LABEL_41:
              inputLatency2 = [(ASDClockDevice *)self inputLatency];
              goto LABEL_92;
            }
          }

          inputLatency2 = [(ASDClockDevice *)self outputLatency];
          goto LABEL_92;
        }

        if (*dataSize < 8)
        {
          return 0;
        }

        deviceName = [(ASDClockDevice *)self deviceName];
      }

      else
      {
        if (mSelector != 1836411236)
        {
          if (mSelector == 1853059619)
          {
            v26 = *dataSize;
            [(ASDClockDevice *)self samplingRateRanges];
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v27 = v57 = 0u;
            v28 = [v27 countByEnumeratingWithState:&v56 objects:v66 count:16];
            if (v28)
            {
              v29 = 0;
              v30 = *v57;
              v31 = andData + 8;
              v32 = -(v26 >> 4);
              v50 = andData + 8;
              v51 = v26 >> 4;
LABEL_54:
              v33 = 0;
              v34 = v29;
              v35 = &v31[16 * v29];
              v36 = v32 + v29;
              while (1)
              {
                if (*v57 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                if (!(v36 + v33))
                {
                  break;
                }

                v37 = *(*(&v56 + 1) + 8 * v33);
                [v37 maximum];
                *v35 = v38;
                [v37 minimum];
                *(v35 - 1) = v39;
                ++v33;
                v35 += 16;
                if (v28 == v33)
                {
                  v28 = [v27 countByEnumeratingWithState:&v56 objects:v66 count:16];
                  v29 = v34 + v33;
                  v32 = -(v26 >> 4);
                  v31 = v50;
                  if (v28)
                  {
                    goto LABEL_54;
                  }

                  LODWORD(v51) = v34 + v33;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v51) = 0;
            }

            *dataSize = 16 * v51;
            return 1;
          }

          if (mSelector != 1853059700)
          {
            goto LABEL_84;
          }

          if (*dataSize < 8)
          {
            return 0;
          }

          [(ASDClockDevice *)self samplingRate];
          *andData = v19;
LABEL_80:
          v41 = 8;
LABEL_94:
          *dataSize = v41;
          return 1;
        }

        if (*dataSize < 8)
        {
          return 0;
        }

        deviceName = [(ASDClockDevice *)self modelUID];
      }

LABEL_78:
      *andData = deviceName;

      if (*andData)
      {
        CFRetain(*andData);
      }

      goto LABEL_80;
    }

    if (mSelector > 1935763059)
    {
      if (mSelector != 1935763060)
      {
        if (mSelector == 1953653102)
        {
          if (*dataSize >= 4)
          {
            inputLatency2 = [(ASDClockDevice *)self transportType];
            goto LABEL_92;
          }

          return 0;
        }

        if (mSelector == 1937007734)
        {
          if (*dataSize >= 4)
          {
            *dataSize = 4;
            owner = [(ASDObject *)self owner];
            v21Owner = [owner owner];
            *andData = [v21Owner objectID];

            return 1;
          }

          return 0;
        }

        goto LABEL_84;
      }

      if (*dataSize < 4)
      {
        return 0;
      }

      *andData = 0;
      goto LABEL_93;
    }

    if (mSelector != 1870098020)
    {
      if (mSelector == 1919512167)
      {
        if (*dataSize >= 4)
        {
          inputLatency2 = [(ASDClockDevice *)self timestampPeriod];
          goto LABEL_92;
        }

        return 0;
      }

      goto LABEL_84;
    }

    if (size)
    {
      if ((size & 3) != 0)
      {
        return 0;
      }

      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 0;
      v44 = *dataSize;
      if (v44 >= [(ASDClockDevice *)self dataSizeForProperty:property withQualifierSize:*&size andQualifierData:data])
      {
        v45 = [(ASDClockDevice *)self dataSizeForProperty:property withQualifierSize:v13 andQualifierData:data];
      }

      else
      {
        v45 = *dataSize;
      }

      v47 = v45 >> 2;
      if (v62[3] == v47)
      {
LABEL_104:
        v18 = 4 * v47;
        goto LABEL_105;
      }

      controlQueue = self->_controlQueue;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2;
      v54[3] = &unk_278CE40A8;
      v55 = v13 >> 2;
      v54[6] = data;
      v54[7] = property;
      v54[4] = self;
      v54[5] = &v61;
      v54[8] = v47;
      v54[9] = andData;
      v49 = v54;
    }

    else
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 0;
      v42 = *dataSize;
      if (v42 >= [(ASDClockDevice *)self dataSizeForProperty:property withQualifierSize:0 andQualifierData:data])
      {
        v43 = [(ASDClockDevice *)self dataSizeForProperty:property withQualifierSize:0 andQualifierData:data];
      }

      else
      {
        v43 = *dataSize;
      }

      v47 = v43 >> 2;
      if (v62[3] == v47)
      {
        goto LABEL_104;
      }

      controlQueue = self->_controlQueue;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3;
      v53[3] = &unk_278CE4080;
      v53[4] = self;
      v53[5] = &v61;
      v53[6] = property;
      v53[7] = v47;
      v53[8] = andData;
      v49 = v53;
    }

    dispatch_sync(controlQueue, v49);
    LODWORD(v47) = *(v62 + 6);
    goto LABEL_104;
  }

  if (mSelector > 1668639075)
  {
    if (mSelector <= 1751737453)
    {
      if (mSelector != 1668639076)
      {
        if (mSelector == 1735354734)
        {
          if (*dataSize >= 4)
          {
            inputLatency2 = [(ASDClockDevice *)self isRunning];
            goto LABEL_92;
          }

          return 0;
        }

LABEL_84:
        v52.receiver = self;
        v52.super_class = ASDClockDevice;
        return [(ASDObject *)&v52 getProperty:property withQualifierSize:*&size qualifierData:data dataSize:dataSize andData:andData forClient:*&client];
      }

      if (*dataSize < 8)
      {
        return 0;
      }

      deviceName = [(ASDClockDevice *)self deviceUID];
      goto LABEL_78;
    }

    if (mSelector == 1751737454)
    {
      if (*dataSize >= 4)
      {
        inputLatency2 = [(ASDClockDevice *)self isHidden];
        goto LABEL_92;
      }

      return 0;
    }

    if (mSelector != 1818850926)
    {
      if (mSelector != 1819107691)
      {
        goto LABEL_84;
      }

      if (*dataSize < 8)
      {
        return 0;
      }

      deviceName = [(ASDClockDevice *)self manufacturerName];
      goto LABEL_78;
    }

    if (*dataSize < 4)
    {
      return 0;
    }

    *andData = self->_isAlive;
LABEL_93:
    v41 = 4;
    goto LABEL_94;
  }

  if (mSelector > 1668050794)
  {
    switch(mSelector)
    {
      case 1668050795:
        if (*dataSize >= 4)
        {
          inputLatency2 = [(ASDClockDevice *)self clockAlgorithm];
          goto LABEL_92;
        }

        break;
      case 1668510818:
        if (*dataSize >= 4)
        {
          inputLatency2 = [(ASDClockDevice *)self clockIsStable];
          goto LABEL_92;
        }

        break;
      case 1668575852:
        v61 = 0;
        v62 = &v61;
        v63 = 0x2020000000;
        v64 = 0;
        v17 = self->_controlQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
        block[3] = &unk_278CE4080;
        block[6] = dataSize;
        block[7] = property;
        block[4] = self;
        block[5] = &v61;
        block[8] = andData;
        dispatch_sync(v17, block);
        v18 = 4 * *(v62 + 6);
LABEL_105:
        *dataSize = v18;
        _Block_object_dispose(&v61, 8);
        return 1;
      default:
        goto LABEL_84;
    }

    return 0;
  }

  if (mSelector != 1634429294)
  {
    if (mSelector == 1668049764)
    {
      if (*dataSize >= 4)
      {
        inputLatency2 = [(ASDClockDevice *)self clockDomain];
LABEL_92:
        *andData = inputLatency2;
        goto LABEL_93;
      }

      return 0;
    }

    goto LABEL_84;
  }

  v65 = 1633969526;
  v61 = *&property->mSelector;
  LODWORD(v62) = property->mElement;
  LODWORD(v61) = 1870098020;
  owner2 = [(ASDObject *)self owner];
  v8 = [owner2 getProperty:&v61 withQualifierSize:4 qualifierData:&v65 dataSize:dataSize andData:andData forClient:v11];

  return v8;
}

void __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 64) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 64) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 64);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (*(*(a1 + 56) + 4) == 1735159650 || [*(*(&v11 + 1) + 8 * v9) controlScope] == *(*(a1 + 56) + 4))
        {
          if (*(*(*(a1 + 40) + 8) + 24) == v4)
          {
            goto LABEL_15;
          }

          *(*(a1 + 64) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [v10 objectID];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

LABEL_15:

  objc_autoreleasePoolPop(v2);
}

void __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 64);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 80))
        {
          v8 = 0;
          v9 = *(*(&v10 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8) && (*(*(a1 + 56) + 4) == 1735159650 || objc_msgSend(v9, "controlScope") == *(*(a1 + 56) + 4)))
            {
              if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 64))
              {
                break;
              }

              *(*(a1 + 72) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [v9 objectID];
            }

            ++v8;
          }

          while (v8 < *(a1 + 80));
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1[4] + 64);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (*(a1[6] + 4) == 1735159650 || [*(*(&v9 + 1) + 8 * v7) controlScope] == *(a1[6] + 4))
        {
          if (*(*(a1[5] + 8) + 24) == a1[7])
          {
            goto LABEL_12;
          }

          *(a1[8] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

LABEL_12:

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  if (settable->mSelector == 1853059700)
  {
    return 1;
  }

  if (settable->mSelector == 1819173229)
  {

    return [(ASDClockDevice *)self canChangeDeviceName];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDClockDevice;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    goto LABEL_18;
  }

  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  v15 = [(ASDClockDevice *)self hasProperty:?];
  if (!v15)
  {
    return v15;
  }

  v15 = [(ASDClockDevice *)self isPropertySettable:property];
  if (!v15)
  {
    return v15;
  }

  mSelector = property->mSelector;
  if (property->mSelector == 1818850926)
  {
    if (v10 == 4)
    {
      self->_isAlive = *andData != 0;
      LOBYTE(v15) = 1;
      return v15;
    }

    goto LABEL_18;
  }

  if (mSelector != 1853059700)
  {
    if (mSelector != 1819173229)
    {
      v20.receiver = self;
      v20.super_class = ASDClockDevice;
      LOBYTE(v15) = [(ASDObject *)&v20 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
      return v15;
    }

    if (v10 == 8)
    {
      v17 = *andData;

      LOBYTE(v15) = [(ASDClockDevice *)self changeDeviceName:*&v17];
      return v15;
    }

LABEL_18:
    LOBYTE(v15) = 0;
    return v15;
  }

  if (v10 != 8)
  {
    goto LABEL_18;
  }

  v18 = *andData;
  v15 = [(ASDClockDevice *)self supportsSamplingRate:*andData];
  if (v15)
  {

    LOBYTE(v15) = [(ASDClockDevice *)self changeSamplingRate:v18];
  }

  return v15;
}

- (void)addControl:(id)control
{
  controlCopy = control;
  v5 = controlCopy;
  if (controlCopy)
  {
    controlQueue = self->_controlQueue;
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __29__ASDClockDevice_addControl___block_invoke;
    v15 = &unk_278CE3E78;
    selfCopy = self;
    v7 = controlCopy;
    v17 = v7;
    dispatch_sync(controlQueue, &block);
    [v7 setOwner:self];
    LODWORD(v11) = 0;
    v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
    [v8 changedProperty:&v10 forObject:self];

    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v10 forObject:self];
  }
}

- (void)removeControl:(id)control
{
  controlCopy = control;
  v5 = controlCopy;
  if (controlCopy)
  {
    controlQueue = self->_controlQueue;
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __32__ASDClockDevice_removeControl___block_invoke;
    v14 = &unk_278CE3E78;
    selfCopy = self;
    v16 = controlCopy;
    dispatch_sync(controlQueue, &block);
    LODWORD(v10) = 0;
    v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
    [v7 changedProperty:&v9 forObject:self];

    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v9 forObject:self];
  }
}

- (id)controls
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  controlQueue = self->_controlQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDClockDevice_controls__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(controlQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__ASDClockDevice_controls__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 64)];

  return MEMORY[0x2821F96F8]();
}

- (void)requestConfigurationChange:(id)change
{
  changeCopy = change;
  configurationChangeDelegate = [(ASDClockDevice *)self configurationChangeDelegate];
  [configurationChangeDelegate requestConfigurationChangeForDevice:self withBlock:changeCopy];
}

- (void)performConfigurationChange:(void *)change
{
  (*(change + 2))(change, a2);
}

- (int)startIOForClient:(unsigned int)client
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ioReferenceQueue = self->_ioReferenceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__ASDClockDevice_startIOForClient___block_invoke;
  v6[3] = &unk_278CE40D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ioReferenceQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __35__ASDClockDevice_startIOForClient___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 104))
  {
    v2 = objc_autoreleasePoolPush();
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) performStartIO];
    objc_autoreleasePoolPop(v2);
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    ++*(*(a1 + 32) + 104);
  }
}

- (int)stopIOForClient:(unsigned int)client
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ioReferenceQueue = self->_ioReferenceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ASDClockDevice_stopIOForClient___block_invoke;
  v6[3] = &unk_278CE40D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ioReferenceQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __34__ASDClockDevice_stopIOForClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 104) = v4;
    if (!*(*(a1 + 32) + 104))
    {
      v6 = objc_autoreleasePoolPush();
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) performStopIO];

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (int)performStartIO
{
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice performStartIO];
  }

  self->_isRunning = 1;
  LODWORD(v6) = 0;
  v3 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62676F696ELL];
  [v3 changedProperty:&v5 forObject:self];

  return 0;
}

- (int)performStopIO
{
  if (![(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice performStopIO];
  }

  self->_isRunning = 0;
  LODWORD(v6) = 0;
  v3 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62676F696ELL];
  [v3 changedProperty:&v5 forObject:self];

  return 0;
}

- (void)ioThreadStateChange:(id)change
{
  changeCopy = change;
  ioReferenceQueue = self->_ioReferenceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ASDClockDevice_ioThreadStateChange___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(ioReferenceQueue, v7);
}

- (void)setSamplingRate:(double)rate
{
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDClockDevice_setSamplingRate___block_invoke;
  block[3] = &unk_278CE3F90;
  block[4] = self;
  *&block[5] = rate;
  dispatch_sync(sampleRateQueue, block);
  LODWORD(v7) = 0;
  v5 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737274];
  [v5 changedProperty:&v6 forObject:self];
}

void __34__ASDClockDevice_setSamplingRate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 80) = *(a1 + 40);
  [*(a1 + 32) _updateTimestampPeriod:?];
  [*(a1 + 32) _updateSafetyOffsets:*(a1 + 40)];

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
  v5[2] = __30__ASDClockDevice_samplingRate__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleRateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __30__ASDClockDevice_samplingRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setSamplingRates:(id)rates
{
  v28 = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = ratesCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v23 + 1) + 8 * v10) doubleValue];
        v11 = [ASDSampleRateRange rangeWithSingleRate:?];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  sampleRateQueue = self->_sampleRateQueue;
  block = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __35__ASDClockDevice_setSamplingRates___block_invoke;
  v20 = &unk_278CE3E78;
  selfCopy = self;
  v22 = v5;
  v13 = v5;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v16) = 0;
  v14 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v14 changedProperty:&v15 forObject:self];
}

void __35__ASDClockDevice_setSamplingRates___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)setSamplingRateRanges:(id)ranges
{
  rangesCopy = ranges;
  sampleRateQueue = self->_sampleRateQueue;
  block = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40__ASDClockDevice_setSamplingRateRanges___block_invoke;
  v13 = &unk_278CE3E78;
  selfCopy = self;
  v15 = rangesCopy;
  v6 = rangesCopy;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v9) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v7 changedProperty:&v8 forObject:self];
}

void __40__ASDClockDevice_setSamplingRateRanges___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = v3;

  objc_autoreleasePoolPop(v2);
}

- (NSArray)samplingRates
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDClockDevice_samplingRates__block_invoke;
  block[3] = &unk_278CE3E28;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(sampleRateQueue, block);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v21[5];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 minimum];
        v10 = v9;
        [v8 maximum];
        if (v10 == v11)
        {
          v12 = MEMORY[0x277CCABB0];
          [v8 minimum];
          v13 = [v12 numberWithDouble:?];
          [v3 addObject:v13];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v20, 8);

  return v3;
}

uint64_t __31__ASDClockDevice_samplingRates__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 88) copy];

  return MEMORY[0x2821F96F8]();
}

- (NSArray)samplingRateRanges
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ASDClockDevice_samplingRateRanges__block_invoke;
  block[3] = &unk_278CE3E28;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(sampleRateQueue, block);
  if (![v24[5] count])
  {
    samplingRates = [(ASDClockDevice *)self samplingRates];
    if ([samplingRates count])
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        deviceName = [(ASDClockDevice *)self deviceName];
        v8 = [samplingRates count];
        *buf = 138412546;
        v31 = deviceName;
        v32 = 2048;
        v33 = v8;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: building samplingRateRanges from %lu rates", buf, 0x16u);
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = samplingRates;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
      if (v11)
      {
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v18 + 1) + 8 * i) doubleValue];
            v14 = [ASDSampleRateRange rangeWithSingleRate:?];
            [v9 addObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
        }

        while (v11);
      }

      v15 = v24[5];
      v24[5] = v9;
    }
  }

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

uint64_t __36__ASDClockDevice_samplingRateRanges__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 88) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)setDeviceName:(id)name
{
  v4 = [name copy];
  deviceName = self->_deviceName;
  self->_deviceName = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626C6E616DLL];
  [v6 changedProperty:&v7 forObject:self];
}

- (void)setTimestampPeriod:(unsigned int)period
{
  if (self->_timestampPeriod != period)
  {
    v9 = v3;
    v10 = v4;
    self->_timestampPeriod = period;
    LODWORD(v8) = 0;
    v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6272696E67];
    [v6 changedProperty:&v7 forObject:self];
  }
}

- (void)updateTimestampPeriod
{
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDClockDevice_updateTimestampPeriod__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(sampleRateQueue, block);
}

void __39__ASDClockDevice_updateTimestampPeriod__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateTimestampPeriod:*(*(a1 + 32) + 80)];

  objc_autoreleasePoolPop(v2);
}

- (void)setInputLatency:(unsigned int)latency
{
  self->_inputLatency = latency;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x696E70746C746E63];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setOutputLatency:(unsigned int)latency
{
  self->_outputLatency = latency;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x6F7574706C746E63];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setClockDomain:(unsigned int)domain
{
  self->_clockDomain = domain;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62636C6B64];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setClockAlgorithm:(unsigned int)algorithm
{
  self->_clockAlgorithm = algorithm;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62636C6F6BLL];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setClockIsStable:(BOOL)stable
{
  self->_clockIsStable = stable;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6263737462];
  [v4 changedProperty:&v5 forObject:self];
}

- (BOOL)supportsSamplingRate:(double)rate
{
  v34 = *MEMORY[0x277D85DE8];
  [(ASDClockDevice *)self samplingRateRanges];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = MEMORY[0x277D86220];
    v10 = *v24;
    *&v7 = 138412802;
    v22 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          deviceName = [(ASDClockDevice *)self deviceName];
          [v12 minimum];
          v15 = v14;
          [v12 maximum];
          *buf = v22;
          v28 = deviceName;
          v29 = 2048;
          v30 = v15;
          v31 = 2048;
          v32 = v16;
          _os_log_impl(&dword_2415D8000, v9, OS_LOG_TYPE_DEFAULT, "%@: supportsSamplingRate checking min(%f) max (%f)", buf, 0x20u);
        }

        [v12 minimum];
        if (v17 + -0.001 <= rate)
        {
          [v12 maximum];
          if (v18 + 0.001 >= rate)
          {
            v19 = 1;
            goto LABEL_14;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    deviceName2 = [(ASDClockDevice *)self deviceName];
    *buf = 138412546;
    v28 = deviceName2;
    v29 = 1024;
    LODWORD(v30) = v19;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: supportsSamplingRate returning (%d)", buf, 0x12u);
  }

  return v19;
}

- (void)setTransportType:(unsigned int)type
{
  self->_transportType = type;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F627472616ELL];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setGetZeroTimestampBlock:(id)block
{
  blockCopy = block;
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice setGetZeroTimestampBlock:];
  }

  v4 = [blockCopy copy];
  getZeroTimestampBlock = self->_getZeroTimestampBlock;
  self->_getZeroTimestampBlock = v4;

  self->_getZeroTimestampBlockUnretained = self->_getZeroTimestampBlock;
}

- (void)setBeginIOOperationBlock:(id)block
{
  blockCopy = block;
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice setBeginIOOperationBlock:];
  }

  v4 = [blockCopy copy];
  beginIOOperationBlock = self->_beginIOOperationBlock;
  self->_beginIOOperationBlock = v4;

  self->_beginIOOperationBlockUnretained = self->_beginIOOperationBlock;
}

- (void)setEndIOOperationBlock:(id)block
{
  blockCopy = block;
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice setEndIOOperationBlock:];
  }

  v4 = [blockCopy copy];
  endIOOperationBlock = self->_endIOOperationBlock;
  self->_endIOOperationBlock = v4;

  self->_endIOOperationBlockUnretained = self->_endIOOperationBlock;
}

- (void)systemWillSleep
{
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__ASDClockDevice_systemWillSleep__block_invoke;
  v9[3] = &unk_278CE3E78;
  v10 = v3;
  v5 = v4;
  v11 = v5;
  v6 = v3;
  [(ASDClockDevice *)self requestConfigurationChange:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  wakeSemaphore = self->_wakeSemaphore;
  self->_wakeSemaphore = v5;
  v8 = v5;
}

intptr_t __33__ASDClockDevice_systemWillSleep__block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);

  return dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)systemHasPoweredOn
{
  wakeSemaphore = self->_wakeSemaphore;
  if (wakeSemaphore)
  {
    v5 = wakeSemaphore;
    dispatch_semaphore_signal(v5);
    v4 = self->_wakeSemaphore;
    self->_wakeSemaphore = 0;
  }
}

- (void)dealloc
{
  wakeSemaphore = self->_wakeSemaphore;
  if (wakeSemaphore)
  {
    dispatch_semaphore_signal(wakeSemaphore);
    v4 = self->_wakeSemaphore;
    self->_wakeSemaphore = 0;
  }

  v5.receiver = self;
  v5.super_class = ASDClockDevice;
  [(ASDObject *)&v5 dealloc];
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v59 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v56.receiver = self;
  v56.super_class = ASDClockDevice;
  v7 = [(ASDObject *)&v56 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v8 = [indentCopy stringByAppendingString:@"|        "];
  deviceName = [(ASDClockDevice *)self deviceName];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(deviceName, "UTF8String")];

  manufacturerName = [(ASDClockDevice *)self manufacturerName];
  [v7 appendFormat:@"%@|    Manufacturer: %s\n", indentCopy, objc_msgSend(manufacturerName, "UTF8String")];

  modelName = [(ASDClockDevice *)self modelName];
  [v7 appendFormat:@"%@|    Model Name: %s\n", indentCopy, objc_msgSend(modelName, "UTF8String")];

  deviceUID = [(ASDClockDevice *)self deviceUID];
  [v7 appendFormat:@"%@|    Device UID: %s\n", indentCopy, objc_msgSend(deviceUID, "UTF8String")];

  modelUID = [(ASDClockDevice *)self modelUID];
  [v7 appendFormat:@"%@|    Model UID: %s\n", indentCopy, objc_msgSend(modelUID, "UTF8String")];

  transportType = [(ASDClockDevice *)self transportType];
  LODWORD(v15) = transportType >> 24;
  if (((transportType >> 24) - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = transportType << 8 >> 24;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  LODWORD(v17) = transportType >> 8;
  if ((v17 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v17;
  }

  if ((transportType - 32) >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = transportType;
  }

  [v7 appendFormat:@"%@|    Transport Type: %c%c%c%c\n", indentCopy, v15, v16, v17, v18];
  [v7 appendFormat:@"%@|    Clock Domain: 0x%08x\n", indentCopy, -[ASDClockDevice clockDomain](self, "clockDomain")];
  clockAlgorithm = [(ASDClockDevice *)self clockAlgorithm];
  v20 = @"12Pt Moving Window Average";
  if (clockAlgorithm == 1768518246)
  {
    v21 = @"Simple IIR";
  }

  else
  {
    v21 = @"Unknown";
  }

  if (clockAlgorithm != 1835103847)
  {
    v20 = v21;
  }

  if (clockAlgorithm == 1918990199)
  {
    v22 = @"Raw";
  }

  else
  {
    v22 = v20;
  }

  [v7 appendFormat:@"%@|    Clock Algorithm: %s\n", indentCopy, -[__CFString UTF8String](v22, "UTF8String")];
  if ([(ASDClockDevice *)self clockIsStable])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v7 appendFormat:@"%@|    Clock Is Stable: %@\n", indentCopy, v23];
  if (self->_isAlive)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Active: %@\n", indentCopy, v24];
  if ([(ASDClockDevice *)self isRunning])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Running: %@\n", indentCopy, v25];
  [(ASDClockDevice *)self samplingRate];
  [v7 appendFormat:@"%@|    Nominal Sample Rate: %f\n", indentCopy, v26];
  v47 = indentCopy;
  [v7 appendFormat:@"%@|    Available Nominal Sample Rates:\n", indentCopy];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  samplingRates = [(ASDClockDevice *)self samplingRates];
  v28 = [samplingRates countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v53;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(samplingRates);
        }

        [*(*(&v52 + 1) + 8 * i) doubleValue];
        [v7 appendFormat:@"%@Rate[%u]: %f\n", v8, v30, v33];
        v30 = (v30 + 1);
      }

      v29 = [samplingRates countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v29);
  }

  isHidden = [(ASDClockDevice *)self isHidden];
  v35 = @"NO";
  if (isHidden)
  {
    v35 = @"YES";
  }

  [v7 appendFormat:@"%@|    Is Hidden: %@\n", v47, v35];
  [v7 appendFormat:@"%@|    Input Latency: %u\n", v47, -[ASDClockDevice inputLatency](self, "inputLatency")];
  [v7 appendFormat:@"%@|    Output Latency: %u\n", v47, -[ASDClockDevice outputLatency](self, "outputLatency")];
  [v7 appendFormat:@"%@|    Zero Timestamp Period: %u\n", v47, -[ASDClockDevice timestampPeriod](self, "timestampPeriod")];
  [v7 appendFormat:@"%@|    Controls:\n", v47];
  controls = [(ASDClockDevice *)self controls];
  v37 = [controls count];

  if (v37)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    controls2 = [(ASDClockDevice *)self controls];
    v39 = [controls2 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = *v49;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(controls2);
          }

          v44 = *(*(&v48 + 1) + 8 * j);
          if (treeCopy)
          {
            v45 = [v44 diagnosticDescriptionWithIndent:v8 walkTree:1];
            [v7 appendString:v45];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v47, v41, objc_msgSend(v44, "objectID")];
          }

          v41 = (v41 + 1);
        }

        v40 = [controls2 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v40);
    }
  }

  return v7;
}

- (ASDDeviceConfigurationChangeDelegate)configurationChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationChangeDelegate);

  return WeakRetained;
}

- (void)performStartIO
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)performStopIO
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setGetZeroTimestampBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setBeginIOOperationBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setEndIOOperationBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end