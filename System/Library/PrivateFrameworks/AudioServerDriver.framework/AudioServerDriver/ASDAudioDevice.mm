@interface ASDAudioDevice
- (ASDAudioDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin;
- (ASDAudioDevice)initWithPlugin:(id)plugin;
- (ASDDeviceConfigurationChangeDelegate)configurationChangeDelegate;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasInput;
- (BOOL)hasOutput;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)supportsSamplingRate:(double)rate;
- (NSArray)samplingRateRanges;
- (NSArray)samplingRates;
- (double)samplingRate;
- (id)controls;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)getProperty:(id)property;
- (id)inputStreams;
- (id)outputStreams;
- (int)performStartIO;
- (int)performStopIO;
- (int)startIOForClient:(unsigned int)client;
- (int)stopIOForClient:(unsigned int)client;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)numberOfChannelsInLayoutForScope:(unsigned int)scope;
- (void)addControl:(id)control;
- (void)addInputStream:(id)stream;
- (void)addOutputStream:(id)stream;
- (void)dealloc;
- (void)ioThreadStateChange:(id)change;
- (void)performConfigurationChange:(void *)change;
- (void)performStartIO;
- (void)performStopIO;
- (void)preferredChannelDescriptions:(AudioChannelDescription *)descriptions numberOfChannels:(unsigned int)channels forScope:(unsigned int)scope;
- (void)preferredChannelsForLeft:(unsigned int *)left andRight:(unsigned int *)right;
- (void)removeControl:(id)control;
- (void)removeInputStream:(id)stream;
- (void)removeOutputStream:(id)stream;
- (void)requestConfigurationChange:(id)change;
- (void)setBeginIOOperationBlock:(id)block;
- (void)setClientDescription:(id)description;
- (void)setClockAlgorithm:(unsigned int)algorithm;
- (void)setClockDomain:(unsigned int)domain;
- (void)setClockIsStable:(BOOL)stable;
- (void)setDeviceDescription:(id)description;
- (void)setDeviceName:(id)name;
- (void)setEndIOOperationBlock:(id)block;
- (void)setExternalSecureMute:(BOOL)mute;
- (void)setGetZeroTimestampBlock:(id)block;
- (void)setHidden:(BOOL)hidden;
- (void)setInputLatency:(unsigned int)latency;
- (void)setInputSafetyOffset:(unsigned int)offset;
- (void)setOutputLatency:(unsigned int)latency;
- (void)setOutputSafetyOffset:(unsigned int)offset;
- (void)setSamplingRate:(double)rate;
- (void)setSamplingRateRanges:(id)ranges;
- (void)setSamplingRates:(id)rates;
- (void)setTimestampPeriod:(unsigned int)period;
- (void)setTransportType:(unsigned int)type;
- (void)setWillDoConvertInputBlock:(id)block;
- (void)setWillDoConvertMixBlock:(id)block;
- (void)setWillDoMixOutputBlock:(id)block;
- (void)setWillDoProcessInputBlock:(id)block;
- (void)setWillDoProcessMixBlock:(id)block;
- (void)setWillDoProcessOutputBlock:(id)block;
- (void)setWillDoReadInputBlock:(id)block;
- (void)setWillDoWriteMixBlock:(id)block;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)updateTimestampPeriod;
@end

@implementation ASDAudioDevice

- (double)samplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ASDAudioDevice_samplingRate__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleRateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __30__ASDAudioDevice_samplingRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__26__ASDAudioDevice_hasInput__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)hasInput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  inputStreamQueue = self->_inputStreamQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDAudioDevice_hasInput__block_invoke;
  v5[3] = &unk_278CE40D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(inputStreamQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)performStartIO
{
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice performStartIO];
  }

  getZeroTimestampBlock = [(ASDAudioDevice *)self getZeroTimestampBlock];
  v4 = [getZeroTimestampBlock copy];
  getZeroTimestampBlock = self->_getZeroTimestampBlock;
  self->_getZeroTimestampBlock = v4;

  self->_getZeroTimestampBlockUnretained = self->_getZeroTimestampBlock;
  willDoReadInputBlock = [(ASDAudioDevice *)self willDoReadInputBlock];
  v7 = [willDoReadInputBlock copy];
  willDoReadInputBlock = self->_willDoReadInputBlock;
  self->_willDoReadInputBlock = v7;

  self->_willDoReadInputBlockUnretained = self->_willDoReadInputBlock;
  willDoConvertInputBlock = [(ASDAudioDevice *)self willDoConvertInputBlock];
  v10 = [willDoConvertInputBlock copy];
  willDoConvertInputBlock = self->_willDoConvertInputBlock;
  self->_willDoConvertInputBlock = v10;

  self->_willDoConvertInputBlockUnretained = self->_willDoConvertInputBlock;
  willDoProcessInputBlock = [(ASDAudioDevice *)self willDoProcessInputBlock];
  v13 = [willDoProcessInputBlock copy];
  willDoProcessInputBlock = self->_willDoProcessInputBlock;
  self->_willDoProcessInputBlock = v13;

  self->_willDoProcessInputBlockUnretained = self->_willDoProcessInputBlock;
  willDoProcessOutputBlock = [(ASDAudioDevice *)self willDoProcessOutputBlock];
  v16 = [willDoProcessOutputBlock copy];
  willDoProcessOutputBlock = self->_willDoProcessOutputBlock;
  self->_willDoProcessOutputBlock = v16;

  self->_willDoProcessOutputBlockUnretained = self->_willDoProcessOutputBlock;
  willDoMixOutputBlock = [(ASDAudioDevice *)self willDoMixOutputBlock];
  v19 = [willDoMixOutputBlock copy];
  willDoMixOutputBlock = self->_willDoMixOutputBlock;
  self->_willDoMixOutputBlock = v19;

  self->_willDoMixOutputBlockUnretained = self->_willDoMixOutputBlock;
  willDoProcessMixBlock = [(ASDAudioDevice *)self willDoProcessMixBlock];
  v22 = [willDoProcessMixBlock copy];
  willDoProcessMixBlock = self->_willDoProcessMixBlock;
  self->_willDoProcessMixBlock = v22;

  self->_willDoProcessMixBlockUnretained = self->_willDoProcessMixBlock;
  willDoConvertMixBlock = [(ASDAudioDevice *)self willDoConvertMixBlock];
  v25 = [willDoConvertMixBlock copy];
  willDoConvertMixBlock = self->_willDoConvertMixBlock;
  self->_willDoConvertMixBlock = v25;

  self->_willDoConvertMixBlockUnretained = self->_willDoConvertMixBlock;
  willDoWriteMixBlock = [(ASDAudioDevice *)self willDoWriteMixBlock];
  v28 = [willDoWriteMixBlock copy];
  willDoWriteMixBlock = self->_willDoWriteMixBlock;
  self->_willDoWriteMixBlock = v28;

  self->_willDoWriteMixBlockUnretained = self->_willDoWriteMixBlock;
  beginIOOperationBlock = [(ASDAudioDevice *)self beginIOOperationBlock];
  v31 = [beginIOOperationBlock copy];
  beginIOOperationBlock = self->_beginIOOperationBlock;
  self->_beginIOOperationBlock = v31;

  self->_beginIOOperationBlockUnretained = self->_beginIOOperationBlock;
  endIOOperationBlock = [(ASDAudioDevice *)self endIOOperationBlock];
  v34 = [endIOOperationBlock copy];
  endIOOperationBlock = self->_endIOOperationBlock;
  self->_endIOOperationBlock = v34;

  self->_endIOOperationBlockUnretained = self->_endIOOperationBlock;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  inputStreamQueue = self->_inputStreamQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASDAudioDevice_performStartIO__block_invoke;
  block[3] = &unk_278CE40D0;
  block[4] = self;
  block[5] = v46;
  dispatch_sync(inputStreamQueue, block);
  outputStreamQueue = self->_outputStreamQueue;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __32__ASDAudioDevice_performStartIO__block_invoke_2;
  v42[3] = &unk_278CE40D0;
  v42[4] = self;
  v42[5] = v44;
  dispatch_sync(outputStreamQueue, v42);
  self->_isRunning = 1;
  LODWORD(v41) = 0;
  v38 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62676F696ELL];
  [v38 changedProperty:&v40 forObject:self];

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
  return 0;
}

void __32__ASDAudioDevice_performStartIO__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 64);
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

        [*(*(&v8 + 1) + 8 * v7) startStream];
        *(*(*(a1 + 40) + 8) + 24) = 1;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __32__ASDAudioDevice_performStartIO__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 80);
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

        [*(*(&v8 + 1) + 8 * v7) startStream];
        *(*(*(a1 + 40) + 8) + 24) = 1;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (ASDDeviceConfigurationChangeDelegate)configurationChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationChangeDelegate);

  return WeakRetained;
}

- (int)performStopIO
{
  if (![(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice performStopIO];
  }

  outputStreamQueue = self->_outputStreamQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDAudioDevice_performStopIO__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(outputStreamQueue, block);
  inputStreamQueue = self->_inputStreamQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__ASDAudioDevice_performStopIO__block_invoke_2;
  v20[3] = &unk_278CE3FB8;
  v20[4] = self;
  dispatch_sync(inputStreamQueue, v20);
  self->_isRunning = 0;
  getZeroTimestampBlock = self->_getZeroTimestampBlock;
  self->_getZeroTimestampBlock = 0;

  self->_getZeroTimestampBlockUnretained = 0;
  willDoReadInputBlock = self->_willDoReadInputBlock;
  self->_willDoReadInputBlock = 0;

  self->_willDoReadInputBlockUnretained = 0;
  willDoConvertInputBlock = self->_willDoConvertInputBlock;
  self->_willDoConvertInputBlock = 0;

  self->_willDoConvertInputBlockUnretained = 0;
  willDoProcessInputBlock = self->_willDoProcessInputBlock;
  self->_willDoProcessInputBlock = 0;

  self->_willDoProcessInputBlockUnretained = 0;
  willDoProcessOutputBlock = self->_willDoProcessOutputBlock;
  self->_willDoProcessOutputBlock = 0;

  self->_willDoProcessOutputBlockUnretained = 0;
  willDoMixOutputBlock = self->_willDoMixOutputBlock;
  self->_willDoMixOutputBlock = 0;

  self->_willDoMixOutputBlockUnretained = 0;
  willDoProcessMixBlock = self->_willDoProcessMixBlock;
  self->_willDoProcessMixBlock = 0;

  self->_willDoProcessMixBlockUnretained = 0;
  willDoConvertMixBlock = self->_willDoConvertMixBlock;
  self->_willDoConvertMixBlock = 0;

  self->_willDoConvertMixBlockUnretained = 0;
  willDoWriteMixBlock = self->_willDoWriteMixBlock;
  self->_willDoWriteMixBlock = 0;

  self->_willDoWriteMixBlockUnretained = 0;
  beginIOOperationBlock = self->_beginIOOperationBlock;
  self->_beginIOOperationBlock = 0;

  self->_beginIOOperationBlockUnretained = 0;
  endIOOperationBlock = self->_endIOOperationBlock;
  self->_endIOOperationBlock = 0;

  self->_endIOOperationBlockUnretained = 0;
  LODWORD(v19) = 0;
  v16 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62676F696ELL];
  [v16 changedProperty:&v18 forObject:self];

  return 0;
}

void __31__ASDAudioDevice_performStopIO__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 80);
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

        [*(*(&v8 + 1) + 8 * v7++) stopStream];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __31__ASDAudioDevice_performStopIO__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 64);
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

        [*(*(&v8 + 1) + 8 * v7++) stopStream];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (ASDAudioDevice)initWithPlugin:(id)plugin
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDAudioDevice initWithPlugin:]"];
  [v4 raise:v5 format:{@"Do not call %@", v6}];

  return 0;
}

- (ASDAudioDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin
{
  dCopy = d;
  pluginCopy = plugin;
  v40.receiver = self;
  v40.super_class = ASDAudioDevice;
  v9 = [(ASDObject *)&v40 initWithPlugin:pluginCopy];
  v10 = v9;
  if (v9)
  {
    v9->_isAlive = 1;
    v9->_transportType = 0;
    v9->_clockAlgorithm = 1768518246;
    v9->_clockIsStable = 1;
    v9->_allowAutoRoute = 1;
    v9->_wantsDisplayRouting = 0;
    v9->_supportsHeySiri = 0;
    objc_storeStrong(&v9->_deviceUID, d);
    objc_storeWeak(&v10->_configurationChangeDelegate, pluginCopy);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v11 bundleIdentifier];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inputStreams = v10->_inputStreams;
    v10->_inputStreams = v13;

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.inputStreams", bundleIdentifier, v10->_deviceUID];
    v16 = dispatch_queue_create([v15 UTF8String], 0);
    inputStreamQueue = v10->_inputStreamQueue;
    v10->_inputStreamQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    outputStreams = v10->_outputStreams;
    v10->_outputStreams = v18;

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.outputStreams", bundleIdentifier, v10->_deviceUID];
    v21 = dispatch_queue_create([v20 UTF8String], 0);
    outputStreamQueue = v10->_outputStreamQueue;
    v10->_outputStreamQueue = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controls = v10->_controls;
    v10->_controls = v23;

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.controls", bundleIdentifier, v10->_deviceUID];
    v26 = dispatch_queue_create([v25 UTF8String], 0);
    controlQueue = v10->_controlQueue;
    v10->_controlQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samplingRateRanges = v10->_samplingRateRanges;
    v10->_samplingRateRanges = v28;

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.sampleRate", bundleIdentifier, v10->_deviceUID];
    v31 = dispatch_queue_create([v30 UTF8String], 0);
    sampleRateQueue = v10->_sampleRateQueue;
    v10->_sampleRateQueue = v31;

    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.ioReference", bundleIdentifier, v10->_deviceUID];
    v34 = dispatch_queue_create([v33 UTF8String], 0);
    ioReferenceQueue = v10->_ioReferenceQueue;
    v10->_ioReferenceQueue = v34;

    clientDescription = v10->_clientDescription;
    v10->_clientDescription = &unk_28534D0A8;

    v37 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    deviceDescription = v10->_deviceDescription;
    v10->_deviceDescription = v37;

    [(ASDObject *)v10 setupDiagnosticStateDumpHandlerWithTreeWalk:1];
  }

  return v10;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!property)
  {
    goto LABEL_64;
  }

  mSelector = property->mSelector;
  if (property->mSelector <= 1818452845)
  {
    if (mSelector <= 1668575851)
    {
      if (mSelector > 1667658617)
      {
        if (mSelector > 1668050794)
        {
          if (mSelector == 1668050795)
          {
            goto LABEL_63;
          }

          v4 = 1668510818;
        }

        else
        {
          if (mSelector == 1667658618)
          {
            goto LABEL_63;
          }

          v4 = 1668049764;
        }
      }

      else if (mSelector > 1667330159)
      {
        if (mSelector == 1667330160)
        {
          configurationBundleID = [(ASDAudioDevice *)self configurationBundleID];
          *(v18 + 24) = configurationBundleID != 0;

          goto LABEL_64;
        }

        v4 = 1667523955;
      }

      else
      {
        if (mSelector == 1634429294)
        {
          goto LABEL_63;
        }

        v4 = 1635087471;
      }

      goto LABEL_62;
    }

    if (mSelector <= 1685222500)
    {
      if (mSelector > 1684301170)
      {
        if (mSelector == 1684301171)
        {
          goto LABEL_63;
        }

        v4 = 1684434036;
        goto LABEL_62;
      }

      if (mSelector == 1668575852)
      {
        goto LABEL_63;
      }

      v5 = 1684236338;
LABEL_51:
      if (mSelector != v5)
      {
LABEL_68:
        v14.receiver = self;
        v14.super_class = ASDAudioDevice;
        supportsExternalSecureMute = [(ASDObject *)&v14 hasProperty:?];
        goto LABEL_69;
      }

LABEL_52:
      mScope = property->mScope;
      if ((mScope == 1869968496 || mScope == 1768845428) && !property->mElement)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (mSelector <= 1702392684)
    {
      if (mSelector == 1685222501)
      {
        goto LABEL_63;
      }

      v4 = 1685276755;
      goto LABEL_62;
    }

    if (mSelector != 1702392685)
    {
      if (mSelector == 1735354734)
      {
        goto LABEL_63;
      }

      v4 = 1751737454;
      goto LABEL_62;
    }

    supportsExternalSecureMute = [(ASDAudioDevice *)self supportsExternalSecureMute];
LABEL_69:
    *(v18 + 24) = supportsExternalSecureMute;
    goto LABEL_64;
  }

  if (mSelector > 1853059699)
  {
    if (mSelector <= 1936290670)
    {
      if (mSelector <= 1935763059)
      {
        if (mSelector == 1853059700)
        {
          goto LABEL_63;
        }

        v4 = 1919512167;
        goto LABEL_62;
      }

      if (mSelector != 1935763060)
      {
        v4 = 1936092276;
        goto LABEL_62;
      }

      goto LABEL_52;
    }

    if (mSelector > 1937009954)
    {
      if (mSelector == 1937009955 || mSelector == 1969841184)
      {
        goto LABEL_63;
      }

      v4 = 1953653102;
      goto LABEL_62;
    }

    if (mSelector != 1936290671)
    {
      v5 = 1936879204;
      goto LABEL_51;
    }

    supportsExternalSecureMute = [(ASDAudioDevice *)self supportsIsolatedIO];
    goto LABEL_69;
  }

  if (mSelector > 1819107690)
  {
    if (mSelector > 1819569762)
    {
      if (mSelector != 1819569763)
      {
        if (mSelector != 1836411236)
        {
          v4 = 1853059619;
          goto LABEL_62;
        }

LABEL_63:
        v20 = 1;
        goto LABEL_64;
      }

      goto LABEL_52;
    }

    if (mSelector == 1819107691)
    {
      goto LABEL_63;
    }

    v4 = 1819173229;
LABEL_62:
    if (mSelector == v4)
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if (mSelector > 1818455661)
  {
    if (mSelector != 1818455662)
    {
      v4 = 1818850926;
      goto LABEL_62;
    }
  }

  else if (mSelector != 1818452846 && mSelector != 1818454126)
  {
    goto LABEL_68;
  }

  if (property->mElement)
  {
    v6 = property->mScope;
    if (v6 == 1869968496)
    {
      outputStreamQueue = self->_outputStreamQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__ASDAudioDevice_hasProperty___block_invoke_2;
      block[3] = &unk_278CE4030;
      block[4] = self;
      block[5] = &v17;
      block[6] = property;
      v8 = block;
    }

    else
    {
      if (v6 != 1768845428)
      {
        goto LABEL_64;
      }

      outputStreamQueue = self->_inputStreamQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __30__ASDAudioDevice_hasProperty___block_invoke;
      v16[3] = &unk_278CE4030;
      v16[4] = self;
      v16[5] = &v17;
      v16[6] = property;
      v8 = v16;
    }

    dispatch_sync(outputStreamQueue, v8);
  }

LABEL_64:
  v10 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v10;
}

void __30__ASDAudioDevice_hasProperty___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(a1[4] + 64) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1[4] + 64);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v10 + 1) + 8 * i) physicalFormat];
          v6 += [v9 channelsPerFrame];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    if (*(a1[6] + 8) <= v6)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __30__ASDAudioDevice_hasProperty___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(a1[4] + 80) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1[4] + 80);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v10 + 1) + 8 * i) physicalFormat];
          v6 += [v9 channelsPerFrame];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    if (*(a1[6] + 8) <= v6)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  v9 = 8;
  if (property->mSelector > 1818454125)
  {
    if (mSelector <= 1870098019)
    {
      if (mSelector > 1819173228)
      {
        if (mSelector > 1836411235)
        {
          if (mSelector == 1836411236)
          {
            return v9;
          }

          if (mSelector == 1853059619)
          {
            samplingRateRanges = [(ASDAudioDevice *)self samplingRateRanges];
            v17 = [samplingRateRanges count];

            return 16 * v17;
          }

          v10 = 1853059700;
          goto LABEL_53;
        }

        if (mSelector == 1819173229)
        {
          return v9;
        }

        v12 = 1819569763;
LABEL_57:
        if (mSelector == v12)
        {
          return 4;
        }

LABEL_75:
        v34.receiver = self;
        v34.super_class = ASDAudioDevice;
        return [(ASDObject *)&v34 dataSizeForProperty:property withQualifierSize:*&size andQualifierData:data];
      }

      if (mSelector <= 1818850925)
      {
        if (mSelector == 1818454126)
        {
          return v9;
        }

        v11 = 28270;
LABEL_27:
        v10 = v11 | 0x6C630000;
        goto LABEL_53;
      }

      if (mSelector != 1818850926)
      {
        v10 = 1819107691;
        goto LABEL_53;
      }

      return 4;
    }

    if (mSelector > 1936290670)
    {
      if (mSelector <= 1937009954)
      {
        if (mSelector != 1936290671)
        {
          if (mSelector == 1936879204)
          {
            if ([(ASDAudioDevice *)self channelLayoutTagForScope:property->mScope, *&size])
            {
              return 12;
            }

            else
            {
              return 20 * [(ASDAudioDevice *)self numberOfChannelsInLayoutForScope:property->mScope]+ 12;
            }
          }

          goto LABEL_75;
        }

        return 4;
      }

      if (mSelector != 1937009955)
      {
        if (mSelector == 1969841184)
        {
          return v9;
        }

        v12 = 1953653102;
        goto LABEL_57;
      }

      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      mScope = property->mScope;
      if (mScope == 1768845428 || mScope == 1735159650)
      {
        inputStreamQueue = self->_inputStreamQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
        block[3] = &unk_278CE3E28;
        block[4] = self;
        block[5] = &v45;
        dispatch_sync(inputStreamQueue, block);
        mScope = property->mScope;
      }

      if (mScope != 1869968496 && mScope != 1735159650)
      {
LABEL_101:
        v9 = 4 * *(v46 + 6);
        _Block_object_dispose(&v45, 8);
        return v9;
      }

      outputStreamQueue = self->_outputStreamQueue;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      v43[3] = &unk_278CE3E28;
      v43[4] = self;
      v43[5] = &v45;
      v15 = v43;
LABEL_100:
      dispatch_sync(outputStreamQueue, v15);
      goto LABEL_101;
    }

    if (mSelector > 1935763059)
    {
      if (mSelector != 1935763060)
      {
        v12 = 1936092276;
        goto LABEL_57;
      }

      return 4;
    }

    if (mSelector != 1870098020)
    {
      v12 = 1919512167;
      goto LABEL_57;
    }

    if (!size)
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      v23 = property->mScope;
      if (v23 == 1768845428 || v23 == 1735159650)
      {
        v24 = self->_inputStreamQueue;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_7;
        v37[3] = &unk_278CE3E28;
        v37[4] = self;
        v37[5] = &v45;
        dispatch_sync(v24, v37);
        v23 = property->mScope;
      }

      if (v23 == 1869968496 || v23 == 1735159650)
      {
        v25 = self->_outputStreamQueue;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_8;
        v36[3] = &unk_278CE3E28;
        v36[4] = self;
        v36[5] = &v45;
        dispatch_sync(v25, v36);
      }

      outputStreamQueue = self->_controlQueue;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_9;
      v35[3] = &unk_278CE4030;
      v35[4] = self;
      v35[5] = &v45;
      v35[6] = property;
      v15 = v35;
      goto LABEL_100;
    }

    if ((size & 3) == 0)
    {
      v26 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      v33 = size >> 2;
      v27 = 4 * (size >> 2);
      do
      {
        if (*(data + v26) == 1634956402)
        {
          v28 = property->mScope;
          if (v28 == 1768845428 || v28 == 1735159650)
          {
            v30 = self->_inputStreamQueue;
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_4;
            v41[3] = &unk_278CE3E28;
            v41[4] = self;
            v41[5] = &v45;
            dispatch_sync(v30, v41);
            v28 = property->mScope;
          }

          if (v28 == 1869968496 || v28 == 1735159650)
          {
            v32 = self->_outputStreamQueue;
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_5;
            v40[3] = &unk_278CE3E28;
            v40[4] = self;
            v40[5] = &v45;
            dispatch_sync(v32, v40);
          }
        }

        v26 += 4;
      }

      while (v27 != v26);
      outputStreamQueue = self->_controlQueue;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_6;
      v38[3] = &unk_278CE4058;
      v39 = v33;
      v38[6] = data;
      v38[7] = property;
      v38[4] = self;
      v38[5] = &v45;
      v15 = v38;
      goto LABEL_100;
    }

    return 0;
  }

  if (mSelector > 1668575851)
  {
    if (mSelector > 1685222500)
    {
      if (mSelector > 1735354733)
      {
        if (mSelector == 1735354734 || mSelector == 1751737454)
        {
          return 4;
        }

        v11 = 25454;
        goto LABEL_27;
      }

      if (mSelector != 1685222501)
      {
        v12 = 1685276755;
        goto LABEL_57;
      }

      return 4;
    }

    if (mSelector > 1684301170)
    {
      if (mSelector == 1684301171)
      {
        return v9;
      }

      v12 = 1684434036;
      goto LABEL_57;
    }

    if (mSelector != 1668575852)
    {
      v10 = 1684236338;
      goto LABEL_53;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    outputStreamQueue = self->_controlQueue;
    v48 = 0;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
    v42[3] = &unk_278CE4030;
    v42[5] = &v45;
    v42[6] = property;
    v42[4] = self;
    v15 = v42;
    goto LABEL_100;
  }

  if (mSelector > 1667658617)
  {
    if (mSelector > 1668050794)
    {
      if (mSelector != 1668050795)
      {
        v12 = 1668510818;
        goto LABEL_57;
      }
    }

    else if (mSelector != 1667658618)
    {
      v12 = 1668049764;
      goto LABEL_57;
    }

    return 4;
  }

  if (mSelector <= 1667330159)
  {
    if (mSelector == 1634429294)
    {
      v49[0] = 1633969526;
      v45 = *&property->mSelector;
      LODWORD(v46) = property->mElement;
      owner = [(ASDObject *)self owner];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = 1650751011;
      }

      else
      {
        v19 = 1684370979;
      }

      LODWORD(v45) = v19;

      owner2 = [(ASDObject *)self owner];
      v9 = [owner2 dataSizeForProperty:&v45 withQualifierSize:4 andQualifierData:v49];

      return v9;
    }

    v12 = 1635087471;
    goto LABEL_57;
  }

  if (mSelector == 1667330160)
  {
    return v9;
  }

  v10 = 1667523955;
LABEL_53:
  if (mSelector != v10)
  {
    goto LABEL_75;
  }

  return v9;
}

uint64_t __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 96);
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

uint64_t __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_5(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_6(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 96);
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

uint64_t __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_7(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __73__ASDAudioDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_9(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 96);
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
  v131 = *MEMORY[0x277D85DE8];
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  if (!property || !dataSize || !andData)
  {
    goto LABEL_243;
  }

  v10 = *&client;
  v12 = *&size;
  mSelector = property->mSelector;
  if (property->mSelector > 1818454125)
  {
    if (mSelector > 1870098019)
    {
      if (mSelector <= 1936879203)
      {
        if (mSelector > 1935763059)
        {
          if (mSelector != 1935763060)
          {
            if (mSelector == 1936092276)
            {
              if (*dataSize >= 4)
              {
                canBeDefaultSystemDevice = [(ASDAudioDevice *)self canBeDefaultSystemDevice];
                goto LABEL_239;
              }

              goto LABEL_243;
            }

            if (mSelector == 1936290671)
            {
              if (*dataSize >= 4)
              {
                canBeDefaultSystemDevice = [(ASDAudioDevice *)self supportsIsolatedIO];
LABEL_239:
                *andData = canBeDefaultSystemDevice;
                goto LABEL_240;
              }

              goto LABEL_243;
            }

LABEL_178:
            v99.receiver = self;
            v99.super_class = ASDAudioDevice;
            v72 = [(ASDObject *)&v99 getProperty:property withQualifierSize:*&size qualifierData:data dataSize:dataSize andData:andData forClient:*&client];
            *(v127 + 24) = v72;
            goto LABEL_243;
          }

          if (*dataSize < 4)
          {
            goto LABEL_243;
          }

          mScope = property->mScope;
          switch(mScope)
          {
            case 0x6F757470u:
              goto LABEL_192;
            case 0x696E7074u:
LABEL_151:
              canBeDefaultSystemDevice = [(ASDAudioDevice *)self inputSafetyOffset];
              goto LABEL_239;
            case 0x676C6F62u:
              inputSafetyOffset = [(ASDAudioDevice *)self inputSafetyOffset];
              if (inputSafetyOffset > [(ASDAudioDevice *)self outputSafetyOffset])
              {
                goto LABEL_151;
              }

LABEL_192:
              canBeDefaultSystemDevice = [(ASDAudioDevice *)self outputSafetyOffset];
              goto LABEL_239;
          }

LABEL_240:
          v68 = 4;
          goto LABEL_241;
        }

        if (mSelector != 1870098020)
        {
          if (mSelector == 1919512167)
          {
            if (*dataSize >= 4)
            {
              canBeDefaultSystemDevice = [(ASDAudioDevice *)self timestampPeriod];
              goto LABEL_239;
            }

            goto LABEL_243;
          }

          goto LABEL_178;
        }

        if (size)
        {
          if ((size & 3) != 0)
          {
            goto LABEL_243;
          }

          v120 = 0;
          v121 = &v120;
          v122 = 0x2020000000;
          v123 = 0;
          v69 = *dataSize;
          if (v69 >= [(ASDAudioDevice *)self dataSizeForProperty:property withQualifierSize:*&size andQualifierData:data])
          {
            v70 = [(ASDAudioDevice *)self dataSizeForProperty:property withQualifierSize:v12 andQualifierData:data];
          }

          else
          {
            v70 = *dataSize;
          }

          v85 = 0;
          v86 = v12 >> 2;
          v87 = v70 >> 2;
          if (v12 >> 2 <= 1)
          {
            v86 = 1;
          }

          v88 = 4 * v86;
          do
          {
            if (*(data + v85) == 1634956402)
            {
              if (4 * v87 != v85)
              {
                v89 = property->mScope;
                if (v89 == 1768845428 || v89 == 1735159650)
                {
                  inputStreamQueue = self->_inputStreamQueue;
                  v112[0] = MEMORY[0x277D85DD0];
                  v112[1] = 3221225472;
                  v112[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4;
                  v112[3] = &unk_278CE3E50;
                  v112[4] = self;
                  v112[5] = &v120;
                  v112[6] = v87;
                  v112[7] = andData;
                  dispatch_sync(inputStreamQueue, v112);
                }
              }

              if (v121[3] != v87)
              {
                v92 = property->mScope;
                if (v92 == 1869968496 || v92 == 1735159650)
                {
                  outputStreamQueue = self->_outputStreamQueue;
                  v111[0] = MEMORY[0x277D85DD0];
                  v111[1] = 3221225472;
                  v111[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_5;
                  v111[3] = &unk_278CE3E50;
                  v111[4] = self;
                  v111[5] = &v120;
                  v111[6] = v87;
                  v111[7] = andData;
                  dispatch_sync(outputStreamQueue, v111);
                }
              }
            }

            v85 += 4;
          }

          while (v88 != v85);
          if (v121[3] != v87)
          {
            controlQueue = self->_controlQueue;
            v109[0] = MEMORY[0x277D85DD0];
            v109[1] = 3221225472;
            v109[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_6;
            v109[3] = &unk_278CE40A8;
            v110 = v12 >> 2;
            v109[6] = data;
            v109[7] = property;
            v109[4] = self;
            v109[5] = &v120;
            v109[8] = v87;
            v109[9] = andData;
            dispatch_sync(controlQueue, v109);
            LODWORD(v87) = *(v121 + 6);
          }

          v18 = 4 * v87;
        }

        else
        {
          v120 = 0;
          v121 = &v120;
          v122 = 0x2020000000;
          v123 = 0;
          v75 = *dataSize;
          if (v75 >= [(ASDAudioDevice *)self dataSizeForProperty:property withQualifierSize:0 andQualifierData:data])
          {
            v76 = [(ASDAudioDevice *)self dataSizeForProperty:property withQualifierSize:0 andQualifierData:data];
          }

          else
          {
            v76 = *dataSize;
          }

          v78 = v76 >> 2;
          v79 = v121[3];
          if (v79 != v78)
          {
            v80 = property->mScope;
            if (v80 == 1768845428 || v80 == 1735159650)
            {
              v81 = self->_inputStreamQueue;
              v108[0] = MEMORY[0x277D85DD0];
              v108[1] = 3221225472;
              v108[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_7;
              v108[3] = &unk_278CE3E50;
              v108[4] = self;
              v108[5] = &v120;
              v108[6] = v78;
              v108[7] = andData;
              dispatch_sync(v81, v108);
              v79 = v121[3];
            }

            if (v79 != v78)
            {
              v82 = property->mScope;
              if (v82 == 1869968496 || v82 == 1735159650)
              {
                v83 = self->_outputStreamQueue;
                v107[0] = MEMORY[0x277D85DD0];
                v107[1] = 3221225472;
                v107[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_8;
                v107[3] = &unk_278CE3E50;
                v107[4] = self;
                v107[5] = &v120;
                v107[6] = v78;
                v107[7] = andData;
                dispatch_sync(v83, v107);
                v79 = v121[3];
              }

              if (v79 != v78)
              {
                v84 = self->_controlQueue;
                v106[0] = MEMORY[0x277D85DD0];
                v106[1] = 3221225472;
                v106[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_9;
                v106[3] = &unk_278CE4080;
                v106[4] = self;
                v106[5] = &v120;
                v106[6] = property;
                v106[7] = v78;
                v106[8] = andData;
                dispatch_sync(v84, v106);
                LODWORD(v78) = *(v121 + 6);
              }
            }
          }

          v18 = 4 * v78;
        }

LABEL_233:
        *dataSize = v18;
        *(v127 + 24) = 1;
        _Block_object_dispose(&v120, 8);
        goto LABEL_243;
      }

      if (mSelector <= 1937009954)
      {
        if (mSelector != 1936879204)
        {
          if (mSelector == 1937007734)
          {
            if (*dataSize >= 4)
            {
              *dataSize = 4;
              owner = [(ASDObject *)self owner];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                owner2 = [(ASDObject *)self owner];
                v33Owner = [owner2 owner];
                *andData = [v33Owner objectID];
              }

              else
              {
                owner2 = [(ASDObject *)self plugin];
                *andData = [owner2 objectID];
              }

              goto LABEL_242;
            }

            goto LABEL_243;
          }

          goto LABEL_178;
        }

        if ([(ASDAudioDevice *)self channelLayoutTagForScope:property->mScope])
        {
          if (*dataSize < 0xC)
          {
            goto LABEL_243;
          }

          *andData = [(ASDAudioDevice *)self channelLayoutTagForScope:property->mScope];
          *(andData + 4) = [(ASDAudioDevice *)self channelLayoutBitmapForScope:property->mScope];
          v68 = 12;
        }

        else
        {
          v77 = [(ASDAudioDevice *)self numberOfChannelsInLayoutForScope:property->mScope];
          if (20 * v77 + 12 > *dataSize)
          {
            goto LABEL_243;
          }

          *andData = 0;
          *(andData + 2) = [(ASDAudioDevice *)self numberOfChannelsInLayoutForScope:property->mScope];
          [(ASDAudioDevice *)self preferredChannelDescriptions:andData + 12 numberOfChannels:v77 forScope:property->mScope];
          v68 = 20 * *(andData + 2) + 12;
        }

LABEL_241:
        *dataSize = v68;
LABEL_242:
        *(v127 + 24) = 1;
        goto LABEL_243;
      }

      if (mSelector == 1937009955)
      {
        v120 = 0;
        v121 = &v120;
        v122 = 0x2020000000;
        v123 = 0;
        v63 = *dataSize >> 2;
        v64 = property->mScope;
        if (v64 == 1768845428 || (v65 = 0, v64 == 1735159650))
        {
          v66 = self->_inputStreamQueue;
          v119[0] = MEMORY[0x277D85DD0];
          v119[1] = 3221225472;
          v119[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
          v119[3] = &unk_278CE3E50;
          v119[4] = self;
          v119[5] = &v120;
          v119[6] = v63;
          v119[7] = andData;
          dispatch_sync(v66, v119);
          v65 = v121[3];
        }

        if (v65 == v63)
        {
          LODWORD(v65) = v63;
        }

        else
        {
          v73 = property->mScope;
          if (v73 == 1869968496 || v73 == 1735159650)
          {
            v74 = self->_outputStreamQueue;
            v118[0] = MEMORY[0x277D85DD0];
            v118[1] = 3221225472;
            v118[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2;
            v118[3] = &unk_278CE3E50;
            v118[4] = self;
            v118[5] = &v120;
            v118[6] = v63;
            v118[7] = andData;
            dispatch_sync(v74, v118);
            v65 = v121[3];
          }
        }

        v18 = 4 * v65;
        goto LABEL_233;
      }

      if (mSelector == 1953653102)
      {
        if (*dataSize >= 4)
        {
          canBeDefaultSystemDevice = [(ASDAudioDevice *)self transportType];
          goto LABEL_239;
        }

        goto LABEL_243;
      }

      if (mSelector != 1969841184)
      {
        goto LABEL_178;
      }

      if (*dataSize < 8)
      {
        goto LABEL_243;
      }

      deviceUID = [(ASDAudioDevice *)self deviceUID];
      *andData = deviceUID;

      v24 = *andData;
      if (*andData)
      {
LABEL_163:
        CFRetain(v24);
        goto LABEL_164;
      }

      goto LABEL_164;
    }

    if (mSelector > 1819173228)
    {
      if (mSelector <= 1836411235)
      {
        if (mSelector != 1819173229)
        {
          if (mSelector != 1819569763)
          {
            goto LABEL_178;
          }

          if (*dataSize < 4)
          {
            goto LABEL_243;
          }

          v29 = property->mScope;
          if (v29 != 1869968496)
          {
            if (v29 == 1768845428)
            {
              goto LABEL_84;
            }

            if (v29 != 1735159650)
            {
              goto LABEL_240;
            }

            inputLatency = [(ASDAudioDevice *)self inputLatency];
            if (inputLatency > [(ASDAudioDevice *)self outputLatency])
            {
LABEL_84:
              canBeDefaultSystemDevice = [(ASDAudioDevice *)self inputLatency];
              goto LABEL_239;
            }
          }

          canBeDefaultSystemDevice = [(ASDAudioDevice *)self outputLatency];
          goto LABEL_239;
        }

        if (*dataSize < 8)
        {
          goto LABEL_243;
        }

        deviceName = [(ASDAudioDevice *)self deviceName];
        *andData = deviceName;

        v24 = *andData;
        if (!*andData)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      if (mSelector != 1836411236)
      {
        if (mSelector == 1853059619)
        {
          v36 = *dataSize;
          [(ASDAudioDevice *)self samplingRateRanges];
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v37 = v114 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v113 objects:v130 count:16];
          if (v38)
          {
            v39 = 0;
            v40 = v36 >> 4;
            v41 = *v114;
            v42 = andData + 8;
            v43 = -v40;
            v98 = andData + 8;
LABEL_112:
            v44 = 0;
            v45 = v39;
            v46 = &v42[16 * v39];
            v47 = v43 + v39;
            while (1)
            {
              if (*v114 != v41)
              {
                objc_enumerationMutation(v37);
              }

              if (!(v47 + v44))
              {
                break;
              }

              v48 = *(*(&v113 + 1) + 8 * v44);
              [v48 maximum];
              *v46 = v49;
              [v48 minimum];
              *(v46 - 1) = v50;
              ++v44;
              v46 += 16;
              if (v38 == v44)
              {
                v38 = [v37 countByEnumeratingWithState:&v113 objects:v130 count:16];
                v39 = v45 + v44;
                v43 = -v40;
                v42 = v98;
                if (v38)
                {
                  goto LABEL_112;
                }

                LODWORD(v40) = v45 + v44;
                break;
              }
            }
          }

          else
          {
            LODWORD(v40) = 0;
          }

          *dataSize = 16 * v40;
          *(v127 + 24) = 1;

          goto LABEL_243;
        }

        if (mSelector != 1853059700)
        {
          goto LABEL_178;
        }

        if (*dataSize < 8)
        {
          goto LABEL_243;
        }

        [(ASDAudioDevice *)self samplingRate];
        *andData = v19;
        goto LABEL_164;
      }

      if (*dataSize < 8)
      {
        goto LABEL_243;
      }

      modelUID = [(ASDAudioDevice *)self modelUID];
      *andData = modelUID;

      v24 = *andData;
      if (*andData)
      {
        goto LABEL_163;
      }

LABEL_164:
      v68 = 8;
      goto LABEL_241;
    }

    if (mSelector > 1818850925)
    {
      if (mSelector == 1818850926)
      {
        if (*dataSize >= 4)
        {
          *andData = self->_isAlive;
          *dataSize = 4;
          v129 = 1;
        }

        goto LABEL_243;
      }

      if (mSelector != 1819107691)
      {
        goto LABEL_178;
      }

      if (*dataSize < 8)
      {
        goto LABEL_243;
      }

      manufacturerName = [(ASDAudioDevice *)self manufacturerName];
      *andData = manufacturerName;

      v24 = *andData;
      if (!*andData)
      {
        goto LABEL_164;
      }

      goto LABEL_163;
    }

    if (mSelector == 1818454126)
    {
      if (*dataSize < 8 || !property->mElement)
      {
        goto LABEL_243;
      }

      v35 = property->mScope;
      if (v35 == 1869968496)
      {
        v21 = self->_outputStreamQueue;
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_11;
        v104[3] = &unk_278CE4080;
        v104[6] = property;
        v104[7] = andData;
        v104[8] = dataSize;
        v104[4] = self;
        v104[5] = &v126;
        v22 = v104;
      }

      else
      {
        if (v35 != 1768845428)
        {
          goto LABEL_243;
        }

        v21 = self->_inputStreamQueue;
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_10;
        v105[3] = &unk_278CE4080;
        v105[6] = property;
        v105[7] = andData;
        v105[8] = dataSize;
        v105[4] = self;
        v105[5] = &v126;
        v22 = v105;
      }
    }

    else
    {
      if (mSelector != 1818455662)
      {
        goto LABEL_178;
      }

      if (*dataSize < 8 || !property->mElement)
      {
        goto LABEL_243;
      }

      v25 = property->mScope;
      if (v25 == 1869968496)
      {
        v21 = self->_outputStreamQueue;
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_15;
        v100[3] = &unk_278CE4080;
        v100[6] = property;
        v100[7] = andData;
        v100[8] = dataSize;
        v100[4] = self;
        v100[5] = &v126;
        v22 = v100;
      }

      else
      {
        if (v25 != 1768845428)
        {
          goto LABEL_243;
        }

        v21 = self->_inputStreamQueue;
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_14;
        v101[3] = &unk_278CE4080;
        v101[6] = property;
        v101[7] = andData;
        v101[8] = dataSize;
        v101[4] = self;
        v101[5] = &v126;
        v22 = v101;
      }
    }

LABEL_237:
    dispatch_sync(v21, v22);
    goto LABEL_243;
  }

  if (mSelector > 1684236337)
  {
    if (mSelector > 1685276754)
    {
      if (mSelector <= 1735354733)
      {
        if (mSelector == 1685276755)
        {
          if (*dataSize >= 4)
          {
            canBeDefaultSystemDevice = [(ASDAudioDevice *)self supportsHeySiri];
            goto LABEL_239;
          }

          goto LABEL_243;
        }

        if (mSelector == 1702392685)
        {
          if (*dataSize >= 4 && [(ASDAudioDevice *)self supportsExternalSecureMute])
          {
            canBeDefaultSystemDevice = [(ASDAudioDevice *)self externalSecureMute];
            goto LABEL_239;
          }

          goto LABEL_243;
        }

        goto LABEL_178;
      }

      if (mSelector == 1735354734)
      {
        if (*dataSize >= 4)
        {
          canBeDefaultSystemDevice = [(ASDAudioDevice *)self isRunning];
          goto LABEL_239;
        }

        goto LABEL_243;
      }

      if (mSelector == 1751737454)
      {
        if (*dataSize >= 4)
        {
          canBeDefaultSystemDevice = [(ASDAudioDevice *)self isHidden];
          goto LABEL_239;
        }

        goto LABEL_243;
      }

      if (mSelector != 1818452846)
      {
        goto LABEL_178;
      }

      if (*dataSize < 8 || !property->mElement)
      {
        goto LABEL_243;
      }

      v20 = property->mScope;
      if (v20 == 1869968496)
      {
        v21 = self->_outputStreamQueue;
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_13;
        v102[3] = &unk_278CE4080;
        v102[6] = property;
        v102[7] = andData;
        v102[8] = dataSize;
        v102[4] = self;
        v102[5] = &v126;
        v22 = v102;
      }

      else
      {
        if (v20 != 1768845428)
        {
          goto LABEL_243;
        }

        v21 = self->_inputStreamQueue;
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_12;
        v103[3] = &unk_278CE4080;
        v103[6] = property;
        v103[7] = andData;
        v103[8] = dataSize;
        v103[4] = self;
        v103[5] = &v126;
        v22 = v103;
      }

      goto LABEL_237;
    }

    if (mSelector <= 1684434035)
    {
      if (mSelector == 1684236338)
      {
        if (*dataSize < 8)
        {
          goto LABEL_243;
        }

        [(ASDAudioDevice *)self preferredChannelsForLeft:andData andRight:andData + 4];
        goto LABEL_164;
      }

      if (mSelector != 1684301171)
      {
        goto LABEL_178;
      }

      if (*dataSize < 8)
      {
        goto LABEL_243;
      }

      deviceDescription = [(ASDAudioDevice *)self deviceDescription];
      *andData = deviceDescription;

      v24 = *andData;
      if (!*andData)
      {
        goto LABEL_164;
      }

      goto LABEL_163;
    }

    if (mSelector != 1684434036)
    {
      if (mSelector == 1685222501)
      {
        if (*dataSize >= 4)
        {
          canBeDefaultSystemDevice = [(ASDAudioDevice *)self wantsDisplayRouting];
          goto LABEL_239;
        }

        goto LABEL_243;
      }

      goto LABEL_178;
    }

    if (*dataSize < 4)
    {
      goto LABEL_243;
    }

    v58 = property->mScope;
    if (v58 != 1869968496)
    {
      if (v58 == 1768845428)
      {
        if (![(ASDAudioDevice *)self canBeDefaultDevice])
        {
          canBeDefaultSystemDevice = [(ASDAudioDevice *)self canBeDefaultInputDevice];
          goto LABEL_239;
        }
      }

      else
      {
        if (v58 != 1735159650)
        {
          goto LABEL_240;
        }

        if (![(ASDAudioDevice *)self canBeDefaultDevice])
        {
          canBeDefaultInputDevice = [(ASDAudioDevice *)self canBeDefaultInputDevice];
          goto LABEL_208;
        }
      }

LABEL_209:
      canBeDefaultSystemDevice = 1;
      goto LABEL_239;
    }

    canBeDefaultInputDevice = [(ASDAudioDevice *)self canBeDefaultDevice];
LABEL_208:
    if (!canBeDefaultInputDevice)
    {
      canBeDefaultSystemDevice = [(ASDAudioDevice *)self canBeDefaultOutputDevice];
      goto LABEL_239;
    }

    goto LABEL_209;
  }

  if (mSelector > 1667658617)
  {
    if (mSelector <= 1668050794)
    {
      if (mSelector == 1667658618)
      {
        if (size >= 4 && *dataSize >= 4)
        {
          v125.receiver = self;
          v125.super_class = ASDAudioDevice;
          v71 = [(ASDObject *)&v125 getProperty:property withQualifierSize:*&size qualifierData:data dataSize:dataSize andData:andData forClient:*&client];
          *(v127 + 24) = v71;
          if ((v71 & 1) == 0)
          {
            canBeDefaultSystemDevice = [(ASDAudioDevice *)self calculateIOBufferFrameSize:*data];
            goto LABEL_239;
          }
        }

        goto LABEL_243;
      }

      if (mSelector == 1668049764)
      {
        if (*dataSize >= 4)
        {
          canBeDefaultSystemDevice = [(ASDAudioDevice *)self clockDomain];
          goto LABEL_239;
        }

        goto LABEL_243;
      }

      goto LABEL_178;
    }

    if (mSelector == 1668050795)
    {
      if (*dataSize >= 4)
      {
        canBeDefaultSystemDevice = [(ASDAudioDevice *)self clockAlgorithm];
        goto LABEL_239;
      }

      goto LABEL_243;
    }

    if (mSelector == 1668510818)
    {
      if (*dataSize >= 4)
      {
        canBeDefaultSystemDevice = [(ASDAudioDevice *)self clockIsStable];
        goto LABEL_239;
      }

      goto LABEL_243;
    }

    if (mSelector != 1668575852)
    {
      goto LABEL_178;
    }

    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v123 = 0;
    v17 = self->_controlQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3;
    block[3] = &unk_278CE4080;
    block[6] = dataSize;
    block[7] = property;
    block[4] = self;
    block[5] = &v120;
    block[8] = andData;
    dispatch_sync(v17, block);
    v18 = 4 * *(v121 + 6);
    goto LABEL_233;
  }

  if (mSelector > 1667330159)
  {
    if (mSelector == 1667330160)
    {
      if (*dataSize < 8)
      {
        goto LABEL_243;
      }

      configurationBundleID = [(ASDAudioDevice *)self configurationBundleID];
      v56 = configurationBundleID == 0;

      if (v56)
      {
        goto LABEL_243;
      }

      configurationBundleID2 = [(ASDAudioDevice *)self configurationBundleID];
      *andData = configurationBundleID2;

      v24 = *andData;
      if (!*andData)
      {
        goto LABEL_164;
      }
    }

    else
    {
      if (mSelector != 1667523955)
      {
        goto LABEL_178;
      }

      if (*dataSize < 8)
      {
        goto LABEL_243;
      }

      clientDescription = [(ASDAudioDevice *)self clientDescription];
      *andData = clientDescription;

      v24 = *andData;
      if (!*andData)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_163;
  }

  if (mSelector == 1634429294)
  {
    v124 = 1633969526;
    v120 = *&property->mSelector;
    LODWORD(v121) = property->mElement;
    owner3 = [(ASDObject *)self owner];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = 1650751011;
    }

    else
    {
      v52 = 1684370979;
    }

    LODWORD(v120) = v52;

    owner4 = [(ASDObject *)self owner];
    v54 = [owner4 getProperty:&v120 withQualifierSize:4 qualifierData:&v124 dataSize:dataSize andData:andData forClient:v10];
    *(v127 + 24) = v54;

    goto LABEL_243;
  }

  if (mSelector != 1635087471)
  {
    goto LABEL_178;
  }

  if (*dataSize >= 4)
  {
    canBeDefaultSystemDevice = [(ASDAudioDevice *)self allowAutoRoute];
    goto LABEL_239;
  }

LABEL_243:
  v96 = *(v127 + 24);
  _Block_object_dispose(&v126, 8);
  return v96;
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(void *a1)
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
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [*(*(&v8 + 1) + 8 * v7) objectID];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 80);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [*(*(&v8 + 1) + 8 * v7) objectID];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 96) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 96) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 96);
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

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4(void *a1)
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
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [*(*(&v8 + 1) + 8 * v7) objectID];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_5(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 80);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [*(*(&v8 + 1) + 8 * v7) objectID];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_6(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 96);
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

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_7(void *a1)
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
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [*(*(&v8 + 1) + 8 * v7) objectID];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_8(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1[4] + 80);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [*(*(&v8 + 1) + 8 * v7) objectID];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_9(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1[4] + 96);
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

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_10(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 64) count])
  {
    v15 = v2;
    v3 = *(*(a1 + 48) + 8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(a1 + 32) + 64);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 startingChannel];
          v11 = [v9 physicalFormat];
          v12 = [v11 channelsPerFrame];

          if (v3 >= v10 && v3 < v12 + v10)
          {
            **(a1 + 56) = [v9 channelNameForChannelIndex:v3 - v10];
            v14 = **(a1 + 56);
            if (v14)
            {
              CFRetain(v14);
            }

            **(a1 + 64) = 8;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v2 = v15;
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_11(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 80) count])
  {
    v15 = v2;
    v3 = *(*(a1 + 48) + 8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(a1 + 32) + 80);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 startingChannel];
          v11 = [v9 physicalFormat];
          v12 = [v11 channelsPerFrame];

          if (v3 >= v10 && v3 < v12 + v10)
          {
            **(a1 + 56) = [v9 channelNameForChannelIndex:v3 - v10];
            v14 = **(a1 + 56);
            if (v14)
            {
              CFRetain(v14);
            }

            **(a1 + 64) = 8;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v2 = v15;
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_12(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 64) count])
  {
    v15 = v2;
    v3 = *(*(a1 + 48) + 8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(a1 + 32) + 64);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 startingChannel];
          v11 = [v9 physicalFormat];
          v12 = [v11 channelsPerFrame];

          if (v3 >= v10 && v3 < v12 + v10)
          {
            **(a1 + 56) = [v9 channelCategoryForChannelIndex:v3 - v10];
            v14 = **(a1 + 56);
            if (v14)
            {
              CFRetain(v14);
            }

            **(a1 + 64) = 8;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v2 = v15;
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_13(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 80) count])
  {
    v15 = v2;
    v3 = *(*(a1 + 48) + 8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(a1 + 32) + 80);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 startingChannel];
          v11 = [v9 physicalFormat];
          v12 = [v11 channelsPerFrame];

          if (v3 >= v10 && v3 < v12 + v10)
          {
            **(a1 + 56) = [v9 channelCategoryForChannelIndex:v3 - v10];
            v14 = **(a1 + 56);
            if (v14)
            {
              CFRetain(v14);
            }

            **(a1 + 64) = 8;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v2 = v15;
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_14(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 64) count])
  {
    v15 = v2;
    v3 = *(*(a1 + 48) + 8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(a1 + 32) + 64);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 startingChannel];
          v11 = [v9 physicalFormat];
          v12 = [v11 channelsPerFrame];

          if (v3 >= v10 && v3 < v12 + v10)
          {
            **(a1 + 56) = [v9 channelNumberForChannelIndex:v3 - v10];
            v14 = **(a1 + 56);
            if (v14)
            {
              CFRetain(v14);
            }

            **(a1 + 64) = 8;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v2 = v15;
  }

  objc_autoreleasePoolPop(v2);
}

void __89__ASDAudioDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_15(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 80) count])
  {
    v15 = v2;
    v3 = *(*(a1 + 48) + 8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(a1 + 32) + 80);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 startingChannel];
          v11 = [v9 physicalFormat];
          v12 = [v11 channelsPerFrame];

          if (v3 >= v10 && v3 < v12 + v10)
          {
            **(a1 + 56) = [v9 channelNumberForChannelIndex:v3 - v10];
            v14 = **(a1 + 56);
            if (v14)
            {
              CFRetain(v14);
            }

            **(a1 + 64) = 8;
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v2 = v15;
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  mSelector = settable->mSelector;
  v6 = 1;
  if (settable->mSelector <= 1819173228)
  {
    if (mSelector != 1667523955)
    {
      if (mSelector == 1702392685)
      {

        return [(ASDAudioDevice *)self canSetExternalSecureMute];
      }

      goto LABEL_14;
    }

    return v6;
  }

  if (mSelector == 1853059700)
  {
    return v6;
  }

  if (mSelector != 1819173229)
  {
LABEL_14:
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = ASDAudioDevice;
    return [(ASDObject *)&v8 isPropertySettable:?];
  }

  return [(ASDAudioDevice *)self canChangeDeviceName];
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    goto LABEL_30;
  }

  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  supportsExternalSecureMute = [(ASDAudioDevice *)self hasProperty:?];
  if (!supportsExternalSecureMute)
  {
    return supportsExternalSecureMute;
  }

  supportsExternalSecureMute = [(ASDAudioDevice *)self isPropertySettable:property];
  if (!supportsExternalSecureMute)
  {
    return supportsExternalSecureMute;
  }

  mSelector = property->mSelector;
  if (property->mSelector <= 1818850925)
  {
    if (mSelector == 1667523955)
    {
      if (v10 != 8)
      {
        goto LABEL_30;
      }

      v19 = *andData;

      LOBYTE(supportsExternalSecureMute) = [(ASDAudioDevice *)self changeClientDescription:*&v19];
      return supportsExternalSecureMute;
    }

    if (mSelector != 1702392685)
    {
      goto LABEL_32;
    }

    if (v10 != 4)
    {
      goto LABEL_30;
    }

    supportsExternalSecureMute = [(ASDAudioDevice *)self supportsExternalSecureMute];
    if (!supportsExternalSecureMute)
    {
      return supportsExternalSecureMute;
    }

    supportsExternalSecureMute = [(ASDAudioDevice *)self canSetExternalSecureMute];
    if (!supportsExternalSecureMute)
    {
      return supportsExternalSecureMute;
    }

    [(ASDAudioDevice *)self setExternalSecureMute:*andData != 0];
LABEL_20:
    LOBYTE(supportsExternalSecureMute) = 1;
    return supportsExternalSecureMute;
  }

  if (mSelector == 1818850926)
  {
    if (v10 != 4)
    {
      goto LABEL_30;
    }

    self->_isAlive = *andData != 0;
    goto LABEL_20;
  }

  if (mSelector != 1853059700)
  {
    if (mSelector == 1819173229)
    {
      if (v10 == 8)
      {
        v17 = *andData;

        LOBYTE(supportsExternalSecureMute) = [(ASDAudioDevice *)self changeDeviceName:*&v17];
        return supportsExternalSecureMute;
      }

LABEL_30:
      LOBYTE(supportsExternalSecureMute) = 0;
      return supportsExternalSecureMute;
    }

LABEL_32:
    v21.receiver = self;
    v21.super_class = ASDAudioDevice;
    LOBYTE(supportsExternalSecureMute) = [(ASDObject *)&v21 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
    return supportsExternalSecureMute;
  }

  if (v10 != 8)
  {
    goto LABEL_30;
  }

  v18 = *andData;
  supportsExternalSecureMute = [(ASDAudioDevice *)self supportsSamplingRate:*andData];
  if (supportsExternalSecureMute)
  {

    LOBYTE(supportsExternalSecureMute) = [(ASDAudioDevice *)self changeSamplingRate:v18];
  }

  return supportsExternalSecureMute;
}

- (void)addInputStream:(id)stream
{
  streamCopy = stream;
  v6 = streamCopy;
  if (streamCopy)
  {
    inputStreamQueue = self->_inputStreamQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__ASDAudioDevice_addInputStream___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v8 = streamCopy;
    v17 = v8;
    v18 = a2;
    dispatch_sync(inputStreamQueue, block);
    [v8 setOwner:self];
    if (![v8 startingChannel])
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v10 cStringUsingEncoding:4];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [ASDAudioDevice addInputStream:v11];
      }
    }

    v15 = 0;
    v14 = 0x696E707473746D23;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v14 forObject:self];

    v14 = 0x676C6F626F776E64;
    propertyChangedDelegate2 = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate2 changedProperty:&v14 forObject:self];
  }
}

void __33__ASDAudioDevice_addInputStream___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) containsObject:*(a1 + 40)])
  {
    __33__ASDAudioDevice_addInputStream___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  v2 = [*(a1 + 32) plugin];
  [v2 addStreamRealTimeOperations:*(a1 + 40)];
}

- (void)removeInputStream:(id)stream
{
  streamCopy = stream;
  v6 = streamCopy;
  if (streamCopy)
  {
    inputStreamQueue = self->_inputStreamQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ASDAudioDevice_removeInputStream___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v13 = streamCopy;
    v14 = a2;
    dispatch_sync(inputStreamQueue, block);
    v11 = 0;
    v10 = 0x696E707473746D23;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v10 forObject:self];

    v10 = 0x676C6F626F776E64;
    propertyChangedDelegate2 = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate2 changedProperty:&v10 forObject:self];
  }
}

uint64_t __36__ASDAudioDevice_removeInputStream___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 64) containsObject:*(a1 + 40)] & 1) == 0)
  {
    __36__ASDAudioDevice_removeInputStream___block_invoke_cold_1();
  }

  v2 = [*(a1 + 32) plugin];
  [v2 removeStreamRealTimeOperations:*(a1 + 40)];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 64);

  return [v4 removeObject:v3];
}

- (id)inputStreams
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  inputStreamQueue = self->_inputStreamQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ASDAudioDevice_inputStreams__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(inputStreamQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__ASDAudioDevice_inputStreams__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 64)];

  return MEMORY[0x2821F96F8]();
}

- (void)addOutputStream:(id)stream
{
  streamCopy = stream;
  v6 = streamCopy;
  if (streamCopy)
  {
    outputStreamQueue = self->_outputStreamQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASDAudioDevice_addOutputStream___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v8 = streamCopy;
    v17 = v8;
    v18 = a2;
    dispatch_sync(outputStreamQueue, block);
    [v8 setOwner:self];
    if (![v8 startingChannel])
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v10 cStringUsingEncoding:4];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [ASDAudioDevice addInputStream:v11];
      }
    }

    v15 = 0;
    v14 = 0x6F75747073746D23;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v14 forObject:self];

    v14 = 0x676C6F626F776E64;
    propertyChangedDelegate2 = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate2 changedProperty:&v14 forObject:self];
  }
}

void __34__ASDAudioDevice_addOutputStream___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    __34__ASDAudioDevice_addOutputStream___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 80) addObject:*(a1 + 40)];
  v2 = [*(a1 + 32) plugin];
  [v2 addStreamRealTimeOperations:*(a1 + 40)];
}

- (void)removeOutputStream:(id)stream
{
  streamCopy = stream;
  v6 = streamCopy;
  if (streamCopy)
  {
    outputStreamQueue = self->_outputStreamQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ASDAudioDevice_removeOutputStream___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v13 = streamCopy;
    v14 = a2;
    dispatch_sync(outputStreamQueue, block);
    v11 = 0;
    v10 = 0x6F75747073746D23;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v10 forObject:self];

    v10 = 0x676C6F626F776E64;
    propertyChangedDelegate2 = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate2 changedProperty:&v10 forObject:self];
  }
}

uint64_t __37__ASDAudioDevice_removeOutputStream___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)] & 1) == 0)
  {
    __37__ASDAudioDevice_removeOutputStream___block_invoke_cold_1();
  }

  v2 = [*(a1 + 32) plugin];
  [v2 removeStreamRealTimeOperations:*(a1 + 40)];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 80);

  return [v4 removeObject:v3];
}

- (id)outputStreams
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  outputStreamQueue = self->_outputStreamQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ASDAudioDevice_outputStreams__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputStreamQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__ASDAudioDevice_outputStreams__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 80)];

  return MEMORY[0x2821F96F8]();
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
    v14 = __29__ASDAudioDevice_addControl___block_invoke;
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
    v13 = __32__ASDAudioDevice_removeControl___block_invoke;
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
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  controlQueue = self->_controlQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDAudioDevice_controls__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(controlQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__ASDAudioDevice_controls__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 96)];

  return MEMORY[0x2821F96F8]();
}

- (void)requestConfigurationChange:(id)change
{
  changeCopy = change;
  configurationChangeDelegate = [(ASDAudioDevice *)self configurationChangeDelegate];
  [configurationChangeDelegate requestConfigurationChangeForDevice:self withBlock:changeCopy];
}

- (void)performConfigurationChange:(void *)change
{
  (*(change + 2))(change, a2);
}

- (void)preferredChannelsForLeft:(unsigned int *)left andRight:(unsigned int *)right
{
  if (left)
  {
    *left = 1;
  }

  if (right)
  {
    *right = 2;
  }
}

- (unsigned)numberOfChannelsInLayoutForScope:(unsigned int)scope
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (scope == 1869968496)
  {
    outputStreamQueue = self->_outputStreamQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__ASDAudioDevice_numberOfChannelsInLayoutForScope___block_invoke_2;
    v7[3] = &unk_278CE40D0;
    v7[4] = self;
    v7[5] = &v9;
    v4 = v7;
    goto LABEL_5;
  }

  if (scope == 1768845428)
  {
    outputStreamQueue = self->_inputStreamQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__ASDAudioDevice_numberOfChannelsInLayoutForScope___block_invoke;
    v8[3] = &unk_278CE40D0;
    v8[4] = self;
    v8[5] = &v9;
    v4 = v8;
LABEL_5:
    dispatch_sync(outputStreamQueue, v4);
  }

  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __51__ASDAudioDevice_numberOfChannelsInLayoutForScope___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 64);
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

        v8 = [*(*(&v9 + 1) + 8 * v7) physicalFormat];
        *(*(*(a1 + 40) + 8) + 24) += [v8 channelsPerFrame];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __51__ASDAudioDevice_numberOfChannelsInLayoutForScope___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 80);
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

        v8 = [*(*(&v9 + 1) + 8 * v7) physicalFormat];
        *(*(*(a1 + 40) + 8) + 24) += [v8 channelsPerFrame];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)preferredChannelDescriptions:(AudioChannelDescription *)descriptions numberOfChannels:(unsigned int)channels forScope:(unsigned int)scope
{
  if (scope == 1869968496)
  {
    outputStreamQueue = self->_outputStreamQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke_48;
    v7[3] = &unk_278CE40F8;
    channelsCopy = channels;
    v7[4] = self;
    v7[5] = descriptions;
    v6 = v7;
  }

  else
  {
    if (scope != 1768845428)
    {
      return;
    }

    outputStreamQueue = self->_inputStreamQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke;
    v9[3] = &unk_278CE40F8;
    channelsCopy2 = channels;
    v9[4] = self;
    v9[5] = descriptions;
    v6 = v9;
  }

  dispatch_sync(outputStreamQueue, v6);
}

void __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 64);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v22 = *v24;
    v4 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 startingChannel];
        if (!v7)
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = [v9 cStringUsingEncoding:4];

          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke_cold_1(&v29, v10, &v30);
          }

          v7 = 1;
        }

        v11 = [v6 physicalFormat];
        v12 = [v11 channelsPerFrame];

        if (v12)
        {
          v13 = 0;
          v14 = v7 - 1;
          do
          {
            if ((v14 + v13) >= *(a1 + 48))
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              v17 = [v16 cStringUsingEncoding:4];

              if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
              {
                __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke_cold_2(&v27, v17, &v28);
              }
            }

            else
            {
              [v6 preferredChannelDescription:*(a1 + 40) + 20 * (v14 + v13) forChannelIndex:v13];
            }

            ++v13;
            v18 = [v6 physicalFormat];
            v19 = [v18 channelsPerFrame];
          }

          while (v13 < v19);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
}

void __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke_48(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 80);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v22 = *v24;
    v4 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 startingChannel];
        if (!v7)
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = [v9 cStringUsingEncoding:4];

          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke_cold_1(&v29, v10, &v30);
          }

          v7 = 1;
        }

        v11 = [v6 physicalFormat];
        v12 = [v11 channelsPerFrame];

        if (v12)
        {
          v13 = 0;
          v14 = v7 - 1;
          do
          {
            if ((v14 + v13) >= *(a1 + 48))
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              v17 = [v16 cStringUsingEncoding:4];

              if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
              {
                __73__ASDAudioDevice_preferredChannelDescriptions_numberOfChannels_forScope___block_invoke_cold_2(&v27, v17, &v28);
              }
            }

            else
            {
              [v6 preferredChannelDescription:*(a1 + 40) + 20 * (v14 + v13) forChannelIndex:v13];
            }

            ++v13;
            v18 = [v6 physicalFormat];
            v19 = [v18 channelsPerFrame];
          }

          while (v13 < v19);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
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
  v6[2] = __35__ASDAudioDevice_startIOForClient___block_invoke;
  v6[3] = &unk_278CE40D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ioReferenceQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __35__ASDAudioDevice_startIOForClient___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 136))
  {
    v2 = objc_autoreleasePoolPush();
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) performStartIO];
    objc_autoreleasePoolPop(v2);
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    ++*(*(a1 + 32) + 136);
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
  v6[2] = __34__ASDAudioDevice_stopIOForClient___block_invoke;
  v6[3] = &unk_278CE40D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ioReferenceQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __34__ASDAudioDevice_stopIOForClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 136) = v4;
    if (!*(*(a1 + 32) + 136))
    {
      v6 = objc_autoreleasePoolPush();
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) performStopIO];

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (void)ioThreadStateChange:(id)change
{
  changeCopy = change;
  ioReferenceQueue = self->_ioReferenceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ASDAudioDevice_ioThreadStateChange___block_invoke;
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
  block[2] = __34__ASDAudioDevice_setSamplingRate___block_invoke;
  block[3] = &unk_278CE3F90;
  block[4] = self;
  *&block[5] = rate;
  dispatch_sync(sampleRateQueue, block);
  LODWORD(v7) = 0;
  v5 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737274];
  [v5 changedProperty:&v6 forObject:self];
}

void __34__ASDAudioDevice_setSamplingRate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 112) = *(a1 + 40);
  [*(a1 + 32) _updateTimestampPeriod:?];
  [*(a1 + 32) _updateSafetyOffsets:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDAudioDevice_setSamplingRate___block_invoke_2;
  block[3] = &unk_278CE3F90;
  block[4] = v3;
  block[5] = *(a1 + 40);
  dispatch_sync(v4, block);
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ASDAudioDevice_setSamplingRate___block_invoke_3;
  v7[3] = &unk_278CE3F90;
  v7[4] = v5;
  v7[5] = *(a1 + 40);
  dispatch_sync(v6, v7);
  objc_autoreleasePoolPop(v2);
}

void __34__ASDAudioDevice_setSamplingRate___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 64);
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

        [*(*(&v8 + 1) + 8 * v7++) deviceChangedToSamplingRate:{*(a1 + 40), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __34__ASDAudioDevice_setSamplingRate___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 80);
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

        [*(*(&v8 + 1) + 8 * v7++) deviceChangedToSamplingRate:{*(a1 + 40), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)supportsSamplingRate:(double)rate
{
  v27 = *MEMORY[0x277D85DE8];
  samplingRateRanges = [(ASDAudioDevice *)self samplingRateRanges];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    deviceName = [(ASDAudioDevice *)self deviceName];
    *buf = 138412546;
    v21 = deviceName;
    v22 = 2048;
    rateCopy = COERCE_DOUBLE([samplingRateRanges count]);
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: supportsSamplingRate: looking at %lu rate ranges", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = samplingRateRanges;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 minimum];
        if (v12 + -0.001 <= rate)
        {
          [v11 maximum];
          if (v13 + 0.001 >= rate)
          {
            LODWORD(v8) = 1;
            goto LABEL_14;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    deviceName2 = [(ASDAudioDevice *)self deviceName];
    *buf = 138412802;
    v21 = deviceName2;
    v22 = 2048;
    rateCopy = rate;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: supportsSamplingRate (%f) returning (%d)", buf, 0x1Cu);
  }

  return v8;
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
  v19 = __35__ASDAudioDevice_setSamplingRates___block_invoke;
  v20 = &unk_278CE3E78;
  selfCopy = self;
  v22 = v5;
  v13 = v5;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v16) = 0;
  v14 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v14 changedProperty:&v15 forObject:self];
}

void __35__ASDAudioDevice_setSamplingRates___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)setSamplingRateRanges:(id)ranges
{
  rangesCopy = ranges;
  sampleRateQueue = self->_sampleRateQueue;
  block = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40__ASDAudioDevice_setSamplingRateRanges___block_invoke;
  v13 = &unk_278CE3E78;
  selfCopy = self;
  v15 = rangesCopy;
  v6 = rangesCopy;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v9) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v7 changedProperty:&v8 forObject:self];
}

void __40__ASDAudioDevice_setSamplingRateRanges___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  *(v4 + 120) = v3;

  objc_autoreleasePoolPop(v2);
}

- (NSArray)samplingRates
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDAudioDevice_samplingRates__block_invoke;
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

uint64_t __31__ASDAudioDevice_samplingRates__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 120) copy];

  return MEMORY[0x2821F96F8]();
}

- (NSArray)samplingRateRanges
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ASDAudioDevice_samplingRateRanges__block_invoke;
  block[3] = &unk_278CE3E28;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(sampleRateQueue, block);
  if (![v24[5] count])
  {
    samplingRates = [(ASDAudioDevice *)self samplingRates];
    if ([samplingRates count])
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        deviceName = [(ASDAudioDevice *)self deviceName];
        v8 = [samplingRates count];
        *buf = 138412546;
        v31 = deviceName;
        v32 = 2048;
        v33 = v8;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: building samplingRateRanges from %lu discreet rates", buf, 0x16u);
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

uint64_t __36__ASDAudioDevice_samplingRateRanges__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 120) copy];

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

- (void)setClientDescription:(id)description
{
  v4 = [description copy];
  clientDescription = self->_clientDescription;
  self->_clientDescription = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6263646573];
  [v6 changedProperty:&v7 forObject:self];
}

- (void)setDeviceDescription:(id)description
{
  v4 = [description copy];
  deviceDescription = self->_deviceDescription;
  self->_deviceDescription = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6264646573];
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
  block[2] = __39__ASDAudioDevice_updateTimestampPeriod__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(sampleRateQueue, block);
}

void __39__ASDAudioDevice_updateTimestampPeriod__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateTimestampPeriod:*(*(a1 + 32) + 112)];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)hasOutput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  outputStreamQueue = self->_outputStreamQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ASDAudioDevice_hasOutput__block_invoke;
  v5[3] = &unk_278CE40D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputStreamQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__27__ASDAudioDevice_hasOutput__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
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

- (void)setInputSafetyOffset:(unsigned int)offset
{
  self->_inputSafetyOffset = offset;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x696E707473616674];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setOutputSafetyOffset:(unsigned int)offset
{
  self->_outputSafetyOffset = offset;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x6F75747073616674];
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

- (void)setTransportType:(unsigned int)type
{
  self->_transportType = type;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F627472616ELL];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setHidden:(BOOL)hidden
{
  self->_hidden = hidden;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626869646ELL];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setGetZeroTimestampBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setGetZeroTimestampBlock:];
  }

  v4 = [blockCopy copy];
  getZeroTimestampBlock = self->_getZeroTimestampBlock;
  self->_getZeroTimestampBlock = v4;

  self->_getZeroTimestampBlockUnretained = self->_getZeroTimestampBlock;
}

- (void)setWillDoReadInputBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoReadInputBlock:];
  }

  v4 = [blockCopy copy];
  willDoReadInputBlock = self->_willDoReadInputBlock;
  self->_willDoReadInputBlock = v4;

  self->_willDoReadInputBlockUnretained = self->_willDoReadInputBlock;
}

- (void)setWillDoConvertInputBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoConvertInputBlock:];
  }

  v4 = [blockCopy copy];
  willDoConvertInputBlock = self->_willDoConvertInputBlock;
  self->_willDoConvertInputBlock = v4;

  self->_willDoConvertInputBlockUnretained = self->_willDoConvertInputBlock;
}

- (void)setWillDoProcessInputBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoProcessInputBlock:];
  }

  v4 = [blockCopy copy];
  willDoProcessInputBlock = self->_willDoProcessInputBlock;
  self->_willDoProcessInputBlock = v4;

  self->_willDoProcessInputBlockUnretained = self->_willDoProcessInputBlock;
}

- (void)setWillDoProcessOutputBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoProcessOutputBlock:];
  }

  v4 = [blockCopy copy];
  willDoProcessOutputBlock = self->_willDoProcessOutputBlock;
  self->_willDoProcessOutputBlock = v4;

  self->_willDoProcessOutputBlockUnretained = self->_willDoProcessOutputBlock;
}

- (void)setWillDoMixOutputBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoMixOutputBlock:];
  }

  v4 = [blockCopy copy];
  willDoMixOutputBlock = self->_willDoMixOutputBlock;
  self->_willDoMixOutputBlock = v4;

  self->_willDoMixOutputBlockUnretained = self->_willDoMixOutputBlock;
}

- (void)setWillDoProcessMixBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoProcessMixBlock:];
  }

  v4 = [blockCopy copy];
  willDoProcessMixBlock = self->_willDoProcessMixBlock;
  self->_willDoProcessMixBlock = v4;

  self->_willDoProcessMixBlockUnretained = self->_willDoProcessMixBlock;
}

- (void)setWillDoConvertMixBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoConvertMixBlock:];
  }

  v4 = [blockCopy copy];
  willDoConvertMixBlock = self->_willDoConvertMixBlock;
  self->_willDoConvertMixBlock = v4;

  self->_willDoConvertMixBlockUnretained = self->_willDoConvertMixBlock;
}

- (void)setWillDoWriteMixBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setWillDoWriteMixBlock:];
  }

  v4 = [blockCopy copy];
  willDoWriteMixBlock = self->_willDoWriteMixBlock;
  self->_willDoWriteMixBlock = v4;

  self->_willDoWriteMixBlockUnretained = self->_willDoWriteMixBlock;
}

- (void)setBeginIOOperationBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setBeginIOOperationBlock:];
  }

  v4 = [blockCopy copy];
  beginIOOperationBlock = self->_beginIOOperationBlock;
  self->_beginIOOperationBlock = v4;

  self->_beginIOOperationBlockUnretained = self->_beginIOOperationBlock;
}

- (void)setEndIOOperationBlock:(id)block
{
  blockCopy = block;
  if ([(ASDAudioDevice *)self isRunning])
  {
    [ASDAudioDevice setEndIOOperationBlock:];
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
  objc_storeStrong(&self->_wakeSemaphore, v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ASDAudioDevice_systemWillSleep__block_invoke;
  v7[3] = &unk_278CE3E78;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  [(ASDAudioDevice *)self requestConfigurationChange:v7];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __33__ASDAudioDevice_systemWillSleep__block_invoke(uint64_t a1)
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
  v30 = *MEMORY[0x277D85DE8];
  wakeSemaphore = self->_wakeSemaphore;
  if (wakeSemaphore)
  {
    dispatch_semaphore_signal(wakeSemaphore);
    v4 = self->_wakeSemaphore;
    self->_wakeSemaphore = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_inputStreams;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        plugin = [(ASDObject *)self plugin];
        [plugin removeStreamRealTimeOperations:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_outputStreams;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        plugin2 = [(ASDObject *)self plugin];
        [plugin2 removeStreamRealTimeOperations:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v19.receiver = self;
  v19.super_class = ASDAudioDevice;
  [(ASDObject *)&v19 dealloc];
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v106 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v101.receiver = self;
  v101.super_class = ASDAudioDevice;
  v7 = [(ASDObject *)&v101 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v8 = [indentCopy stringByAppendingString:@"|        "];
  deviceName = [(ASDAudioDevice *)self deviceName];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(deviceName, "UTF8String")];

  manufacturerName = [(ASDAudioDevice *)self manufacturerName];
  [v7 appendFormat:@"%@|    Manufacturer: %s\n", indentCopy, objc_msgSend(manufacturerName, "UTF8String")];

  modelName = [(ASDAudioDevice *)self modelName];
  [v7 appendFormat:@"%@|    Model Name: %s\n", indentCopy, objc_msgSend(modelName, "UTF8String")];

  deviceUID = [(ASDAudioDevice *)self deviceUID];
  [v7 appendFormat:@"%@|    Device UID: %s\n", indentCopy, objc_msgSend(deviceUID, "UTF8String")];

  modelUID = [(ASDAudioDevice *)self modelUID];
  [v7 appendFormat:@"%@|    Model UID: %s\n", indentCopy, objc_msgSend(modelUID, "UTF8String")];

  transportType = [(ASDAudioDevice *)self transportType];
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
  v84 = indentCopy;
  [v7 appendFormat:@"%@|    Clock Domain: 0x%08x\n", indentCopy, -[ASDAudioDevice clockDomain](self, "clockDomain")];
  clockAlgorithm = [(ASDAudioDevice *)self clockAlgorithm];
  switch(clockAlgorithm)
  {
    case 0x72617777u:
      v20 = @"Raw";
      break;
    case 0x6D617667u:
      v20 = @"12Pt Moving Window Average";
      break;
    case 0x69697266u:
      v20 = @"Simple IIR";
      break;
    default:
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%x)", -[ASDAudioDevice clockAlgorithm](self, "clockAlgorithm")];
      break;
  }

  v82 = v20;
  [v7 appendFormat:@"%@|    Clock Algorithm: %s\n", indentCopy, -[__CFString UTF8String](v82, "UTF8String")];
  if ([(ASDAudioDevice *)self clockIsStable])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v7 appendFormat:@"%@|    Clock Is Stable: %@\n", indentCopy, v21];
  if (self->_isAlive)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Active: %@\n", indentCopy, v22];
  if ([(ASDAudioDevice *)self isRunning])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Running: %@\n", indentCopy, v23];
  if ([(ASDAudioDevice *)self canBeDefaultDevice])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default Device: %@\n", indentCopy, v24];
  if ([(ASDAudioDevice *)self canBeDefaultInputDevice])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default Input Device: %@\n", indentCopy, v25];
  if ([(ASDAudioDevice *)self canBeDefaultOutputDevice])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default Output Device: %@\n", indentCopy, v26];
  if ([(ASDAudioDevice *)self canBeDefaultSystemDevice])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default System Device: %@\n", indentCopy, v27];
  if ([(ASDAudioDevice *)self canChangeDeviceName])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Change Device Name: %@\n", indentCopy, v28];
  [(ASDAudioDevice *)self samplingRate];
  [v7 appendFormat:@"%@|    Nominal Sample Rate: %f\n", indentCopy, v29];
  [v7 appendFormat:@"%@|    Available Nominal Sample Rates:\n", indentCopy];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  selfCopy = self;
  samplingRateRanges = [(ASDAudioDevice *)self samplingRateRanges];
  v31 = [samplingRateRanges countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v98;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v98 != v34)
        {
          objc_enumerationMutation(samplingRateRanges);
        }

        v36 = *(*(&v97 + 1) + 8 * i);
        [v36 minimum];
        v38 = v37;
        [v36 maximum];
        [v7 appendFormat:@"%@RateRange[%u]: [%f-%f]\n", v8, v33, v38, v39];
        v33 = (v33 + 1);
      }

      v32 = [samplingRateRanges countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v32);
  }

  v40 = selfCopy;
  if ([(ASDAudioDevice *)selfCopy isHidden])
  {
    v41 = @"YES";
  }

  else
  {
    v41 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Hidden: %@\n", v84, v41];
  if ([(ASDAudioDevice *)selfCopy supportsIsolatedIO])
  {
    v42 = @"YES";
  }

  else
  {
    v42 = @"NO";
  }

  [v7 appendFormat:@"%@|    Supports Isolated IO: %@\n", v84, v42];
  [v7 appendFormat:@"%@|    Input Latency: %u\n", v84, -[ASDAudioDevice inputLatency](selfCopy, "inputLatency")];
  [v7 appendFormat:@"%@|    Output Latency: %u\n", v84, -[ASDAudioDevice outputLatency](selfCopy, "outputLatency")];
  [v7 appendFormat:@"%@|    Input Safety Offset: %u\n", v84, -[ASDAudioDevice inputSafetyOffset](selfCopy, "inputSafetyOffset")];
  [v7 appendFormat:@"%@|    Output Safety Offset: %u\n", v84, -[ASDAudioDevice outputSafetyOffset](selfCopy, "outputSafetyOffset")];
  [v7 appendFormat:@"%@|    Zero Timestamp Period: %u\n", v84, -[ASDAudioDevice timestampPeriod](selfCopy, "timestampPeriod")];
  clientDescription = [(ASDAudioDevice *)selfCopy clientDescription];
  v44 = [clientDescription description];
  v45 = [v44 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2853456D8];

  v81 = v45;
  [v7 appendFormat:@"%@|    Client Description: %s\n", v84, objc_msgSend(v45, "UTF8String")];
  deviceDescription = [(ASDAudioDevice *)selfCopy deviceDescription];
  v47 = [deviceDescription description];
  v48 = [v47 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2853456D8];

  v80 = v48;
  [v7 appendFormat:@"%@|    Device Description: %s\n", v84, objc_msgSend(v48, "UTF8String")];
  [v7 appendFormat:@"%@|    Input Streams:\n", v84];
  inputStreams = [(ASDAudioDevice *)selfCopy inputStreams];
  v50 = [inputStreams count];

  if (v50)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    inputStreams2 = [(ASDAudioDevice *)selfCopy inputStreams];
    v52 = [inputStreams2 countByEnumeratingWithState:&v93 objects:v104 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v94;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v94 != v55)
          {
            objc_enumerationMutation(inputStreams2);
          }

          v57 = *(*(&v93 + 1) + 8 * j);
          if (treeCopy)
          {
            v58 = [v57 diagnosticDescriptionWithIndent:v8 walkTree:1];
            [v7 appendString:v58];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v84, v54, objc_msgSend(v57, "objectID")];
          }

          v54 = (v54 + 1);
        }

        v53 = [inputStreams2 countByEnumeratingWithState:&v93 objects:v104 count:16];
      }

      while (v53);
    }

    v40 = selfCopy;
  }

  [v7 appendFormat:@"%@|    Output Streams:\n", v84];
  outputStreams = [(ASDAudioDevice *)v40 outputStreams];
  v60 = [outputStreams count];

  if (v60)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    outputStreams2 = [(ASDAudioDevice *)v40 outputStreams];
    v62 = [outputStreams2 countByEnumeratingWithState:&v89 objects:v103 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = 0;
      v65 = *v90;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v90 != v65)
          {
            objc_enumerationMutation(outputStreams2);
          }

          v67 = *(*(&v89 + 1) + 8 * k);
          if (treeCopy)
          {
            v68 = [v67 diagnosticDescriptionWithIndent:v8 walkTree:1];
            [v7 appendString:v68];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v84, v64, objc_msgSend(v67, "objectID")];
          }

          v64 = (v64 + 1);
        }

        v63 = [outputStreams2 countByEnumeratingWithState:&v89 objects:v103 count:16];
      }

      while (v63);
    }

    v40 = selfCopy;
  }

  [v7 appendFormat:@"%@|    Controls:\n", v84];
  controls = [(ASDAudioDevice *)v40 controls];
  v70 = [controls count];

  if (v70)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    controls2 = [(ASDAudioDevice *)v40 controls];
    v72 = [controls2 countByEnumeratingWithState:&v85 objects:v102 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = 0;
      v75 = *v86;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v86 != v75)
          {
            objc_enumerationMutation(controls2);
          }

          v77 = *(*(&v85 + 1) + 8 * m);
          if (treeCopy)
          {
            v78 = [v77 diagnosticDescriptionWithIndent:v8 walkTree:1];
            [v7 appendString:v78];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v84, v74, objc_msgSend(v77, "objectID")];
          }

          v74 = (v74 + 1);
        }

        v73 = [controls2 countByEnumeratingWithState:&v85 objects:v102 count:16];
      }

      while (v73);
    }
  }

  return v7;
}

- (void)setExternalSecureMute:(BOOL)mute
{
  if (self->_externalSecureMute != mute)
  {
    v9 = v3;
    v10 = v4;
    self->_externalSecureMute = mute;
    LODWORD(v8) = 0;
    v6 = [(ASDObject *)self plugin:0x676C6F626578736DLL];
    [v6 changedProperty:&v7 forObject:self];
  }
}

- (id)getProperty:(id)property
{
  v46 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  selector = [propertyCopy selector];
  if (selector <= 1819107690)
  {
    if (selector <= 1684434035)
    {
      if (selector <= 1668050794)
      {
        if (selector == 1634429294)
        {
          goto LABEL_52;
        }

        if (selector != 1667523955)
        {
          if (selector == 1668049764)
          {
            v7 = objc_alloc(MEMORY[0x277CCABB0]);
            clockDomain = [(ASDAudioDevice *)self clockDomain];
            goto LABEL_101;
          }

          goto LABEL_90;
        }

        clientDescription = [(ASDAudioDevice *)self clientDescription];
        goto LABEL_102;
      }

      if (selector > 1684236337)
      {
        if (selector == 1684236338)
        {
          goto LABEL_52;
        }

        if (selector != 1684301171)
        {
          goto LABEL_90;
        }

        clientDescription = [(ASDAudioDevice *)self deviceDescription];
        goto LABEL_102;
      }

      if (selector == 1668050795)
      {
        v7 = objc_alloc(MEMORY[0x277CCABB0]);
        clockDomain = [(ASDAudioDevice *)self clockAlgorithm];
        goto LABEL_101;
      }

      if (selector != 1668510818)
      {
        goto LABEL_90;
      }

      v9 = objc_alloc(MEMORY[0x277CCABB0]);
      clockIsStable = [(ASDAudioDevice *)self clockIsStable];
LABEL_87:
      v24 = clockIsStable;
      v25 = v9;
LABEL_88:
      clientDescription = [v25 initWithBool:v24];
      goto LABEL_102;
    }

    if (selector > 1818452845)
    {
      if (selector > 1818455661)
      {
        if (selector == 1818455662)
        {
          goto LABEL_52;
        }

        v11 = 1818850926;
      }

      else
      {
        if (selector == 1818452846)
        {
          goto LABEL_52;
        }

        v11 = 1818454126;
      }

LABEL_51:
      if (selector != v11)
      {
        goto LABEL_90;
      }

LABEL_52:
      v13 = MEMORY[0x277CCACA8];
      if ([propertyCopy selector] < 0x20000000 || objc_msgSend(propertyCopy, "selector") > 2130706431)
      {
        v14 = 32;
      }

      else
      {
        v14 = ([propertyCopy selector] >> 24);
      }

      if (([propertyCopy selector] << 8) < 0x20000000 || (objc_msgSend(propertyCopy, "selector") << 8) > 2130706431)
      {
        v15 = 32;
      }

      else
      {
        v15 = (([propertyCopy selector] << 8) >> 24);
      }

      if ([propertyCopy selector] < 0x2000 || objc_msgSend(propertyCopy, "selector") > 32511)
      {
        v16 = 32;
      }

      else
      {
        v16 = ([propertyCopy selector] >> 8);
      }

      if ([propertyCopy selector] < 32 || objc_msgSend(propertyCopy, "selector") == 127)
      {
        selector2 = 32;
      }

      else
      {
        selector2 = [propertyCopy selector];
      }

      v18 = [v13 stringWithFormat:@"Property %c%c%c%c not supported yet", v14, v15, v16, selector2];
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ASDAudioDevice+ASDProperties.m" lineNumber:167 description:v18];

      goto LABEL_69;
    }

    if (selector != 1684434036)
    {
      if (selector == 1735354734)
      {
        v9 = objc_alloc(MEMORY[0x277CCABB0]);
        clockIsStable = [(ASDAudioDevice *)self isRunning];
      }

      else
      {
        if (selector != 1751737454)
        {
          goto LABEL_90;
        }

        v9 = objc_alloc(MEMORY[0x277CCABB0]);
        clockIsStable = [(ASDAudioDevice *)self isHidden];
      }

      goto LABEL_87;
    }

    scope = [propertyCopy scope];
    switch(scope)
    {
      case 1869968496:
        canBeDefaultOutputDevice = [(ASDAudioDevice *)self canBeDefaultOutputDevice];
        break;
      case 1768845428:
        canBeDefaultOutputDevice = [(ASDAudioDevice *)self canBeDefaultInputDevice];
        break;
      case 1735159650:
        canBeDefaultOutputDevice = [(ASDAudioDevice *)self canBeDefaultDevice];
        break;
      default:
        v30 = 0;
        goto LABEL_110;
    }

    v30 = canBeDefaultOutputDevice;
LABEL_110:
    v25 = objc_alloc(MEMORY[0x277CCABB0]);
    v24 = v30;
    goto LABEL_88;
  }

  if (selector <= 1919512166)
  {
    if (selector > 1836411235)
    {
      if (selector > 1853059699)
      {
        if (selector != 1853059700)
        {
          v11 = 1870098020;
          goto LABEL_51;
        }

        v21 = objc_alloc(MEMORY[0x277CCABB0]);
        [(ASDAudioDevice *)self samplingRate];
        clientDescription = [v21 initWithDouble:?];
      }

      else if (selector == 1836411236)
      {
        clientDescription = [(ASDAudioDevice *)self modelUID];
      }

      else
      {
        if (selector != 1853059619)
        {
          goto LABEL_90;
        }

        clientDescription = [(ASDAudioDevice *)self samplingRates];
      }

LABEL_102:
      value = clientDescription;
      goto LABEL_103;
    }

    if (selector == 1819107691)
    {
      clientDescription = [(ASDAudioDevice *)self manufacturerName];
      goto LABEL_102;
    }

    if (selector == 1819173229)
    {
      clientDescription = [(ASDAudioDevice *)self deviceName];
      goto LABEL_102;
    }

    if (selector != 1819569763)
    {
      goto LABEL_90;
    }

    if ([propertyCopy scope] == 1768845428)
    {
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
      goto LABEL_41;
    }

    if ([propertyCopy scope] == 1869968496)
    {
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
    }

    else
    {
      if ([propertyCopy scope] != 1735159650)
      {
        goto LABEL_69;
      }

      v7 = objc_alloc(MEMORY[0x277CCABB0]);
      inputLatency = [(ASDAudioDevice *)self inputLatency];
      if (inputLatency > [(ASDAudioDevice *)self outputLatency])
      {
LABEL_41:
        clockDomain = [(ASDAudioDevice *)self inputLatency];
        goto LABEL_101;
      }
    }

    clockDomain = [(ASDAudioDevice *)self outputLatency];
    goto LABEL_101;
  }

  if (selector > 1937007733)
  {
    if (selector > 1953653101)
    {
      if (selector == 1953653102)
      {
        v7 = objc_alloc(MEMORY[0x277CCABB0]);
        clockDomain = [(ASDAudioDevice *)self transportType];
        goto LABEL_101;
      }

      if (selector != 1969841184)
      {
        goto LABEL_90;
      }

      clientDescription = [(ASDAudioDevice *)self deviceUID];
    }

    else
    {
      if (selector != 1937007734)
      {
        v11 = 1937009955;
        goto LABEL_51;
      }

      clientDescription = [(ASDObject *)self owner];
    }

    goto LABEL_102;
  }

  if (selector > 1936092275)
  {
    if (selector != 1936092276)
    {
      v11 = 1936879204;
      goto LABEL_51;
    }

    v9 = objc_alloc(MEMORY[0x277CCABB0]);
    clockIsStable = [(ASDAudioDevice *)self canBeDefaultSystemDevice];
    goto LABEL_87;
  }

  if (selector == 1919512167)
  {
    v7 = objc_alloc(MEMORY[0x277CCABB0]);
    clockDomain = [(ASDAudioDevice *)self timestampPeriod];
    goto LABEL_101;
  }

  if (selector == 1935763060)
  {
    if ([propertyCopy scope] == 1768845428)
    {
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
LABEL_9:
      clockDomain = [(ASDAudioDevice *)self inputSafetyOffset];
LABEL_101:
      clientDescription = [v7 initWithUnsignedInt:clockDomain];
      goto LABEL_102;
    }

    if ([propertyCopy scope] == 1869968496)
    {
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
      goto LABEL_100;
    }

    if ([propertyCopy scope] == 1735159650)
    {
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
      inputSafetyOffset = [(ASDAudioDevice *)self inputSafetyOffset];
      if (inputSafetyOffset > [(ASDAudioDevice *)self outputSafetyOffset])
      {
        goto LABEL_9;
      }

LABEL_100:
      clockDomain = [(ASDAudioDevice *)self outputSafetyOffset];
      goto LABEL_101;
    }

LABEL_69:
    value = 0;
    goto LABEL_103;
  }

LABEL_90:
  audioObjectPropertyAddress = [propertyCopy audioObjectPropertyAddress];
  v37 = v26;
  v27 = [(ASDObject *)self customPropertyWithAddress:&audioObjectPropertyAddress];
  value = [v27 value];
  if (!value && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if ([propertyCopy selector] < 0x20000000 || objc_msgSend(propertyCopy, "selector") > 2130706431)
    {
      v28 = 32;
    }

    else
    {
      v28 = [propertyCopy selector] >> 24;
    }

    if (([propertyCopy selector] << 8) < 0x20000000 || (objc_msgSend(propertyCopy, "selector") << 8) > 2130706431)
    {
      v33 = 32;
    }

    else
    {
      v33 = ([propertyCopy selector] << 8) >> 24;
    }

    if ([propertyCopy selector] < 0x2000 || objc_msgSend(propertyCopy, "selector") > 32511)
    {
      v34 = 32;
    }

    else
    {
      v34 = [propertyCopy selector] >> 8;
    }

    if ([propertyCopy selector] < 32 || objc_msgSend(propertyCopy, "selector") == 127)
    {
      selector3 = 32;
    }

    else
    {
      selector3 = [propertyCopy selector];
    }

    *buf = 67109888;
    v39 = v28;
    v40 = 1024;
    v41 = v33;
    v42 = 1024;
    v43 = v34;
    v44 = 1024;
    v45 = selector3;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Property %c%c%c%c not found", buf, 0x1Au);
  }

LABEL_103:

  return value;
}

- (void)addInputStream:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = a1;
  _os_log_fault_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Stream %s: starting channel should not be zero!", &v1, 0xCu);
}

void __33__ASDAudioDevice_addInputStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __36__ASDAudioDevice_removeInputStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __34__ASDAudioDevice_addOutputStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __37__ASDAudioDevice_removeOutputStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
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

- (void)setWillDoReadInputBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoConvertInputBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoProcessInputBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoProcessOutputBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoMixOutputBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoProcessMixBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoConvertMixBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setWillDoWriteMixBlock:.cold.1()
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