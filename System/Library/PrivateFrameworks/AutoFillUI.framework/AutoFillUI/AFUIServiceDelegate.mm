@interface AFUIServiceDelegate
- (AFUIServiceDelegate)init;
- (BOOL)_checkAndSendQueuedTextOperationsIfNecessary:(id)necessary;
- (BOOL)_shouldAutomaticallyDisplayPanelForDocumentTraits:(id)traits;
- (BOOL)_shouldDisplayPanelForSession:(id)session documentTraits:(id)traits;
- (id)_inputIdentifierForSession:(id)session;
- (id)_sessionForUUID:(id)d;
- (id)_setupPanelForSessionUUID:(id)d documentPid:(int)pid;
- (void)_displayPanelForSession:(id)session traits:(id)traits;
- (void)_performBlockOnInternalQueueForUUID:(id)d block:(id)block;
- (void)_queueTextOperations:(id)operations forSecureAppID:(id)d processID:(int)iD completionHandler:(id)handler;
- (void)_scheduleExpirationOfQueuedOperations:(id)operations;
- (void)_sendAuthenticationStateOperation:(BOOL)operation sessionUUID:(id)d completion:(id)completion;
- (void)_sendOrQueueTextOperations:(id)operations session:(id)session withInputIdentifier:(id)identifier;
- (void)_sendTextOperations:(id)operations toSession:(id)session completionHandler:(id)handler;
- (void)_setIsMenuPresented:(BOOL)presented forSessionUUID:(id)d;
- (void)_setIsModalUIPresented:(BOOL)presented forSessionUUID:(id)d;
- (void)_tearDownPanelForSessionUUID:(id)d;
- (void)_tearDownPanelsExceptForSessionUUID:(id)d;
- (void)authenticationDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)authenticationWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)contactsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)contactsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)creditCardsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)creditCardsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change;
- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options;
- (void)inputSystemService:(id)service inputSessionDidDie:(id)die;
- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options;
- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason;
- (void)passwordsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)passwordsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)setIsMenuPresented:(BOOL)presented forSessionUUID:(id)d;
@end

@implementation AFUIServiceDelegate

- (AFUIServiceDelegate)init
{
  v10.receiver = self;
  v10.super_class = AFUIServiceDelegate;
  v2 = [(AFUIServiceDelegate *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    sessionPanels = v2->_sessionPanels;
    v2->_sessionPanels = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentSessions = v2->_currentSessions;
    v2->_currentSessions = v7;
  }

  return v2;
}

- (id)_setupPanelForSessionUUID:(id)d documentPid:(int)pid
{
  v4 = *&pid;
  dCopy = d;
  [(NSLock *)self->_lock lock];
  v7 = [(NSMutableDictionary *)self->_sessionPanels objectForKey:dCopy];
  if (!v7)
  {
    v7 = [[AFUIPanel alloc] initWithDocumentPid:v4 sessionUUID:dCopy];
    [(AFUIPanel *)v7 setDelegate:self];
    [(NSMutableDictionary *)self->_sessionPanels setObject:v7 forKey:dCopy];
  }

  [(NSLock *)self->_lock unlock];

  return v7;
}

- (void)_tearDownPanelForSessionUUID:(id)d
{
  dCopy = d;
  [(NSLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_sessionPanels objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AFUIServiceDelegate__tearDownPanelForSessionUUID___block_invoke;
    block[3] = &unk_1E84247B0;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(NSMutableDictionary *)self->_sessionPanels removeObjectForKey:dCopy];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)_tearDownPanelsExceptForSessionUUID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  [(NSLock *)self->_lock lock];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_sessionPanels;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (([v11 isEqual:dCopy] & 1) == 0)
        {
          v12 = [(NSMutableDictionary *)self->_sessionPanels objectForKeyedSubscript:v11];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __59__AFUIServiceDelegate__tearDownPanelsExceptForSessionUUID___block_invoke;
          block[3] = &unk_1E84247B0;
          v24 = v12;
          v13 = v12;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableDictionary *)self->_sessionPanels removeObjectForKey:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v16);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)_displayPanelForSession:(id)session traits:(id)traits
{
  sessionCopy = session;
  traitsCopy = traits;
  if (!traitsCopy)
  {
    traitsCopy = [sessionCopy documentTraits];
  }

  v8 = [(AFUIServiceDelegate *)self _shouldDisplayPanelForSession:sessionCopy documentTraits:traitsCopy];
  uuid = [sessionCopy uuid];
  if (v8)
  {
    v10 = -[AFUIServiceDelegate _setupPanelForSessionUUID:documentPid:](self, "_setupPanelForSessionUUID:documentPid:", uuid, [traitsCopy processId]);

    v11 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:sessionCopy];
    internalQueue = [sessionCopy internalQueue];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke;
    v16[3] = &unk_1E8424BB0;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    v19 = traitsCopy;
    v20 = sessionCopy;
    v13 = v10;
    v14 = v11;
    objc_copyWeak(&v22, &location);
    v21 = internalQueue;
    v15 = internalQueue;
    dispatch_async(MEMORY[0x1E69E96A0], v16);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:uuid];
  }
}

void __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_8];

  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) documentState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_3;
  v6[3] = &unk_1E8424B88;
  objc_copyWeak(&v11, (a1 + 80));
  v7 = *(a1 + 72);
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v3 displayForDocumentTraits:v4 documentState:v5 textOperationsHandler:v6];

  objc_destroyWeak(&v11);
}

void __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_4;
    block[3] = &unk_1E8424B60;
    block[4] = WeakRetained;
    v9 = v3;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AFUIServiceDelegate__displayPanelForSession_traits___block_invoke_5;
  v6[3] = &unk_1E84247B0;
  v7 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)_shouldDisplayPanelForSession:(id)session documentTraits:(id)traits
{
  traitsCopy = traits;
  if (([traitsCopy _isExplicitAutoFillInvocation] & 1) == 0)
  {
    bundleId = [traitsCopy bundleId];
    if (bundleId)
    {
      if (isAutoFillPanelAlwaysBlockedForBundleID_onceToken != -1)
      {
        [AFUIServiceDelegate _shouldDisplayPanelForSession:documentTraits:];
      }

      if ([isAutoFillPanelAlwaysBlockedForBundleID_blockedBundleIDs containsObject:bundleId])
      {
        v5 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v7 = isAutoFillPanelAlwaysAllowedForBundleID_onceToken;
      v8 = bundleId;
      if (v7 != -1)
      {
        [AFUIServiceDelegate _shouldDisplayPanelForSession:documentTraits:];
      }

      v9 = [isAutoFillPanelAlwaysAllowedForBundleID_allowedBundleIDs containsObject:v8];

      if (v9)
      {
        v5 = 1;
        goto LABEL_13;
      }
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    v5 = _os_feature_enabled_impl();
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (BOOL)_shouldAutomaticallyDisplayPanelForDocumentTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy autofillMode] && (objc_msgSend(traitsCopy, "_isExplicitAutoFillInvocation") & 1) == 0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_queueTextOperations:(id)operations forSecureAppID:(id)d processID:(int)iD completionHandler:(id)handler
{
  v7 = *&iD;
  operationsCopy = operations;
  dCopy = d;
  handlerCopy = handler;
  if ([dCopy length])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v14 = [_AFUIQueuedOperations queuedOperationsWithSecureAppID:dCopy processID:v7 textOperations:operationsCopy completionHandler:handlerCopy];
    v15 = AFUIServiceDelegateOSLogFacility(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate _queueTextOperations:dCopy forSecureAppID:uUID processID:? completionHandler:?];
    }

    [(NSLock *)self->_lock lock];
    queuedOperations = self->_queuedOperations;
    if (!queuedOperations)
    {
      v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v18 = self->_queuedOperations;
      self->_queuedOperations = v17;

      queuedOperations = self->_queuedOperations;
    }

    [(NSMutableDictionary *)queuedOperations setObject:v14 forKey:uUID];
    [(NSLock *)self->_lock unlock];
    [(AFUIServiceDelegate *)self _scheduleExpirationOfQueuedOperations:uUID];
  }

  else
  {
    uUID = AFUIServiceDelegateOSLogFacility(0);
    if (os_log_type_enabled(uUID, OS_LOG_TYPE_ERROR))
    {
      [AFUIServiceDelegate _queueTextOperations:forSecureAppID:processID:completionHandler:];
    }
  }
}

- (void)_scheduleExpirationOfQueuedOperations:(id)operations
{
  operationsCopy = operations;
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 20000000000);
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke;
  block[3] = &unk_1E8424BD8;
  objc_copyWeak(&v10, &location);
  v9 = operationsCopy;
  v7 = operationsCopy;
  dispatch_after(v5, v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] lock];
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = [v3[2] objectForKey:v5];

    if (v6)
    {
      v8 = AFUIServiceDelegateOSLogFacility(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke_cold_1(v4);
      }

      [v3[2] removeObjectForKey:*v4];
    }

    [v3[4] unlock];
  }
}

- (void)_sendOrQueueTextOperations:(id)operations session:(id)session withInputIdentifier:(id)identifier
{
  sessionCopy = session;
  lock = self->_lock;
  operationsCopy = operations;
  [(NSLock *)lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  v10 = [currentSessions containsObject:sessionCopy];

  [(NSLock *)self->_lock unlock];
  documentTraits = [sessionCopy documentTraits];
  appId = [documentTraits appId];
  v13 = [appId copy];

  documentTraits2 = [sessionCopy documentTraits];
  processId = [documentTraits2 processId];

  if (v10)
  {
    [(AFUIServiceDelegate *)self _sendTextOperations:operationsCopy toSession:sessionCopy completionHandler:0];
  }

  else
  {
    [(AFUIServiceDelegate *)self _queueTextOperations:operationsCopy forSecureAppID:v13 processID:processId completionHandler:0];
  }
}

- (id)_inputIdentifierForSession:(id)session
{
  sessionCopy = session;
  v4 = sessionCopy;
  if (sessionCopy && ([sessionCopy documentTraits], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    documentTraits = [v4 documentTraits];
    contextID = [documentTraits contextID];

    if (contextID)
    {
      v9 = MEMORY[0x1E696AD98];
      documentTraits2 = [v4 documentTraits];
      processId = [documentTraits2 processId];
      documentTraits3 = [v4 documentTraits];
      v13 = [documentTraits3 contextID] ^ processId;
      documentTraits4 = [v4 documentTraits];
      bundleId = [documentTraits4 bundleId];
      v16 = [v9 numberWithUnsignedInteger:{objc_msgSend(bundleId, "hash") ^ v13}];
    }

    else
    {
      v19 = AFUIServiceDelegateOSLogFacility(v8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AFUIServiceDelegate _inputIdentifierForSession:v4];
      }

      v20 = MEMORY[0x1E696AD98];
      documentTraits5 = [v4 documentTraits];
      processId2 = [documentTraits5 processId];
      documentTraits6 = [v4 documentTraits];
      bundleId2 = [documentTraits6 bundleId];
      v16 = [v20 numberWithUnsignedInteger:{objc_msgSend(bundleId2, "hash") ^ processId2}];
    }
  }

  else
  {
    v17 = AFUIServiceDelegateOSLogFacility(sessionCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AFUIServiceDelegate _inputIdentifierForSession:v4];
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)_checkAndSendQueuedTextOperationsIfNecessary:(id)necessary
{
  v36 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  documentTraits = [necessaryCopy documentTraits];
  appId = [documentTraits appId];

  documentTraits2 = [necessaryCopy documentTraits];
  processId = [documentTraits2 processId];

  v9 = 0;
  if ([appId length] && processId)
  {
    [(NSLock *)self->_lock lock];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__1;
    v32 = __Block_byref_object_dispose__1;
    v33 = 0;
    queuedOperations = self->_queuedOperations;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke;
    v24[3] = &unk_1E8424C00;
    v11 = appId;
    v27 = processId;
    v25 = v11;
    v26 = &v28;
    [(NSMutableDictionary *)queuedOperations enumerateKeysAndObjectsUsingBlock:v24];
    if (v29[5])
    {
      v12 = [(NSMutableDictionary *)self->_queuedOperations objectForKey:?];
      [(NSMutableDictionary *)self->_queuedOperations removeObjectForKey:v29[5]];
    }

    else
    {
      v12 = 0;
    }

    v13 = AFUIServiceDelegateOSLogFacility([(NSLock *)self->_lock unlock]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = MEMORY[0x1E696AEC0];
      textOperations = [v12 textOperations];
      uuid = [necessaryCopy uuid];
      v21 = uuid;
      v22 = @"found";
      if (!textOperations)
      {
        v22 = @"not found";
      }

      v23 = [v18 stringWithFormat:@"%s textOperations %@ for session uuid %@ (appId: %@)", "-[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:]", v22, uuid, v11];
      *buf = 138412290;
      v35 = v23;
      _os_log_debug_impl(&dword_1D2F0D000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    textOperations2 = [v12 textOperations];

    v9 = textOperations2 != 0;
    if (textOperations2)
    {
      textOperations3 = [v12 textOperations];
      completionHandler = [v12 completionHandler];
      [(AFUIServiceDelegate *)self _sendTextOperations:textOperations3 toSession:necessaryCopy completionHandler:completionHandler];
    }

    _Block_object_dispose(&v28, 8);
  }

  return v9;
}

void __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = [v9 secureAppID];
  if ([v10 isEqualToString:*(a1 + 32)])
  {
    v11 = [v9 processID];
    v12 = *(a1 + 48);

    if (v11 == v12)
    {
      v14 = AFUIServiceDelegateOSLogFacility(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke_cold_1();
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (void)_sendTextOperations:(id)operations toSession:(id)session completionHandler:(id)handler
{
  operationsCopy = operations;
  sessionCopy = session;
  handlerCopy = handler;
  v11 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:sessionCopy];
  v12 = v11;
  if (self->_trackedInputIdentifier)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v11 = [v11 isEqualToValue:?];
    if (v11)
    {
      trackedInputIdentifier = self->_trackedInputIdentifier;
      self->_trackedInputIdentifier = 0;
    }
  }

  v15 = AFUIServiceDelegateOSLogFacility(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate _sendTextOperations:sessionCopy toSession:v15 completionHandler:?];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AFUIServiceDelegate__sendTextOperations_toSession_completionHandler___block_invoke;
  block[3] = &unk_1E84245D0;
  v20 = sessionCopy;
  v21 = operationsCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = operationsCopy;
  v18 = sessionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__AFUIServiceDelegate__sendTextOperations_toSession_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) textToAssert];
  v3 = [*(a1 + 32) textOperations];
  [v3 setTextToAssert:v2];

  v4 = [*(a1 + 40) keyboardOutput];
  v5 = [v4 insertionText];
  v6 = [*(a1 + 32) textOperations];
  v7 = [v6 keyboardOutput];
  [v7 setInsertionText:v5];

  v8 = [*(a1 + 40) customInfoType];
  v9 = [*(a1 + 32) textOperations];
  [v9 setCustomInfoType:v8];

  v10 = [*(a1 + 40) customInfo];
  v11 = [*(a1 + 32) textOperations];
  [v11 setCustomInfo:v10];

  v12 = [*(a1 + 40) keyboardOutput];
  v13 = [v12 customInfo];
  v14 = [*(a1 + 32) textOperations];
  v15 = [v14 keyboardOutput];
  [v15 setCustomInfo:v13];

  v16 = [*(a1 + 40) isExplicitAutoFillInvocation];
  v17 = [*(a1 + 32) textOperations];
  [v17 setIsExplicitAutoFillInvocation:v16];

  v18 = *(a1 + 32);
  if (*(a1 + 48))
  {

    return [v18 flushOperationsWithResultHandler:?];
  }

  else
  {

    return [v18 flushOperations];
  }
}

- (void)_sendAuthenticationStateOperation:(BOOL)operation sessionUUID:(id)d completion:(id)completion
{
  operationCopy = operation;
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v10 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
  [v10 setCustomInfoType:@"UIKBRTICustomInfoTypeAutofill"];
  v28[0] = @"selector";
  v11 = NSStringFromSelector(sel_handleEventFromRemoteSource_autoFillAuthentication_);
  v29[0] = v11;
  v28[1] = @"isAuthenticating";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:operationCopy];
  v29[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v10 setCustomInfo:v13];

  [(NSLock *)self->_lock lock];
  v14 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];
  [(NSLock *)self->_lock unlock];
  if (v14)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke;
    v24[3] = &unk_1E8424968;
    v24[4] = self;
    v25 = v10;
    v26 = v14;
    v27 = completionCopy;
    v15 = completionCopy;
    [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:v24];

    v16 = v25;
  }

  else
  {
    authenticatingForDocumentTraits = [(AFUIServiceDelegate *)self authenticatingForDocumentTraits];
    appId = [authenticatingForDocumentTraits appId];
    authenticatingForDocumentTraits2 = [(AFUIServiceDelegate *)self authenticatingForDocumentTraits];
    processId = [authenticatingForDocumentTraits2 processId];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_3;
    v22[3] = &unk_1E8424C28;
    v23 = completionCopy;
    v21 = completionCopy;
    [(AFUIServiceDelegate *)self _queueTextOperations:v10 forSecureAppID:appId processID:processId completionHandler:v22];

    v16 = v23;
  }
}

void __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_2;
  v4[3] = &unk_1E8424C28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _sendTextOperations:v2 toSession:v3 completionHandler:v4];
}

uint64_t __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __80__AFUIServiceDelegate__sendAuthenticationStateOperation_sessionUUID_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticationWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v9 = AFUIServiceDelegateOSLogFacility(dCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate authenticationWillBeginForSessionUUID:a2 completion:?];
  }

  [(AFUIServiceDelegate *)self setAuthenticatingForSessionId:dCopy];
  [(NSLock *)self->_lock lock];
  v10 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];
  documentTraits = [v10 documentTraits];
  [(AFUIServiceDelegate *)self setAuthenticatingForDocumentTraits:documentTraits];

  [(NSLock *)self->_lock unlock];
  [(AFUIServiceDelegate *)self _sendAuthenticationStateOperation:1 sessionUUID:dCopy completion:completionCopy];
}

- (void)authenticationDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v9 = AFUIServiceDelegateOSLogFacility(dCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate authenticationDidEndForSessionUUID:a2 completion:?];
  }

  [(AFUIServiceDelegate *)self _sendAuthenticationStateOperation:0 sessionUUID:dCopy completion:completionCopy];
  [(AFUIServiceDelegate *)self setAuthenticatingForSessionId:0];
  [(AFUIServiceDelegate *)self setAuthenticatingForDocumentTraits:0];
}

- (void)contactsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setContactsUIShowingForSessionId:dCopy];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)contactsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setContactsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)passwordsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setPasswordsUIShowingForSessionId:dCopy];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)passwordsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setPasswordsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)creditCardsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setCreditCardsUIShowingForSessionId:dCopy];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:1 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)creditCardsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(AFUIServiceDelegate *)self setCreditCardsUIShowingForSessionId:0];
  [(AFUIServiceDelegate *)self _setIsModalUIPresented:0 forSessionUUID:dCopy];
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:dCopy block:completionCopy];
}

- (void)_performBlockOnInternalQueueForUUID:(id)d block:(id)block
{
  blockCopy2 = block;
  if (blockCopy2)
  {
    block = blockCopy2;
    lock = self->_lock;
    dCopy = d;
    [(NSLock *)lock lock];
    v9 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];

    internalQueue = [v9 internalQueue];

    [(NSLock *)self->_lock unlock];
    if (internalQueue)
    {
      dispatch_async(internalQueue, block);
    }

    blockCopy2 = block;
  }
}

- (void)_setIsMenuPresented:(BOOL)presented forSessionUUID:(id)d
{
  presentedCopy = presented;
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C6FA8];
  dCopy = d;
  v8 = objc_alloc_init(v6);
  [v8 setCustomInfoType:@"UIKBRTICustomInfoTypeAutofill"];
  v14[0] = @"selector";
  v9 = NSStringFromSelector(sel_handleEventFromRemoteSource_autoFillIsMenuPresented_);
  v14[1] = @"isMenuPresented";
  v15[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:presentedCopy];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v8 setCustomInfo:v11];

  [(NSLock *)self->_lock lock];
  v12 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];

  [(NSLock *)self->_lock unlock];
  v13 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:v12];
  [(AFUIServiceDelegate *)self _sendOrQueueTextOperations:v8 session:v12 withInputIdentifier:v13];
}

- (void)_setIsModalUIPresented:(BOOL)presented forSessionUUID:(id)d
{
  presentedCopy = presented;
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C6FA8];
  dCopy = d;
  v8 = objc_alloc_init(v6);
  [v8 setCustomInfoType:@"UIKBRTICustomInfoTypeAutofill"];
  v14[0] = @"selector";
  v9 = NSStringFromSelector(sel_handleEventFromRemoteSource_autoFillIsModalUIPresented_);
  v14[1] = @"isModalUIPresented";
  v15[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:presentedCopy];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v8 setCustomInfo:v11];

  [(NSLock *)self->_lock lock];
  v12 = [(AFUIServiceDelegate *)self _sessionForUUID:dCopy];

  [(NSLock *)self->_lock unlock];
  v13 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:v12];
  [(AFUIServiceDelegate *)self _sendOrQueueTextOperations:v8 session:v12 withInputIdentifier:v13];
}

- (void)setIsMenuPresented:(BOOL)presented forSessionUUID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__AFUIServiceDelegate_setIsMenuPresented_forSessionUUID___block_invoke;
  v8[3] = &unk_1E8424580;
  presentedCopy = presented;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(AFUIServiceDelegate *)self _performBlockOnInternalQueueForUUID:v7 block:v8];
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options
{
  v61 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  [(NSLock *)self->_lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  [currentSessions addObject:beginCopy];

  v9 = AFUIServiceDelegateOSLogFacility([(NSLock *)self->_lock unlock]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v56 = MEMORY[0x1E696AEC0];
    documentTraits = [beginCopy documentTraits];
    bundleId = [documentTraits bundleId];
    uuid = [beginCopy uuid];
    documentTraits2 = [beginCopy documentTraits];
    appName = [documentTraits2 appName];
    [beginCopy documentTraits];
    v14 = v58 = a2;
    processId = [v14 processId];
    documentTraits3 = [beginCopy documentTraits];
    v55 = processId;
    v17 = bundleId;
    v18 = [v56 stringWithFormat:@"%s Session info. Bundle ID: %@ uuid: %@; appName: %@; processId: %d; contextID: %u", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", bundleId, uuid, appName, v55, objc_msgSend(documentTraits3, "contextID")];;
    *buf = 138412290;
    v60 = v18;
    _os_log_impl(&dword_1D2F0D000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

    a2 = v58;
  }

  if (self->_trackedInputIdentifier)
  {
    v19 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:beginCopy];
    if (v19)
    {
      v20 = v19;
      trackedInputIdentifier = self->_trackedInputIdentifier;
      v22 = [(AFUIServiceDelegate *)self _inputIdentifierForSession:beginCopy];
      LODWORD(trackedInputIdentifier) = [(NSNumber *)trackedInputIdentifier isEqual:v22];

      if (trackedInputIdentifier)
      {
        uuid2 = [beginCopy uuid];
        [(AFUIServiceDelegate *)self _tearDownPanelsExceptForSessionUUID:uuid2];

        v24 = self->_trackedInputIdentifier;
        self->_trackedInputIdentifier = 0;
      }
    }
  }

  documentTraits4 = [beginCopy documentTraits];
  bundleId2 = [documentTraits4 bundleId];
  if ([bundleId2 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    goto LABEL_10;
  }

  documentTraits5 = [beginCopy documentTraits];
  bundleId3 = [documentTraits5 bundleId];
  if ([bundleId3 isEqualToString:@"com.apple.LocalAuthenticationUIService"])
  {

LABEL_10:
    goto LABEL_11;
  }

  documentTraits6 = [beginCopy documentTraits];
  bundleId4 = [documentTraits6 bundleId];
  v33 = [bundleId4 isEqualToString:@"com.apple.ContactsUI.ContactsViewService"];

  if (v33)
  {
LABEL_11:
    documentTraits7 = AFUIServiceDelegateOSLogFacility(v29);
    if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSessionDidBegin:? options:?];
    }

    goto LABEL_13;
  }

  uuid3 = [beginCopy uuid];
  authenticatingForSessionId = [(AFUIServiceDelegate *)self authenticatingForSessionId];
  v36 = [uuid3 isEqual:authenticatingForSessionId];

  if (v36)
  {
    documentTraits7 = AFUIServiceDelegateOSLogFacility(v37);
    if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
    }
  }

  else
  {
    uuid4 = [beginCopy uuid];
    contactsUIShowingForSessionId = [(AFUIServiceDelegate *)self contactsUIShowingForSessionId];
    v40 = [uuid4 isEqual:contactsUIShowingForSessionId];

    if (v40)
    {
      documentTraits7 = AFUIServiceDelegateOSLogFacility(v41);
      if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
      {
        [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
      }
    }

    else
    {
      uuid5 = [beginCopy uuid];
      passwordsUIShowingForSessionId = [(AFUIServiceDelegate *)self passwordsUIShowingForSessionId];
      v44 = [uuid5 isEqual:passwordsUIShowingForSessionId];

      if (v44)
      {
        documentTraits7 = AFUIServiceDelegateOSLogFacility(v45);
        if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
        {
          [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
        }
      }

      else
      {
        uuid6 = [beginCopy uuid];
        creditCardsUIShowingForSessionId = [(AFUIServiceDelegate *)self creditCardsUIShowingForSessionId];
        v48 = [uuid6 isEqual:creditCardsUIShowingForSessionId];

        documentTraits7 = AFUIServiceDelegateOSLogFacility(v49);
        v50 = os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG);
        if (v48)
        {
          if (v50)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
          }
        }

        else
        {
          if (v50)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
          }

          v51 = [(AFUIServiceDelegate *)self _checkAndSendQueuedTextOperationsIfNecessary:beginCopy];
          if ((v51 & 1) != 0 || ([beginCopy documentTraits], v52 = objc_claimAutoreleasedReturnValue(), v53 = -[AFUIServiceDelegate _shouldAutomaticallyDisplayPanelForDocumentTraits:](self, "_shouldAutomaticallyDisplayPanelForDocumentTraits:", v52), v52, !v53))
          {
            documentTraits7 = AFUIServiceDelegateOSLogFacility(v51);
            if (os_log_type_enabled(documentTraits7, OS_LOG_TYPE_DEBUG))
            {
              [AFUIServiceDelegate inputSystemService:a2 inputSessionDidBegin:beginCopy options:documentTraits7];
            }
          }

          else
          {
            v54 = AFUIServiceDelegateOSLogFacility(v51);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              [AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:];
            }

            documentTraits7 = [beginCopy documentTraits];
            [(AFUIServiceDelegate *)self _displayPanelForSession:beginCopy traits:documentTraits7];
          }
        }
      }
    }
  }

LABEL_13:
}

- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options
{
  endCopy = end;
  [(NSLock *)self->_lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  [currentSessions removeObject:endCopy];

  [(NSLock *)self->_lock unlock];
  documentTraits = [endCopy documentTraits];
  bundleId = [documentTraits bundleId];
  if ([bundleId isEqualToString:@"com.apple.CoreAuthUI"])
  {
    goto LABEL_4;
  }

  documentTraits2 = [endCopy documentTraits];
  bundleId2 = [documentTraits2 bundleId];
  if ([bundleId2 isEqualToString:@"com.apple.LocalAuthenticationUIService"])
  {

LABEL_4:
    goto LABEL_5;
  }

  documentTraits3 = [endCopy documentTraits];
  bundleId3 = [documentTraits3 bundleId];
  v17 = [bundleId3 isEqualToString:@"com.apple.ContactsUI.ContactsViewService"];

  if (v17)
  {
LABEL_5:
    uuid5 = AFUIServiceDelegateOSLogFacility(v13);
    if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSessionDidEnd:? options:?];
    }

    goto LABEL_7;
  }

  uuid = [endCopy uuid];
  authenticatingForSessionId = [(AFUIServiceDelegate *)self authenticatingForSessionId];
  v20 = [uuid isEqual:authenticatingForSessionId];

  if (v20)
  {
    uuid5 = AFUIServiceDelegateOSLogFacility(v21);
    if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
    }
  }

  else
  {
    uuid2 = [endCopy uuid];
    contactsUIShowingForSessionId = [(AFUIServiceDelegate *)self contactsUIShowingForSessionId];
    v24 = [uuid2 isEqual:contactsUIShowingForSessionId];

    if (v24)
    {
      uuid5 = AFUIServiceDelegateOSLogFacility(v25);
      if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
      {
        [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
      }
    }

    else
    {
      uuid3 = [endCopy uuid];
      passwordsUIShowingForSessionId = [(AFUIServiceDelegate *)self passwordsUIShowingForSessionId];
      v28 = [uuid3 isEqual:passwordsUIShowingForSessionId];

      if (v28)
      {
        uuid5 = AFUIServiceDelegateOSLogFacility(v29);
        if (os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG))
        {
          [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
        }
      }

      else
      {
        uuid4 = [endCopy uuid];
        creditCardsUIShowingForSessionId = [(AFUIServiceDelegate *)self creditCardsUIShowingForSessionId];
        v32 = [uuid4 isEqual:creditCardsUIShowingForSessionId];

        uuid5 = AFUIServiceDelegateOSLogFacility(v33);
        v34 = os_log_type_enabled(uuid5, OS_LOG_TYPE_DEBUG);
        if (v32)
        {
          if (v34)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
          }
        }

        else
        {
          if (v34)
          {
            [AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:];
          }

          uuid5 = [endCopy uuid];
          [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:uuid5];
        }
      }
    }
  }

LABEL_7:
}

- (void)inputSystemService:(id)service inputSessionDidDie:(id)die
{
  dieCopy = die;
  [(NSLock *)self->_lock lock];
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  [currentSessions removeObject:dieCopy];

  v7 = AFUIServiceDelegateOSLogFacility([(NSLock *)self->_lock unlock]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidDie:];
  }

  uuid = [dieCopy uuid];
  [(AFUIServiceDelegate *)self _tearDownPanelForSessionUUID:uuid];
}

- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change
{
  changeCopy = change;
  sessionPanels = self->_sessionPanels;
  uuid = [session uuid];
  v10 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__AFUIServiceDelegate_inputSystemService_inputSession_documentStateDidChange___block_invoke;
  v13[3] = &unk_1E8424990;
  v14 = v10;
  v15 = changeCopy;
  v11 = changeCopy;
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason
{
  pauseCopy = pause;
  sessionPanels = self->_sessionPanels;
  uuid = [pauseCopy uuid];
  v9 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

  v11 = AFUIServiceDelegateOSLogFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidPause:withReason:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AFUIServiceDelegate_inputSystemService_inputSessionDidPause_withReason___block_invoke;
  block[3] = &unk_1E84247B0;
  v14 = v9;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason
{
  unpauseCopy = unpause;
  sessionPanels = self->_sessionPanels;
  uuid = [unpauseCopy uuid];
  v9 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

  v11 = AFUIServiceDelegateOSLogFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSessionDidUnpause:withReason:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AFUIServiceDelegate_inputSystemService_inputSessionDidUnpause_withReason___block_invoke;
  block[3] = &unk_1E84247B0;
  v14 = v9;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation
{
  sessionCopy = session;
  operationCopy = operation;
  documentTraits = [sessionCopy documentTraits];
  bundleId = [documentTraits bundleId];

  v12 = [bundleId isEqualToString:@"com.apple.CoreAuthUI"];
  if (v12 & 1) != 0 || (v12 = [bundleId isEqualToString:@"com.apple.LocalAuthenticationUIService"], (v12) || (v12 = objc_msgSend(bundleId, "isEqualToString:", @"com.apple.ContactsUI.ContactsViewService"), v12))
  {
    v13 = AFUIServiceDelegateOSLogFacility(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AFUIServiceDelegate inputSystemService:a2 inputSession:? performInputOperation:?];
    }

    goto LABEL_6;
  }

  v14 = AFUIServiceDelegateOSLogFacility(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [AFUIServiceDelegate inputSystemService:inputSession:performInputOperation:];
  }

  customInfoType = [operationCopy customInfoType];
  v16 = [customInfoType isEqualToString:@"UIUserInteractionRemoteInputOperations"];

  if (!v16)
  {
    goto LABEL_7;
  }

  if ([operationCopy actionSelector] == sel_dismissAutoFillPanel || objc_msgSend(operationCopy, "actionSelector") == sel_dismissAutoFillMenu)
  {
    sessionPanels = self->_sessionPanels;
    uuid = [sessionCopy uuid];
    v20 = [(NSMutableDictionary *)sessionPanels objectForKey:uuid];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__AFUIServiceDelegate_inputSystemService_inputSession_performInputOperation___block_invoke;
    v23[3] = &unk_1E8424990;
    v24 = operationCopy;
    v25 = v20;
    v13 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], v23);

LABEL_6:
    goto LABEL_7;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillContactPopoverCommand)
  {
    v17 = 1;
LABEL_32:
    v21 = 7;
    goto LABEL_35;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillCreditCardPopoverCommand)
  {
    v17 = 1;
LABEL_34:
    v21 = 9;
    goto LABEL_35;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillPasswordPopoverCommand)
  {
    v17 = 1;
    goto LABEL_30;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillContactDetected)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillCreditCardDetected)
  {
    v17 = 0;
    goto LABEL_34;
  }

  if ([operationCopy actionSelector] && objc_msgSend(operationCopy, "actionSelector") == sel_handleAutoFillPasswordDetected)
  {
    v17 = 0;
LABEL_30:
    v21 = 1;
LABEL_35:
    documentTraits2 = [sessionCopy documentTraits];
    v13 = [documentTraits2 copy];

    [v13 setAutofillMode:v21];
    [v13 setExplicitAutoFillMode:v17];
    [(AFUIServiceDelegate *)self _displayPanelForSession:sessionCopy traits:v13];
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t __77__AFUIServiceDelegate_inputSystemService_inputSession_performInputOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSelector];
  v3 = *(a1 + 40);
  if (v2 == sel_dismissAutoFillPanel)
  {

    return [v3 hide];
  }

  else
  {

    return [v3 dismissMenu];
  }
}

- (id)_sessionForUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentSessions = [(AFUIServiceDelegate *)self currentSessions];
  v6 = [currentSessions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(currentSessions);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [currentSessions countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_queueTextOperations:(uint64_t)a1 forSecureAppID:(uint64_t)a2 processID:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Queueing textOperations for session with appId: %@ (payloadID: %@)", "-[AFUIServiceDelegate _queueTextOperations:forSecureAppID:processID:completionHandler:]", a1, a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v3, v4, "%@", v5, v6, v7, v8, v9, v10, v11, v12);
}

- (void)_queueTextOperations:forSecureAppID:processID:completionHandler:.cold.2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Cannot queue textOperations: secureAppID is empty", "-[AFUIServiceDelegate _queueTextOperations:forSecureAppID:processID:completionHandler:]"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_1D2F0D000, v1, v2, "%@", v3, v4, v5, v6, v7, v8);
}

void __61__AFUIServiceDelegate__scheduleExpirationOfQueuedOperations___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Queued operations are expiring unused for payloadID: %@", "-[AFUIServiceDelegate _scheduleExpirationOfQueuedOperations:]_block_invoke", *a1];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v2, v3, "%@", v4);
}

- (void)_inputIdentifierForSession:(void *)a1 .cold.1(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 uuid];
  v3 = [v1 stringWithFormat:@"%s ContextID is null for session %@, identifying the input with processId and bundle identifier", "-[AFUIServiceDelegate _inputIdentifierForSession:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_1D2F0D000, v4, v5, "%@", v6, v7, v8, v9, v10, v11);
}

- (void)_inputIdentifierForSession:(void *)a1 .cold.2(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 uuid];
  v3 = [v1 stringWithFormat:@"%s Could not compute input identifier for session %@", "-[AFUIServiceDelegate _inputIdentifierForSession:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_1D2F0D000, v4, v5, "%@", v6, v7, v8, v9, v10, v11);
}

void __68__AFUIServiceDelegate__checkAndSendQueuedTextOperationsIfNecessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v1 = MEMORY[0x1E696AEC0];
  v3 = [v2 secureAppID];
  v4 = [v1 stringWithFormat:@"%s Found queued textOperations for session with appId: %@ (payloadID: %@)", "-[AFUIServiceDelegate _checkAndSendQueuedTextOperationsIfNecessary:]_block_invoke", v3, v0];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)_sendTextOperations:(void *)a1 toSession:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 uuid];
  v6 = [a1 documentTraits];
  v7 = [v6 appId];
  v8 = [v4 stringWithFormat:@"%s sending textOperations for session %@ (appId: %@)", "-[AFUIServiceDelegate _sendTextOperations:toSession:completionHandler:]", v5, v7];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D2F0D000, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

- (void)authenticationWillBeginForSessionUUID:(const char *)a1 completion:.cold.1(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@", "-[AFUIServiceDelegate authenticationWillBeginForSessionUUID:completion:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v6);
}

- (void)authenticationDidEndForSessionUUID:(const char *)a1 completion:.cold.1(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@", "-[AFUIServiceDelegate authenticationDidEndForSessionUUID:completion:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v6);
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a new session %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ displaying the panel for session %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:(const char *)a1 inputSessionDidBegin:(void *)a2 options:(NSObject *)a3 .cold.3(const char *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a1);
  v7 = [a2 uuid];
  v8 = [a2 documentTraits];
  v9 = [v5 stringWithFormat:@"%s %@ not displaying the panel for session %@: autofillMode = %lu", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v6, v7, objc_msgSend(v8, "autofillMode")];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D2F0D000, a3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Credit Card Picker UI %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Password Picker UI %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.6()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Contact Picker UI %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidBegin:options:.cold.7()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is authenticating %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:(const char *)a1 inputSessionDidBegin:options:.cold.8(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@ is for a process that should be ignored", "-[AFUIServiceDelegate inputSystemService:inputSessionDidBegin:options:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v6);
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a finished session %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Credit Card Picker UI %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Password Picker UI %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is in the Contact Picker UI %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidEnd:options:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a session being targeted by AutoFill which is authenticating %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:(const char *)a1 inputSessionDidEnd:options:.cold.6(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@ is for a process that should be ignored", "-[AFUIServiceDelegate inputSystemService:inputSessionDidEnd:options:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v6);
}

- (void)inputSystemService:inputSessionDidDie:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ is for a finished session %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidDie:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidPause:withReason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ for session %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidPause:withReason:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSessionDidUnpause:withReason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ for session %@", "-[AFUIServiceDelegate inputSystemService:inputSessionDidUnpause:withReason:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:inputSession:performInputOperation:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = MEMORY[0x1E696AEC0];
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() uuid];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v4 = [v2 stringWithFormat:@"%s %@ for session %@", "-[AFUIServiceDelegate inputSystemService:inputSession:performInputOperation:]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)inputSystemService:(const char *)a1 inputSession:performInputOperation:.cold.2(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"%s %@ is for a process that should be ignored", "-[AFUIServiceDelegate inputSystemService:inputSession:performInputOperation:]", v2];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_1D2F0D000, v4, v5, "%@", v6);
}

@end