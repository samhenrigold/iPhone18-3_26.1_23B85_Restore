@interface SAAutomaticallyInvalidatingAssertion
- (BOOL)_setAutomaticallyInvalidatable:(BOOL)invalidatable lockingWithKey:(id)key reason:(id)reason;
- (SAAutomaticallyInvalidatingAssertion)initWithInvalidationInterval:(double)interval;
- (id)_descriptionConstituents;
- (void)_invalidateInvalidationTimerIfNecessary;
- (void)_scheduleInvalidationTimerIfNecessary;
- (void)resetAutomaticInvalidationTimer;
@end

@implementation SAAutomaticallyInvalidatingAssertion

void __77__SAAutomaticallyInvalidatingAssertion__scheduleInvalidationTimerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 7);
    if (v5 == v6)
    {
      *(WeakRetained + 7) = 0;
    }

    [v4 invalidateWithReason:@"automatic invalidation interval elapsed"];
  }
}

- (id)_descriptionConstituents
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_invalidationInterval];
  [(NSTimer *)self->_invalidationTimer isValid];
  v5 = NSStringFromBOOL();
  v6 = NSStringFromBOOL();
  v7 = [v3 initWithObjectsAndKeys:{v4, @"invalidation interval", v5, @"timer scheduled", v6, @"locked", 0}];

  if ([(NSString *)self->_lockReason length])
  {
    [v7 setValue:self->_lockReason forKey:@"lock reason"];
  }

  v11.receiver = self;
  v11.super_class = SAAutomaticallyInvalidatingAssertion;
  _descriptionConstituents = [(SAAssertion *)&v11 _descriptionConstituents];
  v9 = [_descriptionConstituents arrayByAddingObject:v7];

  return v9;
}

- (SAAutomaticallyInvalidatingAssertion)initWithInvalidationInterval:(double)interval
{
  v5.receiver = self;
  v5.super_class = SAAutomaticallyInvalidatingAssertion;
  result = [(SAAssertion *)&v5 init];
  if (result)
  {
    result->_invalidationInterval = interval;
  }

  return result;
}

- (void)resetAutomaticInvalidationTimer
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SAAssertion *)selfCopy isValid]&& [(NSTimer *)selfCopy->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = selfCopy;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer reset: %{public}@", &v4, 0xCu);
    }

    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _invalidateInvalidationTimerIfNecessary];
    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _scheduleInvalidationTimerIfNecessary];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_setAutomaticallyInvalidatable:(BOOL)invalidatable lockingWithKey:(id)key reason:(id)reason
{
  invalidatableCopy = invalidatable;
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(SAAssertion *)selfCopy isValid])
  {
    goto LABEL_11;
  }

  automaticallyInvalidatable = selfCopy->_automaticallyInvalidatable;
  key = selfCopy->_key;
  if (automaticallyInvalidatable == invalidatableCopy)
  {
    v13 = 0;
    if (!keyCopy || key)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (key)
  {
    if ([(NSString *)key isEqualToString:keyCopy])
    {
      automaticallyInvalidatable = selfCopy->_automaticallyInvalidatable;
      goto LABEL_9;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_21;
  }

LABEL_9:
  v13 = automaticallyInvalidatable != invalidatableCopy;
  selfCopy->_automaticallyInvalidatable = invalidatableCopy;
  if (invalidatableCopy)
  {
    v14 = 0;
  }

  else
  {
    v14 = [keyCopy copy];
  }

  v15 = selfCopy->_key;
  selfCopy->_key = v14;

  v16 = SALogSystem;
  if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy->_automaticallyInvalidatable)
    {
      v17 = @"enabled";
    }

    else
    {
      v17 = @"disabled";
    }

    v19 = 138412546;
    v20 = v17;
    v21 = 2114;
    v22 = selfCopy;
    _os_log_impl(&dword_26C47D000, v16, OS_LOG_TYPE_DEFAULT, "Automatic invalidation %@: %{public}@", &v19, 0x16u);
  }

  if (selfCopy->_automaticallyInvalidatable)
  {
    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _scheduleInvalidationTimerIfNecessary];
  }

  else
  {
    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _invalidateInvalidationTimerIfNecessary];
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  return v13;
}

- (void)_scheduleInvalidationTimerIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SAAssertion *)selfCopy isValid]&& ![(NSTimer *)selfCopy->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = selfCopy;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling automatic invalidation timer: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    v4 = MEMORY[0x277CBEBB8];
    invalidationInterval = selfCopy->_invalidationInterval;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__SAAutomaticallyInvalidatingAssertion__scheduleInvalidationTimerIfNecessary__block_invoke;
    v8[3] = &unk_279D32180;
    objc_copyWeak(&v9, buf);
    v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:invalidationInterval];
    invalidationTimer = selfCopy->_invalidationTimer;
    selfCopy->_invalidationTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);
}

- (void)_invalidateInvalidationTimerIfNecessary
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSTimer *)selfCopy->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = selfCopy;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer invalidated: %{public}@", &v5, 0xCu);
    }

    [(NSTimer *)selfCopy->_invalidationTimer invalidate];
    invalidationTimer = selfCopy->_invalidationTimer;
    selfCopy->_invalidationTimer = 0;
  }

  objc_sync_exit(selfCopy);
}

@end