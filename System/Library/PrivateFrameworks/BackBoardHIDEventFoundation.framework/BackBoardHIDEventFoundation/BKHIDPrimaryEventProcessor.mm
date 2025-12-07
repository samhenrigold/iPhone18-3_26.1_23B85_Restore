@interface BKHIDPrimaryEventProcessor
- (BKHIDPrimaryEventProcessor)initWithSubProcessors:(id)processors[44] defaultProcessor:(id)processor;
- (id)_eventProcessorsForEventType:(unsigned int)type;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (int64_t)processEvent:(__IOHIDEvent *)event withContext:(id)context buffer:(id)buffer sequence:(id)sequence sender:(id)sender dispatcher:(id)dispatcher resolution:(id)resolution;
- (void)bufferDidEndDraining:(id)draining;
- (void)bufferWillBeginDraining:(id)draining;
- (void)bufferingDidAddNewBuffers:(id)buffers;
- (void)postEvent:(__IOHIDEvent *)event withContext:(id)context toResolution:(id)resolution fromSequence:(id)sequence;
@end

@implementation BKHIDPrimaryEventProcessor

- (id)_eventProcessorsForEventType:(unsigned int)type
{
  v3 = [(NSArray *)self->_subProcessors[type] copy];

  return v3;
}

- (void)bufferDidEndDraining:(id)draining
{
  v15 = *MEMORY[0x277D85DE8];
  drainingCopy = draining;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_allBufferedEventProcessors;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) bufferDidEndDraining:{drainingCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)bufferWillBeginDraining:(id)draining
{
  v15 = *MEMORY[0x277D85DE8];
  drainingCopy = draining;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_allBufferedEventProcessors;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) bufferWillBeginDraining:{drainingCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)bufferingDidAddNewBuffers:(id)buffers
{
  v15 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_allBufferedEventProcessors;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) bufferingDidAddNewBuffers:{buffersCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)postEvent:(__IOHIDEvent *)event withContext:(id)context toResolution:(id)resolution fromSequence:(id)sequence
{
  contextCopy = context;
  resolutionCopy = resolution;
  sequenceCopy = sequence;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Something is misconfigured --BKHIDPrimaryEventProcessor should never be messaged directly by a sequence"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = 138544642;
    v18 = v14;
    v19 = 2114;
    v20 = v16;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = @"BKHIDPrimaryEventProcessor.m";
    v25 = 1024;
    v26 = 96;
    v27 = 2114;
    v28 = v13;
    _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v17, 0x3Au);
  }

  [v13 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (int64_t)processEvent:(__IOHIDEvent *)event withContext:(id)context buffer:(id)buffer sequence:(id)sequence sender:(id)sender dispatcher:(id)dispatcher resolution:(id)resolution
{
  contextCopy = context;
  bufferCopy = buffer;
  sequenceCopy = sequence;
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  resolutionCopy = resolution;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Something is misconfigured --BKHIDPrimaryEventProcessor should never be messaged directly by a sequence"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = NSStringFromSelector(a2);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v26 = 138544642;
    v27 = v22;
    v28 = 2114;
    v29 = v24;
    v30 = 2048;
    selfCopy = self;
    v32 = 2114;
    v33 = @"BKHIDPrimaryEventProcessor.m";
    v34 = 1024;
    v35 = 91;
    v36 = 2114;
    v37 = v21;
    _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v26, 0x3Au);
  }

  [v21 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v24 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = self->_subProcessors[IOHIDEventGetType()];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v12)
  {

LABEL_13:
    defaultProcessor = self->_defaultProcessor;
    if (defaultProcessor)
    {
      v16 = [(BKHIDEventProcessor *)defaultProcessor processEvent:event sender:senderCopy dispatcher:dispatcherCopy];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_16;
  }

  v13 = v12;
  v14 = *v20;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = [*(*(&v19 + 1) + 8 * i) processEvent:event sender:senderCopy dispatcher:{dispatcherCopy, v19}];
      if (v16 == 1)
      {

        goto LABEL_16;
      }
    }

    v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_16:

  return v16;
}

- (BKHIDPrimaryEventProcessor)initWithSubProcessors:(id)processors[44] defaultProcessor:(id)processor
{
  v32 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  v30.receiver = self;
  v30.super_class = BKHIDPrimaryEventProcessor;
  v7 = [(BKHIDPrimaryEventProcessor *)&v30 init];
  if (v7)
  {
    v22 = processorCopy;
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = 0;
    p_isa = &v7->super.isa;
    bufferedSubProcessors = v7->_bufferedSubProcessors;
    subProcessors = v7->_subProcessors;
    do
    {
      v10 = processors[v9];
      v11 = v10;
      objc_storeStrong(&subProcessors[v9], v10);
      array = [MEMORY[0x277CBEB18] array];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v8 addObject:v18];
              [(NSArray *)array addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v15);
      }

      v19 = bufferedSubProcessors[v9];
      bufferedSubProcessors[v9] = array;

      ++v9;
    }

    while (v9 != 44);
    v7 = p_isa;
    objc_storeStrong(p_isa + 90, v8);
    objc_storeStrong(p_isa + 45, processor);
    processorCopy = v22;
    if (objc_opt_respondsToSelector())
    {
      objc_storeStrong(p_isa + 91, processor);
    }
  }

  return v7;
}

@end