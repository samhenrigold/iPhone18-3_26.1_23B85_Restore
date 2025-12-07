@interface SiriCoreNetworkActivity
- (SiriCoreNetworkActivity)initWithLabel:(int64_t)label parent:(id)parent;
- (id)nwActivityToken;
- (int)_completionReasonToNWActivityCompletionReason:(int64_t)reason;
- (void)_networkActivityState:(int64_t)state;
- (void)activate;
- (void)addConnection:(id)connection;
- (void)removeConnection:(id)connection;
- (void)stopWithCompletionReason:(int64_t)reason andError:(id)error;
@end

@implementation SiriCoreNetworkActivity

- (int)_completionReasonToNWActivityCompletionReason:(int64_t)reason
{
  if ((reason - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_266A0C4D8[reason - 1];
  }
}

- (void)_networkActivityState:(int64_t)state
{
  stateCopy = state;
  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      if (state >= 2)
      {
        if (state == 2)
        {
          [(SiriCoreNetworkActivity *)self _networkActivityRestart];
          goto LABEL_21;
        }
      }

      else
      {
        [(SiriCoreNetworkActivity *)self _networkActivityAbort];
      }
    }

    else
    {
      if (state >= 2)
      {
        stateCopy2 = state;
      }

      else
      {
        stateCopy2 = 0;
      }

      if (state == 3)
      {
        stateCopy = stateCopy2;
      }
    }
  }

  else if (state)
  {
    if (state == 1 && (state == 3 || !state))
    {
      [(SiriCoreNetworkActivity *)self _networkActivityAbort];
LABEL_21:
      stateCopy = 0;
    }
  }

  else if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    stateCopy = 0;
  }

  self->_state = stateCopy;
}

- (id)nwActivityToken
{
  v7 = *MEMORY[0x277D85DE8];
  *uu = 0;
  v6 = 0;
  nw_activity_get_token();
  is_null = uuid_is_null(uu);
  v3 = 0;
  if (!is_null)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
  }

  return v3;
}

- (void)stopWithCompletionReason:(int64_t)reason andError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(SiriCoreNetworkActivity *)self _networkActivityState:3];
  if ([(NSMutableSet *)self->_connections count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_connections;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          nw_connection_end_activity();
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v9);
    }
  }

  if (errorCopy)
  {
    code = [errorCopy code];
    userInfo = [errorCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [errorCopy userInfo];
      v15 = [userInfo2 objectForKey:*MEMORY[0x277CCA7E8]];

      if (v15)
      {
        code2 = [v15 code];
      }

      else
      {
        code2 = -1;
      }
    }

    else
    {
      code2 = -1;
    }

    v17 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "[SiriCoreNetworkActivity stopWithCompletionReason:andError:]";
      v24 = 1024;
      v25 = code;
      v26 = 1024;
      v27 = code2;
      _os_log_impl(&dword_2669D1000, v17, OS_LOG_TYPE_INFO, "%s Reporting to nw_activity that SiriCoreNetworkActivity failed with error code %d and underlying error code %d", buf, 0x18u);
    }

    [(SiriCoreNetworkActivity *)self _completionReasonToNWActivityCompletionReason:reason, v18];
  }

  else
  {
    [(SiriCoreNetworkActivity *)self _completionReasonToNWActivityCompletionReason:reason];
  }

  nw_activity_complete_with_reason_and_underlying_error();
}

- (void)removeConnection:(id)connection
{
  if (self->_state == 2)
  {
    connectionCopy = connection;
    nw_connection_end_activity();
    [(NSMutableSet *)self->_connections removeObject:connectionCopy];
  }
}

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  state = self->_state;
  if (state <= 1)
  {
    [(SiriCoreNetworkActivity *)self _networkActivityState:2];
    state = self->_state;
  }

  if (state == 2)
  {
    nw_connection_start_activity();
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
  }
}

- (void)activate
{
  if (self->_state <= 0)
  {
    [(SiriCoreNetworkActivity *)self _networkActivityState:1];
    if (self->_state == 1)
    {
      activity = self->_activity;

      MEMORY[0x282126558](activity);
    }
  }
}

- (SiriCoreNetworkActivity)initWithLabel:(int64_t)label parent:(id)parent
{
  parentCopy = parent;
  v13.receiver = self;
  v13.super_class = SiriCoreNetworkActivity;
  v7 = [(SiriCoreNetworkActivity *)&v13 init];
  if (v7)
  {
    if (label)
    {
      v8 = nw_activity_create();
      if (parentCopy)
      {
        nw_activity_set_parent_activity();
        v7->_parentLabel = nw_activity_get_label();
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      connections = v7->_connections;
      v7->_connections = v9;

      activity = v7->_activity;
      v7->_activity = v8;
    }

    v7->_state = 0;
    v7->_hasStarted = 0;
  }

  return v7;
}

@end