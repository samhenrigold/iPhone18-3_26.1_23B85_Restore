@interface BKHIDClientConnectionManager
- (BKHIDClientConnectionManager)initWithHIDEventSystem:(__IOHIDEventSystem *)system;
- (__IOHIDEventSystemConnection)copyClientForDestination:(id)destination;
- (__IOHIDEventSystemConnection)copyClientForTaskPort:(unsigned int)port;
- (id)_lock_clientForDestination:(uint64_t)destination;
- (id)bundleIDForPID:(int)d;
- (id)clientForDestination:(id)destination;
- (id)clientForTaskPort:(unsigned int)port;
- (id)description;
- (int)pidForBundleID:(id)d;
- (int64_t)versionedPIDForPID:(int)d;
- (void)dealloc;
- (void)sendEvent:(__IOHIDEvent *)event toClientTaskPort:(unsigned int)port;
- (void)sendEvent:(__IOHIDEvent *)event toDestination:(id)destination;
@end

@implementation BKHIDClientConnectionManager

- (int64_t)versionedPIDForPID:(int)d
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSMutableIntegerMap *)self->_pidToClientConnectionMapping objectForKey:d];
  versionedPID = [v5 versionedPID];
  os_unfair_lock_unlock(&self->_lock);

  return versionedPID;
}

- (void)sendEvent:(__IOHIDEvent *)event toDestination:(id)destination
{
  v11 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BKHIDClientConnectionManager *)self _lock_clientForDestination:destinationCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(BKHIDClientConnection *)v7 sendEvent:event];
  }

  else
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = destinationCopy;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEFAULT, "no client connection for destination %{public}@", &v9, 0xCu);
    }
  }
}

- (id)_lock_clientForDestination:(uint64_t)destination
{
  v3 = a2;
  v4 = v3;
  if (destination)
  {
    versionedPID = [v3 versionedPID];
    if (versionedPID == -1)
    {
      destination = [*(destination + 24) objectForKey:{objc_msgSend(v4, "pid")}];
    }

    else
    {
      v6 = *(destination + 32);
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:versionedPID];
      destination = [v6 objectForKey:v7];
    }
  }

  return destination;
}

- (void)sendEvent:(__IOHIDEvent *)event toClientTaskPort:(unsigned int)port
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BSMutableIntegerMap *)self->_taskPortToClientConnectionMapping objectForKey:port];
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(BKHIDClientConnection *)v7 sendEvent:event];
  }

  else
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = port;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEFAULT, "no client connection for port 0x%X", v9, 8u);
    }
  }
}

- (id)clientForDestination:(id)destination
{
  destinationCopy = destination;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BKHIDClientConnectionManager *)self _lock_clientForDestination:destinationCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)clientForTaskPort:(unsigned int)port
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSMutableIntegerMap *)self->_taskPortToClientConnectionMapping objectForKey:port];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (__IOHIDEventSystemConnection)copyClientForDestination:(id)destination
{
  v3 = [(BKHIDClientConnectionManager *)self clientForDestination:destination];
  connection = [v3 connection];

  if (connection)
  {
    CFRetain(connection);
  }

  return connection;
}

- (__IOHIDEventSystemConnection)copyClientForTaskPort:(unsigned int)port
{
  v3 = [(BKHIDClientConnectionManager *)self clientForTaskPort:*&port];
  connection = [v3 connection];

  if (connection)
  {
    CFRetain(connection);
  }

  return connection;
}

- (id)bundleIDForPID:(int)d
{
  if (d < 1)
  {
    bundleID = 0;
  }

  else
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v5 = [(BSMutableIntegerMap *)self->_pidToClientConnectionMapping objectForKey:d];
    bundleID = [v5 bundleID];
    os_unfair_lock_unlock(&self->_lock);
  }

  return bundleID;
}

- (int)pidForBundleID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([dCopy length])
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    pidToClientConnectionMapping = self->_pidToClientConnectionMapping;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__BKHIDClientConnectionManager_pidForBundleID___block_invoke;
    v8[3] = &unk_2784F6870;
    v9 = dCopy;
    v10 = &v11;
    [(BSMutableIntegerMap *)pidToClientConnectionMapping enumerateWithBlock:v8];
    os_unfair_lock_unlock(&self->_lock);
  }

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__BKHIDClientConnectionManager_pidForBundleID___block_invoke(uint64_t a1, int a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a3 bundleID];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_taskPortToClientConnectionMapping withName:@"TaskPort->ClientConnection"];
  v5 = [v3 appendObject:self->_pidToClientConnectionMapping withName:@"pid->ClientConnection"];
  v6 = [v3 appendObject:self->_versionedPIDToClientConnectionMapping withName:@"vpid->ClientConnection"];
  v7 = [v3 appendPointer:self->_hidConnectionToBKConnection withName:@"HIDConnection->BKConnection"];
  build = [v3 build];

  return build;
}

- (void)dealloc
{
  IOHIDEventSystemUnregisterConnectionAdditionCallback();
  IOHIDEventSystemUnregisterConnectionRemovalCallback();
  hidEventSystem = self->_hidEventSystem;
  if (hidEventSystem)
  {
    CFRelease(hidEventSystem);
    self->_hidEventSystem = 0;
  }

  hidConnectionToBKConnection = self->_hidConnectionToBKConnection;
  if (hidConnectionToBKConnection)
  {
    CFRelease(hidConnectionToBKConnection);
  }

  v5.receiver = self;
  v5.super_class = BKHIDClientConnectionManager;
  [(BKHIDClientConnectionManager *)&v5 dealloc];
}

- (BKHIDClientConnectionManager)initWithHIDEventSystem:(__IOHIDEventSystem *)system
{
  v20.receiver = self;
  v20.super_class = BKHIDClientConnectionManager;
  v4 = [(BKHIDClientConnectionManager *)&v20 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    if (system)
    {
      v4->_hidEventSystem = system;
      CFRetain(system);
    }

    v6 = objc_alloc_init(MEMORY[0x277CF0C68]);
    taskPortToClientConnectionMapping = v5->_taskPortToClientConnectionMapping;
    v5->_taskPortToClientConnectionMapping = v6;

    v8 = objc_alloc_init(MEMORY[0x277CF0C68]);
    pidToClientConnectionMapping = v5->_pidToClientConnectionMapping;
    v5->_pidToClientConnectionMapping = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    versionedPIDToClientConnectionMapping = v5->_versionedPIDToClientConnectionMapping;
    v5->_versionedPIDToClientConnectionMapping = v10;

    v5->_hidConnectionToBKConnection = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v5->_hidEventSystem)
    {
      IOHIDEventSystemRegisterConnectionAdditionCallback();
      IOHIDEventSystemRegisterConnectionRemovalCallback();
      v12 = IOHIDEventSystemCopyConnections();
      if (v12)
      {
        v13 = v12;
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
            BKHIDClientConnectionAdditionCallback(v5, v18, ValueAtIndex);
          }
        }

        CFRelease(v13);
      }
    }
  }

  return v5;
}

@end