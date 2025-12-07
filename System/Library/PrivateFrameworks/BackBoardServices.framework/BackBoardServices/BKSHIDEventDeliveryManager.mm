@interface BKSHIDEventDeliveryManager
+ (id)sharedInstance;
- (BKSHIDEventDeliveryManager)init;
- (BOOL)validateProvenance:(id)provenance;
- (NSString)debugDescription;
- (id)_initWithConnectionFactory:(id)factory forTesting:(BOOL)testing;
- (id)_lock_stateDescription;
- (id)_lock_transactionAssertionWithReason:(id)reason;
- (id)assertSelectionPath:(id)path target:(id)target hasModality:(id)modality basis:(id)basis;
- (id)assertSelectionPath:(id)path target:(id)target imposesConstraint:(id)constraint;
- (id)bufferEventsMatchingPredicate:(id)predicate withReason:(id)reason;
- (id)deferEventsMatchingPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors toTarget:(id)target withReason:(id)reason;
- (id)deferEventsMatchingPredicate:(id)predicate toTarget:(id)target withReason:(id)reason;
- (id)dispatchDiscreteEventsForReason:(id)reason withRules:(id)rules;
- (id)dispatchKeyCommandsForReason:(id)reason withRule:(id)rule;
- (id)registerKeyCommands:(id)commands;
- (id)transactionAssertionWithReason:(id)reason;
- (int64_t)authenticateMessage:(id)message;
- (void)_executeDescriptionFetch:(id)fetch result:(id)result;
- (void)_lock_flushIfNeeded;
- (void)_lock_implicitFlush;
- (void)_lock_noteServerInterruption;
- (void)_lock_pendQuery:(id)query;
- (void)appendDescriptionToStream:(id)stream;
- (void)changeSelectionPath:(id)path target:(id)target basis:(id)basis ignoreModalities:(BOOL)modalities;
- (void)connectionDescriptionForDeferringRuleIdentity:(id)identity result:(id)result;
- (void)connectionDescriptionForDeferringRuleWithSeed:(unsigned int)seed pid:(int)pid result:(id)result;
- (void)dealloc;
- (void)deliveryChainsDescription:(id)description;
- (void)deliveryGraphDescription:(id)description;
- (void)resolutionDescriptionForEventDescriptor:(id)descriptor sender:(id)sender result:(id)result;
- (void)resolutionDescriptionForKeyCommand:(id)command sender:(id)sender result:(id)result;
@end

@implementation BKSHIDEventDeliveryManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11524 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_11524, &__block_literal_global_113);
  }

  v3 = sharedInstance___sharedInstance_11525;

  return v3;
}

- (void)_lock_implicitFlush
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_lock_needsFlush = *MEMORY[0x1E695E4D0];
  if (!self->_lock_implicitPreventFlushingAssertion && ![(BSMutableIntegerMap *)self->_lock_preventFlushingReasons count])
  {
    v3 = [(BKSHIDEventDeliveryManager *)self _lock_transactionAssertionWithReason:?];
    lock_implicitPreventFlushingAssertion = self->_lock_implicitPreventFlushingAssertion;
    self->_lock_implicitPreventFlushingAssertion = v3;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke;
    block[3] = &unk_1E6F477B8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_lock_flushIfNeeded
{
  v42 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = *MEMORY[0x1E695E4C0];
  if (self->_lock_needsFlush != *MEMORY[0x1E695E4C0] && ![(BSMutableIntegerMap *)self->_lock_preventFlushingReasons count])
  {
    if (self->_lock_remoteTargetSafeToMessage)
    {
      self->_lock_needsFlush = v3;
      v4 = objc_alloc_init(BKSHIDEventDeliveryRuleChangeTransaction);
      if ((BSEqualObjects() & 1) == 0)
      {
        v5 = BKLogEventDelivery();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          lock_discreteDispatchingRoots = self->_lock_discreteDispatchingRoots;
          v40 = 138543362;
          v41 = lock_discreteDispatchingRoots;
          _os_log_impl(&dword_186345000, v5, OS_LOG_TYPE_DEFAULT, "flushing discrete rule change: %{public}@", &v40, 0xCu);
        }

        v7 = [(NSMutableSet *)self->_lock_discreteDispatchingRoots copy];
        lock_lastSentDiscreteDispatchingRoots = self->_lock_lastSentDiscreteDispatchingRoots;
        self->_lock_lastSentDiscreteDispatchingRoots = v7;

        allObjects = [(NSMutableSet *)self->_lock_discreteDispatchingRoots allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setDiscreteDispatchingRules:?];
      }

      if ((BSEqualObjects() & 1) == 0)
      {
        v10 = [(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots copy];
        lock_lastSentKeyCommandsDispatchingRoots = self->_lock_lastSentKeyCommandsDispatchingRoots;
        self->_lock_lastSentKeyCommandsDispatchingRoots = v10;

        allObjects2 = [(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setKeyCommandDispatchingRules:?];
      }

      if ((BSEqualObjects() & 1) == 0)
      {
        v13 = [(NSMutableArray *)self->_lock_deferringRules copy];
        lock_lastSentDeferringRules = self->_lock_lastSentDeferringRules;
        self->_lock_lastSentDeferringRules = v13;

        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setDeferringRules:?];
      }

      if ((BSEqualObjects() & 1) == 0)
      {
        v15 = [(NSMutableDictionary *)self->_lock_keyCommandsRegistrations copy];
        lock_lastSentKeyCommandsRegistrations = self->_lock_lastSentKeyCommandsRegistrations;
        self->_lock_lastSentKeyCommandsRegistrations = v15;

        v17 = MEMORY[0x1E695DFD8];
        allValues = [(NSDictionary *)self->_lock_lastSentKeyCommandsRegistrations allValues];
        v19 = [v17 setWithArray:?];

        if (([(NSSet *)self->_lock_lastSentSetOfKeyCommandsRegistrations isEqual:?]& 1) == 0)
        {
          objc_storeStrong(&self->_lock_lastSentSetOfKeyCommandsRegistrations, v19);
          allObjects3 = [v19 allObjects];
          [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setKeyCommandsRegistrations:?];
        }
      }

      v21 = MEMORY[0x1E695DFD8];
      allValues2 = [(NSMutableDictionary *)self->_lock_bufferingPredicates allValues];
      v23 = [v21 setWithArray:?];

      if ((BSEqualObjects() & 1) == 0)
      {
        objc_storeStrong(&self->_lock_lastSentBufferingPredicates, v23);
        allObjects4 = [v23 allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setBufferingPredicates:?];
      }

      v25 = self->_lock_constraintAsserts;
      if ((BSEqualObjects() & 1) == 0)
      {
        v26 = [(NSMutableSet *)v25 copy];
        lock_lastSentConstraintAsserts = self->_lock_lastSentConstraintAsserts;
        self->_lock_lastSentConstraintAsserts = v26;

        allObjects5 = [(NSMutableSet *)v25 allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setConstraintAssertions:?];
      }

      v29 = self->_lock_modalityAsserts;
      if ((BSEqualObjects() & 1) == 0)
      {
        v30 = [(NSMutableSet *)v29 copy];
        lock_lastSentModalityAsserts = self->_lock_lastSentModalityAsserts;
        self->_lock_lastSentModalityAsserts = v30;

        allObjects6 = [(NSMutableSet *)v29 allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setModalityAssertions:?];
      }

      if ([(NSMutableSet *)self->_lock_selectionRequests count])
      {
        allObjects7 = [(NSMutableSet *)self->_lock_selectionRequests allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setSelectionRequests:?];

        [(NSMutableSet *)self->_lock_selectionRequests removeAllObjects];
      }

      contentsMask = [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 contentsMask];
      v35 = BKLogEventDelivery();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      if (contentsMask)
      {
        if (v36)
        {
          v37 = MEMORY[0x1E698E688];
          succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
          v39 = [v37 descriptionForRootObject:? withStyle:?];
          v40 = 138543362;
          v41 = v39;
          _os_log_debug_impl(&dword_186345000, v35, OS_LOG_TYPE_DEBUG, "flushing changes: %{public}@", &v40, 0xCu);
        }

        [(BKSHIDEventDeliveryManagerServerInterface *)self->_lock_remoteTargetSafeToMessage submitRuleChanges:?];
      }

      else
      {
        if (v36)
        {
          LOWORD(v40) = 0;
          _os_log_debug_impl(&dword_186345000, v35, OS_LOG_TYPE_DEBUG, "no-op flush", &v40, 2u);
        }
      }
    }

    else
    {
      v4 = BKLogEventDelivery();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v40) = 0;
        _os_log_debug_impl(&dword_186345000, &v4->super, OS_LOG_TYPE_DEBUG, "aborting flush, not connected to server", &v40, 2u);
      }
    }
  }
}

void __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  *(v2 + 272) = 0;
  v4 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 44));
  [v4 invalidate];
}

void __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 240);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke_2;
  block[3] = &unk_1E6F477B8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __44__BKSHIDEventDeliveryManager_sharedInstance__block_invoke()
{
  v0 = [BKSHIDEventDeliveryManager alloc];
  v3 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v1 = [BKSHIDEventDeliveryManager _initWithConnectionFactory:v0 forTesting:"_initWithConnectionFactory:forTesting:"];
  v2 = sharedInstance___sharedInstance_11525;
  sharedInstance___sharedInstance_11525 = v1;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock(&self->_lock);
  v16 = MEMORY[0x1E69E9820];
  v5 = streamCopy;
  v17 = v5;
  selfCopy = self;
  [v5 appendProem:v16 block:{3221225472, __56__BKSHIDEventDeliveryManager_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
  v6 = [v5 appendObject:? withName:? skipIfNil:?];
  if ([(NSMutableSet *)self->_lock_discreteDispatchingRoots count])
  {
    v7 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots count])
  {
    v8 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableArray *)self->_lock_deferringRules count])
  {
    v9 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableDictionary *)self->_lock_keyCommandsRegistrations count])
  {
    v10 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableDictionary *)self->_lock_bufferingPredicates count])
  {
    v11 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableSet *)self->_lock_constraintAsserts count])
  {
    v12 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableSet *)self->_lock_modalityAsserts count])
  {
    v13 = [v5 appendObject:? withName:?];
  }

  if ([(NSMutableSet *)self->_lock_selectionRequests count])
  {
    v14 = [v5 appendObject:? withName:?];
  }

  if ([v5 hasDebugStyle] && -[NSHashTable count](self->_lock_assertions, "count"))
  {
    v15 = [v5 appendObject:? withName:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __56__BKSHIDEventDeliveryManager_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _lock_stateDescription];
  [v1 appendString:? withName:?];
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v4 = [v2 descriptionForRootObject:? withStyle:?];

  return v4;
}

- (id)_lock_stateDescription
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_needsFlush == *MEMORY[0x1E695E4C0])
  {
    return @"flushed";
  }

  if (self->_lock_implicitPreventFlushingAssertion)
  {
    return @"pending";
  }

  if ([(BSMutableIntegerMap *)self->_lock_preventFlushingReasons count])
  {
    return @"locked";
  }

  if (self->_lock_needsFlush == *MEMORY[0x1E695E4D0])
  {
    return @"dirty";
  }

  return @"initial";
}

- (id)_lock_transactionAssertionWithReason:(id)reason
{
  v43 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!reasonCopy)
  {
    v13 = NSStringFromClass(v7);
    v14 = [v6 stringWithFormat:@"reason", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v32 = v15;
      v33 = 2114;
      v34 = v17;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BKSHIDEventDeliveryManager.m";
      v39 = 1024;
      v40 = 720;
      v41 = 2114;
      v42 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A527CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    classForCoder = [reasonCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v20 = NSStringFromClass(classForCoder);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"reason", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v32 = v24;
      v33 = 2114;
      v34 = v26;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BKSHIDEventDeliveryManager.m";
      v39 = 1024;
      v40 = 720;
      v41 = 2114;
      v42 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A53B4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  lock_preventFlushingReasons = self->_lock_preventFlushingReasons;
  v9 = self->_lock_preventFlushingSeed + 1;
  self->_lock_preventFlushingSeed = v9;
  v10 = [(BSMutableIntegerMap *)lock_preventFlushingReasons objectForKey:?];

  if (v10)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, reasonCopy, self->_lock_preventFlushingReasons];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v32 = v28;
      v33 = 2114;
      v34 = v30;
      v35 = 2048;
      selfCopy3 = self;
      v37 = 2114;
      v38 = @"BKSHIDEventDeliveryManager.m";
      v39 = 1024;
      v40 = 724;
      v41 = 2114;
      v42 = v27;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A54A8);
  }

  [BSMutableIntegerMap setObject:"setObject:forKey:" forKey:?];
  v11 = [objc_alloc(MEMORY[0x1E698E778]) initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];

  return v11;
}

void __67__BKSHIDEventDeliveryManager__lock_transactionAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 264) removeObjectForKey:?];
  [*(a1 + 32) _lock_flushIfNeeded];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (void)_lock_noteServerInterruption
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentDiscreteDispatchingRoots = self->_lock_lastSentDiscreteDispatchingRoots;
  self->_lock_lastSentDiscreteDispatchingRoots = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentKeyCommandsDispatchingRoots = self->_lock_lastSentKeyCommandsDispatchingRoots;
  self->_lock_lastSentKeyCommandsDispatchingRoots = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  lock_lastSentDeferringRules = self->_lock_lastSentDeferringRules;
  self->_lock_lastSentDeferringRules = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentBufferingPredicates = self->_lock_lastSentBufferingPredicates;
  self->_lock_lastSentBufferingPredicates = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentConstraintAsserts = self->_lock_lastSentConstraintAsserts;
  self->_lock_lastSentConstraintAsserts = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentModalityAsserts = self->_lock_lastSentModalityAsserts;
  self->_lock_lastSentModalityAsserts = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
  lock_lastSentKeyCommandsRegistrations = self->_lock_lastSentKeyCommandsRegistrations;
  self->_lock_lastSentKeyCommandsRegistrations = v15;

  v17 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentSetOfKeyCommandsRegistrations = self->_lock_lastSentSetOfKeyCommandsRegistrations;
  self->_lock_lastSentSetOfKeyCommandsRegistrations = v17;

  MEMORY[0x1EEE66BB8](v17, lock_lastSentSetOfKeyCommandsRegistrations);
}

- (void)_lock_pendQuery:(id)query
{
  queryCopy = query;
  os_unfair_lock_assert_owner(&self->_lock);
  lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens = self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens;
  if (!lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens;
    self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens = v5;

    lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens = self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens;
  }

  v7 = MEMORY[0x186605BB0](queryCopy);
  [(NSMutableArray *)lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens addObject:?];
}

- (void)_executeDescriptionFetch:(id)fetch result:(id)result
{
  fetchCopy = fetch;
  resultCopy = result;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_remoteTargetSafeToMessage)
  {
    v8 = fetchCopy[2](fetchCopy);
    os_unfair_lock_unlock(&self->_lock);
    if (resultCopy)
    {
      resultCopy[2](resultCopy, v8, 0);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke;
    v10[3] = &unk_1E6F47638;
    v10[4] = self;
    v11 = fetchCopy;
    v12 = resultCopy;
    v9 = MEMORY[0x186605BB0](v10);
    [(BKSHIDEventDeliveryManager *)self _lock_pendQuery:?];
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    a2 = (*(*(a1 + 40) + 16))();
  }

  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke_2;
  block[3] = &unk_1E6F47610;
  v7 = *(a1 + 48);
  v12 = v5;
  v13 = v7;
  v11 = a2;
  v8 = v5;
  v9 = a2;
  dispatch_async(v6, block);
}

uint64_t __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (BOOL)validateProvenance:(id)provenance
{
  v16 = *MEMORY[0x1E69E9840];
  provenanceCopy = provenance;
  if (provenanceCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = [MEMORY[0x1E698E750] encodeObject:? error:?];
    v6 = 0;
    if (v5)
    {
      if (isKindOfClass)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      buf[0] = 0;
      v8 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
      _BKSHIDVerifyEventProvenance(v8, [v5 bytes], objc_msgSend(v5, "length"), v7, buf);
      v9 = buf[0] != 0;
    }

    else
    {
      v10 = BKLogEventDelivery();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v13 = provenanceCopy;
        v14 = 2114;
        v15 = v6;
        _os_log_error_impl(&dword_186345000, v10, OS_LOG_TYPE_ERROR, "authenticateProvenance: failed to encode %{public}@: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)authenticateMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = messageCopy;
  if (!messageCopy)
  {
    v9 = BKLogEventDelivery();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v8 = 1;
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "authenticateMessage: message is nil";
    v11 = v9;
    v12 = 2;
LABEL_15:
    _os_log_error_impl(&dword_186345000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_8;
  }

  if ([messageCopy originIdentifier] != 0xC181BADB23D8497BLL)
  {
    v9 = BKLogEventDelivery();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138543362;
    v17 = v4;
    v10 = "authenticateMessage: message did not originate in backboardd: %{public}@";
    v11 = v9;
    v12 = 12;
    goto LABEL_15;
  }

  v15 = 0;
  v5 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v6 = 0;
  if (v5)
  {
    v7 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDVerifyEventAuthenticationMessage(v7, [v5 bytes], objc_msgSend(v5, "length"), &v15);
    v8 = v15;
  }

  else
  {
    v13 = BKLogEventDelivery();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v4;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "authenticateMessage: failed to encode %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

LABEL_13:
  return v8;
}

- (id)dispatchKeyCommandsForReason:(id)reason withRule:(id)rule
{
  v65 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  ruleCopy = rule;
  v9 = reasonCopy;
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  if (!v9)
  {
    v22 = NSStringFromClass(v11);
    v23 = [v10 stringWithFormat:@"reason", v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v54 = v24;
      v55 = 2114;
      v56 = v26;
      v57 = 2048;
      selfCopy4 = self;
      v59 = 2114;
      v60 = @"BKSHIDEventDeliveryManager.m";
      v61 = 1024;
      v62 = 572;
      v63 = 2114;
      v64 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A5FF8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v29 = NSStringFromClass(classForCoder);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"reason", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v54 = v33;
      v55 = 2114;
      v56 = v35;
      v57 = 2048;
      selfCopy4 = self;
      v59 = 2114;
      v60 = @"BKSHIDEventDeliveryManager.m";
      v61 = 1024;
      v62 = 572;
      v63 = 2114;
      v64 = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6130);
  }

  v12 = ruleCopy;
  if (!v12)
  {
    v36 = MEMORY[0x1E696AEC0];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v36 stringWithFormat:@"rule", v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v54 = v40;
      v55 = 2114;
      v56 = v42;
      v57 = 2048;
      selfCopy4 = self;
      v59 = 2114;
      v60 = @"BKSHIDEventDeliveryManager.m";
      v61 = 1024;
      v62 = 573;
      v63 = 2114;
      v64 = v39;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6244);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v13 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v45 = NSStringFromClass(classForCoder2);
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v43 stringWithFormat:@"rule", v45, v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v54 = v49;
      v55 = 2114;
      v56 = v51;
      v57 = 2048;
      selfCopy4 = self;
      v59 = 2114;
      v60 = @"BKSHIDEventDeliveryManager.m";
      v61 = 1024;
      v62 = 573;
      v63 = 2114;
      v64 = v48;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A637CLL);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  ++self->_lock_keyCommandsDispatchingSeed;
  v14 = [BKSHIDEventKeyCommandDispatchingRoot initWithReason:"initWithReason:seed:rule:" seed:? rule:?];
  v15 = MEMORY[0x1E696AEC0];
  v16 = self->_lock_keyCommandsDispatchingSeed + 1;
  self->_lock_keyCommandsDispatchingSeed = v16;
  v17 = [v15 stringWithFormat:v16, v9];
  [(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots addObject:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v18 = objc_alloc(MEMORY[0x1E698E778]);
  v52 = v14;
  v19 = v14;
  v20 = [v18 initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);

  return v20;
}

void __68__BKSHIDEventDeliveryManager_dispatchKeyCommandsForReason_withRule___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 88) removeObject:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)dispatchDiscreteEventsForReason:(id)reason withRules:(id)rules
{
  v88 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  rulesCopy = rules;
  v9 = reasonCopy;
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  if (!v9)
  {
    v45 = NSStringFromClass(v11);
    v46 = [v10 stringWithFormat:@"reason", v45];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138544642;
      v77 = v47;
      v78 = 2114;
      v79 = v49;
      v80 = 2048;
      selfCopy6 = self;
      v82 = 2114;
      v83 = @"BKSHIDEventDeliveryManager.m";
      v84 = 1024;
      v85 = 533;
      v86 = 2114;
      v87 = v46;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6A90);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v52 = NSStringFromClass(classForCoder);
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = [v50 stringWithFormat:@"reason", v52, v54];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = NSStringFromSelector(a2);
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      *buf = 138544642;
      v77 = v56;
      v78 = 2114;
      v79 = v58;
      v80 = 2048;
      selfCopy6 = self;
      v82 = 2114;
      v83 = @"BKSHIDEventDeliveryManager.m";
      v84 = 1024;
      v85 = 533;
      v86 = 2114;
      v87 = v55;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6BC8);
  }

  v12 = rulesCopy;
  if (!v12)
  {
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = [v59 stringWithFormat:@"ruleSet", v61];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(a2);
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      *buf = 138544642;
      v77 = v63;
      v78 = 2114;
      v79 = v65;
      v80 = 2048;
      selfCopy6 = self;
      v82 = 2114;
      v83 = @"BKSHIDEventDeliveryManager.m";
      v84 = 1024;
      v85 = 534;
      v86 = 2114;
      v87 = v62;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v62 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6CDCLL);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v66 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v13 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v68 = NSStringFromClass(classForCoder2);
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    v71 = [v66 stringWithFormat:@"ruleSet", v68, v70];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v72 = NSStringFromSelector(a2);
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      *buf = 138544642;
      v77 = v72;
      v78 = 2114;
      v79 = v74;
      v80 = 2048;
      selfCopy6 = self;
      v82 = 2114;
      v83 = @"BKSHIDEventDeliveryManager.m";
      v84 = 1024;
      v85 = 534;
      v86 = 2114;
      v87 = v71;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v71 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6E14);
  }

  v14 = [v13 copy];
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(8 * i);
        if (!v20)
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v29 stringWithFormat:@"rule", v31];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v33 = NSStringFromSelector(a2);
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138544642;
            v77 = v33;
            v78 = 2114;
            v79 = v35;
            v80 = 2048;
            selfCopy6 = self;
            v82 = 2114;
            v83 = @"BKSHIDEventDeliveryManager.m";
            v84 = 1024;
            v85 = 537;
            v86 = 2114;
            v87 = v32;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v32 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863A684CLL);
        }

        v21 = v20;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v36 = MEMORY[0x1E696AEC0];
          classForCoder3 = [v21 classForCoder];
          if (!classForCoder3)
          {
            classForCoder3 = objc_opt_class();
          }

          v38 = NSStringFromClass(classForCoder3);
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = [v36 stringWithFormat:@"rule", v38, v40];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v42 = NSStringFromSelector(a2);
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            *buf = 138544642;
            v77 = v42;
            v78 = 2114;
            v79 = v44;
            v80 = 2048;
            selfCopy6 = self;
            v82 = 2114;
            v83 = @"BKSHIDEventDeliveryManager.m";
            v84 = 1024;
            v85 = 537;
            v86 = 2114;
            v87 = v41;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v41 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863A6988);
        }
      }

      v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  ++self->_lock_discreteDispatchingSeed;
  v22 = [BKSHIDEventDiscreteDispatchingRoot initWithReason:"initWithReason:seed:rules:" seed:? rules:?];
  v23 = BKLogEventDelivery();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v77 = v22;
    _os_log_impl(&dword_186345000, v23, OS_LOG_TYPE_DEFAULT, "adding root: %{public}@", buf, 0xCu);
  }

  [(NSMutableSet *)self->_lock_discreteDispatchingRoots addObject:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v24 = objc_alloc(MEMORY[0x1E698E778]);
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, -[BKSHIDEventDeliveryRuleWrapper seed](v22, "seed")];
  v75 = v22;
  v26 = v22;
  v27 = [v24 initWithIdentifier:? forReason:? invalidationBlock:?];

  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);

  return v27;
}

void __72__BKSHIDEventDeliveryManager_dispatchDiscreteEventsForReason_withRules___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 64) removeObject:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (void)resolutionDescriptionForKeyCommand:(id)command sender:(id)sender result:(id)result
{
  commandCopy = command;
  senderCopy = sender;
  resultCopy = result;
  if (!commandCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"keyCommand" object:? file:? lineNumber:? description:?];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__BKSHIDEventDeliveryManager_resolutionDescriptionForKeyCommand_sender_result___block_invoke;
  v15[3] = &unk_1E6F475E8;
  v15[4] = self;
  v16 = commandCopy;
  v17 = senderCopy;
  v11 = senderCopy;
  v12 = commandCopy;
  v13 = MEMORY[0x186605BB0](v15);
  [BKSHIDEventDeliveryManager _executeDescriptionFetch:"_executeDescriptionFetch:result:" result:?];
}

id __79__BKSHIDEventDeliveryManager_resolutionDescriptionForKeyCommand_sender_result___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 resolutionDescriptionForKeyCommand:? senderDescriptor:?];

  return v4;
}

- (void)resolutionDescriptionForEventDescriptor:(id)descriptor sender:(id)sender result:(id)result
{
  descriptorCopy = descriptor;
  senderCopy = sender;
  resultCopy = result;
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"eventDescriptor" object:? file:? lineNumber:? description:?];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__BKSHIDEventDeliveryManager_resolutionDescriptionForEventDescriptor_sender_result___block_invoke;
  v15[3] = &unk_1E6F475E8;
  v15[4] = self;
  v16 = descriptorCopy;
  v17 = senderCopy;
  v11 = senderCopy;
  v12 = descriptorCopy;
  v13 = MEMORY[0x186605BB0](v15);
  [BKSHIDEventDeliveryManager _executeDescriptionFetch:"_executeDescriptionFetch:result:" result:?];
}

id __84__BKSHIDEventDeliveryManager_resolutionDescriptionForEventDescriptor_sender_result___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 resolutionDescriptionForEventDescriptor:? senderDescriptor:?];

  return v4;
}

- (void)connectionDescriptionForDeferringRuleIdentity:(id)identity result:(id)result
{
  identityCopy = identity;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __83__BKSHIDEventDeliveryManager_connectionDescriptionForDeferringRuleIdentity_result___block_invoke;
  v13 = &unk_1E6F475C0;
  selfCopy = self;
  v15 = identityCopy;
  v7 = identityCopy;
  resultCopy = result;
  v9 = MEMORY[0x186605BB0](&v10);
  [(BKSHIDEventDeliveryManager *)self _executeDescriptionFetch:v10 result:v11, v12, v13, selfCopy];
}

id __83__BKSHIDEventDeliveryManager_connectionDescriptionForDeferringRuleIdentity_result___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 connectionDescriptionForDeferringRuleIdentity:?];

  return v4;
}

- (void)connectionDescriptionForDeferringRuleWithSeed:(unsigned int)seed pid:(int)pid result:(id)result
{
  resultCopy = result;
  v7 = [_BKSHIDEventDeferringRuleIdentity initWithSeed:"initWithSeed:pid:" pid:?];
  [BKSHIDEventDeliveryManager connectionDescriptionForDeferringRuleIdentity:"connectionDescriptionForDeferringRuleIdentity:result:" result:?];
}

- (void)deliveryChainsDescription:(id)description
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__BKSHIDEventDeliveryManager_deliveryChainsDescription___block_invoke;
  v6[3] = &unk_1E6F47598;
  v6[4] = self;
  descriptionCopy = description;
  v5 = MEMORY[0x186605BB0](v6);
  [BKSHIDEventDeliveryManager _executeDescriptionFetch:"_executeDescriptionFetch:result:" result:?];
}

id __56__BKSHIDEventDeliveryManager_deliveryChainsDescription___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 deliveryChainsDescription];

  return v4;
}

- (void)deliveryGraphDescription:(id)description
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BKSHIDEventDeliveryManager_deliveryGraphDescription___block_invoke;
  v6[3] = &unk_1E6F47598;
  v6[4] = self;
  descriptionCopy = description;
  v5 = MEMORY[0x186605BB0](v6);
  [BKSHIDEventDeliveryManager _executeDescriptionFetch:"_executeDescriptionFetch:result:" result:?];
}

id __55__BKSHIDEventDeliveryManager_deliveryGraphDescription___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 deliveryGraphDescription];

  return v4;
}

- (void)changeSelectionPath:(id)path target:(id)target basis:(id)basis ignoreModalities:(BOOL)modalities
{
  v97 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  targetCopy = target;
  basisCopy = basis;
  if (!pathCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"path != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v86 = v26;
      v87 = 2114;
      v88 = v28;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 457;
      v95 = 2114;
      v96 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7890);
  }

  v14 = basisCopy;
  v15 = targetCopy;
  if (!v15)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v29 stringWithFormat:@"target", v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v86 = v33;
      v87 = 2114;
      v88 = v35;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 458;
      v95 = 2114;
      v96 = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A79A8);
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = MEMORY[0x1E696AEC0];
    classForCoder = [v16 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v38 = NSStringFromClass(classForCoder);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v36 stringWithFormat:@"target", v38, v40];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v86 = v42;
      v87 = 2114;
      v88 = v44;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 458;
      v95 = 2114;
      v96 = v41;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7AE4);
  }

  target = [v16 target];
  if (!target)
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v45 stringWithFormat:@"[target target]", v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v86 = v49;
      v87 = 2114;
      v88 = v51;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 459;
      v95 = 2114;
      v96 = v48;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7BFCLL);
  }

  v18 = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v52 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v18 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v54 = NSStringFromClass(classForCoder2);
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = [v52 stringWithFormat:@"[target target]", v54, v56];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v58 = NSStringFromSelector(a2);
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *buf = 138544642;
      v86 = v58;
      v87 = 2114;
      v88 = v60;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 459;
      v95 = 2114;
      v96 = v57;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7D38);
  }

  v19 = v14;
  if (!v19)
  {
    v61 = MEMORY[0x1E696AEC0];
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    v64 = [v61 stringWithFormat:@"basis", v63];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v65 = NSStringFromSelector(a2);
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      *buf = 138544642;
      v86 = v65;
      v87 = 2114;
      v88 = v67;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 460;
      v95 = 2114;
      v96 = v64;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v64 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7E50);
  }

  v20 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v68 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v20 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v70 = NSStringFromClass(classForCoder3);
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v73 = [v68 stringWithFormat:@"basis", v70, v72];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v74 = NSStringFromSelector(a2);
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      *buf = 138544642;
      v86 = v74;
      v87 = 2114;
      v88 = v76;
      v89 = 2048;
      selfCopy7 = self;
      v91 = 2114;
      v92 = @"BKSHIDEventDeliveryManager.m";
      v93 = 1024;
      v94 = 460;
      v95 = 2114;
      v96 = v73;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v73 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7F8CLL);
  }

  os_unfair_lock_lock(&self->_lock);
  v77 = MEMORY[0x1E69E9820];
  v78 = 3221225472;
  v79 = __80__BKSHIDEventDeliveryManager_changeSelectionPath_target_basis_ignoreModalities___block_invoke;
  v80 = &unk_1E6F47570;
  v81 = v16;
  v82 = pathCopy;
  modalitiesCopy = modalities;
  v83 = v20;
  v21 = v20;
  v22 = pathCopy;
  v23 = v16;
  v24 = [BKSHIDEventDeferringSelectionChangeRequest build:?];
  [(NSMutableSet *)self->_lock_selectionRequests addObject:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  os_unfair_lock_unlock(&self->_lock);
}

void __80__BKSHIDEventDeliveryManager_changeSelectionPath_target_basis_ignoreModalities___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSelectionTarget:?];
  [v2 setPathIdentifier:?];
  [v2 setIgnoreModalities:?];
  [v2 setBasis:?];
}

- (id)assertSelectionPath:(id)path target:(id)target hasModality:(id)modality basis:(id)basis
{
  v103 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  targetCopy = target;
  modalityCopy = modality;
  basisCopy = basis;
  if (!pathCopy)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"selectionPath != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v92 = v35;
      v93 = 2114;
      v94 = v37;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 419;
      v101 = 2114;
      v102 = v34;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A83E4);
  }

  v15 = basisCopy;
  v16 = targetCopy;
  if (!v16)
  {
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v38 stringWithFormat:@"target", v40];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v92 = v42;
      v93 = 2114;
      v94 = v44;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 420;
      v101 = 2114;
      v102 = v41;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A84FCLL);
  }

  v17 = v16;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = MEMORY[0x1E696AEC0];
    classForCoder = [v17 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v47 = NSStringFromClass(classForCoder);
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = [v45 stringWithFormat:@"target", v47, v49];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544642;
      v92 = v51;
      v93 = 2114;
      v94 = v53;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 420;
      v101 = 2114;
      v102 = v50;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8638);
  }

  target = [v17 target];
  if (!target)
  {
    v54 = MEMORY[0x1E696AEC0];
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = [v54 stringWithFormat:@"[target target]", v56];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v58 = NSStringFromSelector(a2);
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *buf = 138544642;
      v92 = v58;
      v93 = 2114;
      v94 = v60;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 421;
      v101 = 2114;
      v102 = v57;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8750);
  }

  v19 = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v19 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v63 = NSStringFromClass(classForCoder2);
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    v66 = [v61 stringWithFormat:@"[target target]", v63, v65];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v67 = NSStringFromSelector(a2);
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      *buf = 138544642;
      v92 = v67;
      v93 = 2114;
      v94 = v69;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 421;
      v101 = 2114;
      v102 = v66;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v66 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A888CLL);
  }

  v20 = modalityCopy;
  if (!v20)
  {
    v70 = MEMORY[0x1E696AEC0];
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v73 = [v70 stringWithFormat:@"modality", v72];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v74 = NSStringFromSelector(a2);
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      *buf = 138544642;
      v92 = v74;
      v93 = 2114;
      v94 = v76;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 422;
      v101 = 2114;
      v102 = v73;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v73 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A89A4);
  }

  v21 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v77 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v21 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v79 = NSStringFromClass(classForCoder3);
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    v82 = [v77 stringWithFormat:@"modality", v79, v81];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v83 = NSStringFromSelector(a2);
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      *buf = 138544642;
      v92 = v83;
      v93 = 2114;
      v94 = v85;
      v95 = 2048;
      selfCopy7 = self;
      v97 = 2114;
      v98 = @"BKSHIDEventDeliveryManager.m";
      v99 = 1024;
      v100 = 422;
      v101 = 2114;
      v102 = v82;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v82 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8AE0);
  }

  os_unfair_lock_lock(&self->_lock);
  v22 = MEMORY[0x1E696AEC0];
  v23 = self->_lock_modalityAssertSeed + 1;
  self->_lock_modalityAssertSeed = v23;
  v24 = [v22 stringWithFormat:v23];
  v87 = v17;
  v88 = pathCopy;
  v89 = v21;
  v90 = v15;
  v25 = v15;
  v26 = v21;
  v27 = pathCopy;
  v28 = v17;
  v29 = [BKSHIDEventDeferringModalityAssertion build:?];
  [(NSMutableSet *)self->_lock_modalityAsserts addObject:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v30 = objc_alloc(MEMORY[0x1E698E778]);
  v86 = v29;
  v31 = v29;
  v32 = [v30 initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);

  return v32;
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_hasModality_basis___block_invoke(void *a1, void *a2)
{
  v2 = a2;
  [v2 setSelectionTarget:?];
  [v2 setPathIdentifier:?];
  [v2 setModality:?];
  [v2 setBasis:?];
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_hasModality_basis___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 11);
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 160) removeObject:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)assertSelectionPath:(id)path target:(id)target imposesConstraint:(id)constraint
{
  v98 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  targetCopy = target;
  constraintCopy = constraint;
  if (!pathCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"selectionPath != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v87 = v31;
      v88 = 2114;
      v89 = v33;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 382;
      v96 = 2114;
      v97 = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8F94);
  }

  v12 = constraintCopy;
  v13 = targetCopy;
  if (!v13)
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v34 stringWithFormat:@"target", v36];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v87 = v38;
      v88 = 2114;
      v89 = v40;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 383;
      v96 = 2114;
      v97 = v37;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A90ACLL);
  }

  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = MEMORY[0x1E696AEC0];
    classForCoder = [v14 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v43 = NSStringFromClass(classForCoder);
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = [v41 stringWithFormat:@"target", v43, v45];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138544642;
      v87 = v47;
      v88 = 2114;
      v89 = v49;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 383;
      v96 = 2114;
      v97 = v46;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A91E8);
  }

  target = [v14 target];
  if (!target)
  {
    v50 = MEMORY[0x1E696AEC0];
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v53 = [v50 stringWithFormat:@"[target target]", v52];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(a2);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138544642;
      v87 = v54;
      v88 = 2114;
      v89 = v56;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 384;
      v96 = 2114;
      v97 = v53;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v53 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9300);
  }

  v16 = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v57 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v16 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v59 = NSStringFromClass(classForCoder2);
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = [v57 stringWithFormat:@"[target target]", v59, v61];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(a2);
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      *buf = 138544642;
      v87 = v63;
      v88 = 2114;
      v89 = v65;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 384;
      v96 = 2114;
      v97 = v62;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v62 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A943CLL);
  }

  v17 = v12;
  if (!v17)
  {
    v66 = MEMORY[0x1E696AEC0];
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    v69 = [v66 stringWithFormat:@"constraint", v68];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v70 = NSStringFromSelector(a2);
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      *buf = 138544642;
      v87 = v70;
      v88 = 2114;
      v89 = v72;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 385;
      v96 = 2114;
      v97 = v69;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v69 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9554);
  }

  v18 = v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v73 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v18 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v75 = NSStringFromClass(classForCoder3);
    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    v78 = [v73 stringWithFormat:@"constraint", v75, v77];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v79 = NSStringFromSelector(a2);
      v80 = objc_opt_class();
      v81 = NSStringFromClass(v80);
      *buf = 138544642;
      v87 = v79;
      v88 = 2114;
      v89 = v81;
      v90 = 2048;
      selfCopy7 = self;
      v92 = 2114;
      v93 = @"BKSHIDEventDeliveryManager.m";
      v94 = 1024;
      v95 = 385;
      v96 = 2114;
      v97 = v78;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v78 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9690);
  }

  os_unfair_lock_lock(&self->_lock);
  v19 = MEMORY[0x1E696AEC0];
  v20 = self->_lock_constraintAssertSeed + 1;
  self->_lock_constraintAssertSeed = v20;
  v21 = [v19 stringWithFormat:v20];
  v83 = v14;
  v84 = pathCopy;
  v85 = v18;
  v22 = v18;
  v23 = pathCopy;
  v24 = v14;
  v25 = [BKSHIDEventDeferringConstraintAssertion build:?];
  [(NSMutableSet *)self->_lock_constraintAsserts addObject:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v26 = objc_alloc(MEMORY[0x1E698E778]);
  v82 = v25;
  v27 = v25;
  v28 = [v26 initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);

  return v28;
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_imposesConstraint___block_invoke(void *a1, void *a2)
{
  v2 = a2;
  [v2 setSelectionTarget:?];
  [v2 setPathIdentifier:?];
  [v2 setConstraint:?];
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_imposesConstraint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 11);
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 184) removeObject:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)bufferEventsMatchingPredicate:(id)predicate withReason:(id)reason
{
  v69 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  reasonCopy = reason;
  v9 = predicateCopy;
  if (!v9)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"predicate", v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v58 = v26;
      v59 = 2114;
      v60 = v28;
      v61 = 2048;
      selfCopy5 = self;
      v63 = 2114;
      v64 = @"BKSHIDEventDeliveryManager.m";
      v65 = 1024;
      v66 = 335;
      v67 = 2114;
      v68 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9A98);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v31 = NSStringFromClass(classForCoder);
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v29 stringWithFormat:@"predicate", v31, v33];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v58 = v35;
      v59 = 2114;
      v60 = v37;
      v61 = 2048;
      selfCopy5 = self;
      v63 = 2114;
      v64 = @"BKSHIDEventDeliveryManager.m";
      v65 = 1024;
      v66 = 335;
      v67 = 2114;
      v68 = v34;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9BD4);
  }

  v11 = reasonCopy;
  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  if (!v11)
  {
    v38 = NSStringFromClass(v13);
    v39 = [v12 stringWithFormat:@"reason", v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v58 = v40;
      v59 = 2114;
      v60 = v42;
      v61 = 2048;
      selfCopy5 = self;
      v63 = 2114;
      v64 = @"BKSHIDEventDeliveryManager.m";
      v65 = 1024;
      v66 = 336;
      v67 = 2114;
      v68 = v39;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9CDCLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v11 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v45 = NSStringFromClass(classForCoder2);
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v43 stringWithFormat:@"reason", v45, v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v58 = v49;
      v59 = 2114;
      v60 = v51;
      v61 = 2048;
      selfCopy5 = self;
      v63 = 2114;
      v64 = @"BKSHIDEventDeliveryManager.m";
      v65 = 1024;
      v66 = 336;
      v67 = 2114;
      v68 = v48;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9E14);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v14 = MEMORY[0x1E696AEC0];
  v15 = self->_lock_bufferingSeed + 1;
  self->_lock_bufferingSeed = v15;
  v16 = [v14 stringWithFormat:v15, v11];
  v17 = [(NSMutableDictionary *)self->_lock_bufferingPredicates objectForKey:?];

  if (v17)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:v16, self->_lock_bufferingPredicates, v10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138544642;
      v58 = v53;
      v59 = 2114;
      v60 = v55;
      v61 = 2048;
      selfCopy5 = self;
      v63 = 2114;
      v64 = @"BKSHIDEventDeliveryManager.m";
      v65 = 1024;
      v66 = 342;
      v67 = 2114;
      v68 = v52;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v52 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9F08);
  }

  [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v18 = objc_alloc(MEMORY[0x1E698E778]);
  v56 = v16;
  v19 = v16;
  v20 = [v18 initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_assert_not_owner(&self->_lock);

  return v20;
}

void __71__BKSHIDEventDeliveryManager_bufferEventsMatchingPredicate_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 136) removeObjectForKey:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)transactionAssertionWithReason:(id)reason
{
  v36 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!reasonCopy)
  {
    v10 = NSStringFromClass(v7);
    v11 = [v6 stringWithFormat:@"reason", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeliveryManager.m";
      v32 = 1024;
      v33 = 322;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA180);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [reasonCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"reason", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeliveryManager.m";
      v32 = 1024;
      v33 = 322;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA2B8);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BKSHIDEventDeliveryManager *)self _lock_transactionAssertionWithReason:?];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_assert_not_owner(&self->_lock);

  return v8;
}

- (id)registerKeyCommands:(id)commands
{
  v48 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  if (!commandsCopy)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"registration", v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v37 = v19;
      v38 = 2114;
      v39 = v21;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2114;
      v43 = @"BKSHIDEventDeliveryManager.m";
      v44 = 1024;
      v45 = 290;
      v46 = 2114;
      v47 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA58CLL);
  }

  v6 = commandsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v24 = NSStringFromClass(classForCoder);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v22 stringWithFormat:@"registration", v24, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v37 = v28;
      v38 = 2114;
      v39 = v30;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2114;
      v43 = @"BKSHIDEventDeliveryManager.m";
      v44 = 1024;
      v45 = 290;
      v46 = 2114;
      v47 = v27;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA6C8);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = MEMORY[0x1E696AEC0];
  v8 = self->_lock_keyCommandsRegistrationSeed + 1;
  self->_lock_keyCommandsRegistrationSeed = v8;
  v9 = [v7 stringWithFormat:v8];
  v10 = [(NSMutableDictionary *)self->_lock_keyCommandsRegistrations objectForKey:?];

  if (v10)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, self->_lock_keyCommandsRegistrations, v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v37 = v32;
      v38 = 2114;
      v39 = v34;
      v40 = 2048;
      selfCopy3 = self;
      v42 = 2114;
      v43 = @"BKSHIDEventDeliveryManager.m";
      v44 = 1024;
      v45 = 296;
      v46 = 2114;
      v47 = v31;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA7BCLL);
  }

  [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v11 = objc_alloc(MEMORY[0x1E698E778]);
  v35 = v9;
  v12 = v9;
  v13 = [v11 initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

void __50__BKSHIDEventDeliveryManager_registerKeyCommands___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 216) removeObjectForKey:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)deferEventsMatchingPredicate:(id)predicate toTarget:(id)target withReason:(id)reason
{
  v8 = MEMORY[0x1E695DFD8];
  reasonCopy = reason;
  targetCopy = target;
  predicateCopy = predicate;
  v12 = [v8 set];
  v13 = [BKSHIDEventDeliveryManager deferEventsMatchingPredicate:"deferEventsMatchingPredicate:restrictedToEventDescriptors:toTarget:withReason:" restrictedToEventDescriptors:? toTarget:? withReason:?];

  return v13;
}

- (id)deferEventsMatchingPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors toTarget:(id)target withReason:(id)reason
{
  v111 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  targetCopy = target;
  reasonCopy = reason;
  v15 = predicateCopy;
  if (!v15)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v32 stringWithFormat:@"predicate", v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v100 = v36;
      v101 = 2114;
      v102 = v38;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 246;
      v109 = 2114;
      v110 = v35;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AACC0);
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    classForCoder = [v16 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v41 = NSStringFromClass(classForCoder);
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = [v39 stringWithFormat:@"predicate", v41, v43];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v100 = v45;
      v101 = 2114;
      v102 = v47;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 246;
      v109 = 2114;
      v110 = v44;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AADFCLL);
  }

  v17 = descriptorsCopy;
  if (!v17)
  {
    v48 = MEMORY[0x1E696AEC0];
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = [v48 stringWithFormat:@"eventDescriptors", v50];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138544642;
      v100 = v52;
      v101 = 2114;
      v102 = v54;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 247;
      v109 = 2114;
      v110 = v51;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AAF14);
  }

  v18 = v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v55 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v18 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v57 = NSStringFromClass(classForCoder2);
    v58 = objc_opt_class();
    v59 = NSStringFromClass(v58);
    v60 = [v55 stringWithFormat:@"eventDescriptors", v57, v59];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v61 = NSStringFromSelector(a2);
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      *buf = 138544642;
      v100 = v61;
      v101 = 2114;
      v102 = v63;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 247;
      v109 = 2114;
      v110 = v60;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v60 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB050);
  }

  v19 = targetCopy;
  if (!v19)
  {
    v64 = MEMORY[0x1E696AEC0];
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [v64 stringWithFormat:@"target", v66];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = NSStringFromSelector(a2);
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      *buf = 138544642;
      v100 = v68;
      v101 = 2114;
      v102 = v70;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 248;
      v109 = 2114;
      v110 = v67;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB168);
  }

  v20 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v71 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v20 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v73 = NSStringFromClass(classForCoder3);
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    v76 = [v71 stringWithFormat:@"target", v73, v75];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v77 = NSStringFromSelector(a2);
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);
      *buf = 138544642;
      v100 = v77;
      v101 = 2114;
      v102 = v79;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 248;
      v109 = 2114;
      v110 = v76;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v76 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB2A4);
  }

  v21 = reasonCopy;
  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  if (!v21)
  {
    v80 = NSStringFromClass(v23);
    v81 = [v22 stringWithFormat:@"reason", v80];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v82 = NSStringFromSelector(a2);
      v83 = objc_opt_class();
      v84 = NSStringFromClass(v83);
      *buf = 138544642;
      v100 = v82;
      v101 = 2114;
      v102 = v84;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 249;
      v109 = 2114;
      v110 = v81;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v81 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB3ACLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v85 = MEMORY[0x1E696AEC0];
    classForCoder4 = [v21 classForCoder];
    if (!classForCoder4)
    {
      classForCoder4 = objc_opt_class();
    }

    v87 = NSStringFromClass(classForCoder4);
    v88 = objc_opt_class();
    v89 = NSStringFromClass(v88);
    v90 = [v85 stringWithFormat:@"reason", v87, v89];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = NSStringFromSelector(a2);
      v92 = objc_opt_class();
      v93 = NSStringFromClass(v92);
      *buf = 138544642;
      v100 = v91;
      v101 = 2114;
      v102 = v93;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 249;
      v109 = 2114;
      v110 = v90;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v90 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB4E4);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_deferringSeed = self->_lock_deferringSeed;
  if (lock_deferringSeed + 1 > 1)
  {
    v25 = lock_deferringSeed + 1;
  }

  else
  {
    v25 = 1;
  }

  self->_lock_deferringSeed = v25;
  getpid();
  v26 = [BKSHIDEventDeferringRule ruleForDeferringEventsMatchingPredicate:"ruleForDeferringEventsMatchingPredicate:restrictedToEventDescriptors:toTarget:withReason:seed:pid:" restrictedToEventDescriptors:? toTarget:? withReason:? seed:? pid:?];
  if ([(NSMutableArray *)self->_lock_deferringRules containsObject:?])
  {
    v94 = [MEMORY[0x1E696AEC0] stringWithFormat:v26, self->_lock_deferringRules];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v95 = NSStringFromSelector(a2);
      v96 = objc_opt_class();
      v97 = NSStringFromClass(v96);
      *buf = 138544642;
      v100 = v95;
      v101 = 2114;
      v102 = v97;
      v103 = 2048;
      selfCopy9 = self;
      v105 = 2114;
      v106 = @"BKSHIDEventDeliveryManager.m";
      v107 = 1024;
      v108 = 260;
      v109 = 2114;
      v110 = v94;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v94 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB5D4);
  }

  [(NSMutableArray *)self->_lock_deferringRules addObject:?];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:self->_lock_deferringSeed, v21];
  v28 = objc_alloc(MEMORY[0x1E698E778]);
  v98 = v26;
  v29 = v26;
  v30 = [v28 initWithIdentifier:? forReason:? invalidationBlock:?];
  [(NSHashTable *)self->_lock_assertions addObject:?];
  os_unfair_lock_unlock(&self->_lock);

  return v30;
}

void __108__BKSHIDEventDeliveryManager_deferEventsMatchingPredicate_restrictedToEventDescriptors_toTarget_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:?];

  [*(*(a1 + 32) + 112) removeObject:?];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_forTesting)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
      v16 = @"BKSHIDEventDeliveryManager.m";
      v17 = 1024;
      v18 = 230;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB7CCLL);
  }

  v8.receiver = self;
  v8.super_class = BKSHIDEventDeliveryManager;
  [(BKSHIDEventDeliveryManager *)&v8 dealloc];
}

- (id)_initWithConnectionFactory:(id)factory forTesting:(BOOL)testing
{
  v92 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  if (!factoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"connectionFactory" object:? file:? lineNumber:? description:?];
  }

  v79.receiver = self;
  v79.super_class = BKSHIDEventDeliveryManager;
  v8 = [(BKSHIDEventDeliveryManager *)&v79 init];
  v9 = v8;
  if (v8)
  {
    v8->_forTesting = testing;
    v8->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_assertions = v9->_lock_assertions;
    v9->_lock_assertions = weakObjectsHashTable;

    Serial = BSDispatchQueueCreateSerial();
    asyncResultQueue = v9->_asyncResultQueue;
    v9->_asyncResultQueue = Serial;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_discreteDispatchingRoots = v9->_lock_discreteDispatchingRoots;
    v9->_lock_discreteDispatchingRoots = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentDiscreteDispatchingRoots = v9->_lock_lastSentDiscreteDispatchingRoots;
    v9->_lock_lastSentDiscreteDispatchingRoots = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_keyCommandsDispatchingRoots = v9->_lock_keyCommandsDispatchingRoots;
    v9->_lock_keyCommandsDispatchingRoots = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentKeyCommandsDispatchingRoots = v9->_lock_lastSentKeyCommandsDispatchingRoots;
    v9->_lock_lastSentKeyCommandsDispatchingRoots = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_deferringRules = v9->_lock_deferringRules;
    v9->_lock_deferringRules = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_keyCommandsRegistrations = v9->_lock_keyCommandsRegistrations;
    v9->_lock_keyCommandsRegistrations = v24;

    v26 = dispatch_get_global_queue(25, 0);
    v27 = dispatch_queue_create_with_target_V2("com.apple.backboard.hid.delivery-manager.implicit", 0, v26);
    implicitFlushQueue = v9->_implicitFlushQueue;
    v9->_implicitFlushQueue = v27;

    v29 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    lock_preventFlushingReasons = v9->_lock_preventFlushingReasons;
    v9->_lock_preventFlushingReasons = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_bufferingPredicates = v9->_lock_bufferingPredicates;
    v9->_lock_bufferingPredicates = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_modalityAsserts = v9->_lock_modalityAsserts;
    v9->_lock_modalityAsserts = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_constraintAsserts = v9->_lock_constraintAsserts;
    v9->_lock_constraintAsserts = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_selectionRequests = v9->_lock_selectionRequests;
    v9->_lock_selectionRequests = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentBufferingPredicates = v9->_lock_lastSentBufferingPredicates;
    v9->_lock_lastSentBufferingPredicates = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentModalityAsserts = v9->_lock_lastSentModalityAsserts;
    v9->_lock_lastSentModalityAsserts = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentConstraintAsserts = v9->_lock_lastSentConstraintAsserts;
    v9->_lock_lastSentConstraintAsserts = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    lock_lastSentDeferringRules = v9->_lock_lastSentDeferringRules;
    v9->_lock_lastSentDeferringRules = v45;

    v47 = objc_alloc_init(MEMORY[0x1E695DF20]);
    lock_lastSentKeyCommandsRegistrations = v9->_lock_lastSentKeyCommandsRegistrations;
    v9->_lock_lastSentKeyCommandsRegistrations = v47;

    v49 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentSetOfKeyCommandsRegistrations = v9->_lock_lastSentSetOfKeyCommandsRegistrations;
    v9->_lock_lastSentSetOfKeyCommandsRegistrations = v49;

    v51 = [factoryCopy clientConnectionForServiceWithName:?];
    if (!v51)
    {
      v58 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = [v58 stringWithFormat:@"connection", v60];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = NSStringFromSelector(a2);
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        *buf = 138544642;
        v81 = v62;
        v82 = 2114;
        v83 = v64;
        v84 = 2048;
        v85 = v9;
        v86 = 2114;
        v87 = @"BKSHIDEventDeliveryManager.m";
        v88 = 1024;
        v89 = 159;
        v90 = 2114;
        v91 = v61;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v61 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863ABC88);
    }

    v52 = v51;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v65 = MEMORY[0x1E696AEC0];
      classForCoder = [v52 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v67 = NSStringFromClass(classForCoder);
      objc_opt_class();
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      v70 = [v65 stringWithFormat:@"connection", v67, v69];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v71 = NSStringFromSelector(a2);
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        *buf = 138544642;
        v81 = v71;
        v82 = 2114;
        v83 = v73;
        v84 = 2048;
        v85 = v9;
        v86 = 2114;
        v87 = @"BKSHIDEventDeliveryManager.m";
        v88 = 1024;
        v89 = 159;
        v90 = 2114;
        v91 = v70;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v70 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863ABDC8);
    }

    v74 = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke;
    v77 = &unk_1E6F47978;
    v53 = v9;
    v78 = v53;
    [v52 configure:?];
    serviceConnection = v53->_serviceConnection;
    v53->_serviceConnection = v52;
    v55 = v52;

    [v55 activate];
  }

  return v9;
}

void __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E710];
  v4 = a2;
  v5 = [v3 protocolForProtocol:?];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v7 setClientMessagingExpectation:?];
  [v7 setServer:?];
  [v7 setClient:?];
  [v4 setInterface:?];
  [v4 setInterfaceTarget:?];
  v10 = *(a1 + 32);
  [v4 setActivationHandler:?];
  v8 = MEMORY[0x1E69E9820];
  v9 = *(a1 + 32);
  [v4 setInterruptionHandler:{v8, 3221225472, __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_103, &unk_1E6F474B0}];
  [v4 setInvalidationHandler:?];
}

void __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v4 = BKLogEventDelivery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "BKSHIDEventDeliveryManager - connection activation", buf, 2u);
  }

  v5 = [v3 remoteTarget];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  [*(a1 + 32) _lock_flushIfNeeded];
  v8 = *(*(a1 + 32) + 32);
  v9 = [v8 countByEnumeratingWithState:0 objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(8 * i) + 16))();
      }

      v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 32);
  *(v13 + 32) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 44));
}

void *__68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_103(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v2 = BKLogEventDelivery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_186345000, v2, OS_LOG_TYPE_DEFAULT, "BKSHIDEventDeliveryManager - connection interruption", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  [*(a1 + 32) _lock_noteServerInterruption];
  os_unfair_lock_unlock((*(a1 + 32) + 44));
  return [*(*(a1 + 32) + 8) activate];
}

void __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_104(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "delivery manager invalidated - backboardd must have unloaded, exiting…", v4, 2u);
  }

  exit(0);
}

- (BKSHIDEventDeliveryManager)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeliveryManager.m";
    v17 = 1024;
    v18 = 120;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end