@interface NHSSRelevantWidgetDefaults
+ (NHSSRelevantWidgetDefaults)sharedInstance;
- (NHSSRelevantWidgetDefaults)init;
- (NSArray)relevantWidgets;
- (void)_mainQueue_notifyObserversDefaultsDidChange;
- (void)_observeChangesToRelevantWidgetDefaults;
- (void)addObserver:(id)observer;
- (void)relevantWidgetDefaultsDidChange;
- (void)relevantWidgets;
- (void)removeObserver:(id)observer;
- (void)setRelevantWidgets:(id)widgets;
@end

@implementation NHSSRelevantWidgetDefaults

+ (NHSSRelevantWidgetDefaults)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[NHSSRelevantWidgetDefaults sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __44__NHSSRelevantWidgetDefaults_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(NHSSRelevantWidgetDefaults);

  return MEMORY[0x2821F96F8]();
}

- (NHSSRelevantWidgetDefaults)init
{
  v10.receiver = self;
  v10.super_class = NHSSRelevantWidgetDefaults;
  v2 = [(NHSSRelevantWidgetDefaults *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = weakObjectsHashTable;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.NanoHomeScreen.RelevantWidgetDefaults.syncQueue", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    [(NHSSRelevantWidgetDefaults *)v3 _observeChangesToRelevantWidgetDefaults];
  }

  return v3;
}

- (NSArray)relevantWidgets
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.RelevantWidgetDefaults"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"relevantWidgets"];
    v16 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v16];
    v6 = v16;
    [v5 setDecodingFailurePolicy:1];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v5 decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCA308]];
    v11 = v10;
    if (v6)
    {
      v12 = NHSSLogDefault(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(NHSSRelevantWidgetDefaults *)v6 relevantWidgets];
      }
    }

    else
    {
      if (v10)
      {
        v13 = v10;
        goto LABEL_11;
      }

      v12 = NHSSLogDefault(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B171000, v12, OS_LOG_TYPE_DEFAULT, "NHSSRelevantWidgetDefaults: Decoded nil object when expecting array. Returning empty array as fallback.", buf, 2u);
      }
    }

    v13 = MEMORY[0x277CBEBF8];
LABEL_11:

    goto LABEL_12;
  }

  v4 = NHSSLogDefault(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NHSSRelevantWidgetDefaults *)v4 relevantWidgets];
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_12:

  return v13;
}

- (void)setRelevantWidgets:(id)widgets
{
  widgetsCopy = widgets;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke;
  v7[3] = &unk_279932E90;
  v8 = widgetsCopy;
  selfCopy = self;
  v6 = widgetsCopy;
  dispatch_async(queue, v7);
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.RelevantWidgetDefaults"];
  if (v2)
  {
    v4 = (a1 + 32);
    v3 = *(a1 + 32);
    v16 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
    v6 = v16;
    if (!v6)
    {
      v7 = [v5 length];
      if (v7 <= 0x3D090)
      {
        [v2 setObject:v5 forKey:@"relevantWidgets"];
        v10 = [v2 synchronize];
        v9 = objc_alloc_init(MEMORY[0x277D2BA60]);
        v11 = [MEMORY[0x277CBEB98] setWithObject:@"relevantWidgets"];
        [v9 synchronizeNanoDomain:@"com.apple.NanoHomeScreen.RelevantWidgetDefaults" keys:v11];
        [*(a1 + 40) relevantWidgetDefaultsDidChange];
      }

      else
      {
        v8 = NHSSLogDefault(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_cold_1(v5, v4, v8);
        }

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16;
        v12[3] = &unk_279932E68;
        v13 = v5;
        v15 = 250000;
        v14 = *v4;
        if (_NHSSRelevantWidgetDefaultsChangedNotificationName_block_invoke_onceToken != -1)
        {
          dispatch_once(&_NHSSRelevantWidgetDefaultsChangedNotificationName_block_invoke_onceToken, v12);
        }

        v9 = v13;
      }
    }
  }

  else
  {
    v6 = NHSSLogDefault(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_cold_2(v6);
    }
  }
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16(uint64_t a1)
{
  v2 = NHSSLogDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16_cold_1(a1, v2);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_observeChangesToRelevantWidgetDefaults
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _NHSSRelevantWidgetDefaultsChangeHandler, @"com.apple.NanoHomeScreen.RelevantWidgetDefaultsChanged", self, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)relevantWidgetDefaultsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NHSSRelevantWidgetDefaults_relevantWidgetDefaultsDidChange__block_invoke;
  block[3] = &unk_279932E40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_mainQueue_notifyObserversDefaultsDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) relevantWidgetDefaultsDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)relevantWidgets
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25B171000, a2, OS_LOG_TYPE_ERROR, "NHSSRelevantWidgetDefaults: Decoding error, returning empty array as fallback. Error: %@", &v2, 0xCu);
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_cold_1(void *a1, uint64_t *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 length];
  v6 = *a2;
  v7 = 134218498;
  v8 = v5;
  v9 = 2048;
  v10 = 250000;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_25B171000, a3, OS_LOG_TYPE_ERROR, "NHSSRelevantWidgetDefaults: Data is %ld bytes, which is over threshold of %ld bytes. This shouldn't happen. relevantWidgets: %@", &v7, 0x20u);
}

void __49__NHSSRelevantWidgetDefaults_setRelevantWidgets___block_invoke_16_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) length];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = 134218498;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_fault_impl(&dword_25B171000, a2, OS_LOG_TYPE_FAULT, "NHSSRelevantWidgetDefaults: Data is %ld bytes, which is over threshold of %ld bytes. This shouldn't happen. relevantWidgets: %@", &v7, 0x20u);
}

@end