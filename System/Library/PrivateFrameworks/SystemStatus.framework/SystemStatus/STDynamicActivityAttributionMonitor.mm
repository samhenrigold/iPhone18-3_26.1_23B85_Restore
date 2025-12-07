@interface STDynamicActivityAttributionMonitor
- (STDynamicActivityAttributionMonitor)init;
- (STDynamicActivityAttributionMonitor)initWithServerHandle:(id)handle;
- (id)attributionForAttribution:(id)attribution;
- (id)attributionForClient:(id *)client;
- (id)currentAttributions;
- (id)handler;
- (void)activate;
- (void)currentAttributionsDidChange:(id)change;
- (void)dealloc;
- (void)invalidate;
- (void)setHandler:(id)handler;
@end

@implementation STDynamicActivityAttributionMonitor

- (STDynamicActivityAttributionMonitor)init
{
  v3 = +[STDynamicAttributionXPCServerHandle sharedMachServiceServerHandle];
  v4 = [(STDynamicActivityAttributionMonitor *)self initWithServerHandle:v3];

  return v4;
}

- (STDynamicActivityAttributionMonitor)initWithServerHandle:(id)handle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = STDynamicActivityAttributionMonitor;
  v6 = [(STDynamicActivityAttributionMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_lock_server, handle);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_attributions = v7->_lock_attributions;
    v7->_lock_attributions = v8;
  }

  return v7;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidate must be called before this object is released"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"STDynamicActivityAttributionMonitor.m";
      v17 = 1024;
      v18 = 47;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FFD7CLL);
  }

  v8.receiver = self;
  v8.super_class = STDynamicActivityAttributionMonitor;
  [(STDynamicActivityAttributionMonitor *)&v8 dealloc];
}

- (void)activate
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't re-activate an invalidated monitor"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"STDynamicActivityAttributionMonitor.m";
      v17 = 1024;
      v18 = 52;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FFF10);
  }

  v8 = self->_lock_server;
  os_unfair_lock_unlock(&self->_lock);
  [(STDynamicActivityAttributionServerHandle *)v8 subscribeToUpdates:self];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_lock_server;
    self->_lock_invalidated = 1;
    lock_attributions = self->_lock_attributions;
    self->_lock_attributions = 0;

    lock_handler = self->_lock_handler;
    self->_lock_handler = 0;

    lock_server = self->_lock_server;
    self->_lock_server = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(STDynamicActivityAttributionServerHandle *)v6 unsubscribeFromUpdates:self];
}

- (id)handler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1E1274600](self->_lock_handler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x1E1274600](v3);

  return v4;
}

- (void)setHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  lock_handler = self->_lock_handler;
  self->_lock_handler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)currentAttributions
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_lock_attributions allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)attributionForClient:(id *)client
{
  os_unfair_lock_lock(&self->_lock);
  lock_attributions = self->_lock_attributions;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{BSVersionedPIDForAuditToken(), *client->var0, *&client->var0[2], *&client->var0[4], *&client->var0[6]}];
  v7 = [(NSMutableDictionary *)lock_attributions objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)attributionForAttribution:(id)attribution
{
  v22 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  v5 = attributionCopy;
  if (attributionCopy)
  {
    objc_msgSend_auditToken(attributionCopy);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  v6 = [(STDynamicActivityAttributionMonitor *)self attributionForClient:v20];
  if (!v6)
  {
    v7 = [v5 pid];
    if (v7 < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = v7;
      os_unfair_lock_lock(&self->_lock);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      allKeys = [(NSMutableDictionary *)self->_lock_attributions allKeys];
      v10 = [allKeys countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(allKeys);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if (v8 == [v14 unsignedLongLongValue])
            {
              v6 = [(NSMutableDictionary *)self->_lock_attributions objectForKey:v14];
              goto LABEL_16;
            }
          }

          v11 = [allKeys countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_16:

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  return v6;
}

- (void)currentAttributionsDidChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v5 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = changeCopy;
      _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "%@: Attributions did change: %@", buf, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_attributions removeAllObjects];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = changeCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        lock_attributions = self->_lock_attributions;
        v13 = MEMORY[0x1E696AD98];
        if (v11)
        {
          objc_msgSend_clientAuditToken(*(*(&v17 + 1) + 8 * i), v17);
        }

        else
        {
          memset(buf, 0, 32);
        }

        v14 = [v13 numberWithLongLong:BSVersionedPIDForAuditToken()];
        [(NSMutableDictionary *)lock_attributions setObject:v11 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x1E1274600](self->_lock_handler);
  allValues = [(NSMutableDictionary *)self->_lock_attributions allValues];
  os_unfair_lock_unlock(&self->_lock);
  if (v15)
  {
    (v15)[2](v15, allValues);
  }
}

@end