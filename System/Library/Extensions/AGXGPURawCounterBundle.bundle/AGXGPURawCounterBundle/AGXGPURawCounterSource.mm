@interface AGXGPURawCounterSource
- (AGXGPURawCounterSource)initWithSourceGroup:(id)group impl:(Source *)impl;
- (BOOL)pollCountersAtBufferIndex:(unsigned int)index withBlock:(id)block;
- (BOOL)requestCounter:(id)counter;
- (BOOL)requestCounters:(id)counters firstErrorIndex:(unint64_t *)index;
- (BOOL)requestTriggers:(id)triggers firstErrorIndex:(unint64_t *)index;
- (BOOL)ringBufferInfoAtIndex:(unsigned int)index base:(char *)base size:(unsigned int *)size dataOffset:(unsigned int *)offset dataSize:(unsigned int *)dataSize;
- (BOOL)setEnabled:(BOOL)enabled;
- (unsigned)drainRingBufferAtIndex:(unsigned int)index dataSize:(unsigned int)size;
- (void)dealloc;
- (void)resetRawDataPostProcessor;
- (void)setOptions:(id)options;
@end

@implementation AGXGPURawCounterSource

- (BOOL)pollCountersAtBufferIndex:(unsigned int)index withBlock:(id)block
{
  v5 = *&index;
  v40 = *MEMORY[0x29EDCA608];
  if ([(AGXGPURawCounterSource *)self ringBufferNum]<= index)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGXGRC:%s:%d:%s: *** Error, buffer index is out of range! (%u > %u)\n\n", "AGXGPURawCounterSourceGroup.mm", 564, "[AGXGPURawCounterSource pollCountersAtBufferIndex:withBlock:]", v5, [(AGXGPURawCounterSource *)self ringBufferNum]);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "AGXGPURawCounterSourceGroup.mm";
      v32 = 1024;
      v33 = 564;
      v34 = 2080;
      v35 = "[AGXGPURawCounterSource pollCountersAtBufferIndex:withBlock:]";
      v36 = 1024;
      v37 = v5;
      v38 = 1024;
      ringBufferNum = [(AGXGPURawCounterSource *)self ringBufferNum];
      _os_log_error_impl(&dword_29CA0B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, buffer index is out of range! (%u > %u)\n\n", buf, 0x28u);
    }

    v13 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO);
    if (v13)
    {
      ringBufferNum2 = [(AGXGPURawCounterSource *)self ringBufferNum];
      *buf = 136316162;
      *&buf[4] = "AGXGPURawCounterSourceGroup.mm";
      v32 = 1024;
      v33 = 564;
      v34 = 2080;
      v35 = "[AGXGPURawCounterSource pollCountersAtBufferIndex:withBlock:]";
      v36 = 1024;
      v37 = v5;
      v38 = 1024;
      ringBufferNum = ringBufferNum2;
      _os_log_impl(&dword_29CA0B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, buffer index is out of range! (%u > %u)\n\n", buf, 0x28u);
LABEL_27:
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    pollPostProcessBufferList = self->_pollPostProcessBufferList;
    if (!pollPostProcessBufferList)
    {
      self->_pollPostProcessBufferList = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[AGXGPURawCounterSource ringBufferNum](self, "ringBufferNum")}];
      if ([(AGXGPURawCounterSource *)self ringBufferNum])
      {
        v8 = 0;
        do
        {
          v9 = objc_alloc_init(PollPostProcessBuffer);
          [(NSMutableArray *)self->_pollPostProcessBufferList addObject:v9];

          ++v8;
        }

        while (v8 < [(AGXGPURawCounterSource *)self ringBufferNum]);
      }

      [(AGXGPURawCounterSource *)self resetRawDataPostProcessor];
      pollPostProcessBufferList = self->_pollPostProcessBufferList;
    }

    srcBufferPrevOffset = [objc_msgSend_objectAtIndexedSubscript_(pollPostProcessBufferList) srcBufferPrevOffset];
    srcBufferPrevSize = [objc_msgSend_objectAtIndexedSubscript_(self->_pollPostProcessBufferList) srcBufferPrevSize];
    v30 = 0;
    *buf = 0;
    v29 = 0;
    v12 = [(AGXGPURawCounterSource *)self ringBufferInfoAtIndex:v5 base:buf size:&v30 + 4 dataOffset:&v30 dataSize:&v29];
    LOBYTE(v13) = 0;
    if (v12)
    {
      if (v29)
      {
        v25 = *buf;
        v26 = v5;
        v14 = HIDWORD(v30);
        v28 = v30;
        v15 = (v30 + v29) % HIDWORD(v30);
        v16 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(self->_pollPostProcessBufferList) "dstBuffer")];
        v17 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(self->_pollPostProcessBufferList) "dstBuffer")];
        v19 = v30 == srcBufferPrevOffset && v29 == srcBufferPrevSize;
        while (1)
        {
          v27 = 0;
          LOBYTE(v24) = v19;
          v13 = (*(self->_impl->var0 + 25))(self->_impl, v26, v25, v14, &v28, v15, v16, v17, 0, &v27, v24);
          if (!v13)
          {
            break;
          }

          if (v27)
          {
            (*(block + 2))(block, v16, v27 >> 3, 0);
            if (v27)
            {
              continue;
            }
          }

          v20 = v28 + HIDWORD(v30) - v30;
          v21 = v20 % HIDWORD(v30);
          if (v21 && [(AGXGPURawCounterSource *)self drainRingBufferAtIndex:v26 dataSize:v20 % HIDWORD(v30)]!= v21)
          {
            goto LABEL_27;
          }

          v13 = [(AGXGPURawCounterSource *)self ringBufferInfoAtIndex:v26 base:buf size:&v30 + 4 dataOffset:&v30 dataSize:&v29];
          if (!v13)
          {
            return v13;
          }

          [objc_msgSend_objectAtIndexedSubscript_(self->_pollPostProcessBufferList) setSrcBufferPrevOffset:v30];
          [objc_msgSend_objectAtIndexedSubscript_(self->_pollPostProcessBufferList) setSrcBufferPrevSize:v29];
          goto LABEL_22;
        }
      }

      else
      {
LABEL_22:
        LOBYTE(v13) = 1;
      }
    }
  }

  return v13;
}

- (void)resetRawDataPostProcessor
{
  v13 = *MEMORY[0x29EDCA608];
  (*(self->_impl->var0 + 26))(self->_impl, 0);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  pollPostProcessBufferList = self->_pollPostProcessBufferList;
  v4 = [(NSMutableArray *)pollPostProcessBufferList countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(pollPostProcessBufferList);
        }

        [*(*(&v8 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)pollPostProcessBufferList countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (unsigned)drainRingBufferAtIndex:(unsigned int)index dataSize:(unsigned int)size
{
  v4 = *(*(*(self->_impl->var0 + 21))(self->_impl, *&index) + 40);

  return v4();
}

- (BOOL)ringBufferInfoAtIndex:(unsigned int)index base:(char *)base size:(unsigned int *)size dataOffset:(unsigned int *)offset dataSize:(unsigned int *)dataSize
{
  v11 = (*(self->_impl->var0 + 21))(self->_impl, *&index);
  v12 = (*(*v11 + 16))(v11);
  if (v12)
  {
    *base = (*(*v11 + 16))(v11);
    *size = (*(*v11 + 24))(v11);
    v13 = *(*v11 + 32);

    LOBYTE(v12) = v13(v11, offset, dataSize);
  }

  return v12;
}

- (BOOL)requestCounters:(id)counters firstErrorIndex:(unint64_t *)index
{
  (*(self->_impl->var0 + 7))(self->_impl, a2);

  self->_selectedCounterList = 0;
  if (![counters count])
  {
    goto LABEL_9;
  }

  v7 = 0;
  while ([(AGXGPURawCounterSource *)self requestCounter:objc_msgSend_objectAtIndexedSubscript_(counters)])
  {
    if ([counters count] <= ++v7)
    {
      goto LABEL_9;
    }
  }

  if (v7 == -1)
  {
LABEL_9:
    self->_selectedCounterList = [counters copy];
    return 1;
  }

  else
  {
    result = 0;
    if (index)
    {
      *index = v7;
    }
  }

  return result;
}

- (BOOL)requestCounter:(id)counter
{
  if ([objc_msgSend(counter "options")])
  {
    v5 = [objc_msgSend(objc_msgSend(counter "options")];
  }

  else
  {
    v5 = 32;
  }

  if ([objc_msgSend(counter "options")])
  {
    v6 = [objc_msgSend(objc_msgSend(counter "options")];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if ([objc_msgSend(counter "options")])
  {
    v7 = [objc_msgSend(objc_msgSend(counter "options")];
  }

  else
  {
    v7 = -1;
  }

  HIDWORD(v8) = v5 - 16;
  LODWORD(v8) = v5 - 16;
  if ((v8 >> 4) > 3 || v6 == -1 && v7 != -1 || v6 != -1 && v7 == -1)
  {
    return 0;
  }

  impl = self->_impl;
  v11 = v7;
  v12 = [objc_msgSend(counter "name")];
  v13 = *(impl->var0 + 8);

  return v13(impl, v12, v5, v6, v11);
}

- (BOOL)requestTriggers:(id)triggers firstErrorIndex:(unint64_t *)index
{
  self->_selectedTriggerList = 0;
  (*(self->_impl->var0 + 10))(self->_impl);
  if (![triggers count])
  {
    return 1;
  }

  if (![triggers count])
  {
    goto LABEL_17;
  }

  v7 = 0;
  while (1)
  {
    v8 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(triggers) "name")];
    v9 = &sSourceTriggerNameToTypeMap;
    if ((v8 & 1) == 0)
    {
      v10 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(triggers) "name")];
      v9 = &off_29F3404B0;
      if ((v10 & 1) == 0)
      {
        v11 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(triggers) "name")];
        v9 = &off_29F3404C0;
        if ((v11 & 1) == 0)
        {
          v12 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(triggers) "name")];
          v9 = &off_29F3404D0;
          if ((v12 & 1) == 0)
          {
            v13 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(triggers) "name")];
            v9 = &off_29F3404E0;
            if ((v13 & 1) == 0)
            {
              v14 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(triggers) "name")];
              v9 = &off_29F3404F0;
              if (!v14)
              {
                break;
              }
            }
          }
        }
      }
    }

    impl = self->_impl;
    v16 = *(v9 + 2);
    options = [objc_msgSend_objectAtIndexedSubscript_(triggers) options];
    if (!(*(impl->var0 + 11))(impl, v16, options))
    {
      break;
    }

    if ([triggers count] <= ++v7)
    {
      goto LABEL_17;
    }
  }

  if (v7 == -1)
  {
LABEL_17:
    self->_selectedTriggerList = [triggers copy];
    return 1;
  }

  if (index)
  {
    *index = v7;
  }

  (*(self->_impl->var0 + 10))(self->_impl);
  return 0;
}

- (BOOL)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = (*(self->_impl->var0 + 5))(self->_impl, enabled);
  if (v5)
  {
    v6 = !enabledCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    [(AGXGPURawCounterSource *)self resetRawDataPostProcessor];
    LOBYTE(v5) = v7;
  }

  return v5;
}

- (void)setOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = AGXGPURawCounterSource;
  [(_GPURawCounterSource *)&v4 setOptions:options];
  (*(self->_impl->var0 + 13))(self->_impl, *(&self->super.super.isa + *MEMORY[0x29EDC11E8]));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXGPURawCounterSource;
  [(_GPURawCounterSource *)&v3 dealloc];
}

- (AGXGPURawCounterSource)initWithSourceGroup:(id)group impl:(Source *)impl
{
  v7 = (*(impl->var0 + 3))(impl, a2);
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
  free(v7);
  v27.receiver = self;
  v27.super_class = AGXGPURawCounterSource;
  v9 = [(_GPURawCounterSource *)&v27 initWithSourceGroup:group name:v8];
  v10 = v9;
  if (v9)
  {
    v9->_impl = impl;
    v11 = objc_autoreleasePoolPush();
    v26 = 0;
    v12 = (*(v10->_impl->var0 + 4))(v10->_impl, &v26);
    if (v12)
    {
      v13 = v12;
      v25 = v11;
      v14 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v12];
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v26 + v15;
        v18 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*(v26 + v15)];
        v19 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*(v17 + 1)];
        -[NSArray setObject:atIndexedSubscript:](v14, "setObject:atIndexedSubscript:", [objc_alloc(MEMORY[0x29EDC11D0]) initWithName:v18 description:v19 valueType:*(v17 + 4) != 0], v16++);
        v15 += 24;
      }

      while (v13 != v16);
      v10->_counterList = v14;
      free(v26);
      v11 = v25;
    }

    v20 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if ((*(v10->_impl->var0 + 9))(v10->_impl))
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"TimerNClock"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 2) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"TimerFixed"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 4) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"KickBoundary"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 8) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"CPMS"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 0x10) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"KickTracing"]);
    }

    if (((*(v10->_impl->var0 + 9))(v10->_impl) & 0x20) != 0)
    {
      -[NSArray addObject:](v20, "addObject:", [sSourceGroupTriggerList objectForKeyedSubscript:@"KickAndStateTracing"]);
    }

    v10->_triggerList = v20;
    v21 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v22 = (*(v10->_impl->var0 + 14))(v10->_impl);
    v23 = v22;
    if (v22)
    {
      [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_ShaderProfiler"];
      if ((v23 & 2) == 0)
      {
LABEL_20:
        if ((v23 & 4) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_20;
    }

    [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_KickTimestamp"];
    if ((v23 & 4) == 0)
    {
LABEL_21:
      if ((v23 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_28:
    [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_SWResetOnRead"];
    if ((v23 & 8) == 0)
    {
LABEL_22:
      if ((v23 & 0x10) == 0)
      {
LABEL_24:
        *(&v10->super.super.isa + *MEMORY[0x29EDC11E0]) = v21;
        objc_autoreleasePoolPop(v11);
        return v10;
      }

LABEL_23:
      [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_CliqueAdvanceReason"];
      goto LABEL_24;
    }

LABEL_29:
    [v21 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_APSOptions"];
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  return v10;
}

@end