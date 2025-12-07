@interface HDDispatchSemaphore
- (HDDispatchSemaphore)initWithCount:(unint64_t)count options:(unint64_t)options debugIdentifier:(id)identifier;
- (void)waitWithPriority:(int64_t)priority;
@end

@implementation HDDispatchSemaphore

- (HDDispatchSemaphore)initWithCount:(unint64_t)count options:(unint64_t)options debugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = HDDispatchSemaphore;
  v10 = [(HDDispatchSemaphore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    objc_storeStrong(&v10->_debugIdentifier, identifier);
    v12 = dispatch_semaphore_create(count);
    semaphore = v11->_semaphore;
    v11->_semaphore = v12;

    v11->_waitCount = 0;
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_signpost = 0;
    v11->_isHighCount = 0;
  }

  return v11;
}

- (void)waitWithPriority:(int64_t)priority
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_options)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = self->_waitCount + 1;
    self->_waitCount = v4;
    if (v4 >= 0x14 && !self->_isHighCount)
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
          v17 = 136446210;
          v18 = v10;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v17, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_options)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = self->_waitCount - 1;
    self->_waitCount = v11;
    if (v11 <= 4 && self->_isHighCount)
    {
      self->_isHighCount = 0;
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v13 = v12;
        v14 = v13;
        v15 = self->_signpost;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          v16 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
          v17 = 136446210;
          v18 = v16;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v14, OS_SIGNPOST_INTERVAL_END, v15, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v17, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end