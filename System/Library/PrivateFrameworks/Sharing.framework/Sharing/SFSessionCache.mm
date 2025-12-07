@interface SFSessionCache
- (SFSessionCache)init;
- (SFSessionCache)initWithCoder:(id)coder;
- (id)_sessionWithDevice:(id)device activate:(BOOL)activate withCompletion:(id)completion;
- (id)activePeerDeviceIDs;
- (id)activeSessions;
- (id)description;
- (id)sessionWithDevice:(id)device activate:(BOOL)activate withCompletion:(id)completion;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_popCache;
- (void)_sessionWasInterrupted:(id)interrupted;
- (void)_sessionWasInvalidated:(id)invalidated;
- (void)activate;
- (void)clearCache;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler toDevice:(id)device;
- (void)sendWithFlags:(unsigned int)flags object:(id)object toDevice:(id)device;
@end

@implementation SFSessionCache

- (SFSessionCache)init
{
  v9.receiver = self;
  v9.super_class = SFSessionCache;
  v2 = [(SFSessionCache *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_capacity = 6;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v3->_identifier;
    v3->_identifier = uUID;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_capacity forKey:@"cp"];
  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"id"];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [coderCopy encodeObject:serviceIdentifier forKey:@"sid"];
  }

  sessions = self->_sessions;
  if (sessions)
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sessions requiringSecureCoding:1 error:0];
    [coderCopy encodeObject:v7 forKey:@"sd"];
  }

  timestamps = self->_timestamps;
  v9 = coderCopy;
  if (timestamps)
  {
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:timestamps requiringSecureCoding:1 error:0];
    [coderCopy encodeObject:v10 forKey:@"tsd"];

    v9 = coderCopy;
  }
}

- (id)description
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0;
  NSAppendPrintF(&v28, "SFSessionCache %@, capacity: %d", self->_identifier, self->_capacity);
  v3 = v28;
  v4 = v3;
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    v27 = v3;
    NSAppendPrintF(&v27, ", %@", serviceIdentifier);
    v6 = v27;

    v4 = v6;
  }

  v26 = v4;
  NSAppendPrintF(&v26, "\n");
  v7 = v26;

  v25 = v7;
  NSAppendPrintF(&v25, "\tSessions: (%ld)\n", [(NSMutableDictionary *)self->_sessions count]);
  v8 = v25;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_sessions allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v21 + 1) + 8 * v13);
        v16 = [(NSMutableDictionary *)self->_timestamps objectForKeyedSubscript:v15];
        [v16 doubleValue];
        v18 = v17;

        v20 = v14;
        NSAppendPrintF(&v20, "\t\tSession with %@, last used %f\n", v15, v18);
        v8 = v20;

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)_ensureStarted
{
  if (gLogCategory_SFSessionCache <= 60 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_SFSessionCache, "[SFSessionCache _ensureStarted]", 60, "Object has already been invalidated.");
  }
}

- (void)_ensureStopped
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_sessions allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_sessions removeAllObjects];
  sessions = self->_sessions;
  self->_sessions = 0;

  [(NSMutableDictionary *)self->_timestamps removeAllObjects];
  timestamps = self->_timestamps;
  self->_timestamps = 0;
}

- (void)_popCache
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy_;
  v8[4] = __Block_byref_object_dispose_;
  v3 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v9 = [v3 numberWithDouble:?];

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activated)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_8;
  }

  timestamps = self->_timestamps;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__SFSessionCache__popCache__block_invoke;
  v7[3] = &unk_1E788B2F0;
  v7[4] = v8;
  v7[5] = &v10;
  [(NSMutableDictionary *)timestamps enumerateKeysAndObjectsUsingBlock:v7];
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v11[5]];
  if (!v6)
  {
    if (gLogCategory_SFSessionCache <= 60 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFSessionCache, "[SFSessionCache _popCache]", 60, "### No session found for lruID %@.\n", v11[5]);
    }

    goto LABEL_13;
  }

  if (gLogCategory_SFSessionCache <= 10 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFSessionCache, "[SFSessionCache _popCache]", 10, "SessionCache %@ popping session with device ID %@.\n", self->_identifier, v11[5]);
  }

  [v6 invalidate];
  [(NSMutableDictionary *)self->_sessions removeObjectForKey:v11[5]];
  [(NSMutableDictionary *)self->_timestamps removeObjectForKey:v11[5]];
LABEL_8:

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
}

void __27__SFSessionCache__popCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  [a3 doubleValue];
  v7 = v6;
  [*(*(*(a1 + 32) + 8) + 40) doubleValue];
  if (v7 < v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_4;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
    {
      __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5_cold_1(v3);
    }
  }

  else
  {
    if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
    {
      __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5_cold_2();
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(*(a1 + 32) + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_6;
      v6[3] = &unk_1E788B318;
      v8 = v4;
      v7 = *(a1 + 40);
      dispatch_async(v5, v6);
    }
  }
}

- (void)_sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v4 = interruptedCopy;
  if (gLogCategory_SFSessionCache <= 30)
  {
    v6 = interruptedCopy;
    if (gLogCategory_SFSessionCache != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFSessionCache _sessionWasInterrupted:];
      v4 = v6;
    }
  }
}

- (void)_sessionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v4 = invalidatedCopy;
  if (gLogCategory_SFSessionCache <= 30)
  {
    v6 = invalidatedCopy;
    if (gLogCategory_SFSessionCache != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFSessionCache _sessionWasInvalidated:];
      v4 = v6;
    }
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFSessionCache_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __26__SFSessionCache_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSessionCache <= 50)
  {
    if (gLogCategory_SFSessionCache != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __26__SFSessionCache_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  v4 = *(v3 + 32);

  return [v4 _ensureStarted];
}

- (void)clearCache
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFSessionCache_clearCache__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SFSessionCache_clearCache__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSessionCache <= 50)
  {
    if (gLogCategory_SFSessionCache != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __28__SFSessionCache_clearCache__block_invoke_cold_1(a1, a2, a3);
    }
  }

  [*(v3 + 32) _ensureStopped];
  v4 = *(v3 + 32);

  return [v4 _ensureStarted];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFSessionCache_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__28__SFSessionCache_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSessionCache <= 50)
  {
    if (gLogCategory_SFSessionCache != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __28__SFSessionCache_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  result = [*(v3 + 32) _ensureStopped];
  *(*(v3 + 32) + 9) = 1;
  return result;
}

- (void)sendRequestWithFlags:(unsigned int)flags object:(id)object responseHandler:(id)handler toDevice:(id)device
{
  objectCopy = object;
  handlerCopy = handler;
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke;
  block[3] = &unk_1E788B390;
  flagsCopy = flags;
  v18 = objectCopy;
  selfCopy = self;
  v20 = deviceCopy;
  v21 = handlerCopy;
  v14 = deviceCopy;
  v15 = handlerCopy;
  v16 = objectCopy;
  dispatch_async(dispatchQueue, block);
}

void __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke_2;
  aBlock[3] = &unk_1E788B368;
  v7 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 40) _sessionWithDevice:*(a1 + 48) activate:1 withCompletion:v2];
}

void __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (gLogCategory_SFSessionCache <= 10)
  {
    if (gLogCategory_SFSessionCache != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __71__SFSessionCache_sendRequestWithFlags_object_responseHandler_toDevice___block_invoke_2_cold_1(v3, v4, v5);
    }
  }

  [v6 sendRequestWithFlags:*(a1 + 48) object:*(a1 + 32) responseHandler:*(a1 + 40)];
}

- (void)sendWithFlags:(unsigned int)flags object:(id)object toDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke;
  v13[3] = &unk_1E788B3E0;
  flagsCopy = flags;
  v14 = objectCopy;
  selfCopy = self;
  v16 = deviceCopy;
  v11 = deviceCopy;
  v12 = objectCopy;
  dispatch_async(dispatchQueue, v13);
}

void __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke_2;
  v7 = &unk_1E788B3B8;
  v9 = *(a1 + 56);
  v8 = *(a1 + 32);
  v2 = _Block_copy(&v4);
  v3 = [*(a1 + 40) _sessionWithDevice:*(a1 + 48) activate:1 withCompletion:{v2, v4, v5, v6, v7}];
}

void __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (gLogCategory_SFSessionCache <= 10)
  {
    if (gLogCategory_SFSessionCache != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __48__SFSessionCache_sendWithFlags_object_toDevice___block_invoke_2_cold_1(v3, v4, v5);
    }
  }

  [v6 sendWithFlags:*(a1 + 40) object:*(a1 + 32)];
}

- (id)sessionWithDevice:(id)device activate:(BOOL)activate withCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFSessionCache_sessionWithDevice_activate_withCompletion___block_invoke;
  block[3] = &unk_1E788B408;
  block[4] = self;
  v16 = deviceCopy;
  activateCopy = activate;
  v17 = completionCopy;
  v18 = &v20;
  v11 = completionCopy;
  v12 = deviceCopy;
  dispatch_sync(dispatchQueue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __60__SFSessionCache_sessionWithDevice_activate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sessionWithDevice:*(a1 + 40) activate:*(a1 + 64) withCompletion:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)activePeerDeviceIDs
{
  if (self->_activated && !self->_invalidated)
  {
    v3 = MEMORY[0x1E695DFD8];
    allKeys = [(NSMutableDictionary *)self->_sessions allKeys];
    v2 = [v3 setWithArray:allKeys];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)activeSessions
{
  if (self->_activated && !self->_invalidated)
  {
    v3 = MEMORY[0x1E695DFD8];
    allValues = [(NSMutableDictionary *)self->_sessions allValues];
    v2 = [v3 setWithArray:allValues];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (SFSessionCache)initWithCoder:(id)coder
{
  v27[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = SFSessionCache;
  v5 = [(SFSessionCache *)&v25 init];
  if (v5)
  {
    v6 = SFMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    if ([coderCopy containsValueForKey:@"cp"])
    {
      v5->_capacity = [coderCopy decodeIntegerForKey:@"cp"];
    }

    if ([coderCopy containsValueForKey:@"id"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
      identifier = v5->_identifier;
      v5->_identifier = v8;
    }

    if ([coderCopy containsValueForKey:@"sid"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
      serviceIdentifier = v5->_serviceIdentifier;
      v5->_serviceIdentifier = v10;
    }

    if ([coderCopy containsValueForKey:@"sd"])
    {
      v12 = MEMORY[0x1E695DFD8];
      v27[0] = objc_opt_class();
      v27[1] = objc_opt_class();
      v27[2] = objc_opt_class();
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
      v14 = [v12 setWithArray:v13];

      [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sd"];
      objc_claimAutoreleasedReturnValue();
      v15 = [OUTLINED_FUNCTION_2_4() unarchivedObjectOfClasses:? fromData:? error:?];
      v16 = [v15 mutableCopy];
      sessions = v5->_sessions;
      v5->_sessions = v16;
    }

    if ([coderCopy containsValueForKey:@"tsd"])
    {
      v18 = MEMORY[0x1E695DFD8];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v26[2] = objc_opt_class();
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
      v20 = [v18 setWithArray:v19];

      [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sd"];
      objc_claimAutoreleasedReturnValue();
      v21 = [OUTLINED_FUNCTION_2_4() unarchivedObjectOfClasses:? fromData:? error:?];
      v22 = [v21 mutableCopy];
      timestamps = v5->_timestamps;
      v5->_timestamps = v22;
    }
  }

  return 0;
}

- (id)_sessionWithDevice:(id)device activate:(BOOL)activate withCompletion:(id)completion
{
  activateCopy = activate;
  deviceCopy = device;
  completionCopy = completion;
  identifier = [deviceCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activated)
  {
    v11 = 0;
    if (!self->_invalidated && identifier)
    {
      v12 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:identifier];
      if (v12)
      {
        v11 = v12;
        if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFSessionCache, "[SFSessionCache _sessionWithDevice:activate:withCompletion:]", 30, "Found existing session with device ID %@", identifier);
        }

        if (!completionCopy)
        {
          goto LABEL_21;
        }

        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_7;
        block[3] = &unk_1E788B318;
        v23 = completionCopy;
        v11 = v11;
        v22 = v11;
        dispatch_async(dispatchQueue, block);

        v14 = v23;
      }

      else
      {
        if (gLogCategory_SFSessionCache <= 30 && (gLogCategory_SFSessionCache != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFSessionCache, "[SFSessionCache _sessionWithDevice:activate:withCompletion:]", 30, "Creating session with device ID %@", identifier);
        }

        v15 = objc_alloc_init(SFSession);
        [(SFSession *)v15 setDispatchQueue:self->_dispatchQueue];
        [(SFSession *)v15 setPeerDevice:deviceCopy];
        [(SFSession *)v15 setServiceIdentifier:self->_serviceIdentifier];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke;
        v29[3] = &unk_1E788A658;
        v29[4] = self;
        v16 = v15;
        v30 = v16;
        [(SFSession *)v16 setInterruptionHandler:v29];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_3;
        v27[3] = &unk_1E788A658;
        v27[4] = self;
        v11 = v16;
        v28 = v11;
        [(SFSession *)v11 setInvalidationHandler:v27];
        if (activateCopy)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __61__SFSessionCache__sessionWithDevice_activate_withCompletion___block_invoke_5;
          v24[3] = &unk_1E788B340;
          v26 = completionCopy;
          v24[4] = self;
          v25 = v11;
          [(SFSession *)v25 activateWithCompletion:v24];
        }

        if ([(SFSessionCache *)self cacheFull])
        {
          [(SFSessionCache *)self _popCache];
        }

        [(NSMutableDictionary *)self->_sessions setObject:v11 forKeyedSubscript:identifier];

        v14 = v30;
      }

LABEL_21:
      v17 = MEMORY[0x1E696AD98];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v19 = [v17 numberWithDouble:?];
      [(NSMutableDictionary *)self->_timestamps setObject:v19 forKeyedSubscript:identifier];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end