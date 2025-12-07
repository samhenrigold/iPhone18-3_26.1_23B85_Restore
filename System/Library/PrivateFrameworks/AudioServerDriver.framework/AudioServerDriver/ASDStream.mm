@interface ASDStream
- (ASDStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (ASDStreamFormat)physicalFormat;
- (BOOL)deviceChangedToSamplingRate:(double)rate;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (NSArray)physicalFormats;
- (id)controls;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)addControl:(id)control;
- (void)addPhysicalFormat:(id)format;
- (void)preferredChannelDescription:(AudioChannelDescription *)description forChannelIndex:(unsigned int)index;
- (void)removeControl:(id)control;
- (void)removePhysicalFormat:(id)format;
- (void)setConvertInputBlock:(id)block;
- (void)setConvertMixBlock:(id)block;
- (void)setIsActive:(BOOL)active;
- (void)setIsTapStream:(BOOL)stream;
- (void)setLatency:(unsigned int)latency;
- (void)setMixOutputBlock:(id)block;
- (void)setPhysicalFormat:(id)format;
- (void)setPhysicalFormats:(id)formats;
- (void)setProcessInputBlock:(id)block;
- (void)setProcessMixBlock:(id)block;
- (void)setProcessOutputBlock:(id)block;
- (void)setReadInputBlock:(id)block;
- (void)setReadIsolatedInputBlock:(id)block;
- (void)setStreamName:(id)name;
- (void)setWriteMixBlock:(id)block;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDStream

- (ASDStreamFormat)physicalFormat
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  physicalFormatQueue = self->_physicalFormatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ASDStream_physicalFormat__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(physicalFormatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)startStream
{
  readInputBlock = [(ASDStream *)self readInputBlock];
  v4 = [readInputBlock copy];
  readInputBlock = self->_readInputBlock;
  self->_readInputBlock = v4;

  self->_readInputBlockUnretained = self->_readInputBlock;
  convertInputBlock = [(ASDStream *)self convertInputBlock];
  v7 = [convertInputBlock copy];
  convertInputBlock = self->_convertInputBlock;
  self->_convertInputBlock = v7;

  self->_convertInputBlockUnretained = self->_convertInputBlock;
  processInputBlock = [(ASDStream *)self processInputBlock];
  v10 = [processInputBlock copy];
  processInputBlock = self->_processInputBlock;
  self->_processInputBlock = v10;

  self->_processInputBlockUnretained = self->_processInputBlock;
  processOutputBlock = [(ASDStream *)self processOutputBlock];
  v13 = [processOutputBlock copy];
  processOutputBlock = self->_processOutputBlock;
  self->_processOutputBlock = v13;

  self->_processOutputBlockUnretained = self->_processOutputBlock;
  mixOutputBlock = [(ASDStream *)self mixOutputBlock];
  v16 = [mixOutputBlock copy];
  mixOutputBlock = self->_mixOutputBlock;
  self->_mixOutputBlock = v16;

  self->_mixOutputBlockUnretained = self->_mixOutputBlock;
  processMixBlock = [(ASDStream *)self processMixBlock];
  v19 = [processMixBlock copy];
  processMixBlock = self->_processMixBlock;
  self->_processMixBlock = v19;

  self->_processMixBlockUnretained = self->_processMixBlock;
  convertMixBlock = [(ASDStream *)self convertMixBlock];
  v22 = [convertMixBlock copy];
  convertMixBlock = self->_convertMixBlock;
  self->_convertMixBlock = v22;

  self->_convertMixBlockUnretained = self->_convertMixBlock;
  writeMixBlock = [(ASDStream *)self writeMixBlock];
  v25 = [writeMixBlock copy];
  writeMixBlock = self->_writeMixBlock;
  self->_writeMixBlock = v25;

  self->_writeMixBlockUnretained = self->_writeMixBlock;
  readIsolatedInputBlock = [(ASDStream *)self readIsolatedInputBlock];
  v28 = [readIsolatedInputBlock copy];
  readIsolatedInputBlock = self->_readIsolatedInputBlock;
  self->_readIsolatedInputBlock = v28;

  self->_readIsolatedInputBlockUnretained = self->_readIsolatedInputBlock;
}

- (void)stopStream
{
  readInputBlock = self->_readInputBlock;
  self->_readInputBlock = 0;

  self->_readInputBlockUnretained = 0;
  convertInputBlock = self->_convertInputBlock;
  self->_convertInputBlock = 0;

  self->_convertInputBlockUnretained = 0;
  processInputBlock = self->_processInputBlock;
  self->_processInputBlock = 0;

  self->_processInputBlockUnretained = 0;
  processOutputBlock = self->_processOutputBlock;
  self->_processOutputBlock = 0;

  self->_processOutputBlockUnretained = 0;
  mixOutputBlock = self->_mixOutputBlock;
  self->_mixOutputBlock = 0;

  self->_mixOutputBlockUnretained = 0;
  processMixBlock = self->_processMixBlock;
  self->_processMixBlock = 0;

  self->_processMixBlockUnretained = 0;
  convertMixBlock = self->_convertMixBlock;
  self->_convertMixBlock = 0;

  self->_convertMixBlockUnretained = 0;
  writeMixBlock = self->_writeMixBlock;
  self->_writeMixBlock = 0;

  self->_writeMixBlockUnretained = 0;
  readIsolatedInputBlock = self->_readIsolatedInputBlock;
  self->_readIsolatedInputBlock = 0;

  self->_readIsolatedInputBlockUnretained = 0;
}

- (ASDStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  v26.receiver = self;
  v26.super_class = ASDStream;
  v5 = [(ASDObject *)&v26 initWithPlugin:plugin];
  v6 = v5;
  if (v5)
  {
    v5->_direction = direction;
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v7 bundleIdentifier];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    physicalFormats = v6->_physicalFormats;
    v6->_physicalFormats = v9;

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@.device.%@.%p.physicalFormats", bundleIdentifier, v13, v6];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    physicalFormatQueue = v6->_physicalFormatQueue;
    v6->_physicalFormatQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controls = v6->_controls;
    v6->_controls = v17;

    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"%@.device.%@.%p.controls", bundleIdentifier, v21, v6];
    v23 = dispatch_queue_create([v22 UTF8String], 0);
    controlQueue = v6->_controlQueue;
    v6->_controlQueue = v23;

    v6->_physicalFormatSettable = 1;
    v6->_isTapStream = 0;
  }

  return v6;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  if (property->mSelector > 1935762291)
  {
    if (mSelector > 1936092512)
    {
      v6 = mSelector == 1936092513 || mSelector == 1952805485;
      v7 = 1952542835;
    }

    else
    {
      v6 = mSelector == 1935762292 || mSelector == 1935894638;
      v7 = 1935960434;
    }

LABEL_17:
    if (!v6 && mSelector != v7)
    {
      goto LABEL_31;
    }

    if (property->mScope == 1735159650)
    {
      return property->mElement == 0;
    }

    return 0;
  }

  if (mSelector > 1819569762)
  {
    v6 = mSelector == 1819569763 || mSelector == 1885762592;
    v7 = 1885762657;
    goto LABEL_17;
  }

  if (mSelector == 1668575852 || mSelector == 1819173229)
  {
    return 1;
  }

LABEL_31:
  v12 = v3;
  v13 = v4;
  v11.receiver = self;
  v11.super_class = ASDStream;
  return [(ASDObject *)&v11 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  v6 = 4;
  if (property->mSelector > 1935762291)
  {
    if (mSelector <= 1936092512)
    {
      if (mSelector != 1935762292 && mSelector != 1935894638 && mSelector != 1935960434)
      {
        goto LABEL_24;
      }

      return v6;
    }

    if (mSelector != 1936092513)
    {
      if (mSelector == 1952542835)
      {
        return v6;
      }

      v7 = 1952805485;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (mSelector > 1870098019)
  {
    if (mSelector == 1870098020)
    {
      goto LABEL_26;
    }

    if (mSelector == 1885762592)
    {
      return 40;
    }

    if (mSelector != 1885762657)
    {
      goto LABEL_24;
    }

LABEL_25:
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    physicalFormatQueue = self->_physicalFormatQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
    block[3] = &unk_278CE3E28;
    block[4] = self;
    block[5] = &v19;
    dispatch_sync(physicalFormatQueue, block);
    v6 = 56 * *(v20 + 6);
    goto LABEL_34;
  }

  if (mSelector == 1668575852)
  {
LABEL_26:
    if (size)
    {
      if ((size & 3) != 0)
      {
        return 0;
      }

      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      controlQueue = self->_controlQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      v16[3] = &unk_278CE4208;
      v17 = size >> 2;
      v16[5] = &v19;
      v16[6] = data;
      v16[4] = self;
      v12 = v16;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      controlQueue = self->_controlQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
      v15[3] = &unk_278CE3E28;
      v15[4] = self;
      v15[5] = &v19;
      v12 = v15;
    }

    dispatch_sync(controlQueue, v12);
    v6 = 4 * *(v20 + 6);
LABEL_34:
    _Block_object_dispose(&v19, 8);
    return v6;
  }

  if (mSelector == 1819173229)
  {
    return 8;
  }

  v7 = 1819569763;
LABEL_23:
  if (mSelector != v7)
  {
LABEL_24:
    v14.receiver = self;
    v14.super_class = ASDStream;
    return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  return v6;
}

void *__68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 88);
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

        if (*(a1 + 56))
        {
          v8 = 0;
          v9 = *(*(&v10 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8))
            {
              ++*(*(*(a1 + 40) + 8) + 24);
            }

            ++v8;
          }

          while (v8 < *(a1 + 56));
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

void __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) += [*(*(a1 + 32) + 88) count];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  result = 0;
  if (property && dataSize && andData)
  {
    v13 = *&size;
    mSelector = property->mSelector;
    if (property->mSelector > 1935762291)
    {
      if (mSelector <= 1936092512)
      {
        switch(mSelector)
        {
          case 1935762292:
            if (*dataSize >= 4)
            {
              isActive = [(ASDStream *)self isActive];
              goto LABEL_45;
            }

            break;
          case 1935894638:
            if (*dataSize >= 4)
            {
              isActive = [(ASDStream *)self startingChannel];
              goto LABEL_45;
            }

            break;
          case 1935960434:
            if (*dataSize >= 4)
            {
              *andData = [(ASDStream *)self direction]== 1768845428;
LABEL_46:
              v22 = 4;
LABEL_47:
              *dataSize = v22;
              return 1;
            }

            break;
          default:
            goto LABEL_51;
        }

        return 0;
      }

      if (mSelector != 1936092513)
      {
        if (mSelector != 1952542835)
        {
          if (mSelector == 1952805485)
          {
            if (*dataSize >= 4)
            {
              isActive = [(ASDStream *)self terminalType];
              goto LABEL_45;
            }

            return 0;
          }

          goto LABEL_51;
        }

        if (*dataSize >= 4)
        {
          isActive = [(ASDStream *)self isTapStream];
          goto LABEL_45;
        }

        return 0;
      }
    }

    else
    {
      if (mSelector <= 1870098019)
      {
        if (mSelector != 1668575852)
        {
          if (mSelector != 1819173229)
          {
            if (mSelector == 1819569763)
            {
              if (*dataSize >= 4)
              {
                isActive = [(ASDStream *)self latency];
LABEL_45:
                *andData = isActive;
                goto LABEL_46;
              }

              return 0;
            }

LABEL_51:
            v29.receiver = self;
            v29.super_class = ASDStream;
            return [(ASDObject *)&v29 getProperty:property withQualifierSize:*&size qualifierData:data dataSize:dataSize andData:andData forClient:*&client];
          }

          if (*dataSize >= 8)
          {
            streamName = [(ASDStream *)self streamName];
            *andData = streamName;

            if (*andData)
            {
              CFRetain(*andData);
            }

            v22 = 8;
            goto LABEL_47;
          }

          return 0;
        }

        goto LABEL_28;
      }

      if (mSelector == 1870098020)
      {
LABEL_28:
        if (size)
        {
          if ((size & 3) != 0)
          {
            return 0;
          }

          *&v34 = 0;
          *(&v34 + 1) = &v34;
          v35 = 0x2020000000uLL;
          v19 = *dataSize;
          if (v19 >= [(ASDStream *)self dataSizeForProperty:property withQualifierSize:*&size andQualifierData:data])
          {
            v20 = [(ASDStream *)self dataSizeForProperty:property withQualifierSize:v13 andQualifierData:data];
          }

          else
          {
            v20 = *dataSize;
          }

          v26 = v20 >> 2;
          if (*(*(&v34 + 1) + 24) != v26)
          {
            controlQueue = self->_controlQueue;
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2;
            v31[3] = &unk_278CE4330;
            v32 = v13 >> 2;
            v31[4] = self;
            v31[5] = &v34;
            v31[6] = data;
            v31[7] = v26;
            v31[8] = andData;
            dispatch_sync(controlQueue, v31);
            LODWORD(v26) = *(*(&v34 + 1) + 24);
          }

          v18 = 4 * v26;
        }

        else
        {
          *&v34 = 0;
          *(&v34 + 1) = &v34;
          v35 = 0x2020000000uLL;
          if (*dataSize < 4)
          {
            v18 = 0;
          }

          else
          {
            v25 = self->_controlQueue;
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3;
            v30[3] = &unk_278CE3E50;
            v30[4] = self;
            v30[5] = &v34;
            v30[6] = dataSize;
            v30[7] = andData;
            dispatch_sync(v25, v30);
            v18 = 4 * *(*(&v34 + 1) + 24);
          }
        }

LABEL_27:
        *dataSize = v18;
        _Block_object_dispose(&v34, 8);
        return 1;
      }

      if (mSelector == 1885762592)
      {
        if (*dataSize >= 0x28)
        {
          physicalFormat = [(ASDStream *)self physicalFormat];
          v24 = physicalFormat;
          if (physicalFormat)
          {
            objc_msgSend_audioStreamBasicDescription(physicalFormat);
          }

          else
          {
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
          }

          v28 = v35;
          *andData = v34;
          *(andData + 1) = v28;
          *(andData + 4) = v36;

          v22 = 40;
          goto LABEL_47;
        }

        return 0;
      }

      if (mSelector != 1885762657)
      {
        goto LABEL_51;
      }
    }

    *&v34 = 0;
    *(&v34 + 1) = &v34;
    v35 = 0x2020000000uLL;
    physicalFormatQueue = self->_physicalFormatQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
    block[3] = &unk_278CE3E50;
    block[6] = dataSize;
    block[7] = andData;
    block[4] = self;
    block[5] = &v34;
    dispatch_sync(physicalFormatQueue, block);
    v18 = 56 * *(*(&v34 + 1) + 24);
    goto LABEL_27;
  }

  return result;
}

void __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 48);
  if ([*(*(a1 + 32) + 72) count] <= v2 / 0x38uLL)
  {
    v3 = [*(*(a1 + 32) + 72) count];
  }

  else
  {
    v3 = **(a1 + 48) / 0x38uLL;
  }

  v4 = *(a1 + 56);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(*(a1 + 32) + 72);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(*(a1 + 40) + 8) + 24);
      if (v10 == v3)
      {
        break;
      }

      v11 = *(*(&v17 + 1) + 8 * v9);
      if (v11)
      {
        objc_msgSend_audioStreamRangedDescription(v11);
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
      }

      v12 = v4 + 56 * v10;
      *(v12 + 48) = v16;
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
      *v12 = v13;
      ++*(*(*(a1 + 40) + 8) + 24);
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

void __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 88);
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

        if (*(a1 + 72))
        {
          v8 = 0;
          v9 = *(*(&v10 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8))
            {
              if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 56))
              {
                break;
              }

              *(*(a1 + 64) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [v9 objectID];
            }

            ++v8;
          }

          while (v8 < *(a1 + 72));
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

void __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 88) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 88) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(*(a1 + 32) + 88);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (*(*(*(a1 + 40) + 8) + 24) == v4)
      {
        break;
      }

      *(*(a1 + 56) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [*(*(&v10 + 1) + 8 * v9) objectID];
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
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
  if (settable->mSelector == 1952542835 || mSelector == 1935762292)
  {
    return 1;
  }

  if (mSelector == 1885762592)
  {

    return [(ASDStream *)self isPhysicalFormatSettable];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = ASDStream;
    return [(ASDObject *)&v8 isPropertySettable:?];
  }
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    return 0;
  }

  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  if (![(ASDStream *)self hasProperty:?]|| ![(ASDStream *)self isPropertySettable:property])
  {
    return 0;
  }

  mSelector = property->mSelector;
  if (property->mSelector != 1885762592)
  {
    if (mSelector == 1952542835)
    {
      if (v10 == 4)
      {
        [(ASDStream *)self setIsTapStream:*andData != 0];
        return 1;
      }
    }

    else
    {
      if (mSelector != 1935762292)
      {
        v23.receiver = self;
        v23.super_class = ASDStream;
        return [(ASDObject *)&v23 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
      }

      if (v10 == 4)
      {
        [(ASDStream *)self setIsActive:*andData != 0];
        return 1;
      }
    }

    return 0;
  }

  if (v10 != 40 || ![(ASDStream *)self isPhysicalFormatSettable])
  {
    return 0;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v17 = [[ASDStreamFormat alloc] initWithAudioStreamBasicDescription:andData];
  physicalFormat = [(ASDStream *)self physicalFormat];
  v19 = [(ASDStreamFormat *)v17 isEqual:physicalFormat];

  *(v28 + 24) = v19;
  if (v19)
  {
    v16 = 1;
  }

  else
  {
    physicalFormatQueue = self->_physicalFormatQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ASDStream_setProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
    block[3] = &unk_278CE4358;
    block[4] = self;
    v26 = &v27;
    v22 = v17;
    v25 = v22;
    dispatch_sync(physicalFormatQueue, block);

    v16 = (v28[3] & 1) != 0 && [(ASDStream *)self changePhysicalFormat:v22];
  }

  _Block_object_dispose(&v27, 8);
  return v16;
}

void __84__ASDStream_setProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 72);
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

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) isCompatible:{*(*(&v8 + 1) + 8 * v7), v8}];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        break;
      }

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

- (void)addPhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __31__ASDStream_addPhysicalFormat___block_invoke;
  v14 = &unk_278CE3E78;
  selfCopy = self;
  v16 = formatCopy;
  v6 = formatCopy;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667461];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D61];
  [v8 changedProperty:&v9 forObject:self];
}

void __31__ASDStream_addPhysicalFormat___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:*(*(a1 + 32) + 72)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 72);
  v7 = [v5 copy];
  [v6 addObject:v7];
}

- (void)removePhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __34__ASDStream_removePhysicalFormat___block_invoke;
  v14 = &unk_278CE3E78;
  selfCopy = self;
  v16 = formatCopy;
  v6 = formatCopy;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667461];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D61];
  [v8 changedProperty:&v9 forObject:self];
}

uint64_t __34__ASDStream_removePhysicalFormat___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:*(*(a1 + 32) + 72)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 72);

  return [v6 removeObject:v5];
}

- (void)setPhysicalFormats:(id)formats
{
  formatsCopy = formats;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __32__ASDStream_setPhysicalFormats___block_invoke;
  v14 = &unk_278CE3E78;
  selfCopy = self;
  v16 = formatsCopy;
  v6 = formatsCopy;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667461];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D61];
  [v8 changedProperty:&v9 forObject:self];
}

uint64_t __32__ASDStream_setPhysicalFormats___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (NSArray)physicalFormats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  physicalFormatQueue = self->_physicalFormatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__ASDStream_physicalFormats__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(physicalFormatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __31__ASDStream_setPhysicalFormat___block_invoke;
  v14 = &unk_278CE3E78;
  selfCopy = self;
  v16 = formatCopy;
  v6 = formatCopy;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667420];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D74];
  [v8 changedProperty:&v9 forObject:self];
}

uint64_t __31__ASDStream_setPhysicalFormat___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)addControl:(id)control
{
  controlCopy = control;
  controlQueue = self->_controlQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __24__ASDStream_addControl___block_invoke;
  v14 = &unk_278CE3E78;
  selfCopy = self;
  v16 = controlCopy;
  v6 = controlCopy;
  dispatch_sync(controlQueue, &block);
  [v6 setOwner:self];
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v9) = 1870098020;
  propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
  [propertyChangedDelegate changedProperty:&v9 forObject:self];
}

- (void)removeControl:(id)control
{
  controlCopy = control;
  controlQueue = self->_controlQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __27__ASDStream_removeControl___block_invoke;
  v14 = &unk_278CE3E78;
  selfCopy = self;
  v16 = controlCopy;
  v6 = controlCopy;
  dispatch_sync(controlQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v9) = 1870098020;
  propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
  [propertyChangedDelegate changedProperty:&v9 forObject:self];
}

- (id)controls
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  controlQueue = self->_controlQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__ASDStream_controls__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(controlQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setIsActive:(BOOL)active
{
  self->_isActive = active;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273616374];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setStreamName:(id)name
{
  v4 = [name copy];
  streamName = self->_streamName;
  self->_streamName = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626C6E616DLL];
  [v6 changedProperty:&v7 forObject:self];
}

- (void)setLatency:(unsigned int)latency
{
  self->_latency = latency;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626C746E63];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setIsTapStream:(BOOL)stream
{
  self->_isTapStream = stream;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6274617073];
  [v4 changedProperty:&v5 forObject:self];
}

- (BOOL)deviceChangedToSamplingRate:(double)rate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  physicalFormatQueue = self->_physicalFormatQueue;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ASDStream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE4030;
  *&block[6] = rate;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(physicalFormatQueue, block);
  if (v9[5])
  {
    [(ASDStream *)self setPhysicalFormat:?];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device changed to a sample rate that the stream does not have a physical format supporting it", v6, 2u);
  }

  _Block_object_dispose(&v8, 8);

  return 1;
}

void __41__ASDStream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 64) copy];
  [v3 setSampleRate:*(a1 + 48)];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = *(*(a1 + 32) + 72);
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        if ([v3 isCompatible:v9])
        {
          v10 = [v9 copy];
          v11 = *(*(a1 + 40) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          [*(*(*(a1 + 40) + 8) + 40) setMaximumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setMinimumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setSampleRate:*(a1 + 48)];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = *(*(a1 + 32) + 72);
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * j);
          v19 = *(a1 + 48);
          [v18 minimumSampleRate];
          if (vabdd_f64(v19, v20) >= 0.001)
          {
            v21 = *(a1 + 48);
            [v18 maximumSampleRate];
            if (vabdd_f64(v21, v22) >= 0.001)
            {
              v23 = *(a1 + 48);
              [v18 minimumSampleRate];
              if (v23 <= v24)
              {
                continue;
              }

              v25 = *(a1 + 48);
              [v18 maximumSampleRate];
              if (v25 >= v26)
              {
                continue;
              }
            }
          }

          v27 = [v18 copy];
          v28 = *(*(a1 + 40) + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = v27;

          [*(*(*(a1 + 40) + 8) + 40) setMaximumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setMinimumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setSampleRate:*(a1 + 48)];
          goto LABEL_25;
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
  }

  objc_autoreleasePoolPop(v2);
}

- (void)preferredChannelDescription:(AudioChannelDescription *)description forChannelIndex:(unsigned int)index
{
  description->mChannelLabel = -1;
  *&description->mCoordinates[1] = 0;
  *&description->mChannelFlags = 0;
}

- (void)setReadInputBlock:(id)block
{
  v4 = [block copy];
  readInputBlock = self->_readInputBlock;
  self->_readInputBlock = v4;

  self->_readInputBlockUnretained = self->_readInputBlock;
}

- (void)setConvertInputBlock:(id)block
{
  v4 = [block copy];
  convertInputBlock = self->_convertInputBlock;
  self->_convertInputBlock = v4;

  self->_convertInputBlockUnretained = self->_convertInputBlock;
}

- (void)setProcessInputBlock:(id)block
{
  v4 = [block copy];
  processInputBlock = self->_processInputBlock;
  self->_processInputBlock = v4;

  self->_processInputBlockUnretained = self->_processInputBlock;
}

- (void)setProcessOutputBlock:(id)block
{
  v4 = [block copy];
  processOutputBlock = self->_processOutputBlock;
  self->_processOutputBlock = v4;

  self->_processOutputBlockUnretained = self->_processOutputBlock;
}

- (void)setMixOutputBlock:(id)block
{
  v4 = [block copy];
  mixOutputBlock = self->_mixOutputBlock;
  self->_mixOutputBlock = v4;

  self->_mixOutputBlockUnretained = self->_mixOutputBlock;
}

- (void)setProcessMixBlock:(id)block
{
  v4 = [block copy];
  processMixBlock = self->_processMixBlock;
  self->_processMixBlock = v4;

  self->_processMixBlockUnretained = self->_processMixBlock;
}

- (void)setConvertMixBlock:(id)block
{
  v4 = [block copy];
  convertMixBlock = self->_convertMixBlock;
  self->_convertMixBlock = v4;

  self->_convertMixBlockUnretained = self->_convertMixBlock;
}

- (void)setWriteMixBlock:(id)block
{
  v4 = [block copy];
  writeMixBlock = self->_writeMixBlock;
  self->_writeMixBlock = v4;

  self->_writeMixBlockUnretained = self->_writeMixBlock;
}

- (void)setReadIsolatedInputBlock:(id)block
{
  v4 = [block copy];
  readIsolatedInputBlock = self->_readIsolatedInputBlock;
  self->_readIsolatedInputBlock = v4;

  self->_readIsolatedInputBlockUnretained = self->_readIsolatedInputBlock;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v64 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v61.receiver = self;
  v61.super_class = ASDStream;
  v51 = treeCopy;
  v7 = [(ASDObject *)&v61 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v8 = [indentCopy stringByAppendingString:@"|        "];
  streamName = [(ASDStream *)self streamName];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(streamName, "UTF8String")];

  if ([(ASDStream *)self isActive])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Active: %@\n", indentCopy, v10];
  direction = [(ASDStream *)self direction];
  v12 = @"Output";
  if (direction == 1768845428)
  {
    v12 = @"Input";
  }

  [v7 appendFormat:@"%@|    Direction: %@\n", indentCopy, v12];
  if ([(ASDStream *)self isTapStream])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Tap Stream: %@\n", indentCopy, v13];
  terminalType = [(ASDStream *)self terminalType];
  LODWORD(v15) = terminalType >> 24;
  v16 = 32;
  if (((terminalType >> 24) - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v17) = (terminalType << 8) >> 24;
  if ((v17 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v17;
  }

  LODWORD(v18) = terminalType >> 8;
  if ((v18 - 32) >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = v18;
  }

  if ((terminalType - 32) >= 0x5F)
  {
    v19 = 32;
  }

  else
  {
    v19 = terminalType;
  }

  [v7 appendFormat:@"%@|    Terminal Type: %c%c%c%c (0x%08x)\n", indentCopy, v15, v17, v18, v19, terminalType];
  [v7 appendFormat:@"%@|    Starting Channel: %u\n", indentCopy, -[ASDStream startingChannel](self, "startingChannel")];
  [v7 appendFormat:@"%@|    Latency: %u\n", indentCopy, -[ASDStream latency](self, "latency")];
  physicalFormat = [(ASDStream *)self physicalFormat];
  [v7 appendFormat:@"%@|    Physical Format\n", indentCopy];
  [physicalFormat sampleRate];
  [v7 appendFormat:@"%@|        Sample Rate: %f\n", indentCopy, v21];
  if ([physicalFormat formatID] >= 0x20000000)
  {
    if ([physicalFormat formatID] > 2130706431)
    {
      v16 = 32;
    }

    else
    {
      v16 = ([physicalFormat formatID] >> 24);
    }
  }

  if (([physicalFormat formatID] << 8) < 0x20000000 || (objc_msgSend(physicalFormat, "formatID") << 8) > 2130706431)
  {
    v22 = 32;
  }

  else
  {
    v22 = (([physicalFormat formatID] << 8) >> 24);
  }

  if ([physicalFormat formatID] < 0x2000 || objc_msgSend(physicalFormat, "formatID") > 32511)
  {
    v23 = 32;
  }

  else
  {
    v23 = ([physicalFormat formatID] >> 8);
  }

  if ([physicalFormat formatID] < 32 || objc_msgSend(physicalFormat, "formatID") == 127)
  {
    formatID = 32;
  }

  else
  {
    formatID = [physicalFormat formatID];
  }

  [v7 appendFormat:@"%@|        Format ID: %c%c%c%c\n", indentCopy, v16, v22, v23, formatID];
  [v7 appendFormat:@"%@|        Format Flags: 0x%08x\n", indentCopy, objc_msgSend(physicalFormat, "formatFlags")];
  [v7 appendFormat:@"%@|        Bytes Per Packet: %u\n", indentCopy, objc_msgSend(physicalFormat, "bytesPerFrame")];
  [v7 appendFormat:@"%@|        Frames Per Packet: %u\n", indentCopy, objc_msgSend(physicalFormat, "framesPerPacket")];
  [v7 appendFormat:@"%@|        Bytes Per Frame: %u\n", indentCopy, objc_msgSend(physicalFormat, "bytesPerFrame")];
  [v7 appendFormat:@"%@|        Channels Per Frame: %u\n", indentCopy, objc_msgSend(physicalFormat, "channelsPerFrame")];
  v48 = physicalFormat;
  [v7 appendFormat:@"%@|        Bits Per Channel: %u\n", indentCopy, objc_msgSend(physicalFormat, "bitsPerChannel")];
  v49 = indentCopy;
  [v7 appendFormat:@"%@|    Available Physical Format\n", indentCopy];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(ASDStream *)self physicalFormats];
  v25 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v52 = *v58;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v57 + 1) + 8 * i);
        [v7 appendFormat:@"%@%u: Physical Format\n", v8, v27];
        [v29 sampleRate];
        [v7 appendFormat:@"%@    Sample Rate: %f\n", v8, v30];
        if ([v29 formatID] < 0x20000000 || objc_msgSend(v29, "formatID") > 2130706431)
        {
          v31 = 32;
        }

        else
        {
          v31 = ([v29 formatID] >> 24);
        }

        if (([v29 formatID] << 8) < 0x20000000 || (objc_msgSend(v29, "formatID") << 8) > 2130706431)
        {
          v32 = 32;
        }

        else
        {
          v32 = (([v29 formatID] << 8) >> 24);
        }

        if ([v29 formatID] < 0x2000 || objc_msgSend(v29, "formatID") > 32511)
        {
          v33 = 32;
        }

        else
        {
          v33 = ([v29 formatID] >> 8);
        }

        if ([v29 formatID] < 32 || objc_msgSend(v29, "formatID") == 127)
        {
          formatID2 = 32;
        }

        else
        {
          formatID2 = [v29 formatID];
        }

        [v7 appendFormat:@"%@    Format ID: %c%c%c%c\n", v8, v31, v32, v33, formatID2];
        [v7 appendFormat:@"%@    Format Flags: 0x%08x\n", v8, objc_msgSend(v29, "formatFlags")];
        [v7 appendFormat:@"%@    Bytes Per Packet: %u\n", v8, objc_msgSend(v29, "bytesPerFrame")];
        [v7 appendFormat:@"%@    Frames Per Packet: %u\n", v8, objc_msgSend(v29, "framesPerPacket")];
        [v7 appendFormat:@"%@    Bytes Per Frame: %u\n", v8, objc_msgSend(v29, "bytesPerFrame")];
        [v7 appendFormat:@"%@    Channels Per Frame: %u\n", v8, objc_msgSend(v29, "channelsPerFrame")];
        [v7 appendFormat:@"%@    Bits Per Channel: %u\n", v8, objc_msgSend(v29, "bitsPerChannel")];
        [v29 minimumSampleRate];
        [v7 appendFormat:@"%@    Minimum Sample Rate: %f\n", v8, v35];
        [v29 maximumSampleRate];
        [v7 appendFormat:@"%@    Maximum Sample Rate: %f\n", v8, v36];
        v27 = (v27 + 1);
      }

      v26 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v26);
  }

  [v7 appendFormat:@"%@|    Controls:\n", v49];
  controls = [(ASDStream *)self controls];
  v38 = [controls count];

  if (v38)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    controls2 = [(ASDStream *)self controls];
    v40 = [controls2 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = 0;
      v43 = *v54;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(controls2);
          }

          v45 = *(*(&v53 + 1) + 8 * j);
          if (v51)
          {
            v46 = [v45 diagnosticDescriptionWithIndent:v8 walkTree:1];
            [v7 appendString:v46];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v49, v42, objc_msgSend(v45, "objectID")];
          }

          v42 = (v42 + 1);
        }

        v41 = [controls2 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v41);
    }
  }

  return v7;
}

@end