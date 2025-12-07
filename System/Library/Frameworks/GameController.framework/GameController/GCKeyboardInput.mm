@interface GCKeyboardInput
- (BOOL)hasButton:(int64_t)button;
- (GCControllerButtonInput)buttonForKeyCode:(GCKeyCode)code;
- (GCKeyboardInput)initWithIdentifier:(id)identifier;
- (void)_handleKeyboardEvent:(_DWORD *)event;
- (void)setKeyboardEventSource:(id)source;
@end

@implementation GCKeyboardInput

- (GCKeyboardInput)initWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = GCKeyboardInput;
  v3 = [(GCPhysicalInputProfile *)&v26 initWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v5 = ::allCodes(v3);
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    allCodes = v4->_allCodes;
    v4->_allCodes = v6;

    v8 = 231;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:231];
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      [(NSArray *)v9 addObject:null];

      --v8;
    }

    while (v8);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          longValue = [*(*(&v22 + 1) + 8 * v15) longValue];
          memset(v20, 0, sizeof(v20));
          v21 = 0;
          *&v20[0] = nameForKeyCode(longValue);
          WORD4(v20[0]) = 257;
          v17 = [(GCPhysicalInputProfile *)v4 _keyboardButtonWithInfo:v20];
          [v17 setKeyCode:longValue];
          [(NSArray *)v9 setObject:v17 atIndexedSubscript:longValue];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    keys = v4->_keys;
    v4->_keys = v9;

    v4->_numberOfKeysPressed = 0;
  }

  return v4;
}

- (BOOL)hasButton:(int64_t)button
{
  allCodes = self->_allCodes;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:button];
  LOBYTE(allCodes) = [(NSSet *)allCodes containsObject:v4];

  return allCodes;
}

- (GCControllerButtonInput)buttonForKeyCode:(GCKeyCode)code
{
  if ([(GCKeyboardInput *)self hasButton:?])
  {
    v5 = [(NSArray *)self->_keys objectAtIndexedSubscript:code];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v4 = *(a1 + 32);
  v5 = v4[85];
  if (v5)
  {
    (*(v5 + 16))();
    v4 = *(a1 + 32);
  }

  v6 = [v4 keyChangedHandlerPrivate];

  if (v6)
  {
    v7 = [*(a1 + 32) keyChangedHandlerPrivate];
    (v7)[2](v7, *(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 64) != 0);
  }

  v8 = _gc_log_signpost();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke_cold_1(a1);
  }
}

- (void)setKeyboardEventSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  keyboardEventObservation = self->_keyboardEventObservation;
  self->_keyboardEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__GCKeyboardInput_PubSub__setKeyboardEventSource___block_invoke;
  v8[3] = &unk_1E841B298;
  objc_copyWeak(&v9, &location);
  v6 = [sourceCopy observeKeyboardEvents:v8];
  v7 = self->_keyboardEventObservation;
  self->_keyboardEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_handleKeyboardEvent:(_DWORD *)event
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (event)
  {
    usage = [v3 usage];
    down = [v4 down];
    if ([v4 usagePage] == 7 && (usage & 0x8000000000000000) == 0 && objc_msgSend(event, "hasButton:", usage))
    {
      [event _receivedEvent];
      device = [event device];
      v8 = _gc_log_signpost();
      v9 = os_signpost_id_generate(v8);
      v10 = _gc_log_signpost();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (v11)
      {
        v22 = v8;
        v23 = v22;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          timestamp = [v4 timestamp];
          [event lastEventTimestamp];
          *buf = 134218496;
          v41 = device;
          v42 = 2048;
          v43 = timestamp;
          v44 = 2048;
          v45 = v25;
          _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GCKeyboardInput.handle.KeyboardEvent", "{device: %p, eventTimestamp: %llu, lastEventTimestamp: %f}", buf, 0x20u);
        }
      }

      v12 = [event buttonForKeyCode:usage];
      v33 = v9;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v32 = device;
        handlerQueue = [event handlerQueue];
        *&v15 = down;
        v13 = [v12 _setValue:handlerQueue queue:v15];
        if (v13)
        {
          v16 = event[166];
          if (down)
          {
            v17 = v16 + 1;
          }

          else
          {
            v17 = v16 - 1;
          }

          event[166] = v17 & ~(v17 >> 31);
          v31 = os_signpost_id_generate(v8);
          v18 = _gc_log_signpost();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

          if (v19)
          {
            log = v8;
            if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
            {
              timestamp2 = [v4 timestamp];
              [event lastEventTimestamp];
              *buf = 134218496;
              v41 = v32;
              v42 = 2048;
              v43 = timestamp2;
              v44 = 2048;
              v45 = v29;
              _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v31, "GCKeyboardInput.callback", "{device: %p, eventTimestamp: %llu, lastEventTimestamp: %f}", buf, 0x20u);
            }
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke;
          block[3] = &unk_1E841B270;
          block[4] = event;
          v35 = v12;
          v37 = usage;
          v38 = down;
          v36 = v8;
          v39 = v31;
          dispatch_async(handlerQueue, block);
        }

        device = v32;
      }

      else
      {
        v13 = 0;
      }

      v20 = _gc_log_signpost();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v26 = v8;
        v27 = v26;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *buf = 67109120;
          LODWORD(v41) = v13;
          _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v27, OS_SIGNPOST_INTERVAL_END, v33, "GCKeyboardInput.handle.KeyboardEvent", "{handled: %u}", buf, 8u);
        }
      }
    }
  }
}

void __50__GCKeyboardInput_PubSub__setKeyboardEventSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(GCKeyboardInput *)WeakRetained _handleKeyboardEvent:v3];
}

void __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v3, OS_SIGNPOST_INTERVAL_END, v4, "GCKeyboardInput.callback", "{}", v5, 2u);
  }
}

@end