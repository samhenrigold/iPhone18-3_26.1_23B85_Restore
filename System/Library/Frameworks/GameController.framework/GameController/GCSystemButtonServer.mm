@interface GCSystemButtonServer
- (BOOL)acceptConnection:(id)connection fromProcess:(id)process;
- (BOOL)hasButtonThief;
- (BOOL)tryHandleButtonPress;
- (GCSystemButtonServer)init;
- (NSSet)responders;
- (_GCSystemButton)activeButton;
- (id)activeProcessRespondingToSystemButton:(id)button;
- (id)systemButtonAvailableWithLocalizedName:(id)name sfSymbolName:(id)symbolName;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCSystemButtonServer

- (GCSystemButtonServer)init
{
  v10.receiver = self;
  v10.super_class = GCSystemButtonServer;
  v2 = [(GCSystemButtonServer *)&v10 init];
  v3 = objc_opt_new();
  buttons = v2->_buttons;
  v2->_buttons = v3;

  v5 = objc_opt_new();
  responders = v2->_responders;
  v2->_responders = v5;

  v7 = objc_opt_new();
  clients = v2->_clients;
  v2->_clients = v7;

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_buttons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"invalid" context:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_buttons removeAllObjects];
  v8.receiver = self;
  v8.super_class = GCSystemButtonServer;
  [(GCSystemButtonServer *)&v8 dealloc];
}

- (BOOL)tryHandleButtonPress
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1D2CD5000, "[GCSystemButtonServer] Handle Button Press", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = self->_clients;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)self->_clients copy];
  objc_sync_exit(v4);

  v6 = [v5 sortedArrayUsingSelector:sel_compareTo_];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        if ([*(*(&v12 + 1) + 8 * i) handleButtonPress])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_activity_scope_leave(&state);
  return v8;
}

- (BOOL)hasButtonThief
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_clients copy];
  objc_sync_exit(v3);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) wantsPressEvents])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (_GCSystemButton)activeButton
{
  v3 = self->_buttons;
  objc_sync_enter(v3);
  lastObject = [(NSMutableArray *)self->_buttons lastObject];
  objc_sync_exit(v3);

  return lastObject;
}

- (NSSet)responders
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = self->_responders;
  objc_sync_enter(v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_responders;
  v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        Property = *(*(&v14 + 1) + 8 * i);
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 16, 1);
        }

        v11 = Property;
        [v3 addObject:{v11, v14}];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v4);
  v12 = [v3 copy];

  return v12;
}

- (id)activeProcessRespondingToSystemButton:(id)button
{
  buttonCopy = button;
  v6 = buttonCopy;
  if (buttonCopy)
  {
    if (gc_isInternalBuild(buttonCopy, v5))
    {
      [GCSystemButtonServer activeProcessRespondingToSystemButton:v6];
    }

    v7 = [[_GCSystemButtonResponder alloc] _initWithBundleIdentifier:v6];
    [v7 addObserver:self forKeyPath:@"invalid" options:1 context:0];
    [(GCSystemButtonServer *)self willChangeValueForKey:@"responders"];
    v9 = self->_responders;
    objc_sync_enter(v9);
    [(NSMutableArray *)self->_responders addObject:v7];
    [(GCSystemButtonServer *)v9 activeProcessRespondingToSystemButton:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [pathCopy isEqualToString:@"invalid"])
  {
    [objectCopy removeObserver:self forKeyPath:@"invalid" context:0];
    [(GCSystemButtonServer *)self willChangeValueForKey:@"activeButton"];
    v13 = self->_buttons;
    objc_sync_enter(v13);
    [(NSMutableArray *)self->_buttons removeObject:objectCopy];
    objc_sync_exit(v13);

    v14 = @"activeButton";
LABEL_14:
    [(GCSystemButtonServer *)self didChangeValueForKey:v14];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [pathCopy isEqualToString:@"invalid"])
  {
    [objectCopy removeObserver:self forKeyPath:@"invalid" context:0];
    [(GCSystemButtonServer *)self willChangeValueForKey:@"responders"];
    v15 = self->_responders;
    objc_sync_enter(v15);
    [(NSMutableArray *)self->_responders removeObject:objectCopy];
    objc_sync_exit(v15);

    v14 = @"responders";
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [pathCopy isEqualToString:@"invalid"])
  {
    [objectCopy removeObserver:self forKeyPath:@"invalid" context:0];
    [objectCopy removeObserver:self forKeyPath:@"wantsPressEvents" context:0];
    v16 = self->_clients;
    objc_sync_enter(v16);
    [(NSMutableArray *)self->_clients removeObject:objectCopy];
    objc_sync_exit(v16);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![pathCopy isEqualToString:@"wantsPressEvents"])
    {
      v19.receiver = self;
      v19.super_class = GCSystemButtonServer;
      [(GCSystemButtonServer *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_16;
    }

    v17 = [changeCopy objectForKey:*MEMORY[0x1E696A4F8]];
    bOOLValue = [v17 BOOLValue];

    v14 = @"hasButtonThief";
    if (!bOOLValue)
    {
      goto LABEL_14;
    }

    [(GCSystemButtonServer *)self willChangeValueForKey:@"hasButtonThief"];
  }

LABEL_16:
}

- (BOOL)acceptConnection:(id)connection fromProcess:(id)process
{
  connectionCopy = connection;
  processCopy = process;
  v8 = _gc_log_system_button(processCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    serviceName = [connectionCopy serviceName];
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_2_7(&dword_1D2CD5000, v10, v11, "Accepting connection '%@' on mach service '%@'.", v12, v13, v14, v15);
  }

  v16 = [[_GCSystemButtonClientConnection alloc] initWithConnection:connectionCopy];
  v17 = [[_GCSystemButtonClientProxy alloc] _initWithConnection:v16 server:self];
  OUTLINED_FUNCTION_3_5(v17, v18, self, @"invalid");
  [v17 addObserver:self forKeyPath:@"wantsPressEvents" options:11 context:0];
  v19 = self->_clients;
  objc_sync_enter(v19);
  [(NSMutableArray *)self->_clients addObject:v17];
  objc_sync_exit(v19);

  return 1;
}

- (id)systemButtonAvailableWithLocalizedName:(id)name sfSymbolName:(id)symbolName
{
  nameCopy = name;
  symbolNameCopy = symbolName;
  isInternalBuild = gc_isInternalBuild(symbolNameCopy, v8);
  if (isInternalBuild)
  {
    v14 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_2_7(&dword_1D2CD5000, v15, v16, "System button available: %@ %@", v17, v18, v19, v20);
    }
  }

  v10 = [[_GCSystemButton alloc] _initWithLocalizedName:nameCopy sfSymbolName:symbolNameCopy];
  OUTLINED_FUNCTION_3_5(v10, v11, self, @"invalid");
  [(GCSystemButtonServer *)self willChangeValueForKey:@"activeButton"];
  v12 = self->_buttons;
  objc_sync_enter(v12);
  [(NSMutableArray *)self->_buttons addObject:v10];
  objc_sync_exit(v12);

  [(GCSystemButtonServer *)self didChangeValueForKey:@"activeButton"];

  return v10;
}

- (void)activeProcessRespondingToSystemButton:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "System button responder: %@", &v3, 0xCu);
  }
}

- (uint64_t)activeProcessRespondingToSystemButton:(void *)a1 .cold.2(void *a1, void *a2)
{
  objc_sync_exit(a1);

  return [a2 didChangeValueForKey:@"responders"];
}

@end