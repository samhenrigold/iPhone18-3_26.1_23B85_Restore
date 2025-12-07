@interface ASDTStream
+ (id)streamForConfig:(id)config withDevice:(id)device;
- (ASDTAudioDevice)device;
- (ASDTStream)initWithConfig:(id)config withDevice:(id)device;
- (ASDTStream)initWithDirection:(unsigned int)direction withDevice:(id)device;
- (BOOL)setupPhysicalFormats:(id)formats;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)readInputBlock;
- (id)readOrWriteBlock;
- (id)writeMixBlock;
- (int)pmIdleStream:(int)stream;
- (int)pmStateTransition:(int)transition;
- (void)clearBuffer;
- (void)setLatencies:(id)latencies;
- (void)setPhysicalFormat:(id)format;
- (void)setUpdateClientPositionCopy:(id)copy;
- (void)updateLatency;
- (void)writeZerosToMixMilliseconds:(unsigned int)milliseconds atSampleTime:(unint64_t)time;
@end

@implementation ASDTStream

+ (id)streamForConfig:(id)config withDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  configCopy = config;
  deviceCopy = device;
  asdtSubclass = [configCopy asdtSubclass];
  v8 = [asdtSubclass isSubclassOfClass:objc_opt_class()];
  if (v8)
  {
    v10 = [[asdtSubclass alloc] initWithConfig:configCopy withDevice:deviceCopy];
  }

  else
  {
    v11 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [configCopy objectForKeyedSubscript:@"Subclass"];
      [(ASDTStream *)v12 streamForConfig:v14 withDevice:v11];
    }

    v10 = 0;
  }

  return v10;
}

- (ASDTStream)initWithDirection:(unsigned int)direction withDevice:(id)device
{
  v4 = *&direction;
  deviceCopy = device;
  plugin = [deviceCopy plugin];
  v10.receiver = self;
  v10.super_class = ASDTStream;
  v8 = [(ASDStream *)&v10 initWithDirection:v4 withPlugin:plugin];

  if (v8)
  {
    [(ASDTStream *)v8 setDevice:deviceCopy];
  }

  return v8;
}

- (ASDTStream)initWithConfig:(id)config withDevice:(id)device
{
  configCopy = config;
  deviceCopy = device;
  v18 = 0;
  if (([configCopy asdtDirection:&v18] & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v18;
  plugin = [deviceCopy plugin];
  v17.receiver = self;
  v17.super_class = ASDTStream;
  self = [(ASDStream *)&v17 initWithDirection:v8 withPlugin:plugin];

  if (!self)
  {
    goto LABEL_9;
  }

  [(ASDTStream *)self setDevice:deviceCopy];
  samplingRates = [deviceCopy samplingRates];
  v11 = [configCopy asdtLatenciesForSamplingRates:samplingRates];
  [(ASDTStream *)self setLatencies:v11];

  -[ASDStream setStartingChannel:](self, "setStartingChannel:", [configCopy asdtStartingChannel]);
  asdtName = [configCopy asdtName];
  [(ASDStream *)self setStreamName:asdtName];

  streamName = [(ASDStream *)self streamName];

  if (!streamName)
  {
    if (v18 == 1768845428)
    {
      v14 = @"Input";
    }

    else
    {
      v14 = @"Output";
    }

    [(ASDStream *)self setStreamName:v14];
  }

  -[ASDStream setTerminalType:](self, "setTerminalType:", [configCopy asdtTerminalType]);
  -[ASDTStream setIsolatedUseCaseID:](self, "setIsolatedUseCaseID:", [configCopy asdtIsolatedUseCaseID]);
  if ([(ASDTStream *)self setupPhysicalFormats:configCopy])
  {
LABEL_9:
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_10:
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)setupPhysicalFormats:(id)formats
{
  v45 = *MEMORY[0x277D85DE8];
  asdtFormats = [formats asdtFormats];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(asdtFormats, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = asdtFormats;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        device = [(ASDTStream *)self device];
        samplingRates = [device samplingRates];
        v12 = [v9 asdtFormatsWithSamplingRates:samplingRates];

        if (v12)
        {
          [v4 addObjectsFromArray:v12];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v6);
  }

  v14 = [v4 count];
  if (v14)
  {
    [(ASDStream *)self setPhysicalFormats:v4];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v29 = v14;
      v17 = *v32;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          [v19 sampleRate];
          v21 = v20;
          device2 = [(ASDTStream *)self device];
          [device2 samplingRate];
          v24 = v21 == v23;

          if (v24)
          {
            [(ASDTStream *)self setPhysicalFormat:v19];
            v14 = v29;
            goto LABEL_23;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v14 = v29;
    }
  }

  else
  {
    v15 = ASDTBaseLogType(0, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID = [device3 deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412546;
      v41 = deviceUID;
      v42 = 2112;
      v43 = streamName;
      _os_log_error_impl(&dword_241659000, v15, OS_LOG_TYPE_ERROR, "%@: %@: Stream has no formats.", buf, 0x16u);
    }
  }

LABEL_23:

  return v14 != 0;
}

- (void)setUpdateClientPositionCopy:(id)copy
{
  copyCopy = copy;
  v4 = [copyCopy copy];
  updateClientPositionCopy = self->_updateClientPositionCopy;
  self->_updateClientPositionCopy = v4;

  [(ASDTStream *)self setUpdateClientPositionUnretained:self->_updateClientPositionCopy];
}

- (int)pmIdleStream:(int)stream
{
  v21 = *MEMORY[0x277D85DE8];
  [(ASDTStream *)self setUpdateClientPositionCopy:0];
  v4 = [(ASDTStream *)self setUpdateClientPositionUnretained:0];
  if (self->_ioBufferFramesSizeMax || self->_ioBufferFramesUnexpectedSizeCount)
  {
    v6 = ASDTBaseLogType(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      ioBufferFramesSizeMax = self->_ioBufferFramesSizeMax;
      ioBufferFramesUnexpectedSizeCount = self->_ioBufferFramesUnexpectedSizeCount;
      v13 = 138413058;
      v14 = deviceUID;
      v15 = 2112;
      v16 = streamName;
      v17 = 1024;
      v18 = ioBufferFramesSizeMax;
      v19 = 1024;
      v20 = ioBufferFramesUnexpectedSizeCount;
      _os_log_impl(&dword_241659000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: Maximum frames per IO: %u, unexpected size cycles: %u", &v13, 0x22u);
    }

    self->_ioBufferFramesSizeMax = 0;
    self->_ioBufferFramesUnexpectedSizeCount = 0;
  }

  return 0;
}

- (int)pmStateTransition:(int)transition
{
  if (transition <= 1768843635)
  {
    if (transition > 1685090417)
    {
      if (transition != 1685090418)
      {
        if (transition != 1685092205)
        {
          if (transition == 1685286000)
          {
            return [(ASDTStream *)self pmSleepStream];
          }

          return 0;
        }

        return [(ASDTStream *)self pmPrewarmStream:?];
      }

      return [(ASDTStream *)self pmPrepareStream:?];
    }

    if (transition != 1684627811)
    {
      v4 = 1684628588;
LABEL_17:
      if (transition == v4)
      {
        return [(ASDTStream *)self pmIdleStream:?];
      }

      return 0;
    }

    return [(ASDTStream *)self pmInactiveStream:?];
  }

  if (transition > 1970435437)
  {
    if (transition == 1970435438)
    {
      return [(ASDTStream *)self pmOnStream];
    }

    if (transition != 1970563425)
    {
      v4 = 1970563428;
      goto LABEL_17;
    }

    return [(ASDTStream *)self pmInactiveStream:?];
  }

  switch(transition)
  {
    case 1768843636:
      return [(ASDTStream *)self pmInactiveStream:?];
    case 1970303090:
      return [(ASDTStream *)self pmPrepareStream:?];
    case 1970304877:
      return [(ASDTStream *)self pmPrewarmStream:?];
  }

  return 0;
}

- (void)clearBuffer
{
  ioBufferRef = [(ASDTStream *)self ioBufferRef];
  if (ioBufferRef)
  {
    v4 = *ioBufferRef;
    if (*ioBufferRef)
    {
      if ([(ASDTStream *)self ioBufferSize])
      {
        ioBufferSize = [(ASDTStream *)self ioBufferSize];

        bzero(v4, ioBufferSize);
      }
    }
  }
}

- (void)updateLatency
{
  latencies = [(ASDTStream *)self latencies];

  if (latencies)
  {
    v4 = MEMORY[0x277CCABB0];
    physicalFormat = [(ASDStream *)self physicalFormat];
    [physicalFormat sampleRate];
    v8 = [v4 numberWithDouble:?];

    latencies2 = [(ASDTStream *)self latencies];
    v7 = [latencies2 objectForKey:v8];
    -[ASDStream setLatency:](self, "setLatency:", [v7 unsignedIntValue]);
  }
}

- (void)setLatencies:(id)latencies
{
  objc_storeStrong(&self->_latencies, latencies);

  [(ASDTStream *)self updateLatency];
}

- (void)setPhysicalFormat:(id)format
{
  formatCopy = format;
  v5.receiver = self;
  v5.super_class = ASDTStream;
  [(ASDStream *)&v5 setPhysicalFormat:formatCopy];
  [(ASDTStream *)self updateLatency];
}

- (id)readOrWriteBlock
{
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  ioBufferSize = [(ASDTStream *)self ioBufferSize];
  direction = [(ASDStream *)self direction];
  updateClientPositionBlock = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:updateClientPositionBlock];

  getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  ioBufferRef = [(ASDTStream *)self ioBufferRef];
  if (ioBufferRef)
  {
    v10 = ioBufferRef;
    ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__ASDTStream_readOrWriteBlock__block_invoke;
    aBlock[3] = &__block_descriptor_72_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    aBlock[4] = v10;
    aBlock[5] = ioBufferFramesSizeMax;
    v14 = bytesPerFrame;
    v15 = direction;
    v16 = ioBufferSize / bytesPerFrame;
    v17 = ioBufferSize;
    aBlock[6] = getUpdateClientPositionUnretainedAddress;
    ioBufferRef = _Block_copy(aBlock);
  }

  return ioBufferRef;
}

uint64_t __30__ASDTStream_readOrWriteBlock__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, char *a4)
{
  if (!a3)
  {
    __30__ASDTStream_readOrWriteBlock__block_invoke_cold_2();
  }

  if (!a4)
  {
    __30__ASDTStream_readOrWriteBlock__block_invoke_cold_1();
  }

  v6 = **(a1 + 32);
  if (!v6)
  {
    return 561214578;
  }

  v8 = *(a1 + 40);
  v9 = *v8;
  if (*v8 <= a2)
  {
    v9 = a2;
  }

  *v8 = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 60);
  v12 = 144;
  if (v11 == 1768845428)
  {
    v12 = 80;
  }

  v13 = *(a3 + v12);
  v14 = *(a1 + 68);
  v15 = v10 * a2;
  v16 = v13 % *(a1 + 64) * v10;
  if (v11 == 1768845428)
  {
    v17 = &v6[v16];
  }

  else
  {
    v17 = a4;
  }

  if (v11 == 1768845428)
  {
    v18 = a4;
  }

  else
  {
    v18 = &v6[v16];
  }

  v19 = v14 - v16;
  if (v14 - v16 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v14 - v16;
  }

  memcpy(v18, v17, v20);
  if (v19 < v15)
  {
    if (v11 == 1768845428)
    {
      v21 = &a4[v20];
    }

    else
    {
      v21 = v6;
    }

    if (v11 == 1768845428)
    {
      v22 = v6;
    }

    else
    {
      v22 = &a4[v20];
    }

    memcpy(v21, v22, v15 - v20);
  }

  result = **(a1 + 48);
  if (result)
  {
    (*(result + 16))(result, v13 + a2);
    return 0;
  }

  return result;
}

- (id)writeMixBlock
{
  if ([(ASDStream *)self direction]== 1869968496)
  {
    readOrWriteBlock = [(ASDTStream *)self readOrWriteBlock];
  }

  else
  {
    readOrWriteBlock = 0;
  }

  return readOrWriteBlock;
}

- (id)readInputBlock
{
  if ([(ASDStream *)self direction]== 1768845428)
  {
    readOrWriteBlock = [(ASDTStream *)self readOrWriteBlock];
  }

  else
  {
    readOrWriteBlock = 0;
  }

  return readOrWriteBlock;
}

- (void)writeZerosToMixMilliseconds:(unsigned int)milliseconds atSampleTime:(unint64_t)time
{
  v59 = *MEMORY[0x277D85DE8];
  physicalFormat = [(ASDStream *)self physicalFormat];
  [physicalFormat sampleRate];
  v9 = v8;

  physicalFormat2 = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat2 bytesPerFrame];

  ioBufferSize = [(ASDTStream *)self ioBufferSize];
  ioBufferRef = [(ASDTStream *)self ioBufferRef];
  if (ioBufferRef)
  {
    v14 = *ioBufferRef;
    if (*ioBufferRef)
    {
      if (ioBufferSize)
      {
        direction = [(ASDStream *)self direction];
        if (direction != 1768845428)
        {
          v17 = (v9 / 1000.0 * milliseconds);
          v18 = bytesPerFrame * v17;
          if (v18 >= ioBufferSize)
          {

            [(ASDTStream *)self clearBuffer];
          }

          else
          {
            v19 = ASDTBaseLogType(direction, v16);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              WeakRetained = objc_loadWeakRetained(&self->_device);
              deviceUID = [WeakRetained deviceUID];
              *buf = 138412802;
              v54 = deviceUID;
              v55 = 2048;
              timeCopy = time;
              v57 = 1024;
              v58 = v17;
              _os_log_debug_impl(&dword_241659000, v19, OS_LOG_TYPE_DEBUG, "%@ Sample time: %llu, Zero frames: %u", buf, 0x1Cu);
            }

            updateClientPositionBlock = [(ASDTStream *)self updateClientPositionBlock];
            v52 = updateClientPositionBlock;
            v22 = time % (ioBufferSize / bytesPerFrame) * bytesPerFrame;
            v23 = ioBufferSize - v22;
            if (v23 >= v18)
            {
              v24 = bytesPerFrame * v17;
            }

            else
            {
              v24 = ioBufferSize - v22;
            }

            v25 = ASDTBaseLogType(updateClientPositionBlock, v21);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              device = [(ASDTStream *)self device];
              deviceUID2 = [device deviceUID];
              *buf = 138412802;
              v54 = deviceUID2;
              v55 = 2048;
              timeCopy = v22;
              v57 = 1024;
              v58 = v24;
              _os_log_debug_impl(&dword_241659000, v25, OS_LOG_TYPE_DEBUG, "%@ First fill to offset %llu size %u", buf, 0x1Cu);
            }

            v28 = ASDTBaseLogType(v26, v27);
            v29 = v18 - v24;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              device2 = [(ASDTStream *)self device];
              deviceUID3 = [device2 deviceUID];
              *buf = 138412546;
              v54 = deviceUID3;
              v55 = 1024;
              LODWORD(timeCopy) = v18 - v24;
              _os_log_debug_impl(&dword_241659000, v28, OS_LOG_TYPE_DEBUG, "%@ Second fill to offset 0 size %u", buf, 0x12u);
            }

            if (v24)
            {
              v30 = 0;
              v31 = vdupq_n_s64(v24 - 1);
              v32 = &v14[v22];
              do
              {
                v33 = vdupq_n_s64(v30);
                v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4D30)));
                if (vuzp1_s8(vuzp1_s16(v34, *v31.i8), *v31.i8).u8[0])
                {
                  v32[v30] = 0;
                }

                if (vuzp1_s8(vuzp1_s16(v34, *&v31), *&v31).i8[1])
                {
                  v32[v30 + 1] = 0;
                }

                if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4D20)))), *&v31).i8[2])
                {
                  v32[v30 + 2] = 0;
                  v32[v30 + 3] = 0;
                }

                v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4D10)));
                if (vuzp1_s8(*&v31, vuzp1_s16(v35, *&v31)).i32[1])
                {
                  v32[v30 + 4] = 0;
                }

                if (vuzp1_s8(*&v31, vuzp1_s16(v35, *&v31)).i8[5])
                {
                  v32[v30 + 5] = 0;
                }

                if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4D00))))).i8[6])
                {
                  v32[v30 + 6] = 0;
                  v32[v30 + 7] = 0;
                }

                v36 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4CF0)));
                if (vuzp1_s8(vuzp1_s16(v36, *v31.i8), *v31.i8).u8[0])
                {
                  v32[v30 + 8] = 0;
                }

                if (vuzp1_s8(vuzp1_s16(v36, *&v31), *&v31).i8[1])
                {
                  v32[v30 + 9] = 0;
                }

                if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4CE0)))), *&v31).i8[2])
                {
                  v32[v30 + 10] = 0;
                  v32[v30 + 11] = 0;
                }

                v37 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4CD0)));
                if (vuzp1_s8(*&v31, vuzp1_s16(v37, *&v31)).i32[1])
                {
                  v32[v30 + 12] = 0;
                }

                if (vuzp1_s8(*&v31, vuzp1_s16(v37, *&v31)).i8[5])
                {
                  v32[v30 + 13] = 0;
                }

                if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2416A4CC0))))).i8[6])
                {
                  v32[v30 + 14] = 0;
                  v32[v30 + 15] = 0;
                }

                v30 += 16;
              }

              while (((v24 + 15) & 0x1FFFFFFF0) != v30);
            }

            if (v23 < v18)
            {
              v38 = vdupq_n_s64(v29 - 1);
              v39 = v14 + 7;
              v40 = 15;
              do
              {
                v41 = vdupq_n_s64(v40 - 15);
                v42 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4D30)));
                if (vuzp1_s8(vuzp1_s16(v42, *v38.i8), *v38.i8).u8[0])
                {
                  *(v39 - 7) = 0;
                }

                if (vuzp1_s8(vuzp1_s16(v42, *&v38), *&v38).i8[1])
                {
                  *(v39 - 6) = 0;
                }

                if (vuzp1_s8(vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4D20)))), *&v38).i8[2])
                {
                  *(v39 - 5) = 0;
                  *(v39 - 4) = 0;
                }

                v43 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4D10)));
                if (vuzp1_s8(*&v38, vuzp1_s16(v43, *&v38)).i32[1])
                {
                  *(v39 - 3) = 0;
                }

                if (vuzp1_s8(*&v38, vuzp1_s16(v43, *&v38)).i8[5])
                {
                  *(v39 - 2) = 0;
                }

                if (vuzp1_s8(*&v38, vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4D00))))).i8[6])
                {
                  *(v39 - 1) = 0;
                  *v39 = 0;
                }

                v44 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4CF0)));
                if (vuzp1_s8(vuzp1_s16(v44, *v38.i8), *v38.i8).u8[0])
                {
                  v39[1] = 0;
                }

                if (vuzp1_s8(vuzp1_s16(v44, *&v38), *&v38).i8[1])
                {
                  v39[2] = 0;
                }

                if (vuzp1_s8(vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4CE0)))), *&v38).i8[2])
                {
                  v39[3] = 0;
                  v39[4] = 0;
                }

                v45 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4CD0)));
                if (vuzp1_s8(*&v38, vuzp1_s16(v45, *&v38)).i32[1])
                {
                  v39[5] = 0;
                }

                if (vuzp1_s8(*&v38, vuzp1_s16(v45, *&v38)).i8[5])
                {
                  v39[6] = 0;
                }

                if (vuzp1_s8(*&v38, vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, vorrq_s8(v41, xmmword_2416A4CC0))))).i8[6])
                {
                  v39[7] = 0;
                  v39[8] = 0;
                }

                v40 += 16;
                v39 += 16;
              }

              while (v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0) != 15);
            }

            if (v52)
            {
              v52[2](v52, time + v17);
            }
          }
        }
      }
    }
  }
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v26 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v24.receiver = self;
  v24.super_class = ASDTStream;
  v7 = [(ASDStream *)&v24 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  [v7 appendFormat:@"%@|    ioBufferSize:        %u\n", indentCopy, -[ASDTStream ioBufferSize](self, "ioBufferSize")];
  latencies = [(ASDTStream *)self latencies];
  v9 = [latencies count] == 0;

  if (!v9)
  {
    [v7 appendFormat:@"%@|    latencies (sampeRate : frames):\n", indentCopy];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    latencies2 = [(ASDTStream *)self latencies];
    obj = [latencies2 allKeys];

    v11 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          latencies3 = [(ASDTStream *)self latencies];
          v16 = [latencies3 objectForKeyedSubscript:v14];

          [v14 doubleValue];
          [v7 appendFormat:@"%@|        %6.0lf : %u\n", indentCopy, v17, objc_msgSend(v16, "unsignedIntValue")];
        }

        v11 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }
  }

  return v7;
}

- (ASDTAudioDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

+ (void)streamForConfig:(os_log_t)log withDevice:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Invalid subclass name: %@", buf, 0xCu);
}

@end