@interface BKSHIDEventDeliveryPolicyObserver
- (BKSHIDEventDeferringEnvironment)deferringEnvironment;
- (BKSHIDEventDeferringSelectionPathIdentifier)selectionPathIdentifier;
- (BKSHIDEventDeferringToken)deferringToken;
- (BKSHIDEventDeliveryPolicy)currentPolicy;
- (BKSHIDEventDeliveryPolicyObserver)init;
- (BKSHIDEventDisplay)display;
- (BOOL)canReceiveEvents;
- (BOOL)finalStringTokenInChain;
- (NSString)debugDescription;
- (id)_initWithObserver:(id)observer;
- (id)_lock_buildCurrentPolicy;
- (id)_lock_description;
- (id)_lock_effectivePolicyObservation;
- (id)_lock_updatePolicyWithBlock:(id)block;
- (int64_t)policyStatus;
- (void)_lock_appendDescriptionToStream:(id)stream;
- (void)_notifyAsyncObservers:(id)observers didUpdatePolicy:(id)policy;
- (void)_replacePolicySpecificationObject:(id)object withObject:(id)withObject replaceIvarBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)deferringResolutionsChanged;
- (void)removeObserver:(id)observer;
- (void)setDeferringEnvironment:(id)environment;
- (void)setDeferringToken:(id)token;
- (void)setDisplay:(id)display;
- (void)setSelectionPathIdentifier:(id)identifier;
@end

@implementation BKSHIDEventDeliveryPolicyObserver

void __64__BKSHIDEventDeliveryPolicyObserver_deferringResolutionsChanged__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) deferringObservations];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (void)deferringResolutionsChanged
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __64__BKSHIDEventDeliveryPolicyObserver_deferringResolutionsChanged__block_invoke;
  v24 = &unk_1E6F477B8;
  selfCopy = self;
  v3 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_updatePolicyWithBlock:?];
  v4 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = BKLogEventDelivery();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = objc_opt_class();
          *buf = 134218498;
          selfCopy2 = self;
          v28 = 2114;
          v29 = v13;
          v30 = 2048;
          v31 = v10;
          v14 = v13;
          _os_log_debug_impl(&dword_186345000, v11, OS_LOG_TYPE_DEBUG, "observerPolicyDidChange: %p -> <%{public}@: %p>", buf, 0x20u);
        }

        if (objc_opt_respondsToSelector())
        {
          [v10 observerDeliveryPolicyDidChange:?];
        }

        else if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          asyncObserverCalloutQueue = self->_asyncObserverCalloutQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__BKSHIDEventDeliveryPolicyObserver_deferringResolutionsChanged__block_invoke_83;
          block[3] = &unk_1E6F469E8;
          block[4] = v10;
          block[5] = self;
          v16 = v4;
          dispatch_async(asyncObserverCalloutQueue, block);
        }

        v9 = (v9 + 1);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }
}

- (id)_lock_effectivePolicyObservation
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = self->_lock_observations;
  v4 = [NSSet countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = MEMORY[0];
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (MEMORY[0] != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(8 * v8);
      v10 = getpid();
      if (v10 == [v9 pid])
      {
        lock_display = self->_lock_display;
        if (!lock_display || ([v9 display], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[BKSHIDEventDisplay isEqual:](lock_display, "isEqual:"), v12, v13))
        {
          lock_environment = self->_lock_environment;
          if (!lock_environment || ([v9 environment], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[BKSHIDEventDeferringEnvironment isEqual:](lock_environment, "isEqual:"), v15, v16))
          {
            lock_token = self->_lock_token;
            if (!lock_token || ([v9 token], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[BKSHIDEventDeferringToken isEqual:](lock_token, "isEqual:"), v18, v19))
            {
              if (!self->_lock_selectionPathIdentifier || ([v9 selectionPath], v20 = objc_claimAutoreleasedReturnValue(), v21 = -[BKSHIDEventDeferringSelectionPathIdentifier isEqual:](self->_lock_selectionPathIdentifier, "isEqual:"), v20, v21))
              {
                policyStatus = [v9 policyStatus];
                if (policyStatus > [v6 policyStatus])
                {
                  v23 = v9;

                  v6 = v23;
                  if (policyStatus == 2)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      if (v5 == ++v8)
      {
        v5 = [NSSet countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
        v23 = v6;
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_lock_buildCurrentPolicy
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(BKSHIDEventObserver *)self->_observer hasReceivedLatestDeferringObservationsFromServer])
  {
    _lock_effectivePolicyObservation = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_effectivePolicyObservation];
    v4 = [[BKSHIDEventDeliveryPolicy alloc] _initWithPolicyObservation:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BKSHIDEventDeliveryPolicyObserver)init
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v20 = 1024;
      v21 = 59;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18634AB80);
  }

  v5 = +[BKSHIDEventObserver sharedInstance];
  v6 = [(BKSHIDEventDeliveryPolicyObserver *)self _initWithObserver:?];

  return v6;
}

- (id)_lock_description
{
  if (_lock_description_onceToken != -1)
  {
    dispatch_once(&_lock_description_onceToken, &__block_literal_global_2678);
  }

  v2 = MEMORY[0x1E698E688];

  return [v2 descriptionForRootObject:? withStyle:?];
}

uint64_t __54__BKSHIDEventDeliveryPolicyObserver__lock_description__block_invoke()
{
  v0 = [MEMORY[0x1E698E690] build:?];
  v1 = _lock_description_lockedStyle;
  _lock_description_lockedStyle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __54__BKSHIDEventDeliveryPolicyObserver__lock_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 setWithObject:?];
  [v3 setClientInformation:?];
}

- (int64_t)policyStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  deferringPolicyStatus = [(BKSHIDEventDeliveryPolicy *)self->_lock_currentPolicy deferringPolicyStatus];
  os_unfair_lock_unlock(&self->_lock);
  return deferringPolicyStatus;
}

- (BOOL)canReceiveEvents
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDEventDeliveryPolicy *)self->_lock_currentPolicy deferringPolicyStatus]== 2;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_observingAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeliveryPolicyObserver;
  [(BKSHIDEventDeliveryPolicyObserver *)&v3 dealloc];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  style = [streamCopy style];
  clientInformation = [style clientInformation];
  v6 = [clientInformation containsObject:?];

  p_lock = &self->_lock;
  if (v6)
  {
    os_unfair_lock_assert_owner(p_lock);
    [(BKSHIDEventDeliveryPolicyObserver *)self _lock_appendDescriptionToStream:?];
  }

  else
  {
    os_unfair_lock_lock(p_lock);
    [(BKSHIDEventDeliveryPolicyObserver *)self _lock_appendDescriptionToStream:?];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_lock_appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  [streamCopy appendProem:? block:?];
  if ([streamCopy hasDebugStyle])
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = streamCopy;
    [v6 appendBodySectionWithName:v5 block:{3221225472, __69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke_2, &unk_1E6F47C78, self}];
  }
}

void __69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  v4 = v3 != 0;
  if (v3)
  {
    v5 = [*(a1 + 40) appendObject:? withName:?];
    v2 = *(a1 + 32);
  }

  if (v2[6])
  {
    v6 = [*(a1 + 40) appendObject:? withName:?];
    v2 = *(a1 + 32);
    v4 = 1;
  }

  if (v2[7])
  {
    v7 = [*(a1 + 40) appendObject:? withName:?];
    if (!*(*(a1 + 32) + 64))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v2[8])
  {
LABEL_9:
    v8 = [*(a1 + 40) appendObject:? withName:?];
    goto LABEL_10;
  }

  if (!v4)
  {
    [*(a1 + 40) appendString:? withName:?];
  }

LABEL_10:
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(v9 + 80);
  if (v11)
  {
    v12 = NSStringFromBKSHIDEventDeferringPolicyStatus([v11 deferringPolicyStatus]);
    [v10 appendString:? withName:?];
  }

  else
  {

    [v10 appendString:? withName:?];
  }
}

void *__69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) count])
  {
    v2 = [*(a1 + 40) appendObject:? withName:?];
  }

  result = [*(*(a1 + 32) + 88) count];
  if (result)
  {
    return [*(a1 + 40) appendObject:? withName:?];
  }

  return result;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v4 = [v2 descriptionForRootObject:? withStyle:?];

  return v4;
}

- (id)_lock_updatePolicyWithBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v28 = 1024;
      v29 = 276;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186369728);
  }

  v6 = blockCopy;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = self->_lock_currentPolicy;
  v6[2](v6);
  _lock_buildCurrentPolicy = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_buildCurrentPolicy];
  lock_currentPolicy = self->_lock_currentPolicy;
  self->_lock_currentPolicy = _lock_buildCurrentPolicy;

  if (BSEqualObjects())
  {
    v10 = 0;
  }

  else
  {
    v11 = BKLogEventDelivery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _lock_description = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_description];
      v13 = NSStringFromBKSHIDEventDeferringPolicyStatus([(BKSHIDEventDeliveryPolicy *)v7 deferringPolicyStatus]);
      *buf = 138543618;
      v21 = _lock_description;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_186345000, v11, OS_LOG_TYPE_DEFAULT, "policyStatus:%{public}@ was:%{public}@", buf, 0x16u);
    }

    allObjects = [(NSHashTable *)self->_lock_observers allObjects];
    v10 = [allObjects copy];
  }

  return v10;
}

- (void)_notifyAsyncObservers:(id)observers didUpdatePolicy:(id)policy
{
  v31 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  policyCopy = policy;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [observersCopy countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v18 = observersCopy;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(observersCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = BKLogEventDelivery();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = objc_opt_class();
          *buf = 134218498;
          selfCopy = self;
          v27 = 2114;
          v28 = v15;
          v29 = 2048;
          v30 = v12;
          v16 = policyCopy;
          v17 = v15;
          _os_log_debug_impl(&dword_186345000, v13, OS_LOG_TYPE_DEBUG, "observerPolicyDidChange: %p -> <%{public}@: %p>", buf, 0x20u);

          policyCopy = v16;
          observersCopy = v18;
        }

        if (objc_opt_respondsToSelector())
        {
          asyncObserverCalloutQueue = self->_asyncObserverCalloutQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __75__BKSHIDEventDeliveryPolicyObserver__notifyAsyncObservers_didUpdatePolicy___block_invoke;
          block[3] = &unk_1E6F469E8;
          block[4] = v12;
          block[5] = self;
          v20 = policyCopy;
          dispatch_async(asyncObserverCalloutQueue, block);
        }

        v11 = (v11 + 1);
      }

      while (v9 != v11);
      v9 = [observersCopy countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }
}

- (void)_replacePolicySpecificationObject:(id)object withObject:(id)withObject replaceIvarBlock:(id)block
{
  blockCopy = block;
  withObjectCopy = withObject;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v11 = BSEqualObjects();

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = blockCopy;
    v12 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_updatePolicyWithBlock:v14, 3221225472, __99__BKSHIDEventDeliveryPolicyObserver__replacePolicySpecificationObject_withObject_replaceIvarBlock___block_invoke, &unk_1E6F469C0, self];
  }

  v13 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    [BKSHIDEventDeliveryPolicyObserver _notifyAsyncObservers:"_notifyAsyncObservers:didUpdatePolicy:" didUpdatePolicy:?];
  }
}

- (void)removeObserver:(id)observer
{
  v22 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v18 = 1024;
      v19 = 197;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186369C44);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:?];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer
{
  v26 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v22 = 1024;
      v23 = 184;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186369E18);
  }

  v6 = observerCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:?];
  v7 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v13 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [BKSHIDEventDeliveryPolicyObserver _notifyAsyncObservers:"_notifyAsyncObservers:didUpdatePolicy:" didUpdatePolicy:?];
  }
}

- (BOOL)finalStringTokenInChain
{
  os_unfair_lock_lock(&self->_lock);
  finalStringTokenInChain = [(BKSHIDEventDeliveryPolicy *)self->_lock_currentPolicy finalStringTokenInChain];
  os_unfair_lock_unlock(&self->_lock);
  return finalStringTokenInChain;
}

- (void)setSelectionPathIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [identifierCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"selectionPathIdentifier", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v25 = 1024;
        v26 = 152;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A09CLL);
    }
  }

  v16 = identifierCopy;
  v6 = identifierCopy;
  [BKSHIDEventDeliveryPolicyObserver _replacePolicySpecificationObject:"_replacePolicySpecificationObject:withObject:replaceIvarBlock:" withObject:? replaceIvarBlock:?];
}

- (BKSHIDEventDeferringSelectionPathIdentifier)selectionPathIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDEventDeferringSelectionPathIdentifier *)self->_lock_selectionPathIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BKSHIDEventDeliveryPolicy)currentPolicy
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeferringToken:(id)token
{
  v29 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [tokenCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"token", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v25 = 1024;
        v26 = 129;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A39CLL);
    }
  }

  v16 = tokenCopy;
  v6 = tokenCopy;
  [BKSHIDEventDeliveryPolicyObserver _replacePolicySpecificationObject:"_replacePolicySpecificationObject:withObject:replaceIvarBlock:" withObject:? replaceIvarBlock:?];
}

- (BKSHIDEventDeferringToken)deferringToken
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_token;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeferringEnvironment:(id)environment
{
  v29 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (environmentCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [environmentCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"environment", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v25 = 1024;
        v26 = 113;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A64CLL);
    }
  }

  v16 = environmentCopy;
  v6 = environmentCopy;
  [BKSHIDEventDeliveryPolicyObserver _replacePolicySpecificationObject:"_replacePolicySpecificationObject:withObject:replaceIvarBlock:" withObject:? replaceIvarBlock:?];
}

- (BKSHIDEventDeferringEnvironment)deferringEnvironment
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_environment;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDisplay:(id)display
{
  v29 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"display", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v25 = 1024;
        v26 = 97;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A8FCLL);
    }
  }

  v16 = displayCopy;
  v6 = displayCopy;
  [BKSHIDEventDeliveryPolicyObserver _replacePolicySpecificationObject:"_replacePolicySpecificationObject:withObject:replaceIvarBlock:" withObject:? replaceIvarBlock:?];
}

- (BKSHIDEventDisplay)display
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_display;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_initWithObserver:(id)observer
{
  v41 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v30 = v20;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      selfCopy = self;
      v35 = 2114;
      v36 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v37 = 1024;
      v38 = 64;
      v39 = 2114;
      v40 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636ABF0);
  }

  v7 = observerCopy;
  v28.receiver = self;
  v28.super_class = BKSHIDEventDeliveryPolicyObserver;
  v8 = [(BKSHIDEventDeliveryPolicyObserver *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_observer, observer);
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9];
    Serial = BSDispatchQueueCreateSerial();
    asyncObserverCalloutQueue = v9->_asyncObserverCalloutQueue;
    v9->_asyncObserverCalloutQueue = Serial;

    v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:?];
    lock_observers = v9->_lock_observers;
    v9->_lock_observers = v13;

    v15 = [(BKSHIDEventObserver *)v9->_observer addDeferringObserver:?];
    observingAssertion = v9->_observingAssertion;
    v9->_observingAssertion = v15;

    os_unfair_lock_lock(&v9->_lock);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __55__BKSHIDEventDeliveryPolicyObserver__initWithObserver___block_invoke;
    v26 = &unk_1E6F477B8;
    v27 = v9;
    v17 = [(BKSHIDEventDeliveryPolicyObserver *)v27 _lock_updatePolicyWithBlock:?];
    os_unfair_lock_unlock(&v9->_lock);
  }

  return v9;
}

void __55__BKSHIDEventDeliveryPolicyObserver__initWithObserver___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) deferringObservations];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

@end