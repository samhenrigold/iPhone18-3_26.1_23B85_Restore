@interface DTGPUDataSource
- (BOOL)isEqual:(id)equal;
- (BOOL)run;
- (DTGPUDataSource)initWithMTLDevice:(id)device workQueue:(id)queue;
- (DTGPUDataSourceDelegate)delegate;
- (MTLDevice)device;
- (NSArray)supportedCounterProfiles;
- (NSDictionary)deviceInfoDict;
- (NSString)deviceName;
- (id).cxx_construct;
- (id)_queryDisplayInfoDict;
- (id)configure:(unsigned int)configure interval:(unint64_t)interval windowLimit:(unint64_t)limit;
- (id)currentConsistentGPUPerformanceState;
- (unint64_t)minSampleInterval;
- (unint64_t)timestampOfFirstSample;
- (void)_sampleCounters;
- (void)getRemainingData:(id)data;
- (void)reset;
- (void)setAPSCounterConfig:(id)config;
- (void)stop;
@end

@implementation DTGPUDataSource

- (DTGPUDataSource)initWithMTLDevice:(id)device workQueue:(id)queue
{
  deviceCopy = device;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = DTGPUDataSource;
  v8 = [(DTGPUDataSource *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workQueue, queue);
    objc_storeWeak(&v9->_device, deviceCopy);
    while (1)
    {
      WeakRetained = objc_loadWeakRetained(&v9->_device);
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = objc_loadWeakRetained(&v9->_device);
      baseObject = [v12 baseObject];
      objc_storeWeak(&v9->_device, baseObject);
    }

    v9->_isAGXDevice = [deviceCopy supportsFamily:1001];
    v14 = sub_247F7481C(deviceCopy);
    perfStateControl = v9->_perfStateControl;
    v9->_perfStateControl = v14;

    v9->_isAPS = 0;
  }

  return v9;
}

- (NSArray)supportedCounterProfiles
{
  p_supportedCounterProfiles = &self->_supportedCounterProfiles;
  supportedCounterProfiles = self->_supportedCounterProfiles;
  if (supportedCounterProfiles)
  {
LABEL_28:
    v5 = supportedCounterProfiles;
    goto LABEL_29;
  }

  v5 = objc_opt_new();
  if (!self->_isAGXDevice || (v6 = objc_loadWeakRetained(&self->_device), [DTGPUCounterProfile_GPURawCountersAPS create:v6 profile:13], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v11 = [DTGPUCounterProfile_GPUStats create:WeakRetained];

    if (v11)
    {
      [(NSArray *)v5 addObject:v11];
    }

    v12 = objc_loadWeakRetained(&self->_device);
    v13 = [DTGPUCounterProfile_GPURawCounters create:v12 profile:3];

    if (v13)
    {
      [(NSArray *)v5 addObject:v13];
    }

    v14 = objc_loadWeakRetained(&self->_device);
    v15 = [DTGPUCounterProfile_GPURawCounters create:v14 profile:4];

    if (v15)
    {
      [(NSArray *)v5 addObject:v15];
    }

    if (self->_isAGXDevice)
    {
      v16 = objc_loadWeakRetained(&self->_device);
      v17 = [DTGPUCounterProfile_GPURawCounters create:v16 profile:1];

      if (v17)
      {
        [(NSArray *)v5 addObject:v17];
      }

      v18 = objc_loadWeakRetained(&self->_device);
      lowercaseString = [DTGPUCounterProfile_GPURawCounters create:v18 profile:2];

      if (lowercaseString)
      {
        [(NSArray *)v5 addObject:lowercaseString];
      }
    }

    else
    {
      device = [(DTGPUDataSource *)self device];
      vendorName = [device vendorName];
      lowercaseString = [vendorName lowercaseString];

      if ([lowercaseString rangeOfString:@"intel"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([lowercaseString rangeOfString:@"amd"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = objc_loadWeakRetained(&self->_device);
          v23 = [DTGPUCounterProfile_GPURawCounters create:v22 profile:12];

          if (v23)
          {
            [(NSArray *)v5 addObject:v23];
          }
        }
      }

      else
      {
        for (i = 5; i != 12; ++i)
        {
          v25 = objc_loadWeakRetained(&self->_device);
          v26 = [DTGPUCounterProfile_GPURawCounters create:v25 profile:i];

          if (v26)
          {
            [(NSArray *)v5 addObject:v26];
          }
        }
      }
    }

    v27 = *p_supportedCounterProfiles;
    *p_supportedCounterProfiles = v5;

    supportedCounterProfiles = *p_supportedCounterProfiles;
    goto LABEL_28;
  }

  [(NSArray *)v5 addObject:v7];
  v8 = objc_loadWeakRetained(&self->_device);
  v9 = [DTGPUCounterProfile_GPURawCountersAPS create:v8 profile:14];

  if (v9)
  {
    [(NSArray *)v5 addObject:v9];
  }

  self->_isAPS = 1;
  objc_storeStrong(p_supportedCounterProfiles, v5);

LABEL_29:

  return v5;
}

- (void)setAPSCounterConfig:(id)config
{
  v19 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"Profile"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_supportedCounterProfiles;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = v11;
          if (!v5 || (v13 = [v11 profile], v13 == objc_msgSend(v5, "unsignedIntValue")))
          {
            [v12 setAPSCounterConfig:{configCopy, v14}];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (unint64_t)minSampleInterval
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_supportedCounterProfiles;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {

    return 50000;
  }

  v4 = *v10;
  v5 = -1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(v2);
      }

      defaultSampleInterval = [*(*(&v9 + 1) + 8 * i) defaultSampleInterval];
      if (v5 >= defaultSampleInterval)
      {
        v5 = defaultSampleInterval;
      }
    }

    v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v3);

  if (v5 == -1)
  {
    return 50000;
  }

  return v5;
}

- (NSString)deviceName
{
  if (self->_isImportAPS)
  {
    v2 = @"Import Device";
  }

  else
  {
    isAGXDevice = self->_isAGXDevice;
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v5 = WeakRetained;
    if (isAGXDevice)
    {
      [WeakRetained familyName];
    }

    else
    {
      [WeakRetained name];
    }
    v2 = ;
  }

  return v2;
}

- (NSDictionary)deviceInfoDict
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained)
  {
    v30 = objc_loadWeakRetained(&self->_device);
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    supportedCounterProfiles = [(DTGPUDataSource *)self supportedCounterProfiles];
    v7 = [supportedCounterProfiles countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(supportedCounterProfiles);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "profile")}];
          [v4 addObject:v11];

          counterProfileForHost = [v10 counterProfileForHost];
          [v5 addObject:counterProfileForHost];
        }

        v7 = [supportedCounterProfiles countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v7);
    }

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v30, "sharedMemorySize")}];
    CFProperty = IORegistryEntryCreateCFProperty([v30 acceleratorPort], @"AGXTraceCodeVersion", 0, 0);
    v14 = @"0";
    if (CFProperty)
    {
      v14 = CFProperty;
    }

    v27 = v14;
    v35[0] = @"accelerator-id";
    v15 = MEMORY[0x277CCABB0];
    v29 = objc_loadWeakRetained(&self->_device);
    v25 = [v15 numberWithUnsignedLongLong:{objc_msgSend(v29, "registryID")}];
    v36[0] = v25;
    v35[1] = @"vendor-name";
    vendorName = [v30 vendorName];
    v36[1] = vendorName;
    v35[2] = @"family-name";
    familyName = [v30 familyName];
    v36[2] = familyName;
    v35[3] = @"product-name";
    productName = [v30 productName];
    v36[3] = productName;
    v35[4] = @"device-name";
    deviceName = [(DTGPUDataSource *)self deviceName];
    v36[4] = deviceName;
    v36[5] = v4;
    v35[5] = @"supported-counter-profiles";
    v35[6] = @"counter-profile-configs";
    v36[6] = v5;
    v35[7] = @"min-collection-interval";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[DTGPUDataSource minSampleInterval](self, "minSampleInterval")}];
    v36[7] = v19;
    v36[8] = MEMORY[0x277CBEC28];
    v35[8] = @"headless";
    v35[9] = @"removable";
    v36[9] = MEMORY[0x277CBEC28];
    v36[10] = MEMORY[0x277CBEC28];
    v35[10] = @"low-power";
    v35[11] = @"recommended-max-working-set-size";
    v36[11] = v28;
    v35[12] = @"mobile";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAGXDevice];
    v36[12] = v20;
    v35[13] = @"displays";
    _queryDisplayInfoDict = [(DTGPUDataSource *)self _queryDisplayInfoDict];
    v36[13] = _queryDisplayInfoDict;
    v36[14] = v27;
    v35[14] = @"agx-tracecode-version";
    v35[15] = @"perf-state";
    currentConsistentGPUPerformanceState = [(DTGPUDataSource *)self currentConsistentGPUPerformanceState];
    v36[15] = currentConsistentGPUPerformanceState;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:16];
  }

  else
  {
    v23 = MEMORY[0x277CBEC10];
  }

  return v23;
}

- (id)configure:(unsigned int)configure interval:(unint64_t)interval windowLimit:(unint64_t)limit
{
  v46 = *MEMORY[0x277D85DE8];
  p_collectingProfile = &self->_collectingProfile;
  if (self->_collectingProfile)
  {
    v6 = 0;
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = self->_supportedCounterProfiles;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v11)
    {
      v12 = *v42;
      configureCopy = configure;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v41 + 1) + 8 * i);
          if ([v15 profile] == configureCopy)
          {
            objc_storeStrong(p_collectingProfile, v15);
            goto LABEL_13;
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    prepare = [(DTGPUCounterProfile *)*p_collectingProfile prepare];
    ringBufferCounts = *p_collectingProfile;
    if (prepare)
    {
      ringBufferCounts = [(DTGPUCounterProfile *)*p_collectingProfile ringBufferCounts];
      sampleSizes = [(DTGPUCounterProfile *)*p_collectingProfile sampleSizes];
      if ([sampleSizes count] && objc_msgSend(ringBufferCounts, "count") && (v19 = objc_msgSend(ringBufferCounts, "count"), v19 == objc_msgSend(sampleSizes, "count")))
      {
        self->_windowLimit = limit;
        defaultSampleInterval = [(DTGPUCounterProfile *)self->_collectingProfile defaultSampleInterval];
        self->_sampleInterval = defaultSampleInterval;
        collectingProfile = self->_collectingProfile;
        if (collectingProfile)
        {
          windowLimit = 1000000000;
          if (self->_windowLimit + 1 >= 2)
          {
            windowLimit = self->_windowLimit;
          }

          v23 = windowLimit / defaultSampleInterval;
          if (v23 >= 0x4E20)
          {
            v23 = 20000;
          }

          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          begin = self->_sampleBuffers.__begin_;
          end = self->_sampleBuffers.__end_;
          p_sampleBuffers = &self->_sampleBuffers;
          while (end != begin)
          {
            end -= 24;
            *&v34[0] = end;
            sub_247FBF570(v34);
          }

          v30 = 0;
          self->_sampleBuffers.__end_ = begin;
          while (v30 < [ringBufferCounts count])
          {
            memset(v40, 0, sizeof(v40));
            v31 = [ringBufferCounts objectAtIndexedSubscript:v30];
            unsignedIntegerValue = [v31 unsignedIntegerValue];

            for (; unsignedIntegerValue; --unsignedIntegerValue)
            {
              v33 = [sampleSizes objectAtIndexedSubscript:v30];
              sub_247FBEB8C(v34, [v33 unsignedIntValue], v24);
              sub_247FBEB8C(&v37, 4, v24);

              sub_247FBCF0C(v40, v34);
              if (__p)
              {
                v39 = __p;
                operator delete(__p);
              }

              if (v35)
              {
                v36 = v35;
                operator delete(v35);
              }
            }

            sub_247FBCF4C(p_sampleBuffers, v40);
            *&v34[0] = v40;
            sub_247FBF570(v34);
            ++v30;
          }

          collectingProfile = *p_collectingProfile;
        }

        v6 = collectingProfile;
      }

      else
      {
        v28 = *p_collectingProfile;
        *p_collectingProfile = 0;

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      *p_collectingProfile = 0;
    }
  }

  return v6;
}

- (BOOL)run
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_enableShaderProfiler)
  {
    [v3 setObject:&unk_285A36BD0 forKeyedSubscript:@"ShaderProfiler"];
  }

  apsConfig = self->_apsConfig;
  if (apsConfig)
  {
    [v4 setObject:apsConfig forKeyedSubscript:@"APSConfig"];
  }

  v6 = [(DTGPUCounterProfile *)self->_collectingProfile start:self->_sampleInterval vendorFeatures:v4];
  if (v6)
  {
    self->_stopTime = 0;
    objc_initWeak(&location, self);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FBD0EC;
    block[3] = &unk_278EF3100;
    objc_copyWeak(&v10, &location);
    block[4] = self;
    dispatch_async(workQueue, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(DTGPUCounterProfile *)self->_collectingProfile stop];
  }

  return v6;
}

- (void)stop
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBD400;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)getRemainingData:(id)data
{
  dataCopy = data;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FBD500;
  v7[3] = &unk_278EF3178;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_sync(workQueue, v7);
}

- (void)reset
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBD978;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(workQueue, block);
  disableConsistentGPUPerformanceState = [(DTGPUDataSource *)self disableConsistentGPUPerformanceState];
}

- (void)_sampleCounters
{
  isAPS = self->_isAPS;
  collectingProfile = self->_collectingProfile;
  if (isAPS)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FBDAC0;
    v7[3] = &unk_278EF31A0;
    v7[4] = self;
    [(DTGPUCounterProfile *)collectingProfile sampleAPS:v7];
  }

  else
  {
    sampleInterval = self->_sampleInterval;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FBDB64;
    v6[3] = &unk_278EF31F0;
    v6[4] = self;
    [(DTGPUCounterProfile *)collectingProfile sampleCounters:sampleInterval callback:v6];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    device = [(DTGPUDataSource *)self device];
    device2 = [v5 device];
    v8 = device == device2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)timestampOfFirstSample
{
  begin = self->_sampleBuffers.__begin_;
  if (begin == self->_sampleBuffers.__end_)
  {
    return 0;
  }

  v3 = *begin;
  v4 = begin[1];
  if (*begin == v4)
  {
    return -1;
  }

  v6 = -1;
  do
  {
    v10 = 0;
    v11 = 0;
    windowLimit = self->_windowLimit;
    v8 = mach_absolute_time();
    sub_247FBE2B8(v3, windowLimit, v8, &v11, &v10);
    if (v11 && *v11 < v6)
    {
      v6 = *v11;
    }

    v3 += 14;
  }

  while (v3 != v4);
  return v6;
}

- (id)_queryDisplayInfoDict
{
  v68 = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  [MEMORY[0x277CD9E40] displays];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v2 = [obj countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (v2)
  {
    v3 = *v51;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v51 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v50 + 1) + 8 * i);
        if (([v5 isSupported] & 1) != 0 && objc_msgSend(v5, "displayType") != 3)
        {
          [v5 bounds];
          if (v6 != 0.0)
          {
            [v5 bounds];
            if (v7 != 0.0)
            {
              displayId = [v5 displayId];
              if ([v5 displayId])
              {
                displayId2 = [v5 displayId] - 1;
              }

              else
              {
                displayId2 = [v5 displayId];
              }

              displayType = [v5 displayType];
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              availableModes = [v5 availableModes];
              v11 = [availableModes countByEnumeratingWithState:&v46 objects:v66 count:16];
              v42 = displayId2;
              v12 = 0;
              if (v11)
              {
                v13 = *v47;
                do
                {
                  for (j = 0; j != v11; ++j)
                  {
                    if (*v47 != v13)
                    {
                      objc_enumerationMutation(availableModes);
                    }

                    [*(*(&v46 + 1) + 8 * j) refreshRate];
                    v16 = vcvtpd_s64_f64(v15);
                    if (v12 <= v16)
                    {
                      v12 = v16;
                    }

                    else
                    {
                      v12 = v12;
                    }
                  }

                  v11 = [availableModes countByEnumeratingWithState:&v46 objects:v66 count:16];
                }

                while (v11);
              }

              v55[0] = @"accelerator-id";
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
              v56 = v40;
              v55[1] = @"display-id";
              v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:displayId];
              v55[2] = @"device-name";
              v41 = v57;
              if (displayType)
              {
                deviceName = [v5 deviceName];
                v17 = deviceName;
              }

              else
              {
                v17 = @"Built-In Display";
              }

              v58 = v17;
              v55[3] = @"framebuffer-index";
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v42];
              v59 = v43;
              v55[4] = @"pixel-width";
              v18 = MEMORY[0x277CCABB0];
              [v5 bounds];
              v39 = [v18 numberWithDouble:v19];
              v60 = v39;
              v55[5] = @"pixel-height";
              v20 = MEMORY[0x277CCABB0];
              [v5 bounds];
              v37 = [v20 numberWithDouble:v21];
              v61 = v37;
              v55[6] = @"resolution";
              v22 = MEMORY[0x277CCABB0];
              currentMode = [v5 currentMode];
              v35 = [v22 numberWithUnsignedLong:{objc_msgSend(currentMode, "width")}];
              v54[0] = v35;
              v23 = MEMORY[0x277CCABB0];
              currentMode2 = [v5 currentMode];
              v34 = [v23 numberWithUnsignedLong:{objc_msgSend(currentMode2, "height")}];
              v54[1] = v34;
              v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
              v62 = v24;
              v55[7] = @"built-in";
              v25 = [MEMORY[0x277CCABB0] numberWithBool:displayType == 0];
              v63 = v25;
              v55[8] = @"max-refresh-rate";
              v26 = [MEMORY[0x277CCABB0] numberWithInt:v12];
              v64 = v26;
              v55[9] = @"is-main-display";
              v27 = MEMORY[0x277CCABB0];
              mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
              v29 = [v27 numberWithBool:v5 == mainDisplay];
              v65 = v29;
              v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:v55 count:10];

              if (displayType)
              {
              }

              [v32 addObject:v30];
            }
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (v2);
  }

  return v32;
}

- (id)currentConsistentGPUPerformanceState
{
  currentState = [(DTGPUPerformanceStateControl *)self->_perfStateControl currentState];
  if (!currentState)
  {
    currentState = MEMORY[0x277CBEC10];
  }

  return currentState;
}

- (MTLDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (DTGPUDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end