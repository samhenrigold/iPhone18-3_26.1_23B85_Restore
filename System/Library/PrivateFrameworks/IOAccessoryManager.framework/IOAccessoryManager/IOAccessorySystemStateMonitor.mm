@interface IOAccessorySystemStateMonitor
- (IOAccessorySystemStateMonitor)init;
- (void)addEndpointForService:(unsigned int)service;
- (void)dealloc;
- (void)notifyEndpointsBootComplete:(BOOL)complete;
- (void)notifyEndpointsUserActive:(BOOL)active;
- (void)notifyEndpointsUserPresent:(BOOL)present;
- (void)processBootState;
- (void)processDisplayState;
- (void)removeEndpointForService:(unsigned int)service;
@end

@implementation IOAccessorySystemStateMonitor

- (IOAccessorySystemStateMonitor)init
{
  v34.receiver = self;
  v34.super_class = IOAccessorySystemStateMonitor;
  v2 = [(IOAccessorySystemStateMonitor *)&v34 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IOAccessoryManager.SystemStateMonitor", 0);
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v2 + 6) = v5;
    IONotificationPortSetDispatchQueue(v5, *(v2 + 7));
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = *(v2 + 4);
    *(v2 + 4) = dictionary;

    v8 = *(v2 + 6);
    v9 = IOServiceMatching("IOAccessoryIDBusSystemStates");
    IOServiceAddMatchingNotification(v8, "IOServiceFirstPublish", v9, ProcessPublishedEndpoints, v2, v2 + 4);
    v10 = *(v2 + 6);
    v11 = IOServiceMatching("IOAccessoryIDBusSystemStates");
    IOServiceAddMatchingNotification(v10, "IOServiceTerminate", v11, ProcessTerminatedEndpoints, v2, v2 + 5);
    v12 = *(v2 + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke;
    block[3] = &unk_279793120;
    v13 = v2;
    v33 = v13;
    dispatch_sync(v12, block);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __37__IOAccessorySystemStateMonitor_init__block_invoke_2;
    v30 = &unk_279793370;
    v14 = v13;
    v31 = v14;
    *(v14 + 5) = IOPMScheduleUserActivityLevelNotificationWithTimeout();
    v15 = *(v2 + 7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke_3;
    handler[3] = &unk_279793398;
    v16 = v14;
    v26 = v16;
    notify_register_dispatch("com.apple.RealitySimulation.DisplayRevealFirstBoot", v14 + 6, v15, handler);
    v17 = *(v2 + 7);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke_4;
    v23[3] = &unk_279793398;
    v18 = v16;
    v24 = v18;
    notify_register_dispatch("com.apple.iokit.hid.displayStatus", v16 + 7, v17, v23);
    v19 = *(v2 + 7);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __37__IOAccessorySystemStateMonitor_init__block_invoke_5;
    v21[3] = &unk_279793120;
    v22 = v18;
    dispatch_sync(v19, v21);
  }

  return v2;
}

uint64_t __37__IOAccessorySystemStateMonitor_init__block_invoke(uint64_t a1)
{
  ProcessPublishedEndpoints(*(a1 + 32), *(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = v2[5];

  return ProcessTerminatedEndpoints(v2, v3);
}

uint64_t __37__IOAccessorySystemStateMonitor_init__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) processDisplayState];
  v2 = *(a1 + 32);

  return [v2 processBootState];
}

- (void)dealloc
{
  if (self->_pmNotificationHandle)
  {
    IOPMUnregisterNotification();
    self->_pmNotificationHandle = 0;
  }

  displayNotifyToken = self->_displayNotifyToken;
  if (displayNotifyToken)
  {
    notify_cancel(displayNotifyToken);
    self->_displayNotifyToken = 0;
  }

  discoveryIterator = self->_discoveryIterator;
  if (discoveryIterator)
  {
    IOObjectRelease(discoveryIterator);
    self->_discoveryIterator = 0;
  }

  terminationIterator = self->_terminationIterator;
  if (terminationIterator)
  {
    IOObjectRelease(terminationIterator);
    self->_terminationIterator = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
    self->_notificationPort = 0;
  }

  v7.receiver = self;
  v7.super_class = IOAccessorySystemStateMonitor;
  [(IOAccessorySystemStateMonitor *)&v7 dealloc];
}

- (void)addEndpointForService:(unsigned int)service
{
  if (service)
  {
    v3 = *&service;
    if (IOObjectConformsTo(service, "IOAccessoryIDBusSystemStates"))
    {
      entryID = 0;
      RegistryEntryID = IORegistryEntryGetRegistryEntryID(v3, &entryID);
      if (RegistryEntryID)
      {
        v6 = RegistryEntryID;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IOAccessorySystemStateMonitor addEndpointForService:v6];
        }
      }

      else
      {
        endpointMap = self->_endpointMap;
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
        v9 = [(NSMutableDictionary *)endpointMap objectForKeyedSubscript:v8];

        if (v9)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IOAccessorySystemStateMonitor addEndpointForService:];
          }
        }

        else
        {
          v10 = [[IOAccessorySystemStateEndpoint alloc] initWithService:v3];
          v11 = v10;
          if (v10)
          {
            if (self->_userActive)
            {
              [(IOAccessorySystemStateEndpoint *)v10 notifyUserActive:1];
            }

            if (self->_userPresent)
            {
              [(IOAccessorySystemStateEndpoint *)v11 notifyUserPresent:1];
            }

            if (self->_bootComplete)
            {
              [(IOAccessorySystemStateEndpoint *)v11 notifyBootComplete];
            }

            v12 = self->_endpointMap;
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
            [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IOAccessorySystemStateMonitor addEndpointForService:];
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOAccessorySystemStateMonitor addEndpointForService:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [IOAccessorySystemStateMonitor addEndpointForService:];
  }
}

- (void)processDisplayState
{
  state64 = 0;
  notify_get_state(self->_displayNotifyToken, &state64);
  [(IOAccessorySystemStateMonitor *)self notifyEndpointsUserPresent:state64 != 0];
}

- (void)processBootState
{
  state64 = 0;
  notify_get_state(self->_bootToken, &state64);
  [(IOAccessorySystemStateMonitor *)self notifyEndpointsBootComplete:state64 != 0];
}

- (void)removeEndpointForService:(unsigned int)service
{
  if (service)
  {
    entryID = 0;
    if (!IORegistryEntryGetRegistryEntryID(service, &entryID))
    {
      endpointMap = self->_endpointMap;
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
      [(NSMutableDictionary *)endpointMap setObject:0 forKeyedSubscript:v5];
    }
  }
}

- (void)notifyEndpointsBootComplete:(BOOL)complete
{
  v18 = *MEMORY[0x277D85DE8];
  if (complete)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableDictionary *)self->_endpointMap count];
      *buf = 136315394;
      v15 = "[IOAccessorySystemStateMonitor notifyEndpointsBootComplete:]";
      v16 = 2048;
      v17 = v4;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s boot completed notifying %lu endpoints", buf, 0x16u);
    }

    OUTLINED_FUNCTION_4_1();
    v5 = self->_endpointMap;
    OUTLINED_FUNCTION_3_2();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_endpointMap objectForKeyedSubscript:*(v12 + 8 * v10)];
          [v11 notifyBootComplete];

          ++v10;
        }

        while (v8 != v10);
        OUTLINED_FUNCTION_3_2();
        v8 = [NSMutableDictionary countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v8);
    }

    self->_bootComplete = 1;
  }
}

- (void)notifyEndpointsUserActive:(BOOL)active
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_userActive != active)
  {
    activeCopy = active;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableDictionary *)self->_endpointMap count];
      *buf = 136315906;
      OUTLINED_FUNCTION_1_5(v5, "[IOAccessorySystemStateMonitor notifyEndpointsUserActive:]");
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s user active changed %d->%d notifying %lu endpoints", buf, 0x22u);
    }

    OUTLINED_FUNCTION_4_1();
    v6 = self->_endpointMap;
    OUTLINED_FUNCTION_3_2();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [(NSMutableDictionary *)self->_endpointMap objectForKeyedSubscript:*(v13 + 8 * v11)];
          [v12 notifyUserActive:activeCopy];

          ++v11;
        }

        while (v9 != v11);
        OUTLINED_FUNCTION_3_2();
        v9 = [NSMutableDictionary countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v9);
    }

    self->_userActive = activeCopy;
  }
}

- (void)notifyEndpointsUserPresent:(BOOL)present
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_userPresent != present)
  {
    presentCopy = present;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableDictionary *)self->_endpointMap count];
      *buf = 136315906;
      OUTLINED_FUNCTION_1_5(v5, "[IOAccessorySystemStateMonitor notifyEndpointsUserPresent:]");
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s user present changed %d->%d notifying %lu endpoints", buf, 0x22u);
    }

    OUTLINED_FUNCTION_4_1();
    v6 = self->_endpointMap;
    OUTLINED_FUNCTION_3_2();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [(NSMutableDictionary *)self->_endpointMap objectForKeyedSubscript:*(v13 + 8 * v11)];
          [v12 notifyUserPresent:presentCopy];

          ++v11;
        }

        while (v9 != v11);
        OUTLINED_FUNCTION_3_2();
        v9 = [NSMutableDictionary countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v9);
    }

    self->_userPresent = presentCopy;
  }
}

- (void)addEndpointForService:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end