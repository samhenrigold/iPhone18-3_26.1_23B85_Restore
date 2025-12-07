@interface ICSessionManager
- (BOOL)createSessionWithConnection:(id)connection;
- (ICSessionManager)initWithDelegate:(id)delegate;
- (ICSessionManagerProtocol)delegate;
- (NSArray)connections;
- (NSArray)sessions;
- (id)connectionsMonitoringNotification:(id)notification;
- (id)connectionsMonitoringObjectID:(id)d;
- (id)sessionWithConnection:(id)connection;
- (unint64_t)currentSessionCount;
- (unint64_t)removeSessionWithConnection:(id)connection;
- (unint64_t)removeSessionsWithProcessIdentifier:(id)identifier;
- (void)addNotifications:(id)notifications toSessionWithConnection:(id)connection;
- (void)remNotifications:(id)notifications fromSessionWithConnection:(id)connection;
- (void)removeAllSessions;
@end

@implementation ICSessionManager

- (ICSessionManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICSessionManager;
  v5 = [(ICSessionManager *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    sessions = v5->_sessions;
    v5->_sessions = v6;

    v5->_sessionsLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (BOOL)createSessionWithConnection:(id)connection
{
  v47 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  v6 = connectionCopy;
  if (connectionCopy && ([(ICSessionManager *)self sessionWithConnection:connectionCopy], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [[ICSession alloc] initWithConnection:v6];
    objc_initWeak(&location, v6);
    v36 = MEMORY[0x29EDCA5F8];
    v37 = 3221225472;
    v38 = __48__ICSessionManager_createSessionWithConnection___block_invoke;
    v39 = &unk_29F380B50;
    objc_copyWeak(&v41, &location);
    selfCopy = self;
    v15 = MEMORY[0x29EDA9880](&v36);
    [v6 setInterruptionHandler:v15];
    [v6 setInvalidationHandler:v15];
    os_unfair_lock_lock(&self->_sessionsLock);
    [(NSMutableArray *)self->_sessions addObject:v8];
    os_unfair_lock_unlock(&self->_sessionsLock);
    __ICOSLogCreate(v16, v17);
    if ([@"CM" length] < 0x15)
    {
      v19 = @"CM";
    }

    else
    {
      v18 = [@"CM" substringWithRange:{0, 18}];
      v19 = [v18 stringByAppendingString:@".."];
    }

    v20 = MEMORY[0x29EDBA0F8];
    v21 = [(ICSession *)v8 pid];
    v22 = [v20 stringWithFormat:@"add: [%05d]", v21, v36, v37, v38, v39];
    v23 = _gICOSLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v19;
      uTF8String = [(__CFString *)v19 UTF8String];
      *buf = 136446466;
      uTF8String2 = uTF8String;
      v45 = 2114;
      v46 = v22;
      _os_log_impl(&dword_29EB58000, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
    v14 = 1;
  }

  else
  {
    __ICOSLogCreate(connectionCopy, v5);
    v8 = @"CM";
    if ([@"CM" length] >= 0x15)
    {
      v9 = [@"CM" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"exists: [%05d]", objc_msgSend(v6, "processIdentifier")];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      uTF8String2 = [(ICSession *)v8 UTF8String];
      v45 = 2114;
      v46 = v10;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  __ICOSLogCreate(v26, v27);
  if ([@"CM" length] < 0x15)
  {
    v29 = @"CM";
  }

  else
  {
    v28 = [@"CM" substringWithRange:{0, 18}];
    v29 = [v28 stringByAppendingString:@".."];
  }

  v30 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"count: [%05lu]", -[ICSessionManager currentSessionCount](self, "currentSessionCount")];
  v31 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v29;
    v33 = v31;
    uTF8String3 = [(__CFString *)v29 UTF8String];
    *buf = 136446466;
    uTF8String2 = uTF8String3;
    v45 = 2114;
    v46 = v30;
    _os_log_impl(&dword_29EB58000, v33, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  return v14;
}

void __48__ICSessionManager_createSessionWithConnection___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) removeSessionWithConnection:WeakRetained];
  __ICOSLogCreate(v3, v4);
  v5 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v6 = [@"CM" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"xpc-term: [%05d]", objc_msgSend(WeakRetained, "processIdentifier")];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v12 = [(__CFString *)v5 UTF8String];
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_29EB58000, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (NSArray)sessions
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = [(NSMutableArray *)self->_sessions copy];
  os_unfair_lock_unlock(&self->_sessionsLock);

  return v3;
}

- (unint64_t)currentSessionCount
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = [(NSMutableArray *)self->_sessions count];
  os_unfair_lock_unlock(&self->_sessionsLock);
  return v3;
}

- (id)sessionWithConnection:(id)connection
{
  v18 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  [(ICSessionManager *)self sessions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        connection = [v9 connection];
        v11 = [connection isEqual:connectionCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)addNotifications:(id)notifications toSessionWithConnection:(id)connection
{
  v20 = *MEMORY[0x29EDCA608];
  notificationsCopy = notifications;
  v7 = [(ICSessionManager *)self sessionWithConnection:connection];
  os_unfair_lock_lock(&self->_sessionsLock);
  __ICOSLogCreate(v8, v9);
  v10 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v11 = [@"CM" substringWithRange:{0, 18}];
    v10 = [v11 stringByAppendingString:@".."];
  }

  notificationsCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"+ note: [%05d] - %@", objc_msgSend(v7, "pid"), notificationsCopy];
  v13 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v10;
    v15 = v13;
    *buf = 136446466;
    uTF8String = [(__CFString *)v10 UTF8String];
    v18 = 2114;
    v19 = notificationsCopy;
    _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v7 addNotifications:notificationsCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (void)remNotifications:(id)notifications fromSessionWithConnection:(id)connection
{
  v20 = *MEMORY[0x29EDCA608];
  notificationsCopy = notifications;
  v7 = [(ICSessionManager *)self sessionWithConnection:connection];
  os_unfair_lock_lock(&self->_sessionsLock);
  __ICOSLogCreate(v8, v9);
  v10 = @"CM";
  if ([@"CM" length] >= 0x15)
  {
    v11 = [@"CM" substringWithRange:{0, 18}];
    v10 = [v11 stringByAppendingString:@".."];
  }

  notificationsCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"- note: [%05d] - %@", objc_msgSend(v7, "pid"), notificationsCopy];
  v13 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v10;
    v15 = v13;
    *buf = 136446466;
    uTF8String = [(__CFString *)v10 UTF8String];
    v18 = 2114;
    v19 = notificationsCopy;
    _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v7 remNotifications:notificationsCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (unint64_t)removeSessionWithConnection:(id)connection
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = [(ICSessionManager *)self sessionWithConnection:connection];
  v5 = v4;
  if (v4)
  {
    connection = [v4 connection];
    [connection invalidate];

    __ICOSLogCreate(v7, v8);
    v9 = @"CM";
    if ([@"CM" length] >= 0x15)
    {
      v10 = [@"CM" substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"remove: [%05lu]", objc_msgSend(v5, "pid")];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      *buf = 136446466;
      uTF8String = [(__CFString *)v9 UTF8String];
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_29EB58000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_sessionsLock);
    [(NSMutableArray *)self->_sessions removeObject:v5];
    os_unfair_lock_unlock(&self->_sessionsLock);
  }

  if (![(ICSessionManager *)self currentSessionCount])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionManagerDidCloseAllSessions:self];
  }

  currentSessionCount = [(ICSessionManager *)self currentSessionCount];

  return currentSessionCount;
}

- (unint64_t)removeSessionsWithProcessIdentifier:(id)identifier
{
  v20 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  sessions = [(ICSessionManager *)self sessions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [sessions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(sessions);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 pid];
        if (v11 == [identifierCopy intValue])
        {
          connection = [v10 connection];
          [(ICSessionManager *)self removeSessionWithConnection:connection];
        }
      }

      v7 = [sessions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  currentSessionCount = [(ICSessionManager *)self currentSessionCount];

  return currentSessionCount;
}

- (void)removeAllSessions
{
  v14 = *MEMORY[0x29EDCA608];
  sessions = [(ICSessionManager *)self sessions];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [sessions countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(sessions);
        }

        connection = [*(*(&v9 + 1) + 8 * v7) connection];
        [(ICSessionManager *)self removeSessionWithConnection:connection];

        ++v7;
      }

      while (v5 != v7);
      v5 = [sessions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)connectionsMonitoringNotification:(id)notification
{
  v31 = *MEMORY[0x29EDCA608];
  notificationCopy = notification;
  array = [MEMORY[0x29EDB8DE8] array];
  sessions = [(ICSessionManager *)self sessions];
  __ICOSLogCreate(sessions, v7);
  if (__ICLogTypeEnabled(4))
  {
    v8 = @"noteInterest";
    if ([@"noteInterest" length] >= 0x15)
    {
      v9 = [@"noteInterest" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    notificationCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%05d] - %@", objc_msgSend(sessions, "count"), notificationCopy];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      uTF8String = [(__CFString *)v8 UTF8String];
      v29 = 2114;
      v30 = notificationCopy;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = sessions;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([v19 interestedInNotification:notificationCopy])
        {
          connection = [v19 connection];
          [array addObject:connection];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  return array;
}

- (id)connectionsMonitoringObjectID:(id)d
{
  v33 = *MEMORY[0x29EDCA608];
  dCopy = d;
  array = [MEMORY[0x29EDB8DE8] array];
  sessions = [(ICSessionManager *)self sessions];
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%08lX", objc_msgSend(dCopy, "longValue")];
  __ICOSLogCreate(v7, v8);
  if (__ICLogTypeEnabled(4))
  {
    v9 = @"noteInterest";
    if ([@"noteInterest" length] >= 0x15)
    {
      v10 = [@"noteInterest" substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"[%05d] - %@", objc_msgSend(sessions, "count"), v7];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      *buf = 136446466;
      uTF8String = [(__CFString *)v9 UTF8String];
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&dword_29EB58000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = sessions;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        objectHandle = [v20 objectHandle];
        if (objectHandle == [dCopy intValue])
        {
          connection = [v20 connection];
          [array addObject:connection];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  return array;
}

- (NSArray)connections
{
  v16 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  sessions = [(ICSessionManager *)self sessions];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [sessions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sessions);
        }

        connection = [*(*(&v11 + 1) + 8 * i) connection];
        [array addObject:connection];
      }

      v6 = [sessions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (ICSessionManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end