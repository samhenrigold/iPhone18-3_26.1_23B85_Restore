@interface SFPowerSourceMonitor
- (BOOL)powerSourcesListWithOutInfo:(const void *)info outSources:(const __CFArray *)sources outSourcesCount:(int64_t *)count;
- (SFPowerSourceMonitor)init;
- (void)_cleanup;
- (void)_foundPowerSource:(id)source desc:(id)desc adapterDesc:(id)adapterDesc;
- (void)_handlePowerSourcesChanged:(id)changed changes:(unsigned int)changes;
- (void)_handlePowerSourcesFound:(id)found;
- (void)_handlePowerSourcesLost:(id)lost;
- (void)_removePowerSources:(id)sources;
- (void)_triggerUpdatePowerSources;
- (void)_update;
- (void)_updatePowerSource:(id)source desc:(id)desc adapterDesc:(id)adapterDesc;
- (void)_updatePowerSources;
- (void)_updatePowerSourcesWithInfo:(void *)info sources:(__CFArray *)sources sourcesCount:(int64_t)count;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setChangeFlags:(unsigned int)flags;
@end

@implementation SFPowerSourceMonitor

uint64_t __31__SFPowerSourceMonitor__update__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*v2 <= 10)
  {
    if (*v2 != -1)
    {
LABEL_3:
      LogPrintF(v2, "[SFPowerSourceMonitor _update]_block_invoke_4", 10, "Power notification: AnyPowerSource\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

- (void)_triggerUpdatePowerSources
{
  if (self->_skipCoalescing)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFPowerSourceMonitor _triggerUpdatePowerSources]", 10, "Coalescing skipped\n");
    }

LABEL_14:

    [(SFPowerSourceMonitor *)self _updatePowerSources];
    return;
  }

  if (!self->_updateCoalescer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6999478]);
    updateCoalescer = self->_updateCoalescer;
    self->_updateCoalescer = v4;

    [(CUCoalescer *)self->_updateCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_updateCoalescer setMaxDelay:0.05];
    [(CUCoalescer *)self->_updateCoalescer setMinDelay:0.03];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__SFPowerSourceMonitor__triggerUpdatePowerSources__block_invoke;
    v9[3] = &unk_1E788B4D0;
    objc_copyWeak(&v10, &location);
    [(CUCoalescer *)self->_updateCoalescer setActionHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  location = 0;
  v7 = 0;
  cf = 0;
  if ([(SFPowerSourceMonitor *)self powerSourcesListWithOutInfo:&location outSources:&cf outSourcesCount:&v7])
  {
    if (v7 == self->_previousSourcesCount)
    {
      [(SFPowerSourceMonitor *)self _updatePowerSourcesWithInfo:location sources:cf sourcesCount:?];
LABEL_19:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (location)
      {
        CFRelease(location);
      }

      return;
    }

    v6 = self->_ucat;
    if (v6->var0 <= 10)
    {
      if (v6->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v6 = self->_ucat;
      }

      LogPrintF(v6, "[SFPowerSourceMonitor _triggerUpdatePowerSources]", 10, "queue up update power sources");
    }

LABEL_18:
    [(CUCoalescer *)self->_updateCoalescer trigger];
    goto LABEL_19;
  }
}

- (SFPowerSourceMonitor)init
{
  v11.receiver = self;
  v11.super_class = SFPowerSourceMonitor;
  v2 = [(SFPowerSourceMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v10 = 0;
    v9 = 0;
    ASPrintF(&v9, "SFPowerSourceMonitor-%{ptr}", v2);
    v3->_ucat = LogCategoryCreateEx();
    if (v10)
    {
      v3->_ucat = LogCategoryCreateEx();
    }

    if (v9)
    {
      free(v9);
    }

    v3->_changeFlags = 5;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    *&v3->_psNotifyTokenAccessoryAttach = -1;
    *&v3->_psNotifyTokenAccessoryTimeRemaining = -1;
    v6 = objc_opt_new();
    powerSources = v3->_powerSources;
    v3->_powerSources = v6;
  }

  return v3;
}

- (void)dealloc
{
  [(SFPowerSourceMonitor *)self _cleanup];
  v3.receiver = self;
  v3.super_class = SFPowerSourceMonitor;
  [(SFPowerSourceMonitor *)&v3 dealloc];
}

- (void)_cleanup
{
  [(CUCoalescer *)self->_updateCoalescer invalidate];
  updateCoalescer = self->_updateCoalescer;
  self->_updateCoalescer = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  powerSourcesFoundHandler = self->_powerSourcesFoundHandler;
  self->_powerSourcesFoundHandler = 0;

  powerSourcesLostHandler = self->_powerSourcesLostHandler;
  self->_powerSourcesLostHandler = 0;

  powerSourcesChangedHandler = self->_powerSourcesChangedHandler;
  self->_powerSourcesChangedHandler = 0;

  [(NSMutableDictionary *)self->_powerSources removeAllObjects];
  powerSources = self->_powerSources;
  self->_powerSources = 0;

  psNotifyTokenAccessoryAttach = self->_psNotifyTokenAccessoryAttach;
  if (psNotifyTokenAccessoryAttach != -1)
  {
    notify_cancel(psNotifyTokenAccessoryAttach);
    self->_psNotifyTokenAccessoryAttach = -1;
  }

  psNotifyTokenAccessoryPowerSource = self->_psNotifyTokenAccessoryPowerSource;
  if (psNotifyTokenAccessoryPowerSource != -1)
  {
    notify_cancel(psNotifyTokenAccessoryPowerSource);
    self->_psNotifyTokenAccessoryPowerSource = -1;
  }

  psNotifyTokenAccessoryTimeRemaining = self->_psNotifyTokenAccessoryTimeRemaining;
  if (psNotifyTokenAccessoryTimeRemaining != -1)
  {
    notify_cancel(psNotifyTokenAccessoryTimeRemaining);
    self->_psNotifyTokenAccessoryTimeRemaining = -1;
  }

  psNotifyTokenAnyPowerSource = self->_psNotifyTokenAnyPowerSource;
  if (psNotifyTokenAnyPowerSource != -1)
  {
    notify_cancel(psNotifyTokenAnyPowerSource);
    self->_psNotifyTokenAnyPowerSource = -1;
  }

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }
}

- (void)setChangeFlags:(unsigned int)flags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SFPowerSourceMonitor_setChangeFlags___block_invoke;
    v6[3] = &unk_1E788D970;
    flagsCopy = flags;
    v6[4] = selfCopy;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    selfCopy->_changeFlags = flags;
  }

  objc_sync_exit(selfCopy);
}

void *__39__SFPowerSourceMonitor_setChangeFlags___block_invoke(void *result)
{
  v1 = *(result + 10);
  v2 = *(result + 4);
  if (v1 != *(v2 + 76))
  {
    *(v2 + 76) = v1;
    return [*(result + 4) _update];
  }

  return result;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SFPowerSourceMonitor_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

uint64_t __47__SFPowerSourceMonitor_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SFPowerSourceMonitor activateWithCompletion:]_block_invoke", 30, "Activate\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = v2[1];
      goto LABEL_3;
    }
  }

LABEL_5:
  [v2 _update];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *(a1 + 32);

  return [v6 _triggerUpdatePowerSources];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFPowerSourceMonitor_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__SFPowerSourceMonitor_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SFPowerSourceMonitor invalidate]_block_invoke", 30, "Invalidate\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = v2[1];
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = v2[11];
  if (v5)
  {
    (*(v5 + 16))(v2[11]);
    v2 = *(a1 + 32);
  }

  return [v2 _cleanup];
}

- (void)_update
{
  if (self->_psNotifyTokenAccessoryAttach == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __31__SFPowerSourceMonitor__update__block_invoke;
    handler[3] = &unk_1E788CB60;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.attach", &self->_psNotifyTokenAccessoryAttach, dispatchQueue, handler);
  }

  if (self->_psNotifyTokenAccessoryPowerSource == -1)
  {
    v4 = self->_dispatchQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__SFPowerSourceMonitor__update__block_invoke_2;
    v9[3] = &unk_1E788CB60;
    v9[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.source", &self->_psNotifyTokenAccessoryPowerSource, v4, v9);
  }

  if (self->_psNotifyTokenAccessoryTimeRemaining == -1)
  {
    v5 = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__SFPowerSourceMonitor__update__block_invoke_3;
    v8[3] = &unk_1E788CB60;
    v8[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_psNotifyTokenAccessoryTimeRemaining, v5, v8);
  }

  if (self->_psNotifyTokenAnyPowerSource == -1)
  {
    v6 = self->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__SFPowerSourceMonitor__update__block_invoke_4;
    v7[3] = &unk_1E788CB60;
    v7[4] = self;
    notify_register_dispatch("com.apple.system.powersources", &self->_psNotifyTokenAnyPowerSource, v6, v7);
  }
}

uint64_t __31__SFPowerSourceMonitor__update__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*v2 <= 10)
  {
    if (*v2 != -1)
    {
LABEL_3:
      LogPrintF(v2, "[SFPowerSourceMonitor _update]_block_invoke", 10, "Power notification: AccessoryAttach\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

uint64_t __31__SFPowerSourceMonitor__update__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*v2 <= 10)
  {
    if (*v2 != -1)
    {
LABEL_3:
      LogPrintF(v2, "[SFPowerSourceMonitor _update]_block_invoke_2", 10, "Power notification: AccessoryPowerSource\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

uint64_t __31__SFPowerSourceMonitor__update__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*v2 <= 10)
  {
    if (*v2 != -1)
    {
LABEL_3:
      LogPrintF(v2, "[SFPowerSourceMonitor _update]_block_invoke_3", 10, "Power notification: AccessoryTimeRemaining\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

- (BOOL)powerSourcesListWithOutInfo:(const void *)info outSources:(const __CFArray *)sources outSourcesCount:(int64_t *)count
{
  cf = 0;
  v9 = IOPSCopyPowerSourcesByTypePrecise();
  if (!v9)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFPowerSourceMonitor powerSourcesListWithOutInfo:outSources:outSourcesCount:]", 90, "### IOPSCopyPowerSourcesByTypePrecise unsuccessfull, error: %d, falling abck to imprecise battery level\n", v10);
  }

LABEL_7:
  v12 = IOPSCopyPowerSourcesByType();
  cf = v12;
LABEL_8:
  if (v12)
  {
    v13 = IOPSCopyPowerSourcesList(v12);
    if (v13)
    {
      *info = cf;
      *sources = v13;
      v14 = 0;
      *count = CFArrayGetCount(v13);
LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }

    NSErrorWithOSStatusF(4294960587, "### IOPSCopyPowerSourcesList failed");
  }

  else
  {
    NSErrorWithOSStatusF(4294960587, "### IOPSCopyPowerSourcesByType failed");
  }
  v14 = ;
  if (!v14)
  {
    goto LABEL_11;
  }

  v17 = self->_ucat;
  if (v17->var0 <= 60)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v17 = self->_ucat;
    }

    localizedDescription = [v14 localizedDescription];
    LogPrintF(v17, "[SFPowerSourceMonitor powerSourcesListWithOutInfo:outSources:outSourcesCount:]", 60, "%@", localizedDescription);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

void __50__SFPowerSourceMonitor__triggerUpdatePowerSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePowerSources];
}

- (void)_updatePowerSources
{
  cf = 0;
  v5 = 0;
  v3 = 0;
  if ([(SFPowerSourceMonitor *)self powerSourcesListWithOutInfo:&v5 outSources:&cf outSourcesCount:&v3])
  {
    [(SFPowerSourceMonitor *)self _updatePowerSourcesWithInfo:v5 sources:cf sourcesCount:v3];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

- (void)_updatePowerSourcesWithInfo:(void *)info sources:(__CFArray *)sources sourcesCount:(int64_t)count
{
  v69 = *MEMORY[0x1E69E9840];
  powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex + 1;
  self->_powerSourcesUpdateIndex = powerSourcesUpdateIndex;
  ucat = self->_ucat;
  if (ucat->var0 > 10)
  {
    goto LABEL_5;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

    ucat = self->_ucat;
    powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
  }

  LogPrintF(ucat, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 10, "#%u Updating with sourcesCount %d vs currently tracked powerSources count %d", powerSourcesUpdateIndex, count, [(NSMutableDictionary *)self->_powerSources count]);
LABEL_5:
  self->_previousSourcesCount = count;
  powerSources = self->_powerSources;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __73__SFPowerSourceMonitor__updatePowerSourcesWithInfo_sources_sourcesCount___block_invoke;
  v65[3] = &unk_1E788D998;
  selfCopy = self;
  v65[4] = self;
  [(NSMutableDictionary *)powerSources enumerateKeysAndObjectsUsingBlock:v65];
  v49 = IOPSCopyExternalPowerAdapterDetails();
  if (count >= 1)
  {
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(sources, v12);
      v14 = IOPSGetPowerSourceDescription(info, ValueAtIndex);
      v15 = self->_ucat;
      if (v15->var0 > 10)
      {
        goto LABEL_11;
      }

      if (v15->var0 != -1)
      {
        goto LABEL_9;
      }

      if (_LogCategory_Initialize())
      {
        break;
      }

LABEL_11:
      if (v14)
      {
        v16 = [v14 objectForKeyedSubscript:@"Power Source ID"];
        if (v16)
        {
          v17 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v16];
          if (v17)
          {
            v18 = v17;
            [(SFPowerSourceMonitor *)self _updatePowerSource:v17 desc:v14 adapterDesc:v49];
          }

          else
          {
            [(SFPowerSourceMonitor *)self _foundPowerSource:v16 desc:v14 adapterDesc:v49];
          }

          goto LABEL_25;
        }

        v20 = self->_ucat;
        if (v20->var0 <= 60)
        {
          if (v20->var0 != -1)
          {
            goto LABEL_20;
          }

          if (_LogCategory_Initialize())
          {
            v20 = self->_ucat;
LABEL_20:
            LogPrintF(v20, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 60, "#%u ### No sourceID for power source %##@\n", self->_powerSourcesUpdateIndex, v14);
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      v19 = self->_ucat;
      if (v19->var0 <= 60)
      {
        if (v19->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          v19 = self->_ucat;
        }

        LogPrintF(v19, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 60, "#%u ### IOPSGetPowerSourceDescription %ld failed\n", self->_powerSourcesUpdateIndex, v12);
      }

LABEL_26:

      if (count == ++v12)
      {
        goto LABEL_30;
      }
    }

    v15 = self->_ucat;
LABEL_9:
    LogPrintF(v15, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 10, "#%u In powersource description %##@", self->_powerSourcesUpdateIndex, v14);
    goto LABEL_11;
  }

LABEL_30:
  v21 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy2 = self;
  obj = [(NSMutableDictionary *)self->_powerSources allValues];
  v54 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (!v54)
  {
    goto LABEL_82;
  }

  v53 = *v62;
  v51 = v21;
  do
  {
    v23 = 0;
    do
    {
      if (*v62 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v61 + 1) + 8 * v23);
      groupID = [v24 groupID];
      if ([groupID length])
      {
        if ([v21 containsObject:groupID])
        {
          v26 = selfCopy2->_ucat;
          if (v26->var0 <= 10)
          {
            if (v26->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_75;
              }

              v26 = selfCopy2->_ucat;
            }

            LogPrintF(v26, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 10, "#%u Skipping powersource as its group has already been processed %@", selfCopy2->_powerSourcesUpdateIndex, v24);
          }

LABEL_75:
          v33 = 0;
          goto LABEL_76;
        }

        allValues = [(NSMutableDictionary *)selfCopy2->_powerSources allValues];
        v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupID == %@", groupID];
        v27 = [allValues filteredArrayUsingPredicate:v29];

        [v21 addObject:groupID];
      }

      else
      {
        v67 = v24;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
      }

      v30 = selfCopy2->_ucat;
      if (v30->var0 <= 10)
      {
        if (v30->var0 != -1)
        {
          goto LABEL_44;
        }

        if (_LogCategory_Initialize())
        {
          v30 = selfCopy2->_ucat;
LABEL_44:
          v31 = selfCopy2->_powerSourcesUpdateIndex;
          accessoryCategory = [v24 accessoryCategory];
          LogPrintF(v30, "-[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 10, "#%u Processing group with ID %@, type %@, %d entries", v31, groupID, accessoryCategory, [v27 count]);
        }
      }

      v55 = groupID;
      v56 = v23;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v33 = v27;
      v34 = [v33 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v34)
      {
        v35 = v34;
        LODWORD(v36) = 0;
        v37 = *v58;
        v38 = 1;
        v39 = 1;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v58 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v41 = *(*(&v57 + 1) + 8 * i);
            v42 = [v41 present] ^ 1;
            added = [v41 added];
            v39 &= v42;
            v38 &= added;
            v44 = [v41 changes] | v36;
            if ((v42 | added))
            {
              v36 = v44 | 0x200;
            }

            else
            {
              v36 = v44;
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v35);
      }

      else
      {
        v36 = 0;
        v38 = 1;
        v39 = 1;
      }

      selfCopy2 = selfCopy;
      p_var0 = &selfCopy->_ucat->var0;
      if (*p_var0 > 10)
      {
        goto LABEL_67;
      }

      if (*p_var0 != -1)
      {
        goto LABEL_60;
      }

      if (_LogCategory_Initialize())
      {
        p_var0 = &selfCopy->_ucat->var0;
LABEL_60:
        v46 = "no";
        if (v39)
        {
          v47 = "yes";
        }

        else
        {
          v47 = "no";
        }

        if (v38)
        {
          v46 = "yes";
        }

        LogPrintF(p_var0, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]", 10, "#%u Group changes; allLost:%s, allAdded:%s, changes:%#{flags}", selfCopy->_powerSourcesUpdateIndex, v47, v46, v36, &unk_1A998F040);
      }

LABEL_67:
      if (v39)
      {
        [(SFPowerSourceMonitor *)selfCopy _handlePowerSourcesLost:v33];
      }

      else if (v38)
      {
        [(SFPowerSourceMonitor *)selfCopy _handlePowerSourcesFound:v33];
      }

      else if (v36)
      {
        [(SFPowerSourceMonitor *)selfCopy _handlePowerSourcesChanged:v33 changes:v36];
      }

      v21 = v51;
      groupID = v55;
      v23 = v56;
LABEL_76:

      ++v23;
    }

    while (v23 != v54);
    v48 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    v54 = v48;
  }

  while (v48);
LABEL_82:
}

void __73__SFPowerSourceMonitor__updatePowerSourcesWithInfo_sources_sourcesCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  if (*v7 <= 10)
  {
    if (*v7 != -1)
    {
LABEL_3:
      LogPrintF(v7, "[SFPowerSourceMonitor _updatePowerSourcesWithInfo:sources:sourcesCount:]_block_invoke", 10, "#%u Tracked powersource %@", *(v6 + 32), v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  [v5 setAdded:0];
  [v5 setPresent:0];
  [v5 setChanges:0];
}

- (void)_foundPowerSource:(id)source desc:(id)desc adapterDesc:(id)adapterDesc
{
  sourceCopy = source;
  adapterDescCopy = adapterDesc;
  descCopy = desc;
  v10 = objc_alloc_init(SFPowerSource);
  -[SFPowerSource setSourceID:](v10, "setSourceID:", [sourceCopy integerValue]);
  [(SFPowerSource *)v10 updateWithPowerSourceDescription:descCopy];

  [(SFPowerSource *)v10 setAdded:1];
  if ([(SFPowerSource *)v10 isInternal])
  {
    [(SFPowerSource *)v10 setGroupID:@"Internal"];
    [(SFPowerSource *)v10 updateWithPowerAdapterDetails:adapterDescCopy];
    goto LABEL_13;
  }

  accessoryCategory = [(SFPowerSource *)v10 accessoryCategory];
  v12 = accessoryCategory;
  if (accessoryCategory != @"Battery Case")
  {
    if (!accessoryCategory)
    {
      goto LABEL_10;
    }

    v13 = [(__CFString *)accessoryCategory isEqual:@"Battery Case"];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  transportType = [(SFPowerSource *)v10 transportType];
  if (transportType == @"AID")
  {

    goto LABEL_12;
  }

  v15 = transportType;
  if (!transportType)
  {
LABEL_10:

    goto LABEL_13;
  }

  v16 = [(__CFString *)transportType isEqual:@"AID"];

  if (v16)
  {
LABEL_12:
    [(SFPowerSource *)v10 setGroupID:@"Internal"];
  }

LABEL_13:
  [(NSMutableDictionary *)self->_powerSources setObject:v10 forKeyedSubscript:sourceCopy];
  ucat = self->_ucat;
  if (ucat->var0 > 10)
  {
    goto LABEL_17;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_15;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_15:
    LogPrintF(ucat, "[SFPowerSourceMonitor _foundPowerSource:desc:adapterDesc:]", 10, "#%u Found powersource %@", self->_powerSourcesUpdateIndex, v10);
  }

LABEL_17:
}

- (void)_updatePowerSource:(id)source desc:(id)desc adapterDesc:(id)adapterDesc
{
  sourceCopy = source;
  adapterDescCopy = adapterDesc;
  v9 = [sourceCopy updateWithPowerSourceDescription:desc];
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    v11 = sourceCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
      v11 = sourceCopy;
    }

    LogPrintF(ucat, "[SFPowerSourceMonitor _updatePowerSource:desc:adapterDesc:]", 10, "#%u Updated powersource %@ with changes %#{flags}", self->_powerSourcesUpdateIndex, v11, v9, &unk_1A998F040);
  }

LABEL_5:
  if (([sourceCopy isInternal] & 1) != 0 || (objc_msgSend(sourceCopy, "groupID"), v12 = objc_claimAutoreleasedReturnValue(), v12 == @"Internal") || (v13 = v12) != 0 && (v14 = -[__CFString isEqual:](v12, "isEqual:", @"Internal"), v13, v13, v14))
  {
    v9 = [sourceCopy updateWithPowerAdapterDetails:adapterDescCopy] | v9;
  }

  [sourceCopy setChanges:v9];
}

- (void)_handlePowerSourcesFound:(id)found
{
  foundCopy = found;
  ucat = self->_ucat;
  v8 = foundCopy;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFPowerSourceMonitor _handlePowerSourcesFound:]", 10, "#%u handle found: %##@", self->_powerSourcesUpdateIndex, foundCopy);
      foundCopy = v8;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    foundCopy = v8;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  powerSourcesFoundHandler = self->_powerSourcesFoundHandler;
  if (powerSourcesFoundHandler)
  {
    (powerSourcesFoundHandler)[2](powerSourcesFoundHandler, v8);
    foundCopy = v8;
  }
}

- (void)_handlePowerSourcesChanged:(id)changed changes:(unsigned int)changes
{
  v25 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  ucat = self->_ucat;
  if (ucat->var0 > 10)
  {
    goto LABEL_5;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[SFPowerSourceMonitor _handlePowerSourcesChanged:changes:]", 10, "#%u handle changed: %##@", self->_powerSourcesUpdateIndex, changedCopy);
LABEL_5:
  v7 = [changedCopy mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = changedCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v20;
  do
  {
    v12 = 0;
    do
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if (([v13 present] & 1) == 0)
      {
        v14 = self->_ucat;
        if (v14->var0 <= 10)
        {
          if (v14->var0 != -1)
          {
            goto LABEL_13;
          }

          if (_LogCategory_Initialize())
          {
            v14 = self->_ucat;
LABEL_13:
            LogPrintF(v14, "[SFPowerSourceMonitor _handlePowerSourcesChanged:changes:]", 10, "#%u removing changed: %@", self->_powerSourcesUpdateIndex, v13);
          }
        }

        [v7 removeObject:v13];
        v23 = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
        [(SFPowerSourceMonitor *)self _removePowerSources:v15];
      }

      ++v12;
    }

    while (v10 != v12);
    v16 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    v10 = v16;
  }

  while (v16);
LABEL_20:

  powerSourcesChangedHandler = self->_powerSourcesChangedHandler;
  if (powerSourcesChangedHandler && (self->_changeFlags & changes) != 0)
  {
    powerSourcesChangedHandler[2](powerSourcesChangedHandler, v7);
  }
}

- (void)_handlePowerSourcesLost:(id)lost
{
  lostCopy = lost;
  ucat = self->_ucat;
  v8 = lostCopy;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFPowerSourceMonitor _handlePowerSourcesLost:]", 10, "#%u handle lost: %##@", self->_powerSourcesUpdateIndex, lostCopy);
      lostCopy = v8;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    lostCopy = v8;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(SFPowerSourceMonitor *)self _removePowerSources:lostCopy];
  powerSourcesLostHandler = self->_powerSourcesLostHandler;
  if (powerSourcesLostHandler)
  {
    powerSourcesLostHandler[2](powerSourcesLostHandler, v8);
  }
}

- (void)_removePowerSources:(id)sources
{
  v15 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        v9 = [(NSMutableDictionary *)self->_powerSources allKeysForObject:*(*(&v10 + 1) + 8 * v8)];
        [(NSMutableDictionary *)self->_powerSources removeObjectsForKeys:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [sourcesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end