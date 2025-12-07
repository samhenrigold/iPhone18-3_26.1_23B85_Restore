@interface ASDSRCStream
- (ASDSRCStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (ASDSRCStream)initWithOwningDevice:(id)device underlyingStreams:(id)streams direction:(unsigned int)direction plugin:(id)plugin;
- (BOOL)_allocateStreamingResources;
- (BOOL)changePhysicalFormat:(id)format;
- (id)readInputBlock;
- (id)readIsolatedInputBlock;
- (id)writeMixBlock;
- (int64_t)maximumFramesPerIOCycle;
- (void)_deallocateStreamingResources;
- (void)_updateLatency;
- (void)_updateMaximumFramesPerIOCycle;
- (void)setIsActive:(BOOL)active;
- (void)setUnderlyingStreams:(id)streams;
- (void)startStream;
- (void)stopStream;
- (void)updateLatency;
@end

@implementation ASDSRCStream

- (ASDSRCStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[ASDSRCStream initWithDirection:withPlugin:]", plugin}];
  [v5 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v6}];

  return 0;
}

- (ASDSRCStream)initWithOwningDevice:(id)device underlyingStreams:(id)streams direction:(unsigned int)direction plugin:(id)plugin
{
  v7 = *&direction;
  v41 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  streamsCopy = streams;
  v39.receiver = self;
  v39.super_class = ASDSRCStream;
  v12 = [(ASDStream *)&v39 initWithDirection:v7 withPlugin:plugin];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_owningDevice, deviceCopy);
    objc_storeStrong(&v13->_underlyingStreams, streams);
    v13->_ioReferenceCount = 0;
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v34 bundleIdentifier];
    v15 = MEMORY[0x277CCACA8];
    streamName = [(ASDStream *)v13 streamName];
    v17 = [v15 stringWithFormat:@"%@.srcStream.%@.srcQueue", bundleIdentifier, streamName];
    v18 = v17;
    v19 = dispatch_queue_create([v17 UTF8String], 0);
    srcQueue = v13->_srcQueue;
    v13->_srcQueue = v19;

    v21 = MEMORY[0x277CCACA8];
    streamName2 = [(ASDStream *)v13 streamName];
    v23 = [v21 stringWithFormat:@"%@.srcStream.%@.propertyQueue", bundleIdentifier, streamName2];
    v24 = v23;
    v25 = dispatch_queue_create([v23 UTF8String], 0);
    propertyQueue = v13->_propertyQueue;
    v13->_propertyQueue = v25;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = streamsCopy;
    v28 = [v27 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v28)
    {
      v29 = *v36;
      do
      {
        v30 = 0;
        do
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v27);
          }

          if ([*(*(&v35 + 1) + 8 * v30) direction] != v7)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:v13 file:@"ASDSRCStream.mm" lineNumber:57 description:@"Underlying stream has a different direction than the SRC stream"];
          }

          ++v30;
        }

        while (v28 != v30);
        v28 = [v27 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v28);
    }

    [(ASDSRCStream *)v13 _updateMaximumFramesPerIOCycle];
    [(ASDSRCStream *)v13 _updateLatency];
  }

  return v13;
}

- (void)setUnderlyingStreams:(id)streams
{
  streamsCopy = streams;
  srcQueue = self->_srcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ASDSRCStream_setUnderlyingStreams___block_invoke;
  v7[3] = &unk_278CE3BE8;
  v7[4] = self;
  v8 = streamsCopy;
  v6 = streamsCopy;
  dispatch_sync(srcQueue, v7);
}

- (void)startStream
{
  srcQueue = self->_srcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ASDSRCStream_startStream__block_invoke;
  block[3] = &unk_278CE3C60;
  block[4] = self;
  block[5] = a2;
  dispatch_sync(srcQueue, block);
  v4.receiver = self;
  v4.super_class = ASDSRCStream;
  [(ASDStream *)&v4 startStream];
}

uint64_t __27__ASDSRCStream_startStream__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = *(a1 + 32);
  if (!*(result + 328))
  {
    [result _updateMaximumFramesPerIOCycle];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(*(a1 + 32) + 336);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v6++) startStream];
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    if (([*(a1 + 32) _allocateStreamingResources] & 1) == 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ASDSRCStream.mm" lineNumber:86 description:@"Couldn't allocate streaming resources"];
    }

    ++*(*(a1 + 32) + 328);
    result = *(a1 + 32);
  }

  *(result + 312) = 1;
  return result;
}

- (void)stopStream
{
  v5.receiver = self;
  v5.super_class = ASDSRCStream;
  [(ASDStream *)&v5 stopStream];
  srcQueue = self->_srcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ASDSRCStream_stopStream__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(srcQueue, block);
}

void *__26__ASDSRCStream_stopStream__block_invoke(void *result)
{
  v16 = *MEMORY[0x277D85DE8];
  *(result[4] + 312) = 0;
  v1 = result[4];
  v2 = *(v1 + 328);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    v5 = result;
    *(v1 + 328) = v4;
    v6 = result[4];
    if (!*(v6 + 328))
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v7 = *(v6 + 336);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v11 + 1) + 8 * v10++) stopStream];
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }

      return [v5[4] _deallocateStreamingResources];
    }
  }

  return result;
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormat = [(ASDStream *)self physicalFormat];

  if (physicalFormat != formatCopy)
  {
    owner = [(ASDObject *)self owner];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__ASDSRCStream_changePhysicalFormat___block_invoke;
    v8[3] = &unk_278CE3BE8;
    v8[4] = self;
    v9 = formatCopy;
    [owner requestConfigurationChange:v8];
  }

  return 1;
}

uint64_t __37__ASDSRCStream_changePhysicalFormat___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPhysicalFormat:*(a1 + 40)];
  v2 = [*(a1 + 32) owner];
  [*(a1 + 40) sampleRate];
  [v2 setSamplingRate:?];

  v3 = *(a1 + 32);

  return [v3 updateLatency];
}

- (BOOL)_allocateStreamingResources
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ASDSRCStream__allocateStreamingResources__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

void __43__ASDSRCStream__allocateStreamingResources__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) physicalFormat];
  v2 = v1;
  if (v1)
  {
    objc_msgSend_audioStreamBasicDescription(v1);
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
  }

  CAStreamBasicDescription::CAStreamBasicDescription(v34, &v33);

  v30 = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 336);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v3)
  {
    v4 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v20 = [v6 readInputBlock];
        v21 = [v6 writeMixBlock];
        v22 = [v6 readIsolatedInputBlock];
        v7 = v31;
        if (v31 >= v32)
        {
          v8 = std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__emplace_back_slow_path<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks&>(&v30, &v20);
        }

        else
        {
          *v7 = MEMORY[0x245CEBEA0](v20);
          v7[1] = MEMORY[0x245CEBEA0](v21);
          v7[2] = MEMORY[0x245CEBEA0](v22);
          v8 = (v7 + 3);
        }

        v31 = v8;
        v9 = [v6 physicalFormat];
        v10 = v9;
        if (v9)
        {
          objc_msgSend_audioStreamBasicDescription(v9);
        }

        else
        {
          memset(&v33, 0, sizeof(v33));
        }

        v11 = v28;
        if (v28 >= v29)
        {
          v13 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - __p) >> 3) + 1;
          if (v13 > 0x666666666666666)
          {
            std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v29 - __p) >> 3) > v13)
          {
            v13 = 0x999999999999999ALL * ((v29 - __p) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v29 - __p) >> 3) >= 0x333333333333333)
          {
            v14 = 0x666666666666666;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(&__p, v14);
          }

          CAStreamBasicDescription::CAStreamBasicDescription((8 * ((v28 - __p) >> 3)), &v33);
          v12 = (v15 + 40);
          v16 = (v15 - (v28 - __p));
          memcpy(v16, __p, v28 - __p);
          v17 = __p;
          __p = v16;
          v28 = v12;
          v29 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          CAStreamBasicDescription::CAStreamBasicDescription(v28, &v33);
          v12 = (v11 + 40);
        }

        v28 = v12;
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) direction];
  operator new();
}

- (void)_deallocateStreamingResources
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__ASDSRCStream__deallocateStreamingResources__block_invoke;
  v2[3] = &unk_278CE39D0;
  v2[4] = self;
  v3[0] = &unk_285344558;
  v3[3] = v3;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

ASDSRCStreamHelper *__45__ASDSRCStream__deallocateStreamingResources__block_invoke(uint64_t a1)
{
  ASDSRCStreamHelper::deallocateStreamingResources(*(*(a1 + 32) + 288));
  v2 = (*(a1 + 32) + 288);

  return std::unique_ptr<ASDSRCStreamHelper>::reset[abi:ne200100](v2, 0);
}

- (void)updateLatency
{
  srcQueue = self->_srcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDSRCStream_updateLatency__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(srcQueue, block);
}

- (void)_updateMaximumFramesPerIOCycle
{
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  self->_maximumFramesPerIOCycle = [WeakRetained timestampPeriod];
}

- (int64_t)maximumFramesPerIOCycle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ASDSRCStream_maximumFramesPerIOCycle__block_invoke;
  v5[3] = &unk_278CE3D20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__39__ASDSRCStream_maximumFramesPerIOCycle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateMaximumFramesPerIOCycle];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 320);
  return result;
}

- (void)_updateLatency
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  [WeakRetained samplingRate];
  v5 = v4;
  underlyingDevice = [WeakRetained underlyingDevice];
  [underlyingDevice samplingRate];
  v8 = v7;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_underlyingStreams;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    latency = 0;
    v12 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([v14 latency] > latency)
        {
          latency = [v14 latency];
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
    v15 = latency;
  }

  else
  {
    v15 = 0.0;
  }

  underlyingDevice2 = [WeakRetained underlyingDevice];
  [underlyingDevice2 samplingRate];
  v18 = v17;
  [WeakRetained samplingRate];
  v20 = v18 != v19;

  if (v20)
  {
    underlyingDevice3 = [WeakRetained underlyingDevice];
    [underlyingDevice3 samplingRate];
    v23 = v22;
    [WeakRetained samplingRate];
    v25 = v24;

    v26 = vcvtmd_u64_f64(5.0 / v23 * v25 + 0.5);
  }

  else
  {
    v26 = 0;
  }

  [(ASDStream *)self setLatency:v26 + vcvtpd_u64_f64(v5 / v8 * v15), v27];
}

- (id)readInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ASDSRCStream_readInputBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __30__ASDSRCStream_readInputBlock__block_invoke(uint64_t a1, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v7 = **(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    __30__ASDSRCStream_readInputBlock__block_invoke_cold_1();
  }

  return ASDSRCStreamHelper::readInput(v7, a2, a3, a4, a5, a6);
}

- (id)writeMixBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ASDSRCStream_writeMixBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __29__ASDSRCStream_writeMixBlock__block_invoke(uint64_t a1, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v6 = **(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    __29__ASDSRCStream_writeMixBlock__block_invoke_cold_1();
  }

  return ASDSRCStreamHelper::writeMix(v6, a2, a3, a4, a5);
}

- (id)readIsolatedInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASDSRCStream_readIsolatedInputBlock__block_invoke;
  v4[3] = &unk_278CE3E00;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __38__ASDSRCStream_readIsolatedInputBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = **(*(*(a1 + 32) + 8) + 24);
  if (!v5)
  {
    __38__ASDSRCStream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  return ASDSRCStreamHelper::readIsolatedInput(v5, a2, a3, a4);
}

- (void)setIsActive:(BOOL)active
{
  activeCopy = active;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  underlyingStreams = [(ASDSRCStream *)self underlyingStreams];
  v6 = [underlyingStreams countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(underlyingStreams);
        }

        [*(*(&v10 + 1) + 8 * v8++) setIsActive:activeCopy];
      }

      while (v6 != v8);
      v6 = [underlyingStreams countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = ASDSRCStream;
  [(ASDStream *)&v9 setIsActive:activeCopy];
}

@end