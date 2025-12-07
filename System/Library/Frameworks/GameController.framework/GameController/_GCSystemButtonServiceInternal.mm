@interface _GCSystemButtonServiceInternal
- (_GCSystemButtonServiceInternal)init;
- (id)beginConsumingPressesWithReason:(id)reason consumer:(id)consumer priority:(int64_t)priority;
- (void)_applyLatestConsumerStatus;
- (void)_buttonConsumerInvalidated:(uint64_t)invalidated;
- (void)_invalidate;
- (void)_resumeServerConnection;
- (void)consumeSystemButtonPressEventAtPriority:(int64_t)priority;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActiveClientsRespondingToSystemButton:(id)button;
- (void)setSystemButtonAvailable:(BOOL)available localizedName:(id)name sfSymbolName:(id)symbolName;
@end

@implementation _GCSystemButtonServiceInternal

- (_GCSystemButtonServiceInternal)init
{
  v24.receiver = self;
  v24.super_class = _GCSystemButtonServiceInternal;
  v2 = [(_GCSystemButtonServiceInternal *)&v24 init];
  v3 = objc_opt_new();
  consumers = v2->_consumers;
  v2->_consumers = v3;

  v5 = objc_opt_new();
  [(_GCSystemButtonServerConnection *)v5 setClient:v2];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38___GCSystemButtonServiceInternal_init__block_invoke;
  v22[3] = &unk_1E8418C28;
  v6 = v2;
  v23 = v6;
  v7 = [(GCIPCRemoteConnection *)v5 addInvalidationHandler:v22];
  serverConnectionInvalidation = v6->_serverConnectionInvalidation;
  v6->_serverConnectionInvalidation = v7;

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __38___GCSystemButtonServiceInternal_init__block_invoke_158;
  v20 = &unk_1E8418C28;
  v9 = v6;
  v21 = v9;
  v10 = [(GCIPCRemoteConnection *)v5 addInterruptionHandler:&v17];
  serverConnectionInterruption = v9->_serverConnectionInterruption;
  v9->_serverConnectionInterruption = v10;

  serverConnection = v9->_serverConnection;
  v9->_serverConnection = v5;
  v13 = v5;

  [(GCIPCRemoteConnection *)v9->_serverConnection resume:v17];
  [(_GCSystemButtonServiceInternal *)v9 _resumeServerConnection];
  v14 = v21;
  v15 = v9;

  return v15;
}

- (void)_resumeServerConnection
{
  if (self)
  {
    v2 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonService] Resume Connection To Server", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    remoteProxy = [*(self + 16) remoteProxy];
    [remoteProxy refresh];

    [(_GCSystemButtonServiceInternal *)self _applyLatestConsumerStatus];
    os_activity_scope_leave(&v4);
  }
}

- (void)_invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonService] Invalidate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    [*(self + 16) invalidate];
    v3 = *(self + 8);
    objc_sync_enter(v3);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(self + 8);
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"invalid" context:{0, v8}];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }

    [*(self + 8) removeAllObjects];
    objc_sync_exit(v3);

    os_activity_scope_leave(&state);
  }
}

- (void)_applyLatestConsumerStatus
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _gc_log_system_button(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = a2;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "Informing server that client wants presses for %@", &v7, 0xCu);
  }

  remoteProxy = [*(self + 16) remoteProxy];
  [remoteProxy setConsumesSystemButtonPressEvents:1 reason:objc_getProperty(a2 atMaximumPriority:{v6, 24, 1), a2[4]}];
}

- (void)_buttonConsumerInvalidated:(uint64_t)invalidated
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (invalidated)
  {
    isInvalid = [v3 isInvalid];
    if (isInvalid)
    {
      v6 = _gc_log_system_button(isInvalid);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_INFO, "End consuming presses for %@", &v8, 0xCu);
      }

      [v4 removeObserver:invalidated forKeyPath:@"invalid" context:0];
      v7 = *(invalidated + 8);
      objc_sync_enter(v7);
      [*(invalidated + 8) removeObject:v4];
      objc_sync_exit(v7);

      [(_GCSystemButtonServiceInternal *)invalidated _applyLatestConsumerStatus];
    }
  }
}

- (void)setSystemButtonAvailable:(BOOL)available localizedName:(id)name sfSymbolName:(id)symbolName
{
  availableCopy = available;
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  symbolNameCopy = symbolName;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = _gc_log_system_button(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    available = self->_available;
    v16[0] = 67109376;
    v16[1] = available;
    v17 = 1024;
    v18 = availableCopy;
    _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_INFO, "Reported availability changed: %{BOOL}d -> %{BOOL}d", v16, 0xEu);
  }

  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"available"];
  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"sfSymbolName"];
  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"localizedName"];
  self->_available = availableCopy;
  localizedName = self->_localizedName;
  self->_localizedName = nameCopy;
  v14 = nameCopy;

  sfSymbolName = self->_sfSymbolName;
  self->_sfSymbolName = symbolNameCopy;

  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"localizedName"];
  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"sfSymbolName"];
  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"available"];
}

- (void)setActiveClientsRespondingToSystemButton:(id)button
{
  buttonCopy = button;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = _gc_log_system_button(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_INFO, "Clients handling system button changed", v9, 2u);
  }

  [(_GCSystemButtonServiceInternal *)self willChangeValueForKey:@"respondingProcessBundleIdentifiers"];
  v7 = [buttonCopy copy];

  respondingProcessBundleIdentifiers = self->_respondingProcessBundleIdentifiers;
  self->_respondingProcessBundleIdentifiers = v7;

  [(_GCSystemButtonServiceInternal *)self didChangeValueForKey:@"respondingProcessBundleIdentifiers"];
}

- (void)consumeSystemButtonPressEventAtPriority:(int64_t)priority
{
  v4 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonService] Consume Button Press", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v5);

  v7 = self->_consumers;
  objc_sync_enter(v7);
  lastObject = [(NSMutableArray *)self->_consumers lastObject];
  objc_sync_exit(v7);

  v10 = _gc_log_system_button(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(_GCSystemButtonServiceInternal *)lastObject consumeSystemButtonPressEventAtPriority:v10];
  }

  [(_GCSystemButtonConsumer *)lastObject consumeSystemButtonPressEvent];
  os_activity_scope_leave(&v11);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"invalid"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(_GCSystemButtonServiceInternal *)self _buttonConsumerInvalidated:objectCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCSystemButtonServiceInternal;
    [(_GCSystemButtonServiceInternal *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)beginConsumingPressesWithReason:(id)reason consumer:(id)consumer priority:(int64_t)priority
{
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  consumerCopy = consumer;
  v11 = consumerCopy;
  if (reasonCopy)
  {
    if (consumerCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCSystemButtonService.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %s", "consumer != nil"}];

    if ((priority & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"GCSystemButtonService.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %s", "reason != nil"}];

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((priority & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"GCSystemButtonService.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %s", "priority >= 0"}];

LABEL_4:
  v12 = [[_GCSystemButtonConsumer alloc] initWithEventConsumer:v11 reason:reasonCopy priority:priority];
  v13 = _gc_log_system_button(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_INFO, "Begin consuming presses for %@", buf, 0xCu);
  }

  [v12 addObserver:self forKeyPath:@"invalid" options:1 context:0];
  v14 = self->_consumers;
  objc_sync_enter(v14);
  [(NSMutableArray *)self->_consumers addObject:v12];
  [(NSMutableArray *)self->_consumers sortUsingSelector:sel_compareTo_];
  objc_sync_exit(v14);

  [(_GCSystemButtonServiceInternal *)self _applyLatestConsumerStatus];

  return v12;
}

- (void)consumeSystemButtonPressEventAtPriority:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "Send press to %@", &v2, 0xCu);
}

@end