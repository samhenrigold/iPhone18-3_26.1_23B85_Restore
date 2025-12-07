@interface BKIOHIDServiceMatcher
- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary dataProvider:(id)provider;
- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary serviceClass:(Class)class dataProvider:(id)provider;
- (BKIOHIDServiceMatcher)initWithSenderDescriptor:(id)descriptor dataProvider:(id)provider;
- (BKIOHIDServiceMatcher)initWithUsagePage:(int)page usage:(int)usage builtIn:(BOOL)in dataProvider:(id)provider;
- (id)_lock_didAddIOHIDServiceRefs:(os_unfair_lock *)refs;
- (id)_servicesForIOHIDServiceRefs:(id)refs;
- (id)_startObserving:(void *)observing queue:(int)queue sync:;
- (id)existingServices;
- (void)_expectDeallocation;
- (void)_lock_asyncNotifyServicesAdded:(uint64_t)added;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKIOHIDServiceMatcher

- (id)_servicesForIOHIDServiceRefs:(id)refs
{
  v4 = MEMORY[0x277CBEB18];
  refsCopy = refs;
  array = [v4 array];
  serviceClass = self->_serviceClass;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__BKIOHIDServiceMatcher__servicesForIOHIDServiceRefs___block_invoke;
  v12[3] = &unk_2784F6898;
  v14 = serviceClass;
  v12[4] = self;
  v8 = array;
  v13 = v8;
  [refsCopy enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __54__BKIOHIDServiceMatcher__servicesForIOHIDServiceRefs___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [[v3 alloc] initWithHIDServiceRef:v4];

  if (!*(*(a1 + 32) + 16))
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = [v5 senderDescriptor];
  v7 = *(*(a1 + 32) + 16);
  v11 = 0;
  v8 = [v6 matchesDescriptor:v7 failureReason:&v11];
  v9 = v11;

  if (v8)
  {
LABEL_8:
    [*(a1 + 40) addObject:v5];
LABEL_9:

    goto LABEL_10;
  }

  if (v9)
  {
    v10 = BKLogHID();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "service %{public}@ did not match: %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_startedMatching)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    serviceClass = self->_serviceClass;
    v5 = BKLogHID();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      matchingDictionary = self->_matchingDictionary;
      v9 = 134218754;
      selfCopy = self;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = serviceClass;
      v15 = 2114;
      v16 = matchingDictionary;
      v8 = v6;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_INFO, "%p %{public}@ stopped matching %{public}@ with dictionary %{public}@", &v9, 0x2Au);
    }

    atomic_store(1u, &self->_invalidated);
    objc_storeWeak(&self->_observer, 0);
    objc_storeWeak(&self->_observerQueue, 0);
    [(BKIOHIDServiceMatcherDataProviding *)self->_dataProvider unregisterIOHIDServicesCallback:_BKHIDServiceAdded matchingDictionary:self->_matchingDictionary target:self refCon:self->_matchingDictionary];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_didAddIOHIDServiceRefs:(os_unfair_lock *)refs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_assert_owner(refs + 2);
  v4 = [(os_unfair_lock *)refs _servicesForIOHIDServiceRefs:v3];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_INFO, "Services added: %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) setServiceStatus:{1, v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)_lock_asyncNotifyServicesAdded:(uint64_t)added
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(added + 24) == 1)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"wrong code path, pal"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(sel__lock_asyncNotifyServicesAdded_);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      addedCopy2 = added;
      v27 = 2114;
      v28 = @"BKIOHIDServiceMatcher.m";
      v29 = 1024;
      v30 = 229;
      v31 = 2114;
      v32 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CD7380);
  }

  v4 = v3;
  WeakRetained = objc_loadWeakRetained((added + 48));
  v6 = objc_loadWeakRetained((added + 56));
  if (!v6)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"shouldn't be possible to be invalid here"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(sel__lock_asyncNotifyServicesAdded_);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v22 = v15;
      v23 = 2114;
      v24 = v17;
      v25 = 2048;
      addedCopy2 = added;
      v27 = 2114;
      v28 = @"BKIOHIDServiceMatcher.m";
      v29 = 1024;
      v30 = 234;
      v31 = 2114;
      v32 = v14;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CD746CLL);
  }

  v7 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BKIOHIDServiceMatcher__lock_asyncNotifyServicesAdded___block_invoke;
  block[3] = &unk_2784F6B30;
  block[4] = added;
  v19 = WeakRetained;
  v8 = v4;
  v20 = v8;
  v9 = WeakRetained;
  dispatch_async(v7, block);
}

void *__56__BKIOHIDServiceMatcher__lock_asyncNotifyServicesAdded___block_invoke(void *result)
{
  v1 = atomic_load((*(result + 4) + 26));
  if ((v1 & 1) == 0)
  {
    return [*(result + 5) matcher:*(result + 4) servicesDidMatch:*(result + 6)];
  }

  return result;
}

- (id)_startObserving:(void *)observing queue:(int)queue sync:
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  observingCopy = observing;
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 8));
    os_unfair_lock_lock((self + 8));
    if (!observingCopy && (queue & 1) == 0)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing queue for async case"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel__startObserving_queue_sync_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v31 = 138544642;
        selfCopy3 = v20;
        v33 = 2114;
        v34 = v22;
        v35 = 2048;
        selfCopy4 = self;
        v37 = 2114;
        v38 = @"BKIOHIDServiceMatcher.m";
        v39 = 1024;
        v40 = 125;
        v41 = 2114;
        v42 = v19;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v31, 0x3Au);
      }

      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD77B0);
    }

    if (*(self + 25) == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"already started matching -- only one observer per matcher, plz"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel__startObserving_queue_sync_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v31 = 138544642;
        selfCopy3 = v24;
        v33 = 2114;
        v34 = v26;
        v35 = 2048;
        selfCopy4 = self;
        v37 = 2114;
        v38 = @"BKIOHIDServiceMatcher.m";
        v39 = 1024;
        v40 = 126;
        v41 = 2114;
        v42 = v23;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v31, 0x3Au);
      }

      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD789CLL);
    }

    *(self + 25) = 1;
    *(self + 24) = queue;
    objc_storeWeak((self + 48), v7);
    objc_storeWeak((self + 56), observingCopy);
    v9 = BKLogHID();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v12 = *(self + 32);
      v11 = *(self + 40);
      v31 = 134218754;
      selfCopy3 = self;
      v33 = 2114;
      v34 = v10;
      v35 = 2114;
      selfCopy4 = v11;
      v37 = 2114;
      v38 = v12;
      v13 = v10;
      _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "%p %{public}@ started matching %{public}@ with dictionary %{public}@", &v31, 0x2Au);
    }

    v14 = *(self + 64);
    if (!v14)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"must have a data provider"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(sel__startObserving_queue_sync_);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = 138544642;
        selfCopy3 = v28;
        v33 = 2114;
        v34 = v30;
        v35 = 2048;
        selfCopy4 = self;
        v37 = 2114;
        v38 = @"BKIOHIDServiceMatcher.m";
        v39 = 1024;
        v40 = 137;
        v41 = 2114;
        v42 = v27;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v31, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD7988);
    }

    [v14 registerIOHIDServicesCallback:_BKHIDServiceAdded matchingDictionary:*(self + 32) target:self refCon:*(self + 32)];
    if (queue)
    {
      existingServices = [self existingServices];
    }

    else
    {
      v16 = [*(self + 64) IOHIDServicesMatching:*(self + 32)];
      if ([v16 count])
      {
        v17 = [(BKIOHIDServiceMatcher *)self _lock_didAddIOHIDServiceRefs:v16];
        [(BKIOHIDServiceMatcher *)self _lock_asyncNotifyServicesAdded:v17];
      }

      existingServices = 0;
    }

    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    existingServices = 0;
  }

  return existingServices;
}

- (id)existingServices
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(BKIOHIDServiceMatcherDataProviding *)self->_dataProvider IOHIDServicesMatching:self->_matchingDictionary];
  v4 = [(BKIOHIDServiceMatcher *)self _servicesForIOHIDServiceRefs:v3];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    matchingDictionary = self->_matchingDictionary;
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = matchingDictionary;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "Services discovered: %{public}@ for:%{public}@", &v8, 0x16u);
  }

  return v4;
}

- (void)dealloc
{
  [(BKIOHIDServiceMatcher *)self _expectDeallocation];
  v3.receiver = self;
  v3.super_class = BKIOHIDServiceMatcher;
  [(BKIOHIDServiceMatcher *)&v3 dealloc];
}

- (void)_expectDeallocation
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_startedMatching)
  {
    v3 = atomic_load(&self->_invalidated);
    if ((v3 & 1) == 0)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"dealloc without invalidation"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(a2);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138544642;
        v10 = v6;
        v11 = 2114;
        v12 = v8;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = @"BKIOHIDServiceMatcher.m";
        v17 = 1024;
        v18 = 89;
        v19 = 2114;
        v20 = v5;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
      }

      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD7C48);
    }
  }
}

- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary serviceClass:(Class)class dataProvider:(id)provider
{
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = BKIOHIDServiceMatcher;
  v10 = [(BKIOHIDServiceMatcher *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceClass, class);
    v12 = [dictionaryCopy copy];
    matchingDictionary = v11->_matchingDictionary;
    v11->_matchingDictionary = v12;

    objc_storeStrong(&v11->_dataProvider, provider);
  }

  return v11;
}

- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary dataProvider:(id)provider
{
  providerCopy = provider;
  dictionaryCopy = dictionary;
  v8 = [(BKIOHIDServiceMatcher *)self initWithMatchingDictionary:dictionaryCopy serviceClass:objc_opt_class() dataProvider:providerCopy];

  return v8;
}

- (BKIOHIDServiceMatcher)initWithUsagePage:(int)page usage:(int)usage builtIn:(BOOL)in dataProvider:(id)provider
{
  v7 = *&usage;
  v8 = *&page;
  v26[3] = *MEMORY[0x277D85DE8];
  if (in)
  {
    v25[0] = @"DeviceUsagePage";
    v10 = MEMORY[0x277CCABB0];
    providerCopy = provider;
    v12 = [v10 numberWithInt:v8];
    v26[0] = v12;
    v25[1] = @"DeviceUsage";
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v25[2] = @"Built-In";
    v26[1] = v13;
    v26[2] = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEAC0];
    v15 = v26;
    v16 = v25;
    v17 = 3;
  }

  else
  {
    v23[0] = @"DeviceUsagePage";
    v18 = MEMORY[0x277CCABB0];
    providerCopy2 = provider;
    v12 = [v18 numberWithInt:v8];
    v23[1] = @"DeviceUsage";
    v24[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v24[1] = v13;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v24;
    v16 = v23;
    v17 = 2;
  }

  v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];

  v21 = [(BKIOHIDServiceMatcher *)self initWithMatchingDictionary:v20 dataProvider:provider];
  return v21;
}

- (BKIOHIDServiceMatcher)initWithSenderDescriptor:(id)descriptor dataProvider:(id)provider
{
  descriptorCopy = descriptor;
  providerCopy = provider;
  v9 = -[BKIOHIDServiceMatcher initWithUsagePage:usage:builtIn:dataProvider:](self, "initWithUsagePage:usage:builtIn:dataProvider:", [descriptorCopy primaryPage], objc_msgSend(descriptorCopy, "primaryUsage"), 0, providerCopy);

  if (v9)
  {
    objc_storeStrong(&v9->_senderDescriptor, descriptor);
  }

  return v9;
}

@end