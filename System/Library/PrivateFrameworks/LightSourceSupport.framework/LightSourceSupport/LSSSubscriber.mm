@interface LSSSubscriber
+ (id)sharedInstance;
- (LSSSubscriber)init;
- (id)lightSourceForTime:(double)time;
- (id)subscribeOnQueue:(id)queue options:(unsigned int)options activityLevelChangeHandler:(id)handler;
- (void)_changeActivityLevel:(unsigned __int8)level;
- (void)client:(id)client recievedUpdate:(id)update;
- (void)clientInvalidated:(id)invalidated;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation LSSSubscriber

- (LSSSubscriber)init
{
  v8.receiver = self;
  v8.super_class = LSSSubscriber;
  v2 = [(LSSSubscriber *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    events = v2->_events;
    v2->_events = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    subscriptions = v2->_subscriptions;
    v2->_subscriptions = v5;

    v2->_idling = 1;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_280D2F540 == -1)
  {
    v3 = _MergedGlobals_7;
  }

  else
  {
    +[LSSSubscriber sharedInstance];
    v3 = _MergedGlobals_7;
  }

  return v3;
}

uint64_t __31__LSSSubscriber_sharedInstance__block_invoke()
{
  _MergedGlobals_7 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)subscribeOnQueue:(id)queue options:(unsigned int)options activityLevelChangeHandler:(id)handler
{
  v6 = *&options;
  v35 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  if (qword_280D2F550 != -1)
  {
    [LSSSubscriber subscribeOnQueue:options:activityLevelChangeHandler:];
  }

  v10 = qword_280D2F548;
  if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v34 = v6;
    _os_log_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEFAULT, "adding subscription. options: %u", buf, 8u);
  }

  v11 = objc_opt_new();
  [v11 setSubscriber:self];
  [v11 setActivityHandler:handlerCopy];
  [v11 setQueue:queueCopy];
  [v11 setOptions:v6];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_client)
  {
    v12 = [[LSSXPCClient alloc] initWithDelegate:?];
    client = self->_client;
    self->_client = v12;
  }

  activityHandler = [v11 activityHandler];
  v15 = activityHandler == 0;

  if (!v15)
  {
    idling = self->_idling;
    queue = [v11 queue];
    if (idling)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__LSSSubscriber_subscribeOnQueue_options_activityLevelChangeHandler___block_invoke;
    block[3] = &unk_279812848;
    v30 = v11;
    v31 = v18;
    dispatch_async(queue, block);
  }

  [(NSMutableSet *)self->_subscriptions addObject:v11];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = self->_subscriptions;
  v20 = 0;
  v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v21)
  {
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v20 |= [*(*(&v25 + 1) + 8 * i) options];
      }

      v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v21);
  }

  [(LSSXPCClient *)self->_client setOptions:v20];
  if (![(NSMutableSet *)self->_subscriptions count])
  {
    __assert_rtn("[LSSSubscriber subscribeOnQueue:options:activityLevelChangeHandler:]", "LSSSubscriber.m", 114, "[_subscriptions count] > 0");
  }

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

void __69__LSSSubscriber_subscribeOnQueue_options_activityLevelChangeHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)unsubscribe:(id)unsubscribe
{
  v21 = *MEMORY[0x277D85DE8];
  unsubscribeCopy = unsubscribe;
  if (qword_280D2F550 != -1)
  {
    [LSSSubscriber subscribeOnQueue:options:activityLevelChangeHandler:];
  }

  v5 = qword_280D2F548;
  if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255E8B000, v5, OS_LOG_TYPE_DEFAULT, "removing subscription", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableSet *)self->_subscriptions count])
  {
    v13 = "[_subscriptions count] > 0";
    v14 = 124;
    goto LABEL_24;
  }

  [(NSMutableSet *)self->_subscriptions removeObject:unsubscribeCopy];
  if ([(NSMutableSet *)self->_subscriptions count])
  {
    if (self->_client)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = self->_subscriptions;
      v7 = 0;
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v7 |= [*(*(&v15 + 1) + 8 * i) options];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v8);
      }

      [(LSSXPCClient *)self->_client setOptions:v7];
      goto LABEL_21;
    }

    v13 = "_client != nil";
    v14 = 131;
LABEL_24:
    __assert_rtn("[LSSSubscriber unsubscribe:]", "LSSSubscriber.m", v14, v13);
  }

  if (qword_280D2F550 != -1)
  {
    [LSSSubscriber unsubscribe:];
  }

  v11 = qword_280D2F548;
  if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEFAULT, "no more subscriptions", buf, 2u);
  }

  [(LSSXPCClient *)&self->_client->super.isa setDelegate:?];
  client = self->_client;
  self->_client = 0;

LABEL_21:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)clientInvalidated:(id)invalidated
{
  v17 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  if (qword_280D2F550 != -1)
  {
    [LSSSubscriber subscribeOnQueue:options:activityLevelChangeHandler:];
  }

  v5 = qword_280D2F548;
  if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255E8B000, v5, OS_LOG_TYPE_DEFAULT, "removing all clients", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  client = self->_client;
  if (client != invalidatedCopy && client)
  {
    __assert_rtn("[LSSSubscriber clientInvalidated:]", "LSSSubscriber.m", 145, "client == _client || _client == nil");
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = self->_subscriptions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * i) setSubscriber:{0, v11}];
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)self->_subscriptions removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)client:(id)client recievedUpdate:(id)update
{
  var0 = update.var0;
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  events = self->_events;
  v8 = *(*&var0 + 48);
  v16[2] = *(*&var0 + 32);
  v16[3] = v8;
  v9 = *(*&var0 + 80);
  v16[4] = *(*&var0 + 64);
  v16[5] = v9;
  v10 = *(*&var0 + 16);
  v16[0] = **&var0;
  v16[1] = v10;
  [(LSSEventQueue *)events schedule:v16];
  os_unfair_lock_unlock(&self->_lock);
  v11 = *(*&var0 + 84);
  idling = self->_idling;
  if (idling && !v11)
  {
    if (qword_280D2F550 != -1)
    {
      [LSSSubscriber unsubscribe:];
    }

    v13 = qword_280D2F548;
    if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_255E8B000, v13, OS_LOG_TYPE_DEFAULT, "occasional", v16, 2u);
    }

    [(LSSSubscriber *)self _changeActivityLevel:1];
    goto LABEL_21;
  }

  if (self->_idling && v11)
  {
    [(LSSSubscriber *)self _changeActivityLevel:2];
    self->_idling = 0;
    if (qword_280D2F550 != -1)
    {
      [LSSSubscriber unsubscribe:];
    }

    v14 = qword_280D2F548;
    if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      v15 = "active";
LABEL_20:
      _os_log_impl(&dword_255E8B000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
    }
  }

  else if (!idling && !v11)
  {
    [(LSSSubscriber *)self _changeActivityLevel:0];
    self->_idling = 1;
    if (qword_280D2F550 != -1)
    {
      [LSSSubscriber unsubscribe:];
    }

    v14 = qword_280D2F548;
    if (os_log_type_enabled(qword_280D2F548, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      v15 = "idle";
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)_changeActivityLevel:(unsigned __int8)level
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v5 = self->_subscriptions;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        activityHandler = [v9 activityHandler];
        v11 = activityHandler == 0;

        if (!v11)
        {
          queue = [v9 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__LSSSubscriber__changeActivityLevel___block_invoke;
          block[3] = &unk_279812848;
          block[4] = v9;
          levelCopy = level;
          dispatch_async(queue, block);
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

void __38__LSSSubscriber__changeActivityLevel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityHandler];
  v2[2](v2, *(a1 + 40));
}

- (id)lightSourceForTime:(double)time
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(LSSEventQueue *)self->_events lightSourceForTime:time];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end