@interface HDPrioritySemaphore
- (HDPrioritySemaphore)initWithCount:(unint64_t)count options:(unint64_t)options debugIdentifier:(id)identifier;
- (unint64_t)pendingCount;
- (void)signal;
- (void)waitForPendingCount:(unint64_t)count;
- (void)waitWithPriority:(int64_t)priority;
@end

@implementation HDPrioritySemaphore

- (void)signal
{
  v5 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_fault_impl(&dword_25156C000, selfCopy, OS_LOG_TYPE_FAULT, "HDPrioritySemaphore %{public}@ signaled with 0 count", &v3, 0xCu);
}

- (HDPrioritySemaphore)initWithCount:(unint64_t)count options:(unint64_t)options debugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = HDPrioritySemaphore;
  v10 = [(HDPrioritySemaphore *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    objc_storeStrong(&v10->_debugIdentifier, identifier);
    v11->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    emptyTabCache = v11->_emptyTabCache;
    v11->_emptyTabCache = v12;

    v14 = [[HDPriorityQueue alloc] initWithComparisonBlock:&__block_literal_global_3];
    pendingQueue = v11->_pendingQueue;
    v11->_pendingQueue = v14;

    v11->_activeThreadLimit = count;
    v11->_activeThreadCount = 0;
    v11->_requireInitialSignal = 0;
    v11->_signpost = 0;
    v11->_isHighCount = 0;
  }

  return v11;
}

uint64_t __61__HDPrioritySemaphore_initWithCount_options_debugIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 priority];
  if (v6 == [v4 priority])
  {
    v7 = [v5 requestedDate];

    v8 = [v4 requestedDate];
    if ([v7 hk_isBeforeDate:v8])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v10 = [v5 priority];

    if (v10 > [v4 priority])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (void)waitWithPriority:(int64_t)priority
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ((self->_options & 1) != 0 && [(HDPriorityQueue *)self->_pendingQueue count]>= 0x14 && !self->_isHighCount)
  {
    self->_isHighCount = 1;
    v5 = MEMORY[0x277CCC2A0];
    self->_signpost = _HKLogSignpostIDGenerate();
    _HKInitializeLogging();
    v6 = *v5;
    if (os_signpost_enabled(v6))
    {
      v7 = v6;
      v8 = v7;
      signpost = self->_signpost;
      if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        v10 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
        v25 = 136446210;
        v26 = v10;
        _os_signpost_emit_with_name_impl(&dword_25156C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v25, 0xCu);
      }
    }
  }

  if (self->_requireInitialSignal || (activeThreadCount = self->_activeThreadCount, activeThreadCount >= self->_activeThreadLimit))
  {
    anyObject = [(NSMutableSet *)self->_emptyTabCache anyObject];
    v13 = anyObject;
    if (anyObject)
    {
      v14 = anyObject;
    }

    else
    {
      v14 = objc_alloc_init(_HDSemaphoreTab);
    }

    v15 = v14;

    [(NSMutableSet *)self->_emptyTabCache removeObject:v15];
    [(_HDSemaphoreTab *)v15 setSignaled:0];
    [(_HDSemaphoreTab *)v15 setPriority:priority];
    date = [MEMORY[0x277CBEAA8] date];
    [(_HDSemaphoreTab *)v15 setRequestedDate:date];

    [(HDPriorityQueue *)self->_pendingQueue insert:v15];
    os_unfair_lock_unlock(&self->_lock);
    condition = [(_HDSemaphoreTab *)v15 condition];
    [condition lock];

    if (![(_HDSemaphoreTab *)v15 signaled])
    {
      do
      {
        condition2 = [(_HDSemaphoreTab *)v15 condition];
        [condition2 wait];
      }

      while (![(_HDSemaphoreTab *)v15 signaled]);
    }

    condition3 = [(_HDSemaphoreTab *)v15 condition];
    [condition3 unlock];

    os_unfair_lock_lock(&self->_lock);
    ++self->_activeThreadCount;
    [(NSMutableSet *)self->_emptyTabCache addObject:v15];
    if ((self->_options & 1) != 0 && [(HDPriorityQueue *)self->_pendingQueue count]<= 4 && self->_isHighCount)
    {
      self->_isHighCount = 0;
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v21 = v20;
        v22 = v21;
        v23 = self->_signpost;
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          v24 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
          v25 = 136446210;
          v26 = v24;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v22, OS_SIGNPOST_INTERVAL_END, v23, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v25, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_activeThreadCount = activeThreadCount + 1;
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (unint64_t)pendingCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDPriorityQueue *)self->_pendingQueue count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)waitForPendingCount:(unint64_t)count
{
  while ([(HDPrioritySemaphore *)self pendingCount]< count)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:0.01];
  }
}

@end