@interface NPKLeakyBucket
+ (id)throttleWithEventsTimeInterval:(double)interval description:(id)description;
- (BOOL)addEvent:(id)event;
- (NPKLeakyBucket)initWithEventsTimeInterval:(double)interval maxBucketSize:(unint64_t)size description:(id)description;
- (void)_insideLock_scheduleNextEventLeakFromReferenceDate:(id)date;
- (void)dealloc;
- (void)flush;
@end

@implementation NPKLeakyBucket

- (NPKLeakyBucket)initWithEventsTimeInterval:(double)interval maxBucketSize:(unint64_t)size description:(id)description
{
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = NPKLeakyBucket;
  v9 = [(NPKLeakyBucket *)&v15 init];
  if (v9)
  {
    if (interval <= 0.0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"drop time interval must be longer than 0.0"];
    }

    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_eventsTimeInterval = interval;
    v9->_maxBucketSize = size;
    v10 = [descriptionCopy copy];
    description = v9->_description;
    v9->_description = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = v9->_events;
    v9->_events = v12;
  }

  return v9;
}

+ (id)throttleWithEventsTimeInterval:(double)interval description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithEventsTimeInterval:0 maxBucketSize:descriptionCopy description:interval];

  return v6;
}

- (void)dealloc
{
  [(NSTimer *)self->_eventTimer invalidate];
  v3.receiver = self;
  v3.super_class = NPKLeakyBucket;
  [(NPKLeakyBucket *)&v3 dealloc];
}

- (BOOL)addEvent:(id)event
{
  eventCopy = event;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = __27__NPKLeakyBucket_addEvent___block_invoke;
  v10 = &unk_2799475E8;
  selfCopy = self;
  v5 = eventCopy;
  v12 = v5;
  v13 = &v14;
  v6 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v6);

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __27__NPKLeakyBucket_addEvent___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) count];
  v3 = *(a1 + 32);
  if (v2 || (v12 = *(v3 + 24)) != 0 && (v12 = [v12 timeIntervalSinceNow], v3 = *(a1 + 32), *(v3 + 48) >= -v13))
  {
    v4 = [*(v3 + 8) count];
    if (v4 >= *(*(a1 + 32) + 56))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v22 = pk_General_log(v4);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v25 = pk_General_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v27 = *(v26 + 56);
          v28 = *(v26 + 16);
          v29 = 134218242;
          v30 = v27;
          v31 = 2112;
          v32 = v28;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Reach size limit of:%lu, dropping income event, bucket:%@", &v29, 0x16u);
        }
      }
    }

    else
    {
      v5 = pk_General_log(v4);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v8 = pk_General_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 32) + 16);
          v29 = 138412290;
          v30 = v9;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Added event to bucket: %@", &v29, 0xCu);
        }
      }

      v10 = *(*(a1 + 32) + 8);
      v11 = _Block_copy(*(a1 + 40));
      [v10 addObject:v11];

      if ([*(*(a1 + 32) + 8) count] == 1)
      {
        [*(a1 + 32) _insideLock_scheduleNextEventLeakFromReferenceDate:*(*(a1 + 32) + 24)];
      }
    }
  }

  else
  {
    v14 = pk_General_log(v12);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_General_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 16);
        v29 = 138412290;
        v30 = v18;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Dropping event immediately bucket: %@", &v29, 0xCu);
      }
    }

    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = *(a1 + 32);
    v21 = *(v20 + 24);
    *(v20 + 24) = v19;

    (*(*(a1 + 40) + 16))();
  }
}

- (void)flush
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __23__NPKLeakyBucket_flush__block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  os_unfair_lock_lock(&self->_lock);
  __23__NPKLeakyBucket_flush__block_invoke(v3);
  os_unfair_lock_unlock(&self->_lock);
}

void *__23__NPKLeakyBucket_flush__block_invoke(void *result)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = pk_General_log(result);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1[4] + 16);
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Flush bucket:%@", &v11, 0xCu);
      }
    }

    v7 = v1[4];
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;

    [*(v1[4] + 32) invalidate];
    v9 = v1[4];
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;

    return [*(v1[4] + 8) removeAllObjects];
  }

  return result;
}

- (void)_insideLock_scheduleNextEventLeakFromReferenceDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = self->_eventTimer == 0;
  v6 = pk_General_log(dateCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v7)
    {
      v11 = pk_General_log(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(NSMutableArray *)self->_events count];
        description = self->_description;
        *buf = 134218242;
        v23 = v12;
        v24 = 2112;
        v25 = description;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Scheduling event, pending events:%lu at bucket: %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    v14 = [dateCopy dateByAddingTimeInterval:self->_eventsTimeInterval];
    [v14 timeIntervalSinceNow];
    v16 = v15;
    v17 = MEMORY[0x277CBEBB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke;
    v20[3] = &unk_279948E48;
    objc_copyWeak(&v21, buf);
    v20[4] = self;
    v18 = [v17 scheduledTimerWithTimeInterval:0 repeats:v20 block:v16];
    eventTimer = self->_eventTimer;
    self->_eventTimer = v18;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_description;
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: events timer exist, we will not schedule a new one at bucket:%@", buf, 0xCu);
    }
  }
}

void __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *&WeakRetained[8]._os_unfair_lock_opaque;
    *&WeakRetained[8]._os_unfair_lock_opaque = 0;

    v6 = pk_General_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_General_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(*(a1 + 32) + 8) count];
        v11 = *(*(a1 + 32) + 16);
        *buf = 134218242;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Scheduled eventfire, pending events:%lu at bucket: %@", buf, 0x16u);
      }
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke_7;
    v12[3] = &unk_279944F98;
    v12[4] = v3;
    os_unfair_lock_lock(v3 + 10);
    __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke_7(v12);
    os_unfair_lock_unlock(v3 + 10);
  }
}

void __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke_7(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) firstObject];
  if (v5)
  {
    v2 = [MEMORY[0x277CBEAA8] now];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
    v5[2](v5);
  }

  if ([*(*(a1 + 32) + 8) count])
  {
    [*(a1 + 32) _insideLock_scheduleNextEventLeakFromReferenceDate:*(*(a1 + 32) + 24)];
  }
}

@end