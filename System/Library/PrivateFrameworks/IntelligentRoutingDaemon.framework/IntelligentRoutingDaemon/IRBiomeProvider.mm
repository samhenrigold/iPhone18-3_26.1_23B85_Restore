@interface IRBiomeProvider
- (IRBiomeProvider)init;
- (id)createStandardBiomeInterface;
- (id)fetchLatestEventsOfEventType:(int64_t)type numEvents:(unint64_t)events;
- (void)addObserver:(id)observer forEvent:(int64_t)event;
- (void)notifyObserversOfEvent:(int64_t)event withValue:(id)value;
- (void)removeObserver:(id)observer forEvent:(int64_t)event;
- (void)subscribe:(int64_t)subscribe;
- (void)unsubscribe:(int64_t)unsubscribe;
@end

@implementation IRBiomeProvider

- (IRBiomeProvider)init
{
  v9.receiver = self;
  v9.super_class = IRBiomeProvider;
  v2 = [(IRBiomeProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.intelligentroutingd.biomeProvider", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    eventTypeToObservers = v2->_eventTypeToObservers;
    v2->_eventTypeToObservers = strongToStrongObjectsMapTable;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)subscribe:(int64_t)subscribe
{
  biomeInterface = [(IRBiomeProvider *)self biomeInterface];
  [biomeInterface subscribeEvent:subscribe];
}

- (void)unsubscribe:(int64_t)unsubscribe
{
  biomeInterface = [(IRBiomeProvider *)self biomeInterface];
  [biomeInterface unsubscribeEvent:unsubscribe];
}

- (void)addObserver:(id)observer forEvent:(int64_t)event
{
  v42 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  eventTypeToObservers = self->_eventTypeToObservers;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v9 = [(NSMapTable *)eventTypeToObservers objectForKey:v8];

  if (!v9)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v11 = self->_eventTypeToObservers;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    [(NSMapTable *)v11 setObject:weakObjectsHashTable forKey:v12];
  }

  v13 = self->_eventTypeToObservers;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v15 = [(NSMapTable *)v13 objectForKey:v14];
  [v15 addObject:observerCopy];

  v16 = self->_eventTypeToObservers;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v18 = [(NSMapTable *)v16 objectForKey:v17];
  v19 = [v18 count];

  v20 = MEMORY[0x277D21308];
  v21 = MEMORY[0x277D21260];
  if (v19 == 1)
  {
    [(IRBiomeProvider *)self subscribe:event];
    v22 = dispatch_get_specific(*v20);
    v23 = *v21;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = IRBiomeEventTypeToString(event);
      v34 = 136315650;
      v35 = "#biome-provider, ";
      v36 = 2112;
      v37 = v22;
      v38 = 2080;
      uTF8String = [v24 UTF8String];
      _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEFAULT, "%s[%@], subscribing to context notification event, %s", &v34, 0x20u);
    }
  }

  v25 = dispatch_get_specific(*v20);
  v26 = *v21;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = IRBiomeEventTypeToString(event);
    v28 = v27;
    uTF8String2 = [v27 UTF8String];
    v30 = self->_eventTypeToObservers;
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    v32 = [(NSMapTable *)v30 objectForKey:v31];
    v33 = [v32 count];
    v34 = 136315906;
    v35 = "#biome-provider, ";
    v36 = 2112;
    v37 = v25;
    v38 = 2080;
    uTF8String = uTF8String2;
    v40 = 2048;
    v41 = v33;
    _os_log_impl(&dword_25543D000, v26, OS_LOG_TYPE_DEBUG, "%s[%@], added an observer to context notification event, %s, current number of observers, %lu", &v34, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer forEvent:(int64_t)event
{
  v40 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  eventTypeToObservers = self->_eventTypeToObservers;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v9 = [(NSMapTable *)eventTypeToObservers objectForKey:v8];

  if (v9)
  {
    v10 = self->_eventTypeToObservers;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    v12 = [(NSMapTable *)v10 objectForKey:v11];
    [v12 removeObject:observerCopy];

    v13 = self->_eventTypeToObservers;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    v15 = [(NSMapTable *)v13 objectForKey:v14];
    v16 = [v15 count];

    v17 = MEMORY[0x277D21308];
    v18 = MEMORY[0x277D21260];
    if (!v16)
    {
      v19 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v20 = *v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = IRBiomeEventTypeToString(event);
        v32 = 136315650;
        v33 = "#biome-provider, ";
        v34 = 2112;
        v35 = v19;
        v36 = 2080;
        uTF8String = [v21 UTF8String];
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "%s[%@], unsubscribing to context notification event, %s", &v32, 0x20u);
      }

      [(IRBiomeProvider *)self unsubscribe:event];
    }

    v22 = dispatch_get_specific(*v17);
    v23 = *v18;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = IRBiomeEventTypeToString(event);
      v25 = v24;
      uTF8String2 = [v24 UTF8String];
      v27 = self->_eventTypeToObservers;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:event];
      v29 = [(NSMapTable *)v27 objectForKey:v28];
      v30 = [v29 count];
      v32 = 136315906;
      v33 = "#biome-provider, ";
      v34 = 2112;
      v35 = v22;
      v36 = 2080;
      uTF8String = uTF8String2;
      v38 = 2048;
      v39 = v30;
      _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEBUG, "%s[%@], removed an observer to context notification event, %s, current number of observers, %lu", &v32, 0x2Au);
    }
  }

  else
  {
    v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v23 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = IRBiomeEventTypeToString(event);
      v32 = 136315650;
      v33 = "#biome-provider, ";
      v34 = 2112;
      v35 = v22;
      v36 = 2080;
      uTF8String = [v31 UTF8String];
      _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEFAULT, "%s[%@], asked to remove an observer but no observer registered for event: %s", &v32, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversOfEvent:(int64_t)event withValue:(id)value
{
  v49 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  os_unfair_lock_lock(&self->_lock);
  eventTypeToObservers = self->_eventTypeToObservers;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v9 = [(NSMapTable *)eventTypeToObservers objectForKey:v8];

  v10 = [[IRBiomeParameters alloc] initWithBiomeEventType:event];
  eventBody = [valueCopy eventBody];
  [(IRBiomeParameters *)v10 biomeEventClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    eventBody2 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v16 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = IRBiomeEventTypeToString(event);
      *buf = 136315650;
      v44 = "#biome-provider, ";
      v45 = 2112;
      v46 = eventBody2;
      v47 = 2080;
      uTF8String = [v21 UTF8String];
      _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Biome event missmatch] received biome event data doesn't match event type, %s", buf, 0x20u);
    }

    goto LABEL_31;
  }

  if (event <= 1)
  {
    if (event == 1)
    {
      eventBody2 = [valueCopy eventBody];
      v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v23 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v44 = "#biome-provider, ";
        v45 = 2112;
        v46 = v22;
        _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEBUG, "%s[%@], Notify clients of a DeviceWiFi event", buf, 0x16u);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v9;
      v24 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (!v24)
      {
        goto LABEL_31;
      }

      v31 = v9;
      v32 = valueCopy;
      v25 = *v38;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v37 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v27 provider:self didUpdateDeviceWiFi:eventBody2];
          }
        }

        v24 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v24);
      goto LABEL_30;
    }

    if (event)
    {
      goto LABEL_32;
    }

LABEL_36:
    v28 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v29 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v30 = IRBiomeEventTypeToString(event);
      *buf = 136315650;
      v44 = "#biome-provider, ";
      v45 = 2112;
      v46 = v28;
      v47 = 2080;
      uTF8String = [v30 UTF8String];
      _os_log_impl(&dword_25543D000, v29, OS_LOG_TYPE_FAULT, "%s[%@], [ErrorId - Biome unsupported event on notify] IRBiome, can't notify clients of biome event type %s", buf, 0x20u);
    }

    [IRBiomeProvider notifyObserversOfEvent:v29 withValue:v28];
  }

  if (event != 2)
  {
    if ((event - 3) >= 2)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  eventBody2 = [valueCopy eventBody];
  v14 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v15 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v44 = "#biome-provider, ";
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&dword_25543D000, v15, OS_LOG_TYPE_DEBUG, "%s[%@], Notify clients of a MediaRoute event", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v17)
  {
    goto LABEL_31;
  }

  v31 = v9;
  v32 = valueCopy;
  v18 = *v34;
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v33 + 1) + 8 * j);
      if (objc_opt_respondsToSelector())
      {
        [v20 provider:self didUpdateMediaRoute:eventBody2];
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
  }

  while (v17);
LABEL_30:
  v9 = v31;
  valueCopy = v32;
LABEL_31:

LABEL_32:
  os_unfair_lock_unlock(&self->_lock);
}

- (id)fetchLatestEventsOfEventType:(int64_t)type numEvents:(unint64_t)events
{
  os_unfair_lock_lock(&self->_lock);
  biomeInterface = [(IRBiomeProvider *)self biomeInterface];
  v8 = [biomeInterface fetchLatestEventsOfEventType:type numEvents:events];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)createStandardBiomeInterface
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [[IRBiomeBridge alloc] initWithBiomeProvider:self targetQueue:self->_internalQueue];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)notifyObserversOfEvent:(void *)a1 withValue:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *v10 = 136316162;
    *&v10[4] = "#biome-provider, ";
    *&v10[12] = 2112;
    *&v10[14] = v3;
    *&v10[22] = 2080;
    OUTLINED_FUNCTION_3(&dword_25543D000, v4, v5, "%s[%@], %s:%d: assertion failure in %s", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16], "/Library/Caches/com.apple.xbs/Sources/IntelligentRouting/IntelligentRoutingDaemon/DataProviders/Biome/IRBiomeProvider.m", 0x8200000008A0400, "[IRBiomeProvider notifyObserversOfEvent:withValue:]");
  }

  abort();
}

@end