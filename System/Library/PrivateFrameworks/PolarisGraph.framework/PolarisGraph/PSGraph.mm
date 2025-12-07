@interface PSGraph
- (NSNumber)systemPulseStride;
- (PSGraph)initWithName:(id)name criticality:(unint64_t)criticality frequency:(unint64_t)frequency tag:(id)tag;
- (PSGraph)initWithName:(id)name tag:(id)tag;
- (id)IOSurfacesForResourceKey:(id)key error:(id *)error;
- (id)JSONObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getExternalInputs;
- (id)producedResources;
- (id)waitResources;
- (unint64_t)frequency;
- (unint64_t)resolvedFrequency;
- (void)dealloc;
- (void)setCriticality:(unint64_t)criticality;
- (void)setFrequency:(unint64_t)frequency;
- (void)setMinInterval:(id *)interval;
- (void)setResolvedInterval:(id *)interval;
- (void)setSyncDataContext:(ps_sync_context_s *)context;
- (void)setWorkloadWaitFunction:(void *)function withContext:(void *)context;
@end

@implementation PSGraph

- (PSGraph)initWithName:(id)name tag:(id)tag
{
  tagCopy = tag;
  v7 = [(PSGraph *)self initWithName:name];
  tag = v7->_tag;
  v7->_tag = tagCopy;

  return v7;
}

- (PSGraph)initWithName:(id)name criticality:(unint64_t)criticality frequency:(unint64_t)frequency tag:(id)tag
{
  nameCopy = name;
  tagCopy = tag;
  v36.receiver = self;
  v36.super_class = PSGraph;
  v13 = [(PSGraph *)&v36 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableTasks = v14->_mutableTasks;
    v14->_mutableTasks = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableSourceTasks = v14->_mutableSourceTasks;
    v14->_mutableSourceTasks = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableReaders = v14->_mutableReaders;
    v14->_mutableReaders = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableWriters = v14->_mutableWriters;
    v14->_mutableWriters = v21;

    objc_storeStrong(&v14->_tag, tag);
    v23 = MEMORY[0x277CC08A0];
    *&v14->_minInterval.value = *MEMORY[0x277CC08A0];
    v14->_minInterval.epoch = *(v23 + 16);
    resolvedDomain = v14->_resolvedDomain;
    v14->_resolvedDomain = 0;

    v14->_maxThreadPoolSize = -1;
    [(PSGraph *)v14 setCriticality:criticality];
    [(PSGraph *)v14 setFrequency:frequency];
    v14->_workloadWait = 0;
    offset = v14->_offset;
    v14->_offset = &unk_2870D93D0;

    v14->_workloadWaitContext = 0;
    memset(v33, 0, sizeof(v33));
    v34 = 0u;
    v35 = 0;
    __copy_assignment_8_8_t0w40_s40_s48(&v14->_context, v33);
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    writerInsts = v14->_context.writerInsts;
    v14->_context.writerInsts = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    readerInsts = v14->_context.readerInsts;
    v14->_context.readerInsts = v28;

    v14->_ANEPriority = -1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mutableResourceInfo = v14->_mutableResourceInfo;
    v14->_mutableResourceInfo = dictionary;

    v14->_needsLiveness = 1;
    v14->_threadPoolSize = 1;
  }

  return v14;
}

- (void)dealloc
{
  writerInsts = self->_context.writerInsts;
  self->_context.writerInsts = 0;

  readerInsts = self->_context.readerInsts;
  self->_context.readerInsts = 0;

  v5.receiver = self;
  v5.super_class = PSGraph;
  [(PSGraph *)&v5 dealloc];
}

- (id)description
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"..<%@: %@>", objc_opt_class(), self->_name];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_mutableTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"\n%@", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)frequency
{
  type = [(PSGraphFrequency *)self->_graphFrequency type];
  graphFrequency = self->_graphFrequency;
  if (type)
  {
    if ([(PSGraphFrequency *)graphFrequency type]!= 3)
    {
      return 0;
    }

    graphFrequency = self->_graphFrequency;
  }

  return [(PSGraphFrequency *)graphFrequency frequency];
}

- (void)setFrequency:(unint64_t)frequency
{
  self->_graphFrequency = [PSGraphFrequencyFixed fixedFrequency:frequency];

  MEMORY[0x2821F96F8]();
}

- (unint64_t)resolvedFrequency
{
  if ((self->_resolvedInterval.flags & 0x1D) == 1)
  {
    return vcvtmd_u64_f64(self->_resolvedInterval.timescale / self->_resolvedInterval.value);
  }

  else
  {
    return 0;
  }
}

- (NSNumber)systemPulseStride
{
  if ([(PSGraph *)self resolvedFrequency])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{0x5A / -[PSGraph resolvedFrequency](self, "resolvedFrequency")}];
  }

  else
  {
    graphFrequency = [(PSGraph *)self graphFrequency];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = MEMORY[0x277CCABB0];
      graphFrequency2 = [(PSGraph *)self graphFrequency];
      v3 = [v6 numberWithUnsignedInt:{objc_msgSend(graphFrequency2, "systemPulseStride")}];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setCriticality:(unint64_t)criticality
{
  [(PSGraph *)self setCriticalityCPU:?];
  [(PSGraph *)self setCriticalityGPU:criticality];

  [(PSGraph *)self setCriticalityANE:criticality];
}

- (id)getExternalInputs
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  selfCopy = self;
  v4 = self->_mutableTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v76;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v75 + 1) + 8 * i);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        outputs = [v9 outputs];
        v11 = [outputs countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v72;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v72 != v13)
              {
                objc_enumerationMutation(outputs);
              }

              resourceKey = [*(*(&v71 + 1) + 8 * j) resourceKey];
              [v3 addObject:resourceKey];
            }

            v12 = [outputs countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v12);
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v6);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = selfCopy->_mutableSourceTasks;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v68;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v68 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v67 + 1) + 8 * k);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        outputs2 = [v21 outputs];
        v23 = [outputs2 countByEnumeratingWithState:&v63 objects:v82 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v64;
          do
          {
            for (m = 0; m != v24; ++m)
            {
              if (*v64 != v25)
              {
                objc_enumerationMutation(outputs2);
              }

              resourceKey2 = [*(*(&v63 + 1) + 8 * m) resourceKey];
              [v3 addObject:resourceKey2];
            }

            v24 = [outputs2 countByEnumeratingWithState:&v63 objects:v82 count:16];
          }

          while (v24);
        }
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v18);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v28 = selfCopy->_mutableWriters;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v60;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v60 != v31)
        {
          objc_enumerationMutation(v28);
        }

        output = [*(*(&v59 + 1) + 8 * n) output];
        resourceKey3 = [output resourceKey];
        [v3 addObject:resourceKey3];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v59 objects:v81 count:16];
    }

    while (v30);
  }

  array = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = selfCopy->_mutableTasks;
  v50 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v80 count:16];
  if (v50)
  {
    v48 = *v56;
    do
    {
      for (ii = 0; ii != v50; ++ii)
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v55 + 1) + 8 * ii);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        inputs = [v37 inputs];
        v39 = [inputs countByEnumeratingWithState:&v51 objects:v79 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v52;
          do
          {
            for (jj = 0; jj != v40; ++jj)
            {
              if (*v52 != v41)
              {
                objc_enumerationMutation(inputs);
              }

              v43 = *(*(&v51 + 1) + 8 * jj);
              resourceKey4 = [v43 resourceKey];
              v45 = [v3 containsObject:resourceKey4];

              if ((v45 & 1) == 0)
              {
                [array addObject:v43];
              }
            }

            v40 = [inputs countByEnumeratingWithState:&v51 objects:v79 count:16];
          }

          while (v40);
        }
      }

      v50 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v80 count:16];
    }

    while (v50);
  }

  return array;
}

- (id)waitResources
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(PSGraph *)self tasks];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        inputs = [v8 inputs];
        v10 = [inputs countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(inputs);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if (![v14 type])
              {
                resourceKey = [v14 resourceKey];

                if (resourceKey)
                {
                  resourceKey2 = [v14 resourceKey];
                  [v3 addObject:resourceKey2];
                }
              }
            }

            v11 = [inputs countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)producedResources
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  writers = [(PSGraph *)self writers];
  v5 = [writers countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v61;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(writers);
        }

        v9 = *(*(&v60 + 1) + 8 * i);
        output = [v9 output];
        resourceKey = [output resourceKey];

        if (resourceKey)
        {
          output2 = [v9 output];
          resourceKey2 = [output2 resourceKey];
          [v3 addObject:resourceKey2];
        }
      }

      v6 = [writers countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v6);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  obj = [(PSGraph *)self sourceTasks];
  v14 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v57;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v57 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v56 + 1) + 8 * j);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        outputs = [v18 outputs];
        v20 = [outputs countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v53;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(outputs);
              }

              v24 = *(*(&v52 + 1) + 8 * k);
              resourceKey3 = [v24 resourceKey];

              if (resourceKey3)
              {
                resourceKey4 = [v24 resourceKey];
                [v3 addObject:resourceKey4];
              }
            }

            v21 = [outputs countByEnumeratingWithState:&v52 objects:v66 count:16];
          }

          while (v21);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v15);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = [(PSGraph *)selfCopy tasks];
  v27 = [obja countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v48 + 1) + 8 * m);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        outputs2 = [v31 outputs];
        v33 = [outputs2 countByEnumeratingWithState:&v44 objects:v64 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v45;
          do
          {
            for (n = 0; n != v34; ++n)
            {
              if (*v45 != v35)
              {
                objc_enumerationMutation(outputs2);
              }

              v37 = *(*(&v44 + 1) + 8 * n);
              resourceKey5 = [v37 resourceKey];

              if (resourceKey5)
              {
                resourceKey6 = [v37 resourceKey];
                [v3 addObject:resourceKey6];
              }
            }

            v34 = [outputs2 countByEnumeratingWithState:&v44 objects:v64 count:16];
          }

          while (v34);
        }
      }

      v28 = [obja countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v28);
  }

  return v3;
}

- (id)IOSurfacesForResourceKey:(id)key error:(id *)error
{
  v74 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (![(PSGraph *)self executionContext][32])
  {
    v16 = MEMORY[0x277CCACA8];
    name = [(PSGraph *)self name];
    keyCopy = [v16 stringWithFormat:@"%s can only be called after the transition which adds this graph (%@) (%p) has completed, key (%@)", "-[PSGraph IOSurfacesForResourceKey:error:]", name, self, keyCopy];

    v20 = __PSGraphLogSharedInstance(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = keyCopy;
      _os_log_impl(&dword_25EC85000, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_43;
    }

    v21 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65 = keyCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v23 = v21;
    v24 = -1;
    goto LABEL_42;
  }

  selfCopy = self;
  v8 = keyCopy;
  v9 = [-[PSGraph executionContext](selfCopy "executionContext")[40]];

  if (v9)
  {
    v10 = [-[PSGraph executionContext](selfCopy "executionContext")[40]];
    pointerValue = [v10 pointerValue];

    v13 = __PSGraphLogSharedInstance(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (pointerValue)
    {
      if (v14)
      {
        *buf = 136315906;
        v67 = "getWriterInstanceForGraphAndKey";
        v68 = 2048;
        v69 = selfCopy;
        v70 = 2080;
        uTF8String = [v8 UTF8String];
        v72 = 2048;
        v73 = pointerValue;
        _os_log_impl(&dword_25EC85000, v13, OS_LOG_TYPE_DEBUG, "%s: Found writer instance for graph %p key %s writerInst %p", buf, 0x2Au);
      }

      pointerValue2 = 0;
      goto LABEL_19;
    }

    if (v14)
    {
      *buf = 136315650;
      v67 = "getWriterInstanceForGraphAndKey";
      v68 = 2048;
      v69 = selfCopy;
      v70 = 2080;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_25EC85000, v13, OS_LOG_TYPE_DEBUG, "%s: Failed to find writer instance for graph %p key %s", buf, 0x20u);
    }
  }

  v25 = selfCopy;
  v26 = v8;
  v27 = [-[PSGraph executionContext](v25 "executionContext")[48]];

  if (!v27)
  {
LABEL_37:

    v53 = MEMORY[0x277CCACA8];
    name2 = [(PSGraph *)v25 name];
    keyCopy = [v53 stringWithFormat:@"%s: Key (%@) or writer/reader instance not found for graph (%@) (%p)", "-[PSGraph IOSurfacesForResourceKey:error:]", v26, name2, v25];

    v56 = __PSGraphLogSharedInstance(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = keyCopy;
      _os_log_impl(&dword_25EC85000, v56, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_43;
    }

    v38 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v63 = keyCopy;
    v39 = MEMORY[0x277CBEAC0];
    v40 = &v63;
    v41 = &v62;
LABEL_41:
    v22 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
    v23 = v38;
    v24 = -2;
LABEL_42:
    *error = [v23 errorWithDomain:@"com.apple.polarisgraph" code:v24 userInfo:v22];

LABEL_43:
    v48 = 0;
    goto LABEL_44;
  }

  v28 = [-[PSGraph executionContext](v25 "executionContext")[48]];
  pointerValue2 = [v28 pointerValue];

  v13 = __PSGraphLogSharedInstance(v29);
  v30 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (!pointerValue2)
  {
    if (v30)
    {
      uTF8String2 = [v26 UTF8String];
      *buf = 136315650;
      v67 = "getReaderInstanceForGraphAndKey";
      v68 = 2048;
      v69 = v25;
      v70 = 2080;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_25EC85000, v13, OS_LOG_TYPE_DEBUG, "%s: Failed to find reader instance for graph %p key %s", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (v30)
  {
    uTF8String3 = [v26 UTF8String];
    *buf = 136315906;
    v67 = "getReaderInstanceForGraphAndKey";
    v68 = 2048;
    v69 = v25;
    v70 = 2080;
    uTF8String = uTF8String3;
    v72 = 2048;
    v73 = pointerValue2;
    _os_log_impl(&dword_25EC85000, v13, OS_LOG_TYPE_DEBUG, "%s: Found reader instance for graph %p key %s readerInst %p", buf, 0x2Au);
  }

  pointerValue = 0;
LABEL_19:

  v32 = (-[PSGraph executionContext](selfCopy, "executionContext")[16])(-[PSGraph executionContext](selfCopy, "executionContext"), pointerValue, pointerValue2, [v8 UTF8String]);
  if (v32 == -2)
  {
    v42 = MEMORY[0x277CCACA8];
    name3 = [(PSGraph *)selfCopy name];
    keyCopy = [v42 stringWithFormat:@"%s: Resource class not supported for key (%@), graph (%@) (%p)", "-[PSGraph IOSurfacesForResourceKey:error:]", v8, name3, selfCopy];

    v45 = __PSGraphLogSharedInstance(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = keyCopy;
      _os_log_impl(&dword_25EC85000, v45, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_43;
    }

    v38 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v59 = keyCopy;
    v39 = MEMORY[0x277CBEAC0];
    v40 = &v59;
    v41 = &v58;
    goto LABEL_41;
  }

  v33 = v32;
  if (v32 == -1)
  {
    v34 = MEMORY[0x277CCACA8];
    name4 = [(PSGraph *)selfCopy name];
    keyCopy = [v34 stringWithFormat:@"%s: Writer/reader instance not found for key (%@) graph (%@) (%p)", "-[PSGraph IOSurfacesForResourceKey:error:]", v8, name4, selfCopy];

    v37 = __PSGraphLogSharedInstance(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = keyCopy;
      _os_log_impl(&dword_25EC85000, v37, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_43;
    }

    v38 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    v61 = keyCopy;
    v39 = MEMORY[0x277CBEAC0];
    v40 = &v61;
    v41 = &v60;
    goto LABEL_41;
  }

  v46 = malloc_type_calloc(v32, 8uLL, 0x2004093837F09uLL);
  if (!v46)
  {
    [PSGraph IOSurfacesForResourceKey:error:];
  }

  v47 = v46;
  (-[PSGraph executionContext](selfCopy, "executionContext")[24])(-[PSGraph executionContext](selfCopy, "executionContext"), pointerValue, pointerValue2, [v8 UTF8String], v46);
  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:v33];
  if (v33 >= 1)
  {
    v49 = v33;
    v50 = v47;
    do
    {
      v51 = *v50++;
      [v48 addObject:v51];
      --v49;
    }

    while (v49);
  }

  free(v47);
LABEL_44:

  return v48;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithName:", self->_name}];
  v5 = *&self->_minInterval.value;
  *(v4 + 488) = self->_minInterval.epoch;
  *(v4 + 472) = v5;
  *(v4 + 360) = self->_maxThreadPoolSize;
  *(v4 + 368) = self->_maxCriticalityCPU;
  *(v4 + 376) = self->_maxCriticalityGPU;
  *(v4 + 384) = self->_maxCriticalityANE;
  *(v4 + 392) = self->_executionType;
  v6 = *&self->_resolvedInterval.value;
  *(v4 + 512) = self->_resolvedInterval.epoch;
  *(v4 + 496) = v6;
  *(v4 + 400) = self->_resolvedThreadPoolSize;
  *(v4 + 408) = self->_resolvedCriticalityCPU;
  *(v4 + 416) = self->_resolvedCriticalityGPU;
  *(v4 + 424) = self->_resolvedCriticalityANE;
  *(v4 + 432) = self->_resolvedDeadline;
  objc_storeStrong((v4 + 448), self->_resolvedDomain);
  resourceInfo = [(PSGraph *)self resourceInfo];
  [v4 setResourceInfo:resourceInfo];

  *(v4 + 168) = self->_disableThreadSharing;
  *(v4 + 456) = self->_threadPoolID;
  *(v4 + 170) = self->_subgraph_idx;
  objc_storeStrong((v4 + 464), self->_currentSystemStride);
  objc_storeStrong((v4 + 184), self->_tag);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  tasks = [(PSGraph *)self tasks];
  v9 = [tasks countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      v12 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(tasks);
        }

        [v4 addTask:*(*(&v45 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [tasks countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v10);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  sourceTasks = [(PSGraph *)self sourceTasks];
  v14 = [sourceTasks countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(sourceTasks);
        }

        [v4 addSourceTask:*(*(&v41 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [sourceTasks countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v15);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  readers = [(PSGraph *)self readers];
  v19 = [readers countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      v22 = 0;
      do
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(readers);
        }

        [v4 addReader:*(*(&v37 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [readers countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v20);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  writers = [(PSGraph *)self writers];
  v24 = [writers countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      v27 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(writers);
        }

        [v4 addWriter:*(*(&v33 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [writers countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v25);
  }

  objc_storeStrong((v4 + 192), self->_graphFrequency);
  *(v4 + 200) = *&self->_relativeDeadline;
  *(v4 + 216) = self->_criticalityCPU;
  *(v4 + 224) = self->_criticalityGPU;
  *(v4 + 232) = self->_criticalityANE;
  *(v4 + 240) = self->_teardownType;
  objc_storeStrong((v4 + 248), self->_cancellationTask);
  *(v4 + 256) = self->_init_function;
  *(v4 + 272) = self->_init_context;
  *(v4 + 264) = self->_deinit_function;
  *(v4 + 280) = self->_deinit_context;
  *(v4 + 288) = self->_workloadWait;
  *(v4 + 296) = self->_workloadWaitContext;
  v28 = *&self->_msg_context.msg_handle;
  *(v4 + 88) = *&self->_msg_context.populate_context_func;
  *(v4 + 72) = v28;
  v29 = *&self->_msg_context.sync_data[0].virtual_frame_id;
  v30 = *&self->_msg_context.sync_data[1].timestamp;
  v31 = *&self->_msg_context.sync_data[1].physical_frame_id;
  *(v4 + 152) = *&self->_msg_context.sync_data[2].virtual_frame_id;
  *(v4 + 136) = v31;
  *(v4 + 120) = v30;
  *(v4 + 104) = v29;
  return v4;
}

- (void)setMinInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_minInterval.epoch = interval->var3;
  *&self->_minInterval.value = v3;
}

- (void)setResolvedInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_resolvedInterval.epoch = interval->var3;
  *&self->_resolvedInterval.value = v3;
}

- (void)setWorkloadWaitFunction:(void *)function withContext:(void *)context
{
  [(PSGraph *)self setWorkloadWait:function];

  [(PSGraph *)self setWorkloadWaitContext:context];
}

- (void)setSyncDataContext:(ps_sync_context_s *)context
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = asprintf(&v9, "Attempted to set sync context. This setter should never be called.", context);
  v4 = __PSGraphLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v11 = "[PSGraph(WakeboardSPI) setSyncDataContext:]";
    v12 = 1024;
    v13 = 2069;
    _os_log_impl(&dword_25EC85000, v4, OS_LOG_TYPE_FAULT, "%s:%d Attempted to set sync context. This setter should never be called.", buf, 0x12u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSGraphLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[PSGraph(WakeboardSPI) setSyncDataContext:]";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EC85000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = abort_with_reason();
  ps_graph_get_sync_data(v8);
}

- (id)JSONObject
{
  v188 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(PSGraph *)self name];
  [dictionary setObject:name forKeyedSubscript:@"graph_name"];

  v5 = [(PSGraph *)self tag];
  [dictionary setObject:v5 forKeyedSubscript:@"graph_tag"];

  v6 = MEMORY[0x277CCACA8];
  graphFrequency = [(PSGraph *)self graphFrequency];
  v8 = [v6 stringWithUTF8String:{ps_graph_frequency_type_description(objc_msgSend(graphFrequency, "type"))}];
  [dictionary setObject:v8 forKeyedSubscript:@"frequency_type"];

  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph frequency](self, "frequency")}];
  [dictionary setObject:v10 forKeyedSubscript:@"frequency_requested"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph resolvedFrequency](self, "resolvedFrequency")}];
  [dictionary setObject:v11 forKeyedSubscript:@"frequency_resolved"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph threadPoolSize](self, "threadPoolSize")}];
  [dictionary setObject:v12 forKeyedSubscript:@"threads_requested"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph resolvedThreadPoolSize](self, "resolvedThreadPoolSize")}];
  [dictionary setObject:v13 forKeyedSubscript:@"threads_resolved"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PSGraph relativeDeadline](self, "relativeDeadline")}];
  [dictionary setObject:v14 forKeyedSubscript:@"deadline_requested"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PSGraph resolvedDeadline](self, "resolvedDeadline")}];
  [dictionary setObject:v15 forKeyedSubscript:@"deadline_resolved"];

  resolvedDomain = [(PSGraph *)self resolvedDomain];
  v17 = [resolvedDomain description];
  [dictionary setObject:v17 forKeyedSubscript:@"domain_resolved"];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_criticality_description(-[PSGraph criticalityCPU](self, "criticalityCPU"))}];
  [dictionary setObject:v18 forKeyedSubscript:@"criticality_cpu"];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_criticality_description(-[PSGraph criticalityGPU](self, "criticalityGPU"))}];
  [dictionary setObject:v19 forKeyedSubscript:@"criticality_gpu"];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_criticality_description(-[PSGraph criticalityANE](self, "criticalityANE"))}];
  [dictionary setObject:v20 forKeyedSubscript:@"criticality_ane"];

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_graph_ane_priority_description(-[PSGraph ANEPriority](self, "ANEPriority"))}];
  v134 = dictionary;
  [dictionary setObject:v21 forKeyedSubscript:@"priority_ane"];

  selfCopy = self;
  resourceInfo = [(PSGraph *)self resourceInfo];
  v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(resourceInfo, "count")}];
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v24 = resourceInfo;
  v146 = [v24 countByEnumeratingWithState:&v173 objects:v187 count:16];
  if (v146)
  {
    v140 = v23;
    v143 = *v174;
    v138 = v24;
    do
    {
      for (i = 0; i != v146; ++i)
      {
        if (*v174 != v143)
        {
          objc_enumerationMutation(v24);
        }

        v26 = *(*(&v173 + 1) + 8 * i);
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v28 = [v24 objectForKey:v26];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_resource_class_description(objc_msgSend(v28, "resourceClass"))}];
        [dictionary2 setObject:v29 forKey:@"resource_class"];

        v30 = MEMORY[0x277CCACA8];
        [v28 options];
        v32 = [v30 stringWithUTF8String:ps_resource_creation_mode_description(v31)];
        [dictionary2 setObject:v32 forKey:@"creation_mode"];

        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_resource_storage_mode_description(objc_msgSend(v28, "options"))}];
        [dictionary2 setObject:v33 forKey:@"storage_mode"];

        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v28, "typeDescription")}];
        [dictionary2 setObject:v34 forKey:@"type_descriptor"];

        v35 = [*(v9 + 2992) numberWithUnsignedInteger:{objc_msgSend(v28, "framerate")}];
        [dictionary2 setObject:v35 forKey:@"frame_rate"];

        resourceClass = [v28 resourceClass];
        if (resourceClass <= 6)
        {
          if (resourceClass == 1)
          {
            goto LABEL_13;
          }

          if (resourceClass != 4)
          {
            if (resourceClass != 5)
            {
              goto LABEL_25;
            }

LABEL_13:
            v37 = [*(v9 + 2992) numberWithUnsignedLong:{objc_msgSend(v28, "length")}];
            [dictionary2 setObject:v37 forKey:@"length"];

            goto LABEL_25;
          }

          v49 = v28;
          setPixelInfo(dictionary2, [v49 width], objc_msgSend(v49, "height"), objc_msgSend(v49, "pixelFormat"));
          ioSurfaceProperties = [v49 ioSurfaceProperties];

          if (ioSurfaceProperties)
          {
            ioSurfaceProperties2 = [v49 ioSurfaceProperties];
            [dictionary2 setObject:ioSurfaceProperties2 forKey:@"properties"];
          }

          v24 = v138;
          v23 = v140;
        }

        else if (resourceClass > 8)
        {
          if (resourceClass == 9 || resourceClass == 11)
          {
LABEL_16:
            v38 = v28;
            setPixelInfo(dictionary2, [v38 width], objc_msgSend(v38, "height"), objc_msgSend(v38, "pixelFormat"));
            provider = [v38 provider];

            setProvider(dictionary2, provider);
          }
        }

        else
        {
          if (resourceClass != 7)
          {
            goto LABEL_16;
          }

          v40 = v28;
          setPixelInfo(dictionary2, [v40 width], objc_msgSend(v40, "height"), objc_msgSend(v40, "pixelFormat"));
          format = [v40 format];
          v42 = format;
          if (format)
          {
            v185[0] = @"is_unwarped";
            v43 = [*(v9 + 2992) numberWithBool:{objc_msgSend(format, "isUnwarped")}];
            v186[0] = v43;
            v185[1] = @"is_rectified";
            v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v42, "isRectified")}];
            v186[1] = v44;
            v185[2] = @"is_pyramid";
            v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v42, "isPyramid")}];
            v186[2] = v45;
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:3];
            [dictionary2 setObject:v46 forKey:@"camera_format"];

            v9 = 0x277CCA000;
          }

          setProvider(dictionary2, [v40 provider]);
          ioSurfaceProperties3 = [v40 ioSurfaceProperties];

          v24 = v138;
          if (ioSurfaceProperties3)
          {
            ioSurfaceProperties4 = [v40 ioSurfaceProperties];
            [dictionary2 setObject:ioSurfaceProperties4 forKey:@"properties"];
          }

          v23 = v140;
        }

LABEL_25:
        [v23 setObject:dictionary2 forKey:v26];
      }

      v146 = [v24 countByEnumeratingWithState:&v173 objects:v187 count:16];
    }

    while (v146);
  }

  [v134 setObject:v23 forKeyedSubscript:@"resources"];
  array = [MEMORY[0x277CBEB18] array];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  obj = [(PSGraph *)selfCopy tasks];
  v139 = [obj countByEnumeratingWithState:&v169 objects:v184 count:16];
  if (v139)
  {
    v136 = *v170;
    do
    {
      v52 = 0;
      do
      {
        if (*v170 != v136)
        {
          objc_enumerationMutation(obj);
        }

        v141 = v52;
        v53 = *(*(&v169 + 1) + 8 * v52);
        dictionary3 = [MEMORY[0x277CBEB38] dictionary];
        name2 = [v53 name];
        [dictionary3 setObject:name2 forKeyedSubscript:@"task_name"];

        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_compute_agent_description(objc_msgSend(v53, "computeAgent"))}];
        [dictionary3 setObject:v56 forKeyedSubscript:@"compute_agent"];

        segments = [v53 segments];

        v144 = v53;
        v147 = dictionary3;
        if (segments)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          segments2 = [v53 segments];
          v60 = [segments2 countByEnumeratingWithState:&v165 objects:v183 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v166;
            do
            {
              for (j = 0; j != v61; ++j)
              {
                if (*v166 != v62)
                {
                  objc_enumerationMutation(segments2);
                }

                v64 = *(*(&v165 + 1) + 8 * j);
                v181[0] = @"segment_name";
                name3 = [v64 name];
                v182[0] = name3;
                v181[1] = @"compute_agent";
                v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_compute_agent_description(objc_msgSend(v64, "computeAgent"))}];
                v182[1] = v66;
                v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
                [array2 addObject:v67];
              }

              v61 = [segments2 countByEnumeratingWithState:&v165 objects:v183 count:16];
            }

            while (v61);
          }

          [v147 setObject:array2 forKeyedSubscript:@"segments"];
          v53 = v144;
        }

        else
        {
          [dictionary3 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"segments"];
        }

        array3 = [MEMORY[0x277CBEB18] array];
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        inputs = [v53 inputs];
        v70 = [inputs countByEnumeratingWithState:&v161 objects:v180 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v162;
          do
          {
            for (k = 0; k != v71; ++k)
            {
              if (*v162 != v72)
              {
                objc_enumerationMutation(inputs);
              }

              v74 = *(*(&v161 + 1) + 8 * k);
              dictionary4 = [MEMORY[0x277CBEB38] dictionary];
              resourceKey = [v74 resourceKey];
              [dictionary4 setObject:resourceKey forKeyedSubscript:@"input_name"];

              resolvedResourceKey = [v74 resolvedResourceKey];
              [dictionary4 setObject:resolvedResourceKey forKeyedSubscript:@"resolved_input_name"];

              v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_input_type_description(objc_msgSend(v74, "type"))}];
              [dictionary4 setObject:v78 forKeyedSubscript:@"input_type"];

              v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v74, "capacity")}];
              [dictionary4 setObject:v79 forKeyedSubscript:@"input_capacity"];

              sourceInputResourceKey = [v74 sourceInputResourceKey];

              if (sourceInputResourceKey)
              {
                sourceInputResourceKey2 = [v74 sourceInputResourceKey];
                [dictionary4 setObject:sourceInputResourceKey2 forKeyedSubscript:@"input_source_name"];
              }

              else
              {
                [dictionary4 setObject:&stru_2870D2A60 forKeyedSubscript:@"input_source_name"];
              }

              if ([v74 bufferExpiryOffset] != -1)
              {
                v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v74, "bufferExpiryOffset")}];
                [dictionary4 setObject:v82 forKeyedSubscript:@"buffer_expiry_offset"];
              }

              [array3 addObject:dictionary4];
            }

            v71 = [inputs countByEnumeratingWithState:&v161 objects:v180 count:16];
          }

          while (v71);
        }

        [v147 setObject:array3 forKeyedSubscript:@"inputs"];
        outputs = [v144 outputs];
        v84 = [outputs arrayByApplyingSelector:sel_resourceKey];
        [v147 setObject:v84 forKeyedSubscript:@"outputs"];

        waitBarriers = [v144 waitBarriers];
        v86 = [waitBarriers arrayByApplyingSelector:sel_name];
        [v147 setObject:v86 forKeyedSubscript:@"wait_barriers"];

        updateBarriers = [v144 updateBarriers];
        v88 = [updateBarriers arrayByApplyingSelector:sel_name];
        [v147 setObject:v88 forKeyedSubscript:@"update_barriers"];

        [array addObject:v147];
        v52 = v141 + 1;
      }

      while (v141 + 1 != v139);
      v139 = [obj countByEnumeratingWithState:&v169 objects:v184 count:16];
    }

    while (v139);
  }

  [v134 setObject:array forKeyedSubscript:@"tasks"];
  array4 = [MEMORY[0x277CBEB18] array];
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  sourceTasks = [(PSGraph *)selfCopy sourceTasks];
  v90 = [sourceTasks countByEnumeratingWithState:&v157 objects:v179 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v158;
    do
    {
      for (m = 0; m != v91; ++m)
      {
        if (*v158 != v92)
        {
          objc_enumerationMutation(sourceTasks);
        }

        v94 = *(*(&v157 + 1) + 8 * m);
        dictionary5 = [MEMORY[0x277CBEB38] dictionary];
        name4 = [v94 name];
        [dictionary5 setObject:name4 forKeyedSubscript:@"source_task_name"];

        outputs2 = [v94 outputs];
        v98 = [outputs2 arrayByApplyingSelector:sel_resourceKey];
        [dictionary5 setObject:v98 forKeyedSubscript:@"outputs"];

        [array4 addObject:dictionary5];
      }

      v91 = [sourceTasks countByEnumeratingWithState:&v157 objects:v179 count:16];
    }

    while (v91);
  }

  [v134 setObject:array4 forKeyedSubscript:@"source_tasks"];
  array5 = [MEMORY[0x277CBEB18] array];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  readers = [(PSGraph *)selfCopy readers];
  v99 = [readers countByEnumeratingWithState:&v153 objects:v178 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v154;
    do
    {
      for (n = 0; n != v100; ++n)
      {
        if (*v154 != v101)
        {
          objc_enumerationMutation(readers);
        }

        v103 = *(*(&v153 + 1) + 8 * n);
        dictionary6 = [MEMORY[0x277CBEB38] dictionary];
        name5 = [v103 name];
        [dictionary6 setObject:name5 forKeyedSubscript:@"reader_name"];

        input = [v103 input];
        resourceKey2 = [input resourceKey];
        [dictionary6 setObject:resourceKey2 forKeyedSubscript:@"input_name"];

        input2 = [v103 input];
        resolvedResourceKey2 = [input2 resolvedResourceKey];
        [dictionary6 setObject:resolvedResourceKey2 forKeyedSubscript:@"resolved_input_name"];

        v110 = MEMORY[0x277CCACA8];
        input3 = [v103 input];
        v112 = [v110 stringWithUTF8String:{ps_input_type_description(objc_msgSend(input3, "type"))}];
        [dictionary6 setObject:v112 forKeyedSubscript:@"input_type"];

        v113 = MEMORY[0x277CCABB0];
        input4 = [v103 input];
        v115 = [v113 numberWithUnsignedInteger:{objc_msgSend(input4, "capacity")}];
        [dictionary6 setObject:v115 forKeyedSubscript:@"input_capacity"];

        input5 = [v103 input];
        bufferExpiryOffset = [input5 bufferExpiryOffset];

        if (bufferExpiryOffset != -1)
        {
          v118 = MEMORY[0x277CCABB0];
          input6 = [v103 input];
          v120 = [v118 numberWithUnsignedLongLong:{objc_msgSend(input6, "bufferExpiryOffset")}];
          [dictionary6 setObject:v120 forKeyedSubscript:@"buffer_expiry_offset"];
        }

        [array5 addObject:dictionary6];
      }

      v100 = [readers countByEnumeratingWithState:&v153 objects:v178 count:16];
    }

    while (v100);
  }

  [v134 setObject:array5 forKeyedSubscript:@"readers"];
  array6 = [MEMORY[0x277CBEB18] array];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  writers = [(PSGraph *)selfCopy writers];
  v123 = [writers countByEnumeratingWithState:&v149 objects:v177 count:16];
  if (v123)
  {
    v124 = v123;
    v125 = *v150;
    do
    {
      for (ii = 0; ii != v124; ++ii)
      {
        if (*v150 != v125)
        {
          objc_enumerationMutation(writers);
        }

        v127 = *(*(&v149 + 1) + 8 * ii);
        dictionary7 = [MEMORY[0x277CBEB38] dictionary];
        name6 = [v127 name];
        [dictionary7 setObject:name6 forKeyedSubscript:@"writer_name"];

        output = [v127 output];
        resourceKey3 = [output resourceKey];
        [dictionary7 setObject:resourceKey3 forKeyedSubscript:@"output"];

        [array6 addObject:dictionary7];
      }

      v124 = [writers countByEnumeratingWithState:&v149 objects:v177 count:16];
    }

    while (v124);
  }

  [v134 setObject:array6 forKeyedSubscript:@"writers"];

  return v134;
}

@end