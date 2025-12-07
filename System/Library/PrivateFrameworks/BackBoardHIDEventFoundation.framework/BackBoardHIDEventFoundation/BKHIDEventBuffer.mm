@interface BKHIDEventBuffer
- (BKHIDEventBuffer)initWithDispatchTarget:(id)target;
- (id)drainAllEvents;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)appendEvent:(__IOHIDEvent *)event sender:(id)sender sequence:(id)sequence additionalContext:(id)context;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKHIDEventBuffer

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_buffer;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    buffer = self->_buffer;
    self->_buffer = 0;

    dispatchTarget = self->_dispatchTarget;
    self->_dispatchTarget = 0;
  }
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKHIDEventBuffer.m";
      v17 = 1024;
      v18 = 76;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC2074);
  }

  v8.receiver = self;
  v8.super_class = BKHIDEventBuffer;
  [(BKHIDEventBuffer *)&v8 dealloc];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__BKHIDEventBuffer_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2784F7270;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:self block:v6];
}

id __49__BKHIDEventBuffer_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"dispatchTarget"];
  if ([*(*(a1 + 40) + 32) count])
  {
    v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"bufferingPIDs"];
  }

  v4 = [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 8) withName:{"count"), @"eventCount"}];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 17) withName:@"allBufferingClientsTerminated" ifEqualTo:1];
}

- (id)drainAllEvents
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_buffer count];
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_223CBE000, v3, OS_LOG_TYPE_DEFAULT, "Draining buffer with %d events", v10, 8u);
  }

  v5 = self->_buffer;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
  buffer = self->_buffer;
  self->_buffer = v6;

  bufferingPIDs = self->_bufferingPIDs;
  self->_bufferingPIDs = 0;

  return v5;
}

- (void)appendEvent:(__IOHIDEvent *)event sender:(id)sender sequence:(id)sequence additionalContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  sequenceCopy = sequence;
  contextCopy = context;
  if (!event)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"event != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v36 = v20;
      v37 = 2114;
      v38 = v22;
      v39 = 2048;
      selfCopy4 = self;
      v41 = 2114;
      v42 = @"BKHIDEventBuffer.m";
      v43 = 1024;
      v44 = 82;
      v45 = 2114;
      v46 = v19;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEA94CLL);
  }

  if (!senderCopy)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"sender != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v36 = v24;
      v37 = 2114;
      v38 = v26;
      v39 = 2048;
      selfCopy4 = self;
      v41 = 2114;
      v42 = @"BKHIDEventBuffer.m";
      v43 = 1024;
      v44 = 83;
      v45 = 2114;
      v46 = v23;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEAA44);
  }

  if (!sequenceCopy)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"sequence != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v36 = v28;
      v37 = 2114;
      v38 = v30;
      v39 = 2048;
      selfCopy4 = self;
      v41 = 2114;
      v42 = @"BKHIDEventBuffer.m";
      v43 = 1024;
      v44 = 84;
      v45 = 2114;
      v46 = v27;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEAB3CLL);
  }

  v14 = contextCopy;
  senderDescriptor = [senderCopy senderDescriptor];

  if (!senderDescriptor)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[sender senderDescriptor] != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v36 = v32;
      v37 = 2114;
      v38 = v34;
      v39 = 2048;
      selfCopy4 = self;
      v41 = 2114;
      v42 = @"BKHIDEventBuffer.m";
      v43 = 1024;
      v44 = 85;
      v45 = 2114;
      v46 = v31;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CEAC34);
  }

  if ([(NSMutableArray *)self->_buffer count]> 0x100)
  {
    v16 = BKLogEventDelivery();
    if (!os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v17 = BKSHIDEventGetConciseDescription();
    *buf = 138543362;
    v36 = v17;
    _os_log_error_impl(&dword_223CBE000, &v16->super, OS_LOG_TYPE_ERROR, "BUFFER: is full -- dropping event (%{public}@)", buf, 0xCu);
  }

  else
  {
    v16 = objc_alloc_init(BKBufferedEventEntry);
    [(BKBufferedEventEntry *)v16 setEvent:event];
    [(BKBufferedEventEntry *)v16 setSender:senderCopy];
    [(BKBufferedEventEntry *)v16 setSequence:sequenceCopy];
    if (v14)
    {
      [(BKBufferedEventEntry *)v16 setAdditionalContext:v14];
    }

    [(NSMutableArray *)self->_buffer addObject:v16];
    v17 = BKLogEventDelivery();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = BKSHIDEventGetConciseDescription();
      *buf = 138543362;
      v36 = v18;
      _os_log_debug_impl(&dword_223CBE000, v17, OS_LOG_TYPE_DEBUG, "BUFFER: appending (%{public}@)", buf, 0xCu);
    }
  }

LABEL_12:
}

- (BKHIDEventBuffer)initWithDispatchTarget:(id)target
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = BKHIDEventBuffer;
  v6 = [(BKHIDEventBuffer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchTarget, target);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:256];
    buffer = v7->_buffer;
    v7->_buffer = v8;
  }

  return v7;
}

@end