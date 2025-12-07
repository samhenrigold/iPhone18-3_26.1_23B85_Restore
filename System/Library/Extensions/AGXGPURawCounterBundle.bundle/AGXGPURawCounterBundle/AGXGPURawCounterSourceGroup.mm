@interface AGXGPURawCounterSourceGroup
- (AGXGPURawCounterSourceGroup)initWithAcceleratorPort:(unsigned int)port;
- (id)subDivideCounterList:(id)list withOptions:(id)options;
- (void)dealloc;
- (void)setOptions:(id)options;
@end

@implementation AGXGPURawCounterSourceGroup

- (id)subDivideCounterList:(id)list withOptions:(id)options
{
  v50[2] = *MEMORY[0x29EDCA608];
  result = [list count];
  if (!result)
  {
    return result;
  }

  if ((*(self->_impl->var0 + 12))(self->_impl))
  {
    return 0;
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  array = [MEMORY[0x29EDB8DE8] array];
  context = objc_autoreleasePoolPush();
  v44 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:16];
  v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(list, "count")}];
  v50[0] = v8;
  v46 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(list, "count")}];
  v50[1] = v46;
  array2 = [MEMORY[0x29EDB8DE8] array];
  if ([list count])
  {
    v10 = 1;
    do
    {
      v12 = array2;
      if (([objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(list) "name")] & 1) == 0)
      {
        if ([objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(list) "name")])
        {
          v12 = array2;
        }

        else
        {
          v12 = v46;
        }
      }

      [v12 addObject:objc_msgSend_objectAtIndexedSubscript_(list)];
      v11 = v10++;
    }

    while ([list count] > v11);
  }

  v13 = v44;
  if ([v46 count])
  {
    v14 = 1;
    do
    {
      v15 = [objc_msgSend(objc_msgSend_objectAtIndexedSubscript_(v46) "name")];
      v16 = objc_msgSend_objectAtIndexedSubscript_(v46);
      if (v15)
      {
        v17 = v44;
      }

      else
      {
        v17 = v8;
      }

      [v17 addObject:v16];
      v18 = v14++;
    }

    while ([v46 count] > v18);
  }

  v39 = [v8 count];
  v41 = array2;
  if (v39)
  {
    v19 = *MEMORY[0x29EDC1210];
    v45 = 0;
    v48 = [*(&self->super.super.isa + v19) count];
    v20 = 0x29EDB8000uLL;
    v21 = v46;
    v43 = array;
    while (1)
    {
      v49 = [*(v20 + 3560) arrayWithCapacity:{objc_msgSend(*(&self->super.super.isa + v19), "count", v39)}];
      (*(self->_impl->var0 + 11))(self->_impl);
      [v21 removeAllObjects];
      if ([*(&self->super.super.isa + v19) count])
      {
        v22 = 1;
        do
        {
          v25 = [objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.isa + v19)) requestCounters:v13 firstErrorIndex:0];
          v26 = *(v20 + 3560);
          if (v25)
          {
            array3 = [v26 arrayWithArray:v13];
          }

          else
          {
            array3 = [v26 array];
          }

          [v49 addObject:array3];
          v24 = v22++;
        }

        while ([*(&self->super.super.isa + v19) count] > v24);
      }

      v47 = v21;
      if (![v8 count])
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      do
      {
        v29 = objc_msgSend_objectAtIndexedSubscript_(v8);
        v30 = v48 > 1;
        v31 = v48 > 1;
        if ([*(&self->super.super.isa + v19) count] > v31)
        {
          v31 = v48 > 1;
          v32 = v48 > 1;
          while (([objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.isa + v19)) requestCounter:v29] & 1) == 0)
          {
            v31 = ++v32;
            v30 = v32;
            if ([*(&self->super.super.isa + v19) count] <= v32)
            {
              goto LABEL_35;
            }
          }

          v30 = v32;
        }

LABEL_35:
        v33 = [*(&self->super.super.isa + v19) count];
        if (v48 >= 2 && v33 == v31 && [objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.isa + v19)) requestCounter:v29])
        {
          v30 = 0;
        }

        if ([*(&self->super.super.isa + v19) count] <= v30)
        {
          [v47 addObject:v29];
        }

        else
        {
          [objc_msgSend_objectAtIndexedSubscript_(v49) addObject:v29];
          v28 |= 1 << v30;
        }

        ++v27;
      }

      while ([v8 count] > v27);
      v13 = v44;
      if (!v28)
      {
        break;
      }

      if ([*(&self->super.super.isa + v19) count])
      {
        v34 = 1;
        do
        {
          if ((v28 & (1 << (v34 - 1))) == 0)
          {
            [objc_msgSend_objectAtIndexedSubscript_(v49) removeAllObjects];
          }

          v35 = v34++;
        }

        while ([*(&self->super.super.isa + v19) count] > v35);
      }

      array = v43;
      [v43 addObject:v49];
      v20 = 0x29EDB8000;
      if (![v47 count])
      {
        goto LABEL_55;
      }

      v8 = v50[++v45 & 1];
      v21 = v50[!(v45 & 1)];
    }

    [v41 addObjectsFromArray:v8];
    array = v43;
  }

  else
  {
    v36 = *MEMORY[0x29EDC1210];
    [array addObject:{objc_msgSend(MEMORY[0x29EDB8DE8], "arrayWithCapacity:", objc_msgSend(*(&self->super.super.isa + v36), "count"))}];
    if ([*(&self->super.super.isa + v36) count])
    {
      v37 = 1;
      do
      {
        [objc_msgSend_objectAtIndexedSubscript_(array v39)];
      }

      while ([*(&self->super.super.isa + v36) count] > v37++);
    }

    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", 1, v39), @"passNum"}];
    [dictionary setObject:array forKeyedSubscript:@"passList"];
    if (![array2 count])
    {
      goto LABEL_55;
    }
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v41, "count")), @"invalidNum"}];
  [dictionary setObject:v41 forKeyedSubscript:@"invalidList"];
LABEL_55:
  objc_autoreleasePoolPop(context);
  if (v39)
  {
    (*(self->_impl->var0 + 11))(self->_impl);
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(array, "count")), @"passNum"}];
    [dictionary setObject:array forKeyedSubscript:@"passList"];
  }

  return dictionary;
}

- (void)setOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = AGXGPURawCounterSourceGroup;
  [(_GPURawCounterSourceGroup *)&v4 setOptions:options];
  (*(self->_impl->var0 + 4))(self->_impl, *(&self->super.super.isa + *MEMORY[0x29EDC1208]));
}

- (void)dealloc
{
  if (self->_impl)
  {
    AGXGPURawCounter::destroyInstance(self);
    self->_impl = 0;
  }

  sSourceGroupTriggerList = 0;
  v3.receiver = self;
  v3.super_class = AGXGPURawCounterSourceGroup;
  [(_GPURawCounterSourceGroup *)&v3 dealloc];
}

- (AGXGPURawCounterSourceGroup)initWithAcceleratorPort:(unsigned int)port
{
  v33 = *MEMORY[0x29EDCA608];
  v31.receiver = self;
  v31.super_class = AGXGPURawCounterSourceGroup;
  v3 = [(_GPURawCounterSourceGroup *)&v31 initWithAcceleratorPort:*&port];
  v4 = v3;
  if (v3)
  {
    Instance = AGXGPURawCounter::createInstance(*(&v3->super.super.isa + *MEMORY[0x29EDC11F0]));
    v4->_impl = Instance;
    if (Instance)
    {
      memset(v32, 0, sizeof(v32));
      v6 = (*(*Instance + 24))(Instance, v32, 64);
      v30 = objc_alloc(MEMORY[0x29EDB8E00]);
      v7 = [objc_alloc(MEMORY[0x29EDC11D8]) initWithName:@"TimerNClock" description:@"Sample every 'n' n-clock ticks" options:&unk_2A23F4CC0];
      v8 = [objc_alloc(MEMORY[0x29EDC11D8]) initWithName:@"TimerFixed" description:@"Sample every 'n' GPU clock ticks" options:&unk_2A23F4CE8];
      v9 = [objc_alloc(MEMORY[0x29EDC11D8]) initWithName:@"KickBoundary" description:@"Sample at kick start/end" options:0];
      v10 = [objc_alloc(MEMORY[0x29EDC11D8]) initWithName:@"CPMS" description:@"Sample when CPMS buffer is full" options:0];
      v11 = [objc_alloc(MEMORY[0x29EDC11D8]) initWithName:@"KickTracing" description:@"Enable APS kick tracing" options:0];
      sSourceGroupTriggerList = [v30 initWithObjectsAndKeys:{v7, @"TimerNClock", v8, @"TimerFixed", v9, @"KickBoundary", v10, @"CPMS", v11, @"KickTracing", objc_msgSend(objc_alloc(MEMORY[0x29EDC11D8]), "initWithName:description:options:", @"KickAndStateTracing", @"Enable APS kick and state tracing", 0), @"KickAndStateTracing", 0}];
      v12 = v6;
      v13 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v6];
      v14 = objc_autoreleasePoolPush();
      if (v6)
      {
        v15 = *&v32[0];
        v16 = (*(**&v32[0] + 176))(*&v32[0]);
        v17 = v12 == 1 ? 20 : 19;
        v18 = v16 << v17 >> 26 ? 0x4000000 : (*(**&v32[0] + 176))(*&v32[0]) << v17;
        (*(*v15 + 136))(v15, v18);
        v19 = [AGXGPURawCounterSource alloc];
        [v13 setObject:-[AGXGPURawCounterSource initWithSourceGroup:impl:](v19 atIndexedSubscript:{"initWithSourceGroup:impl:", v4, *&v32[0]), 0}];
        if (v12 != 1)
        {
          for (i = 1; i != v12; ++i)
          {
            v29 = *(v32 + i);
            if ((*(*v29 + 176))(v29) <= 0x3F)
            {
              v28 = (*(**(v32 + i) + 176))(*(v32 + i)) << 20;
            }

            else
            {
              v28 = 0x4000000;
            }

            (*(*v29 + 136))(v29, v28);
            [v13 setObject:-[AGXGPURawCounterSource initWithSourceGroup:impl:]([AGXGPURawCounterSource alloc] atIndexedSubscript:{"initWithSourceGroup:impl:", v4, *(v32 + i)), i}];
          }
        }
      }

      objc_autoreleasePoolPop(v14);
      *(&v4->super.super.isa + *MEMORY[0x29EDC1210]) = v13;
      v20 = *MEMORY[0x29EDC1200];

      if ((MGGetBoolAnswer() & 1) == 0)
      {
        *(&v4->super.super.isa + v20) = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"AppleGPU"];
LABEL_17:
        v23 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v24 = (*(v4->_impl->var0 + 5))(v4->_impl);
        v25 = v24;
        if ((v24 & 2) != 0)
        {
          [v23 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_DisableOverlap"];
          if ((v25 & 4) == 0)
          {
LABEL_19:
            if ((v25 & 8) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_27;
          }
        }

        else if ((v24 & 4) == 0)
        {
          goto LABEL_19;
        }

        [v23 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_LockGPUPerfState"];
        if ((v25 & 8) == 0)
        {
LABEL_20:
          if ((v25 & 0x10) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

LABEL_27:
        [v23 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_DisableMCH"];
        if ((v25 & 0x10) == 0)
        {
LABEL_21:
          if ((v25 & 0x20) == 0)
          {
LABEL_23:
            (*(v4->_impl->var0 + 14))(v4->_impl, v23);
            *(&v4->super.super.isa + *MEMORY[0x29EDC11F8]) = v23;
            return v4;
          }

LABEL_22:
          [v23 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_SingleVDMChannel"];
          goto LABEL_23;
        }

LABEL_28:
        [v23 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"SupportOption_ReduceCDMCluster"];
        if ((v25 & 0x20) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v21 = (*(v4->_impl->var0 + 2))(v4->_impl);
      if (v21)
      {
        v22 = v21;
        *(&v4->super.super.isa + v20) = [MEMORY[0x29EDBA0F8] stringWithFormat:@"AppleGPU_%s", v21];
        free(v22);
        goto LABEL_17;
      }
    }

    return 0;
  }

  return v4;
}

@end