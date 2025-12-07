@interface BKHIDGenericGestureEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_postEvent:(__IOHIDEvent *)event toDestination:(id)destination usingDispatcher:(id)dispatcher;
- (void)serviceDidDisappear:(id)disappear;
@end

@implementation BKHIDGenericGestureEventProcessor

- (void)_postEvent:(__IOHIDEvent *)event toDestination:(id)destination usingDispatcher:(id)dispatcher
{
  v13 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  v8 = BKLogGenericGesture();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = destinationCopy;
    _os_log_impl(&dword_241980000, v8, OS_LOG_TYPE_DEFAULT, "  send to %{public}@", &v11, 0xCu);
  }

  Copy = IOHIDEventCreateCopy();
  v10 = [MEMORY[0x277CF0610] baseAttributesFromProvider:destinationCopy];
  BKSHIDEventSetAttributes();
  [dispatcherCopy postEvent:Copy toDestination:destinationCopy];

  CFRelease(Copy);
}

- (void)serviceDidDisappear:(id)disappear
{
  v24 = *MEMORY[0x277D85DE8];
  disappearCopy = disappear;
  os_unfair_lock_lock(&self->_lock);
  senderID = [disappearCopy senderID];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:senderID];
  v7 = [(NSMutableDictionary *)self->_pendingDestinationsPerSenderID objectForKey:v6];
  if ([v7 count])
  {
    v8 = [(NSMutableDictionary *)self->_genericGestureTypePerSenderID objectForKey:v6];
    [v8 unsignedIntValue];
    mach_absolute_time();
    GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
    IOHIDEventSetSenderID();
    IOHIDEventSetPhase();
    v10 = BKLogGenericGesture();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = BKSHIDEventGetConciseDescription();
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_241980000, v10, OS_LOG_TYPE_DEFAULT, "generic cancel %{public}@", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(BKHIDGenericGestureEventProcessor *)self _postEvent:GenericGestureEvent toDestination:*(*(&v17 + 1) + 8 * v16++) usingDispatcher:self->_eventDispatcher, v17];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }

    [(NSMutableDictionary *)self->_pendingDestinationsPerSenderID removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_genericGestureTypePerSenderID removeObjectForKey:v6];
    CFRelease(GenericGestureEvent);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v55 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  objc_storeStrong(&self->_eventDispatcher, dispatcher);
  if (IOHIDEventGetType() == 39)
  {
    v11 = BKLogGenericGesture();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = BKSHIDEventGetConciseDescription();
      *buf = 138543362;
      v51 = v12;
      _os_log_impl(&dword_241980000, v11, OS_LOG_TYPE_DEFAULT, "generic %{public}@", buf, 0xCu);
    }

    Phase = IOHIDEventGetPhase();
    if (!Phase)
    {
      v19 = BKLogGenericGesture();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v10;
        _os_log_error_impl(&dword_241980000, v19, OS_LOG_TYPE_ERROR, "filtering out generic event with zero phase (%{public}@)", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v14 = Phase;
    os_unfair_lock_lock(&self->_lock);
    senderID = [senderCopy senderID];
    [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v44 = v15 = v14 & 0xC;
    v16 = [(NSMutableDictionary *)self->_pendingDestinationsPerSenderID objectForKeyedSubscript:?];
    if ([v16 count])
    {
      v45 = 0;
      v17 = v16;
    }

    else
    {
      v17 = v16;
      v16 = [dispatcherCopy destinationsForEvent:v10 fromSender:senderCopy];
      v45 = v16;
    }

    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v47;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(BKHIDGenericGestureEventProcessor *)self _postEvent:v10 toDestination:*(*(&v46 + 1) + 8 * i) usingDispatcher:dispatcherCopy];
        }

        v22 = [v20 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v22);
    }

    if (v15)
    {
      v19 = v44;
      v25 = v45;
      if ([v17 count])
      {
        v26 = BKLogGenericGesture();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v51 = senderID;
          _os_log_impl(&dword_241980000, v26, OS_LOG_TYPE_DEFAULT, "  sender:%llX remove all destinations", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_pendingDestinationsPerSenderID removeObjectForKey:v44];
        [(NSMutableDictionary *)self->_genericGestureTypePerSenderID removeObjectForKey:v44];
        v27 = objc_opt_class();
        v28 = senderCopy;
        if (v27)
        {
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v41 = v29;

        if (v41)
        {
          [v41 removeDisappearanceObserver:self];
        }

LABEL_41:
      }
    }

    else
    {
      v25 = v45;
      v19 = v44;
      if ([v45 count])
      {
        pendingDestinationsPerSenderID = self->_pendingDestinationsPerSenderID;
        if (!pendingDestinationsPerSenderID)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v32 = self->_pendingDestinationsPerSenderID;
          self->_pendingDestinationsPerSenderID = v31;

          v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
          genericGestureTypePerSenderID = self->_genericGestureTypePerSenderID;
          self->_genericGestureTypePerSenderID = v33;

          pendingDestinationsPerSenderID = self->_pendingDestinationsPerSenderID;
        }

        [(NSMutableDictionary *)pendingDestinationsPerSenderID setObject:v45 forKeyedSubscript:v44];
        v35 = [MEMORY[0x277CCABB0] numberWithLong:IOHIDEventGetIntegerValue()];
        [(NSMutableDictionary *)self->_genericGestureTypePerSenderID setObject:v35 forKeyedSubscript:v44];

        v36 = BKLogGenericGesture();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v45 bs_map:&__block_literal_global];
          *buf = 134218242;
          v51 = senderID;
          v52 = 2114;
          v53 = v37;
          _os_log_impl(&dword_241980000, v36, OS_LOG_TYPE_DEFAULT, "  sender:%llX acquire destinations:%{public}@", buf, 0x16u);
        }

        v38 = objc_opt_class();
        v39 = senderCopy;
        if (v38)
        {
          if (objc_opt_isKindOfClass())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          v40 = 0;
        }

        v25 = v45;
        v41 = v40;

        if (v41)
        {
          [v41 addDisappearanceObserver:self queue:MEMORY[0x277D85CD0]];
        }

        goto LABEL_41;
      }
    }

    os_unfair_lock_unlock(&self->_lock);

LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  v18 = 0;
LABEL_44:

  return v18;
}

uint64_t __68__BKHIDGenericGestureEventProcessor_processEvent_sender_dispatcher___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 pid];

  return [v2 numberWithInt:v3];
}

@end