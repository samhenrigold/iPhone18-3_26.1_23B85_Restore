@interface _GCKeyboardAndMouseManager
- (NSSet)devices;
- (_GCKeyboardAndMouseManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (id)keyboardHIDServices;
- (id)keyboards;
- (id)matchingHIDServiceAttributes;
- (id)mice;
- (uint64_t)handleHIDEvent:(uint64_t)event atTimestamp:(void *)timestamp forSubject:;
- (void)_onqueue_HIDServiceAdded:(uint64_t)added;
- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed;
- (void)_onqueue_addMouse:(uint64_t)mouse;
- (void)_onqueue_refreshKeyboards;
- (void)_onqueue_removeMouse:(uint64_t)mouse;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
- (void)setKeyboardHIDServices:(void *)services;
@end

@implementation _GCKeyboardAndMouseManager

- (_GCKeyboardAndMouseManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  environmentCopy = environment;
  v21.receiver = self;
  v21.super_class = _GCKeyboardAndMouseManager;
  v10 = [(_GCKeyboardAndMouseManager *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionQueue, queue);
    *&v11->_monitorKeyboards = 257;
    v12 = objc_opt_new();
    hidServiceSubjects = v11->_hidServiceSubjects;
    v11->_hidServiceSubjects = v12;

    v14 = [MEMORY[0x277CBEB98] set];
    keyboardHIDServices = v11->_keyboardHIDServices;
    v11->_keyboardHIDServices = v14;

    v16 = objc_opt_new();
    mice = v11->_mice;
    v11->_mice = v16;

    v18 = GCLookupService();
    hidServiceProviding = v11->_hidServiceProviding;
    v11->_hidServiceProviding = v18;
  }

  return v11;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  self->_hidEventSource = [session hidEventSource];

  MEMORY[0x2821F96F8]();
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___GCKeyboardAndMouseManager_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_277E1DD80;
  v8[4] = self;
  v6 = [MEMORY[0x277D0C900] futureOnQueue:sessionQueue withBlock:{v8, options}];

  return v6;
}

- (void)_onqueue_HIDServiceAdded:(uint64_t)added
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (added)
  {
    dispatch_assert_queue_V2(*(added + 8));
    v4 = *(added + 48);
    registryID = [v3 registryID];
    v6 = [v4 objectForKey:registryID];

    if (v6)
    {
      v8 = _gc_log_keyboard_and_mouse(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [_GCKeyboardAndMouseManager _onqueue_HIDServiceAdded:];
      }
    }

    else
    {
      [v3 service];
      v9 = isDeviceKeyboard();
      [v3 service];
      v10 = isDeviceMouse();
      v11 = v10;
      if ((v9 & 1) != 0 || v10)
      {
        registryID2 = [v3 registryID];
        v13 = objc_opt_new();
        v14 = *(added + 48);
        objc_sync_enter(v14);
        [*(added + 48) setObject:v13 forKey:registryID2];
        objc_sync_exit(v14);

        v16 = _gc_log_keyboard_and_mouse(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = 138412802;
          v18 = v3;
          v19 = 1024;
          v20 = v9;
          v21 = 1024;
          v22 = v11;
          _os_log_impl(&dword_20E408000, v16, OS_LOG_TYPE_INFO, "Now tracking %@. Is Keyboard(%{BOOL}d), Mouse(%{BOOL}d)", &v17, 0x18u);
        }
      }

      [(_GCKeyboardAndMouseManager *)v9 _onqueue_HIDServiceAdded:v11, v3, added];
    }
  }
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___GCKeyboardAndMouseManager_invalidateWithSession_environment___block_invoke;
  v7[3] = &unk_277E1DD80;
  v7[4] = self;
  v5 = [MEMORY[0x277D0C900] futureOnQueue:sessionQueue withBlock:v7];

  return v5;
}

- (NSSet)devices
{
  mice = [(_GCKeyboardAndMouseManager *)self mice];
  v5 = objc_getProperty(self, a2, 56, 1);
  if (v5)
  {
    v6 = [mice setByAddingObject:v5];

    mice = v6;
  }

  return mice;
}

- (id)keyboards
{
  v2 = objc_getProperty(self, a2, 56, 1);
  if (v2)
  {
    [MEMORY[0x277CBEB98] setWithObject:v2];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (void)_onqueue_refreshKeyboards
{
  v25 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_sessionQueue);
  v5 = objc_getProperty(self, v4, 72, 1);
  if (![v5 count])
  {
    goto LABEL_15;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x277CCB0D0]);
        v14 = [v13 initWithSource:self->_hidEventSource service:{v12, v20}];
        [v6 addObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ([v6 count] < 2)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = [objc_alloc(MEMORY[0x277CCB0C8]) initWithSources:v6];
  }

  v16 = firstObject;

  if (!v16)
  {
LABEL_15:
    if (!self->_coalescedKeyboard)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v17 = [MEMORY[0x277CBEB98] setWithObject:?];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v17];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"keyboards" withSetMutation:2 usingObjects:v17];
    objc_setProperty_atomic(self, a2, 0, 56);
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"keyboards" withSetMutation:2 usingObjects:v17];
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v17];
    v16 = 0;
    goto LABEL_17;
  }

  if (!self->_coalescedKeyboard)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCB080]);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v17];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v18];
    [(_GCKeyboardAndMouseManager *)self willChangeValueForKey:@"keyboards" withSetMutation:1 usingObjects:v18];
    objc_setProperty_atomic(self, a2, v17, 56);
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"keyboards" withSetMutation:1 usingObjects:v18];
    [(_GCKeyboardAndMouseManager *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v18];

LABEL_17:
  }

LABEL_19:
  keyboardInput = [(GCKeyboard *)self->_coalescedKeyboard keyboardInput];
  [keyboardInput setKeyboardEventSource:v16];
}

- (id)mice
{
  v3 = objc_opt_new();
  v4 = self->_mice;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_mice allValues];
  [v3 addObjectsFromArray:allValues];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_addMouse:(uint64_t)mouse
{
  v3 = a2;
  if (mouse)
  {
    dispatch_assert_queue_V2(*(mouse + 8));
    v4 = [*(mouse + 64) objectForKey:v3];

    if (v4)
    {
      registryID = _gc_log_keyboard_and_mouse(v5);
      if (os_log_type_enabled(registryID, OS_LOG_TYPE_DEBUG))
      {
        [_GCKeyboardAndMouseManager _onqueue_addMouse:];
      }
    }

    else
    {
      registryID = [v3 registryID];
      v7 = *(mouse + 48);
      objc_sync_enter(v7);
      v8 = [*(mouse + 48) objectForKey:registryID];
      objc_sync_exit(v7);

      if (v8)
      {
        [v3 service];
        v10 = serviceMatchesUsageAndUsagePage();
        if ((v10 & 1) != 0 || (v10 = serviceMatchesUsageAndUsagePage(), v10))
        {
          v11 = _gc_log_keyboard_and_mouse(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [_GCKeyboardAndMouseManager _onqueue_addMouse:];
          }

          v12 = 1;
        }

        else
        {
          v11 = _gc_log_keyboard_and_mouse(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [_GCKeyboardAndMouseManager _onqueue_addMouse:];
          }

          v12 = 5;
        }

        v13 = [v3 stringPropertyForKey:@"Product"];
        v14 = [objc_alloc(MEMORY[0x277CCB088]) initWithName:v13 additionalButtons:v12];
        mouseInput = [v14 mouseInput];
        [mouseInput setButtonEventSource:v8];
        [mouseInput setScrollEventSource:v8];
        [mouseInput setDigitizerEventSource:v8];
        [mouseInput setPointerEventSource:v8];
        v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
        [mouse willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v16];
        [mouse willChangeValueForKey:@"mice" withSetMutation:1 usingObjects:v16];
        v17 = *(mouse + 64);
        objc_sync_enter(v17);
        [*(mouse + 64) setObject:v14 forKey:v3];
        objc_sync_exit(v17);

        [mouse didChangeValueForKey:@"mice" withSetMutation:1 usingObjects:v16];
        [mouse didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v16];
      }

      else
      {
        v13 = _gc_log_keyboard_and_mouse(v9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [_GCKeyboardAndMouseManager _onqueue_addMouse:];
        }
      }
    }
  }
}

- (void)_onqueue_removeMouse:(uint64_t)mouse
{
  v3 = a2;
  if (mouse)
  {
    v7 = v3;
    dispatch_assert_queue_V2(*(mouse + 8));
    v4 = [*(mouse + 64) objectForKey:v7];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [mouse willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
      [mouse willChangeValueForKey:@"mice" withSetMutation:2 usingObjects:v5];
      v6 = *(mouse + 64);
      objc_sync_enter(v6);
      [*(mouse + 64) removeObjectForKey:v7];
      [(_GCKeyboardAndMouseManager *)v6 _onqueue_removeMouse:mouse, v5];
    }

    v3 = v7;
  }
}

- (id)matchingHIDServiceAttributes
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"DeviceUsagePage";
  v16[1] = @"DeviceUsage";
  v17[0] = &unk_282544768;
  v17[1] = &unk_282544780;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = @"DeviceUsagePage";
  v14[1] = @"DeviceUsage";
  v15[0] = &unk_282544768;
  v15[1] = &unk_282544798;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v5 = v4;
  if (self->_monitorKeyboards)
  {
    if (self->_monitorMice)
    {
      v13[0] = v3;
      v13[1] = v4;
      v6 = MEMORY[0x277CBEA60];
      v7 = v13;
      v8 = 2;
LABEL_8:
      v9 = [v6 arrayWithObjects:v7 count:v8];
      goto LABEL_10;
    }

    v12 = v3;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v12;
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (self->_monitorMice)
  {
    v11 = v4;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v11;
    goto LABEL_7;
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_10:

  return v9;
}

- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed
{
  v3 = a2;
  if (removed)
  {
    dispatch_assert_queue_V2(*(removed + 8));
    v4 = *(removed + 48);
    registryID = [v3 registryID];
    v6 = [v4 objectForKey:registryID];

    if (v6)
    {
      registryID2 = [v3 registryID];
      v8 = *(removed + 48);
      objc_sync_enter(v8);
      [*(removed + 48) removeObjectForKey:registryID2];
      [(_GCKeyboardAndMouseManager *)v8 _onqueue_HIDServiceRemoved:registryID2, v3];
    }

    [(_GCKeyboardAndMouseManager *)removed _onqueue_HIDServiceRemoved:v3];
  }
}

- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices
{
  v28 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  removedServicesCopy = removedServices;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [removedServicesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(removedServicesCopy);
        }

        [(_GCKeyboardAndMouseManager *)self _onqueue_HIDServiceRemoved:?];
      }

      while (v10 != v12);
      v10 = [removedServicesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = servicesCopy;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_GCKeyboardAndMouseManager *)self _onqueue_HIDServiceAdded:?];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  Type = IOHIDEventGetType();
  SenderID = IOHIDEventGetSenderID();
  TimeStamp = IOHIDEventGetTimeStamp();
  if (Type == 11 && _DescendantPointerEvent(event))
  {
    SenderID = IOHIDEventGetSenderID();
  }

  v8 = self->_hidServiceSubjects;
  objc_sync_enter(v8);
  hidServiceSubjects = self->_hidServiceSubjects;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
  v11 = [(NSMutableDictionary *)hidServiceSubjects objectForKey:v10];

  objc_sync_exit(v8);
  if (v11 && IOHIDEventGetType() == 11)
  {
    [(_GCKeyboardAndMouseManager *)self handleHIDEvent:event atTimestamp:TimeStamp forSubject:v11];
  }

  MEMORY[0x2821F96F8]();
}

- (id)keyboardHIDServices
{
  if (result)
  {
    return objc_getProperty(result, a2, 72, 1);
  }

  return result;
}

- (void)setKeyboardHIDServices:(void *)services
{
  if (services)
  {
    objc_setProperty_atomic_copy(services, newValue, newValue, 72);
  }
}

- (uint64_t)handleHIDEvent:(uint64_t)event atTimestamp:(void *)timestamp forSubject:
{
  v105 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  if (self)
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v9 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v4 = Count;
        v11 = 0;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          v11 |= [(_GCKeyboardAndMouseManager *)self handleHIDEvent:event atTimestamp:timestampCopy forSubject:?];
        }

        if (v11)
        {
          goto LABEL_64;
        }
      }
    }

    Type = IOHIDEventGetType();
    switch(Type)
    {
      case 0x11:
        v75 = _gc_log_keyboard_and_mouse(Type);
        v76 = os_signpost_id_generate(v75);

        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          v78 = _gc_log_keyboard_and_mouse(has_internal_diagnostics);
          v79 = _gc_log_signpost();
          v80 = OUTLINED_FUNCTION_5_0(v79);

          if (v80)
          {
            v82 = _gc_log_keyboard_and_mouse(v81);
            OUTLINED_FUNCTION_3_0();
            if (!(!v24 & v23) && os_signpost_enabled(v82))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_1_0(&dword_20E408000, v83, v84, v85, "HIDEvent.Pointer", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", v86, v87, v96, v97, v98, v99, v100, v101, v102, eventCopy);
            }
          }
        }

        v30 = objc_opt_new();
        [v30 setTimestamp:event];
        v88 = BKSHIDEventGetPointerAttributes();
        v36 = v88;
        if (v88)
        {
          [v88 unacceleratedRelativePositionX];
          [OUTLINED_FUNCTION_6() setX:?];
          [v36 unacceleratedRelativePositionY];
          [OUTLINED_FUNCTION_6() setY:?];
        }

        [(_GCKeyboardAndMouseEventSubject *)timestampCopy publishPointerEvent:v30];
        v89 = os_variant_has_internal_diagnostics();
        if (v89)
        {
          v90 = _gc_log_keyboard_and_mouse(v89);
          v91 = _gc_log_signpost();
          v92 = OUTLINED_FUNCTION_5_0(v91);

          if (v92)
          {
            v94 = _gc_log_keyboard_and_mouse(v93);
            OUTLINED_FUNCTION_3_0();
            if (!(!v24 & v23) && os_signpost_enabled(v94))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_20E408000, v94, OS_SIGNPOST_INTERVAL_END, v76, "HIDEvent.Pointer", "{}", buf, 2u);
            }
          }
        }

        goto LABEL_62;
      case 6:
        v39 = _gc_log_keyboard_and_mouse(Type);
        v40 = os_signpost_id_generate(v39);

        v41 = os_variant_has_internal_diagnostics();
        if (v41)
        {
          v42 = _gc_log_keyboard_and_mouse(v41);
          v43 = _gc_log_signpost();
          v44 = OUTLINED_FUNCTION_5_0(v43);

          if (v44)
          {
            v46 = _gc_log_keyboard_and_mouse(v45);
            v47 = v46;
            if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              _os_signpost_emit_with_name_impl(&dword_20E408000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v40, "HIDEvent.Scroll", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", buf, 0x1Cu);
            }
          }
        }

        IOHIDEventGetFloatValue();
        v49 = v48;
        IOHIDEventGetFloatValue();
        v96 = MEMORY[0x277D85DD0];
        v97 = 3221225472;
        v98 = __68___GCKeyboardAndMouseManager_handleHIDEvent_atTimestamp_forSubject___block_invoke;
        v99 = &unk_277E1DDD0;
        v101 = v49;
        v102 = v50;
        eventCopy = event;
        v100 = timestampCopy;
        dispatch_async(MEMORY[0x277D85CD0], &v96);
        v51 = os_variant_has_internal_diagnostics();
        if (v51)
        {
          v52 = _gc_log_keyboard_and_mouse(v51);
          v53 = _gc_log_signpost();
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);

          if (v54)
          {
            v56 = _gc_log_keyboard_and_mouse(v55);
            v57 = v56;
            if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_20E408000, v57, OS_SIGNPOST_INTERVAL_END, v40, "HIDEvent.Scroll", "{}", buf, 2u);
            }
          }
        }

        v30 = v100;
        goto LABEL_63;
      case 0xB:
        v58 = _gc_log_keyboard_and_mouse(Type);
        v16 = os_signpost_id_generate(v58);

        v59 = os_variant_has_internal_diagnostics();
        if (v59)
        {
          v60 = _gc_log_keyboard_and_mouse(v59);
          v61 = _gc_log_signpost();
          v62 = OUTLINED_FUNCTION_5_0(v61);

          if (v62)
          {
            v64 = _gc_log_keyboard_and_mouse(v63);
            OUTLINED_FUNCTION_3_0();
            if (!(!v24 & v23) && os_signpost_enabled(v64))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_1_0(&dword_20E408000, v65, v66, v67, "HIDEvent.Digitizer", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", v68, v69, v96, v97, v98, v99, v100, v101, v102, eventCopy);
            }
          }
        }

        v30 = objc_opt_new();
        [v30 setTimestamp:event];
        IOHIDEventGetFloatValue();
        [OUTLINED_FUNCTION_6() setX:?];
        IOHIDEventGetFloatValue();
        [OUTLINED_FUNCTION_6() setY:?];
        [(_GCKeyboardAndMouseEventSubject *)timestampCopy publishDigitizerEvent:v30];
        v70 = os_variant_has_internal_diagnostics();
        if (!v70)
        {
          goto LABEL_63;
        }

        v71 = _gc_log_keyboard_and_mouse(v70);
        v72 = _gc_log_signpost();
        v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG);

        if (!v73)
        {
          goto LABEL_63;
        }

        v36 = _gc_log_keyboard_and_mouse(v74);
        OUTLINED_FUNCTION_3_0();
        if (!v24 & v23 || !os_signpost_enabled(v36))
        {
          goto LABEL_62;
        }

        *buf = 0;
        v37 = "HIDEvent.Digitizer";
        goto LABEL_47;
      case 2:
        v15 = _gc_log_keyboard_and_mouse(Type);
        v16 = os_signpost_id_generate(v15);

        v17 = os_variant_has_internal_diagnostics();
        if (v17)
        {
          v18 = _gc_log_keyboard_and_mouse(v17);
          v19 = _gc_log_signpost();
          v20 = OUTLINED_FUNCTION_5_0(v19);

          if (v20)
          {
            v22 = _gc_log_keyboard_and_mouse(v21);
            OUTLINED_FUNCTION_3_0();
            if (!(!v24 & v23) && os_signpost_enabled(v22))
            {
              IOHIDEventGetSenderID();
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_1_0(&dword_20E408000, v25, v26, v27, "HIDEvent.Button", "{sender: %#llx, eventType: %u, eventTimestamp: %llu}", v28, v29, v96, v97, v98, v99, v100, v101, v102, eventCopy);
            }
          }
        }

        v30 = objc_opt_new();
        [v30 setTimestamp:event];
        [v30 setMask:IOHIDEventGetIntegerValue()];
        [(_GCKeyboardAndMouseEventSubject *)timestampCopy publishButtonEvent:v30];
        v31 = os_variant_has_internal_diagnostics();
        if (!v31)
        {
          goto LABEL_63;
        }

        v32 = _gc_log_keyboard_and_mouse(v31);
        v33 = _gc_log_signpost();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);

        if (!v34)
        {
          goto LABEL_63;
        }

        v36 = _gc_log_keyboard_and_mouse(v35);
        OUTLINED_FUNCTION_3_0();
        if (!v24 & v23 || !os_signpost_enabled(v36))
        {
LABEL_62:

LABEL_63:
LABEL_64:
          v38 = 1;
          goto LABEL_65;
        }

        *buf = 0;
        v37 = "HIDEvent.Button";
LABEL_47:
        _os_signpost_emit_with_name_impl(&dword_20E408000, v36, OS_SIGNPOST_INTERVAL_END, v16, v37, "{}", buf, 2u);
        goto LABEL_62;
    }
  }

  v38 = 0;
LABEL_65:

  return v38;
}

- (void)_onqueue_HIDServiceAdded:(void *)a3 .cold.2(char a1, const char *a2, void *a3, id self)
{
  v6 = a2;
  if (a1)
  {
    v7 = objc_getProperty(self, a2, 72, 1);
    if (([v7 containsObject:a3] & 1) == 0)
    {
      v8 = [v7 setByAddingObject:a3];
      objc_setProperty_atomic_copy(self, v9, v8, 72);

      [self _onqueue_refreshKeyboards];
    }
  }

  if (v6)
  {
    [(_GCKeyboardAndMouseManager *)self _onqueue_addMouse:a3];
  }
}

- (void)_onqueue_removeMouse:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  objc_sync_exit(a1);

  [a2 didChangeValueForKey:@"mice" withSetMutation:2 usingObjects:a3];
  [a2 didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:a3];
}

- (void)_onqueue_HIDServiceRemoved:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  objc_sync_exit(a1);

  v7 = _gc_log_keyboard_and_mouse(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_20E408000, v7, OS_LOG_TYPE_INFO, "No longer tracking %@", &v8, 0xCu);
  }
}

- (void)_onqueue_HIDServiceRemoved:(void *)a1 .cold.2(void *a1, char *a2)
{
  v4 = objc_getProperty(a1, a2, 72, 1);
  if ([v4 containsObject:a2])
  {
    v5 = [v4 gc_setByRemovingObject:a2];
    objc_setProperty_atomic_copy(a1, v6, v5, 72);

    [a1 _onqueue_refreshKeyboards];
  }

  [(_GCKeyboardAndMouseManager *)a1 _onqueue_removeMouse:a2];
}

@end