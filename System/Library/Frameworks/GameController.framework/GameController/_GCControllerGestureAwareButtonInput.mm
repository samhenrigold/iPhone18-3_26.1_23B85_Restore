@interface _GCControllerGestureAwareButtonInput
- (BOOL)_commitPendingValueOnQueue:(id)queue;
- (BOOL)_setValue:(float)value queue:(id)queue;
- (_GCControllerGestureAwareButtonInput)initWithDescriptionName:(id)name;
- (int64_t)actualSystemGestureState;
- (void)__onqueue_executeDoublePressRecognizerForEvent:(id)event queue:(id)queue;
- (void)__onqueue_executeLongPressRecognizerForEvent:(id)event queue:(id)queue;
- (void)__onqueue_executeSinglePressRecognizerForEvent:(id)event queue:(id)queue;
- (void)__onqueue_forwardEvent:(id)event queue:(id)queue;
- (void)registerSetValueEvent:(float)event queue:(id)queue;
- (void)setEnabled:(BOOL)enabled;
- (void)setPreferredSystemGestureState:(int64_t)state;
- (void)setValue:(float)value;
@end

@implementation _GCControllerGestureAwareButtonInput

- (_GCControllerGestureAwareButtonInput)initWithDescriptionName:(id)name
{
  v7.receiver = self;
  v7.super_class = _GCControllerGestureAwareButtonInput;
  v3 = [(GCControllerButtonInput *)&v7 initWithDescriptionName:name];
  if (v3)
  {
    v4 = objc_opt_new();
    doublePressEventQueue = v3->_doublePressEventQueue;
    v3->_doublePressEventQueue = v4;

    v3->_longPressInterval = 0.5;
    v3->_singlePressInterval = 0.5;
    v3->_doublePressInterval = 0.5;
    v3->_longPressMuted = 0;
    v3->_doublePressMuted = 0;
    v3->_singlePressMuted = 0;
    v3->_enabled = 1;
    v3->_requiredDoublePressCount = 2;
  }

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
  }
}

- (int64_t)actualSystemGestureState
{
  if ([(_GCControllerGestureAwareButtonInput *)self isDoublePressGestureRecognizerEnabled]|| [(_GCControllerGestureAwareButtonInput *)self isSinglePressGestureRecognizerEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = ![(_GCControllerGestureAwareButtonInput *)self isLongPressGestureRecognizerEnabled];
  }

  device = [(GCControllerElement *)self device];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = device;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && (([v6 isSnapshot] | v3) & 1) == 0 && self->_enabled)
  {
    preferredSystemGestureState = [(_GCControllerGestureAwareButtonInput *)self preferredSystemGestureState];
  }

  else
  {
    preferredSystemGestureState = 2;
  }

  return preferredSystemGestureState;
}

- (void)setPreferredSystemGestureState:(int64_t)state
{
  if (self->_preferredSystemGestureState != state)
  {
    self->_preferredSystemGestureState = state;
    device = [(GCControllerElement *)self device];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = device;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    systemGestureComponent = [v5 systemGestureComponent];

    if (systemGestureComponent)
    {
      preferredSystemGestureState = self->_preferredSystemGestureState;
      systemGestureComponent2 = [v5 systemGestureComponent];
      primaryAlias = [(GCControllerElement *)self primaryAlias];
      if (preferredSystemGestureState == 2)
      {
        [systemGestureComponent2 disableSystemGestureForInput:primaryAlias];
      }

      else
      {
        [systemGestureComponent2 enableSystemGestureForInput:primaryAlias];
      }
    }
  }
}

- (BOOL)_setValue:(float)value queue:(id)queue
{
  queueCopy = queue;
  v7 = clamp(value, 0.0, 1.0);
  self->_realValue = v7;
  actualSystemGestureState = [(_GCControllerGestureAwareButtonInput *)self actualSystemGestureState];
  switch(actualSystemGestureState)
  {
    case 2:
      selfCopy = self;
      v14 = _GCControllerGestureAwareButtonInput;
      v11 = &selfCopy;
      goto LABEL_8;
    case 1:
      *&v9 = value;
      [(_GCControllerGestureAwareButtonInput *)self registerSetValueEvent:queueCopy queue:v9];
      selfCopy2 = self;
      v16 = _GCControllerGestureAwareButtonInput;
      v11 = &selfCopy2;
LABEL_8:
      *&v9 = value;
      v10 = objc_msgSendSuper2(v11, sel__setValue_queue_, queueCopy, v9, selfCopy, v14, selfCopy2, v16);
      goto LABEL_9;
    case 0:
      *&v9 = value;
      [(_GCControllerGestureAwareButtonInput *)self registerSetValueEvent:queueCopy queue:v9];
      break;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)setValue:(float)value
{
  device = [(GCControllerElement *)self device];
  if (!device)
  {
    handlerQueue = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([device isSnapshot])
  {
    handlerQueue = [device handlerQueue];
LABEL_6:
    v9.receiver = self;
    v9.super_class = _GCControllerGestureAwareButtonInput;
    *&v7 = value;
    [(GCControllerButtonInput *)&v9 _setValue:handlerQueue queue:v7];
  }
}

- (BOOL)_commitPendingValueOnQueue:(id)queue
{
  queueCopy = queue;
  if ([(GCControllerElement *)self updatePending])
  {
    [(GCControllerElement *)self pendingValue];
    if (v5 == self->_realValue)
    {
      v6 = 0;
    }

    else
    {
      [(GCControllerElement *)self pendingValue];
      v6 = [(_GCControllerGestureAwareButtonInput *)self _setValue:queueCopy queue:?];
    }

    [(GCControllerElement *)self _resetPendingValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)registerSetValueEvent:(float)event queue:(id)queue
{
  queueCopy = queue;
  inited = objc_initWeak(&location, self);
  isInternalBuild = gc_isInternalBuild(inited, v8);
  if (isInternalBuild)
  {
    v11 = getGCLogger(isInternalBuild);
    [_GCControllerGestureAwareButtonInput registerSetValueEvent:v11 queue:?];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke;
  block[3] = &unk_1E841A700;
  objc_copyWeak(&v14, &location);
  eventCopy = event;
  block[4] = self;
  v13 = queueCopy;
  v10 = queueCopy;
  dispatch_async(v10, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)__onqueue_forwardEvent:(id)event queue:(id)queue
{
  eventCopy = event;
  queueCopy = queue;
  if (![(_GCControllerGestureAwareButtonInput *)self actualSystemGestureState]&& (eventCopy[17] & 1) == 0 && eventCopy[20] == 1 && eventCopy[19] == 1 && eventCopy[21] == 1)
  {
    eventCopy[17] = 1;
    if (gc_isInternalBuild(0, v8))
    {
      [_GCControllerGestureAwareButtonInput __onqueue_forwardEvent:eventCopy queue:?];
    }

    LOBYTE(v9) = eventCopy[16];
    *&v9 = LODWORD(v9);
    v12.receiver = self;
    v12.super_class = _GCControllerGestureAwareButtonInput;
    if ([(GCControllerButtonInput *)&v12 _setValue:queueCopy queue:v9])
    {
      device = [(GCControllerElement *)self device];
      physicalInputProfile = [device physicalInputProfile];
      [physicalInputProfile _triggerValueChangedHandlerForElement:self queue:queueCopy];
    }
  }
}

- (void)__onqueue_executeDoublePressRecognizerForEvent:(id)event queue:(id)queue
{
  v67 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  queueCopy = queue;
  lastObject = [(NSMutableArray *)self->_doublePressEventQueue lastObject];
  v9 = lastObject;
  if (!lastObject || *(lastObject + 16) != eventCopy[16])
  {
    v47 = lastObject;
    [(NSMutableArray *)self->_doublePressEventQueue addObject:eventCopy];
    [(_GCControllerGestureAwareButtonInput *)self doublePressInterval];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke;
    block[3] = &unk_1E8419BC0;
    v58 = eventCopy;
    selfCopy = self;
    v60 = queueCopy;
    dispatch_after(v11, v60, block);

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v14 = v13;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = self->_doublePressEventQueue;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v16)
    {
      v17 = v16;
      log = queueCopy;
      v46 = eventCopy;
      v18 = 0;
      v19 = *v54;
      while (2)
      {
        v20 = 0;
        v21 = v18;
        v18 += v17;
        do
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v53 + 1) + 8 * v20);
          v23 = v14 - *(v22 + 8);
          [(_GCControllerGestureAwareButtonInput *)self doublePressInterval];
          if (v23 < v24)
          {
            v18 = v21;
            goto LABEL_13;
          }

          ++v21;
          *(v22 + 20) = 1;
          ++v20;
        }

        while (v17 != v20);
        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_13:

      queueCopy = log;
      eventCopy = v46;
      if (v18 >= 1)
      {
        [(NSMutableArray *)self->_doublePressEventQueue removeObjectsInRange:0, v18];
      }
    }

    else
    {
    }

    v9 = v47;
    if ([(NSMutableArray *)self->_doublePressEventQueue count])
    {
      firstObject = [(NSMutableArray *)self->_doublePressEventQueue firstObject];
      v26 = firstObject[16];

      if ([(NSMutableArray *)self->_doublePressEventQueue count])
      {
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v29 = [(NSMutableArray *)self->_doublePressEventQueue objectAtIndexedSubscript:v27];
          if (v26)
          {
            v28 += v29[16] ^ 1;
          }

          if (v28 == self->_requiredDoublePressCount)
          {
            break;
          }

          v26 = v29[16];

          if ([(NSMutableArray *)self->_doublePressEventQueue count]<= ++v27)
          {
            goto LABEL_45;
          }
        }

        v30 = [(NSMutableArray *)self->_doublePressEventQueue count];
        if (v30 > v27)
        {
          v32 = v27;
          do
          {
            v33 = [(NSMutableArray *)self->_doublePressEventQueue objectAtIndexedSubscript:v27];
            v33[18] = 0;
            isInternalBuild = gc_isInternalBuild(v33, v34);
            if (isInternalBuild)
            {
              loga = getGCLogger(isInternalBuild);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
              {
                v36 = v33[18];
                *buf = 138412546;
                v63 = v33;
                v64 = 1024;
                v65 = v36;
                _os_log_impl(&dword_1D2CD5000, loga, OS_LOG_TYPE_INFO, "[CLEAR] %@ tentativeSinglePress resetting to %d", buf, 0x12u);
              }
            }

            ++v32;
            v30 = [(NSMutableArray *)self->_doublePressEventQueue count];
          }

          while (v30 > v32);
        }

        v37 = queueCopy;
        v38 = gc_isInternalBuild(v30, v31);
        if (v38)
        {
          [_GCControllerGestureAwareButtonInput __onqueue_executeDoublePressRecognizerForEvent:v38 queue:?];
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v39 = self->_doublePressEventQueue;
        v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v50;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v50 != v42)
              {
                objc_enumerationMutation(v39);
              }

              if (self->_doublePressHandler)
              {
                *(*(*(&v49 + 1) + 8 * i) + 17) = 1;
              }
            }

            v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v41);
        }

        [(NSMutableArray *)self->_doublePressEventQueue removeAllObjects];
        queueCopy = v37;
        v9 = v47;
        if (self->_doublePressHandler)
        {
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113;
          v48[3] = &unk_1E8418C28;
          v48[4] = self;
          dispatch_async(MEMORY[0x1E69E96A0], v48);
        }
      }
    }
  }

LABEL_45:
}

- (void)__onqueue_executeLongPressRecognizerForEvent:(id)event queue:(id)queue
{
  eventCopy = event;
  queueCopy = queue;
  longPressDownEvent = self->_longPressDownEvent;
  if (longPressDownEvent)
  {
    if ((eventCopy[2] & 1) == 0)
    {
      v10 = eventCopy[1] - longPressDownEvent->timestamp;
      longPressInterval = [(_GCControllerGestureAwareButtonInput *)self longPressInterval];
      v14 = self->_longPressDownEvent;
      if (v10 <= v13)
      {
        v14->ignoredByLongPressRecognizer = 1;
        *(eventCopy + 19) = 1;
        if ((*(eventCopy + 17) & 1) != 0 || *(eventCopy + 18) != 1 || *(eventCopy + 20) != 1)
        {
          if (gc_isInternalBuild(longPressInterval, v12))
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeLongPressRecognizerForEvent:? queue:?];
          }

          [(_GCControllerGestureAwareButtonInput *)self __onqueue_forwardEvent:self->_longPressDownEvent queue:queueCopy];
          v22 = dispatch_time(0, (v10 * 1000000000.0));
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117;
          v23[3] = &unk_1E8419BC0;
          v24 = eventCopy;
          selfCopy = self;
          v26 = queueCopy;
          dispatch_after(v22, v26, v23);

          goto LABEL_23;
        }

        *(eventCopy + 17) = 1;
        self->_longPressDownEvent->consumed = 1;
        if (!self->_singlePressHandler)
        {
LABEL_23:
          v19 = self->_longPressDownEvent;
          self->_longPressDownEvent = 0;
          goto LABEL_24;
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116;
        v27[3] = &unk_1E8418C28;
        v27[4] = self;
        v20 = MEMORY[0x1E69E96A0];
        v21 = v27;
      }

      else
      {
        consumed = v14->consumed;
        isInternalBuild = gc_isInternalBuild(longPressInterval, v12);
        if (consumed)
        {
          if (isInternalBuild)
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeLongPressRecognizerForEvent:? queue:?];
          }

          *(eventCopy + 17) = 1;
          goto LABEL_23;
        }

        if (isInternalBuild)
        {
          [_GCControllerGestureAwareButtonInput __onqueue_executeLongPressRecognizerForEvent:? queue:?];
        }

        self->_longPressDownEvent->consumed = 1;
        *(eventCopy + 17) = 1;
        if (!self->_longPressHandler)
        {
          goto LABEL_23;
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_115;
        v28[3] = &unk_1E8418C28;
        v28[4] = self;
        v20 = MEMORY[0x1E69E96A0];
        v21 = v28;
      }

      dispatch_async(v20, v21);
      goto LABEL_23;
    }
  }

  else if (*(eventCopy + 16))
  {
    objc_storeStrong(&self->_longPressDownEvent, event);
    [(_GCControllerGestureAwareButtonInput *)self longPressInterval];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke;
    block[3] = &unk_1E8418C50;
    v30 = eventCopy;
    selfCopy2 = self;
    dispatch_after(v18, queueCopy, block);
    v19 = v30;
LABEL_24:
  }
}

- (void)__onqueue_executeSinglePressRecognizerForEvent:(id)event queue:(id)queue
{
  eventCopy = event;
  queueCopy = queue;
  singlePressDownEvent = self->_singlePressDownEvent;
  if (singlePressDownEvent)
  {
    if ((eventCopy[2] & 1) == 0)
    {
      if ((*(eventCopy + 17) & 1) == 0)
      {
        v10 = eventCopy[1] - singlePressDownEvent->timestamp;
        singlePressInterval = [(_GCControllerGestureAwareButtonInput *)self singlePressInterval];
        if (v10 >= v13)
        {
          self->_singlePressDownEvent->ignoredBySinglePressRecognizer = 1;
          *(eventCopy + 21) = 1;
          if (gc_isInternalBuild(singlePressInterval, v12))
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeSinglePressRecognizerForEvent:? queue:?];
          }

          [(_GCControllerGestureAwareButtonInput *)self __onqueue_forwardEvent:self->_singlePressDownEvent queue:queueCopy];
          v15 = dispatch_time(0, (v10 * 1000000000.0));
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118;
          v17[3] = &unk_1E8419BC0;
          v18 = eventCopy;
          selfCopy = self;
          v20 = queueCopy;
          dispatch_after(v15, v20, v17);
        }

        else
        {
          isInternalBuild = gc_isInternalBuild(singlePressInterval, v12);
          if (isInternalBuild)
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeSinglePressRecognizerForEvent:? queue:?];
          }

          if (*(eventCopy + 20) == 1 && *(eventCopy + 19) == 1)
          {
            self->_singlePressDownEvent->consumed = 1;
            *(eventCopy + 17) = 1;
            if (self->_singlePressHandler)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke;
              block[3] = &unk_1E8418C28;
              block[4] = self;
              dispatch_async(MEMORY[0x1E69E96A0], block);
            }
          }

          else
          {
            *(eventCopy + 18) = 1;
          }
        }
      }

      v16 = self->_singlePressDownEvent;
      self->_singlePressDownEvent = 0;
    }
  }

  else if (*(eventCopy + 16))
  {
    objc_storeStrong(&self->_singlePressDownEvent, event);
  }
}

- (void)registerSetValueEvent:(NSObject *)a1 queue:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)__onqueue_forwardEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)__onqueue_executeDoublePressRecognizerForEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)__onqueue_executeLongPressRecognizerForEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)__onqueue_executeLongPressRecognizerForEvent:(uint64_t)a1 queue:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)__onqueue_executeLongPressRecognizerForEvent:(uint64_t)a1 queue:.cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)__onqueue_executeSinglePressRecognizerForEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)__onqueue_executeSinglePressRecognizerForEvent:(uint64_t)a1 queue:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

@end