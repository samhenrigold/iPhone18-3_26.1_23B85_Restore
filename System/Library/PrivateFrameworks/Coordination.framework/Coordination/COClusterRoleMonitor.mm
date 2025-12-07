@interface COClusterRoleMonitor
- (COClusterRoleMonitor)initWithCluster:(id)cluster;
- (COClusterRoleMonitor)initWithConnectionProvider:(id)provider cluster:(id)cluster;
- (NSXPCConnection)lastConnection;
- (id)_remoteInterfaceWithErrorHandler:(id)handler;
- (id)_serviceConnection;
- (id)addObserverForMember:(id)member toDispatchQueue:(id)queue block:(id)block;
- (id)addObserverForRole:(id)role toDispatchQueue:(id)queue block:(id)block;
- (id)addObserverForSnapshotsToDispatchQueue:(id)queue block:(id)block;
- (void)_lostConnectionToService;
- (void)_registerMemberObserver:(id)observer;
- (void)_registerRoleObserver:(id)observer;
- (void)_registerSnapshotObserver;
- (void)_unregisterMemberObserver:(id)observer;
- (void)_unregisterRoleObserver:(id)observer;
- (void)_unregisterSnapshotObserver;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to;
- (void)removeObserverForMember:(id)member;
- (void)removeObserverForRole:(id)role;
- (void)removeObserverForSnapshots:(id)snapshots;
- (void)roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to;
- (void)snapshotOfCluster:(id)cluster didChangeTo:(id)to;
@end

@implementation COClusterRoleMonitor

- (COClusterRoleMonitor)initWithConnectionProvider:(id)provider cluster:(id)cluster
{
  v31 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  clusterCopy = cluster;
  v24.receiver = self;
  v24.super_class = COClusterRoleMonitor;
  v9 = [(COClusterRoleMonitor *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_provider, provider);
    v11 = [clusterCopy copy];
    cluster = v10->_cluster;
    v10->_cluster = v11;

    array = [MEMORY[0x277CBEA60] array];
    memberObservers = v10->_memberObservers;
    v10->_memberObservers = array;

    array2 = [MEMORY[0x277CBEA60] array];
    roleObservers = v10->_roleObservers;
    v10->_roleObservers = array2;

    array3 = [MEMORY[0x277CBEA60] array];
    snapshotObservers = v10->_snapshotObservers;
    v10->_snapshotObservers = array3;

    v19 = COLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = v10->_cluster;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 134218498;
      v26 = v10;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v23;
      _os_log_debug_impl(&dword_244328000, v19, OS_LOG_TYPE_DEBUG, "%p role monitor created for Cluster(%@) with %@ provider", buf, 0x20u);
    }
  }

  return v10;
}

- (COClusterRoleMonitor)initWithCluster:(id)cluster
{
  v4 = [COCluster _clusterForCluster:cluster];
  v5 = objc_alloc_init(_COClusterRoleMonitorConnectionProvider);
  v6 = [(COClusterRoleMonitor *)self initWithConnectionProvider:v5 cluster:v4];

  return v6;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__COClusterRoleMonitor_dealloc__block_invoke;
  v4[3] = &unk_278E12430;
  v4[4] = self;
  [(COClusterRoleMonitor *)self _withLock:v4];
  v3.receiver = self;
  v3.super_class = COClusterRoleMonitor;
  [(COClusterRoleMonitor *)&v3 dealloc];
}

void __31__COClusterRoleMonitor_dealloc__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) lastConnection];
  v1 = [v3 co_originalInterruptionHandler];
  [v3 setInterruptionHandler:v1];

  v2 = [v3 co_originalInvalidationHandler];
  [v3 setInvalidationHandler:v2];

  [v3 invalidate];
}

- (id)addObserverForMember:(id)member toDispatchQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  memberCopy = member;
  v11 = [_COClusterRoleMonitorMemberObserver alloc];
  cluster = [(COClusterRoleMonitor *)self cluster];
  v13 = [(_COClusterRoleMonitorMemberObserver *)v11 initWithMember:memberCopy inCluster:cluster queue:queueCopy block:blockCopy];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __67__COClusterRoleMonitor_addObserverForMember_toDispatchQueue_block___block_invoke;
  v21 = &unk_278E12368;
  selfCopy = self;
  v14 = v13;
  v23 = v14;
  [(COClusterRoleMonitor *)self _withLock:&v18];
  [(COClusterRoleMonitor *)self _registerMemberObserver:memberCopy, v18, v19, v20, v21, selfCopy];

  v15 = v23;
  v16 = v14;

  return v14;
}

void __67__COClusterRoleMonitor_addObserverForMember_toDispatchQueue_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberObservers];
  v3 = [v2 arrayByAddingObject:*(a1 + 40)];

  [*(a1 + 32) setMemberObservers:v3];
}

- (void)removeObserverForMember:(id)member
{
  memberCopy = member;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__COClusterRoleMonitor_removeObserverForMember___block_invoke;
  v7[3] = &unk_278E135D8;
  v7[4] = self;
  v5 = memberCopy;
  v8 = v5;
  v9 = &v10;
  [(COClusterRoleMonitor *)self _withLock:v7];
  if (!v11[3])
  {
    member = [v5 member];
    [(COClusterRoleMonitor *)self _unregisterMemberObserver:member];
  }

  _Block_object_dispose(&v10, 8);
}

void __48__COClusterRoleMonitor_removeObserverForMember___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) memberObservers];
  v3 = [v2 indexOfObject:*(a1 + 40)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [v2 mutableCopy];
    [v5 removeObjectAtIndex:v4];
    [*(a1 + 32) setMemberObservers:v5];

    v2 = v5;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [*(a1 + 40) member];
        v13 = [v11 member];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          ++*(*(*(a1 + 48) + 8) + 24);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)addObserverForRole:(id)role toDispatchQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  roleCopy = role;
  v11 = [_COClusterRoleMonitorRoleObserver alloc];
  cluster = [(COClusterRoleMonitor *)self cluster];
  v13 = [(_COClusterRoleMonitorRoleObserver *)v11 initWithRole:roleCopy inCluster:cluster queue:queueCopy block:blockCopy];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __65__COClusterRoleMonitor_addObserverForRole_toDispatchQueue_block___block_invoke;
  v21 = &unk_278E12368;
  selfCopy = self;
  v14 = v13;
  v23 = v14;
  [(COClusterRoleMonitor *)self _withLock:&v18];
  [(COClusterRoleMonitor *)self _registerRoleObserver:roleCopy, v18, v19, v20, v21, selfCopy];

  v15 = v23;
  v16 = v14;

  return v14;
}

void __65__COClusterRoleMonitor_addObserverForRole_toDispatchQueue_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) roleObservers];
  v3 = [v2 arrayByAddingObject:*(a1 + 40)];

  [*(a1 + 32) setRoleObservers:v3];
}

- (void)removeObserverForRole:(id)role
{
  roleCopy = role;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    role = [roleCopy role];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __46__COClusterRoleMonitor_removeObserverForRole___block_invoke;
    v10 = &unk_278E12210;
    selfCopy = self;
    v12 = roleCopy;
    v6 = role;
    v13 = v6;
    v14 = &v15;
    [(COClusterRoleMonitor *)self _withLock:&v7];
    if (!v16[3])
    {
      [(COClusterRoleMonitor *)self _unregisterRoleObserver:v6, v7, v8, v9, v10, selfCopy, v12];
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __46__COClusterRoleMonitor_removeObserverForRole___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) roleObservers];
  v3 = [v2 indexOfObject:*(a1 + 40)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [v2 mutableCopy];
    [v5 removeObjectAtIndex:v4];
    [*(a1 + 32) setRoleObservers:v5];

    v2 = v5;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 48);
        v12 = [*(*(&v13 + 1) + 8 * i) role];
        LODWORD(v11) = [v11 isEqual:v12];

        if (v11)
        {
          ++*(*(*(a1 + 56) + 8) + 24);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)addObserverForSnapshotsToDispatchQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v8 = [_COClusterRoleMonitorSnapshotObserver alloc];
  cluster = [(COClusterRoleMonitor *)self cluster];
  v10 = [(_COClusterRoleMonitorSnapshotObserver *)v8 initInCluster:cluster queue:queueCopy block:blockCopy];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__COClusterRoleMonitor_addObserverForSnapshotsToDispatchQueue_block___block_invoke;
  v15[3] = &unk_278E135D8;
  v15[4] = self;
  v11 = v10;
  v16 = v11;
  v17 = &v18;
  [(COClusterRoleMonitor *)self _withLock:v15];
  if (v19[3] == 1)
  {
    [(COClusterRoleMonitor *)self _registerSnapshotObserver];
  }

  v12 = v16;
  v13 = v11;

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __69__COClusterRoleMonitor_addObserverForSnapshotsToDispatchQueue_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotObservers];
  v3 = [v2 arrayByAddingObject:*(a1 + 40)];

  [*(a1 + 32) setSnapshotObservers:v3];
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];
}

- (void)removeObserverForSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__COClusterRoleMonitor_removeObserverForSnapshots___block_invoke;
  v6[3] = &unk_278E135D8;
  v6[4] = self;
  v5 = snapshotsCopy;
  v7 = v5;
  v8 = &v9;
  [(COClusterRoleMonitor *)self _withLock:v6];
  if (!v10[3])
  {
    [(COClusterRoleMonitor *)self _unregisterSnapshotObserver];
  }

  _Block_object_dispose(&v9, 8);
}

void __51__COClusterRoleMonitor_removeObserverForSnapshots___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) snapshotObservers];
  v2 = [v6 indexOfObject:*(a1 + 40)];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v6;
  }

  else
  {
    v4 = v2;
    v5 = [v6 mutableCopy];
    [v5 removeObjectAtIndex:v4];
    [*(a1 + 32) setSnapshotObservers:v5];

    v3 = v5;
  }

  v7 = v3;
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];
}

- (void)roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to
{
  v32 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  toCopy = to;
  v9 = COLogForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v28 = 2112;
    v29 = toCopy;
    v30 = 2112;
    v31 = memberCopy;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p notified of Role(%@) change for Member(%@)", buf, 0x20u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__COClusterRoleMonitor_roleOfMember_inCluster_didChangeTo___block_invoke;
  v22[3] = &unk_278E12738;
  v22[4] = self;
  v11 = memberCopy;
  v23 = v11;
  v12 = array;
  v24 = v12;
  [(COClusterRoleMonitor *)self _withLock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) notify:{toCopy, v18}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v15);
  }
}

void __59__COClusterRoleMonitor_roleOfMember_inCluster_didChangeTo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) memberObservers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 member];
        LODWORD(v8) = [v8 isEqual:v9];

        if (v8)
        {
          [*(a1 + 48) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to
{
  v32 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  toCopy = to;
  v9 = COLogForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v28 = 2112;
    v29 = toCopy;
    v30 = 2112;
    v31 = roleCopy;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p notified of Member(%@) change for Role(%@)", buf, 0x20u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__COClusterRoleMonitor_membersWithRole_inCluster_didChangeTo___block_invoke;
  v22[3] = &unk_278E12738;
  v22[4] = self;
  v11 = roleCopy;
  v23 = v11;
  v12 = array;
  v24 = v12;
  [(COClusterRoleMonitor *)self _withLock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) notify:{toCopy, v18}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v15);
  }
}

void __62__COClusterRoleMonitor_membersWithRole_inCluster_didChangeTo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) roleObservers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 role];
        LODWORD(v8) = [v8 isEqual:v9];

        if (v8)
        {
          [*(a1 + 48) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)snapshotOfCluster:(id)cluster didChangeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  toCopy = to;
  v8 = COLogForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = toCopy;
    *&buf[22] = 2112;
    v20 = clusterCopy;
    _os_log_impl(&dword_244328000, v8, OS_LOG_TYPE_DEFAULT, "%p notified of Snapshot(%@) change in Cluster(%@)", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__COClusterRoleMonitor_snapshotOfCluster_didChangeTo___block_invoke;
  v17[3] = &unk_278E122F0;
  v17[4] = self;
  v17[5] = buf;
  [(COClusterRoleMonitor *)self _withLock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = *(*&buf[8] + 40);
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v13 + 1) + 8 * v12++) notify:{toCopy, v13}];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(buf, 8);
}

void __54__COClusterRoleMonitor_snapshotOfCluster_didChangeTo___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) snapshotObservers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_serviceConnection
{
  provider = [(COClusterRoleMonitor *)self provider];
  clusterRoleMonitorServiceConnection = [provider clusterRoleMonitorServiceConnection];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__COClusterRoleMonitor__serviceConnection__block_invoke;
  v8[3] = &unk_278E12368;
  v5 = clusterRoleMonitorServiceConnection;
  v9 = v5;
  selfCopy = self;
  [(COClusterRoleMonitor *)self _withLock:v8];
  v6 = v5;

  return v5;
}

void __42__COClusterRoleMonitor__serviceConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastConnection];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x277CCAE90];
    v5 = &unk_2857B9AB8;
    v6 = [v4 interfaceWithProtocol:v5];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_membersWithRole_inCluster_didChangeTo_ argumentIndex:2 ofReply:0];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v30 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v6 setClasses:? forSelector:? argumentIndex:? ofReply:?];
    v12 = +[COCluster _allowedClusterClasses];
    [v6 setClasses:v12 forSelector:sel_roleOfMember_inCluster_didChangeTo_ argumentIndex:1 ofReply:0];

    v13 = +[COCluster _allowedClusterClasses];
    [v6 setClasses:v13 forSelector:sel_membersWithRole_inCluster_didChangeTo_ argumentIndex:1 ofReply:0];

    v14 = +[COCluster _allowedClusterClasses];
    [v6 setClasses:v14 forSelector:sel_snapshotOfCluster_didChangeTo_ argumentIndex:0 ofReply:0];

    v15 = [[COClusterRoleMonitorClientInterfaceMediator alloc] initWithClusterRoleMonitor:*(a1 + 40)];
    [*(a1 + 32) setExportedInterface:v6];
    [*(a1 + 32) setExportedObject:v15];
    v16 = &unk_2857BCC10;

    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v16];

    v18 = +[COCluster _allowedClusterClasses];
    [v17 setClasses:v18 forSelector:sel_registerForRoleChangesOfMember_inCluster_ argumentIndex:1 ofReply:0];

    v19 = +[COCluster _allowedClusterClasses];
    [v17 setClasses:v19 forSelector:sel_unregisterForRoleChangesOfMember_inCluster_ argumentIndex:1 ofReply:0];

    v20 = +[COCluster _allowedClusterClasses];
    [v17 setClasses:v20 forSelector:sel_registerForMemberChangesWithRole_inCluster_ argumentIndex:1 ofReply:0];

    v21 = +[COCluster _allowedClusterClasses];
    [v17 setClasses:v21 forSelector:sel_unregisterForMemberChangesWithRole_inCluster_ argumentIndex:1 ofReply:0];

    v22 = +[COCluster _allowedClusterClasses];
    [v17 setClasses:v22 forSelector:sel_registerForSnapshotChangesInCluster_ argumentIndex:0 ofReply:0];

    v23 = +[COCluster _allowedClusterClasses];
    [v17 setClasses:v23 forSelector:sel_unregisterForSnapshotChangesInCluster_ argumentIndex:0 ofReply:0];

    [*(a1 + 32) setRemoteObjectInterface:v17];
    objc_initWeak(location, *(a1 + 40));
    v24 = [*(a1 + 32) interruptionHandler];
    v25 = [*(a1 + 32) invalidationHandler];
    [*(a1 + 32) co_setOriginalInterruptionHandler:v24];
    [*(a1 + 32) co_setOriginalInvalidationHandler:v25];
    v26 = *(a1 + 32);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __42__COClusterRoleMonitor__serviceConnection__block_invoke_2;
    v34[3] = &unk_278E128A0;
    v27 = v24;
    v35 = v27;
    objc_copyWeak(&v36, location);
    [v26 setInterruptionHandler:v34];
    v28 = *(a1 + 32);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__COClusterRoleMonitor__serviceConnection__block_invoke_93;
    v31[3] = &unk_278E128A0;
    v29 = v25;
    v32 = v29;
    objc_copyWeak(&v33, location);
    [v28 setInvalidationHandler:v31];
    [*(a1 + 40) setLastConnection:*(a1 + 32)];
    [*(a1 + 32) resume];
    objc_destroyWeak(&v33);

    objc_destroyWeak(&v36);
    objc_destroyWeak(location);
  }
}

void __42__COClusterRoleMonitor__serviceConnection__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__COClusterRoleMonitor__serviceConnection__block_invoke_2_cold_1(WeakRetained, v4);
    }

    [WeakRetained _lostConnectionToService];
  }
}

void __42__COClusterRoleMonitor__serviceConnection__block_invoke_93(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = WeakRetained;
      _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%p connection to Role service invalidated", &v5, 0xCu);
    }

    [WeakRetained _lostConnectionToService];
  }
}

- (id)_remoteInterfaceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(COClusterRoleMonitor *)self _serviceConnection];
  v6 = [_serviceConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)_lostConnectionToService
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__COClusterRoleMonitor__lostConnectionToService__block_invoke;
  v24[3] = &unk_278E12210;
  v24[4] = self;
  v5 = v3;
  v25 = v5;
  v6 = v4;
  v26 = v6;
  v27 = &v28;
  [(COClusterRoleMonitor *)self _withLock:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v35 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(COClusterRoleMonitor *)self _registerMemberObserver:*(*(&v20 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v35 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v34 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(COClusterRoleMonitor *)self _registerRoleObserver:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v34 count:16];
    }

    while (v12);
  }

  if (*(v29 + 24) == 1)
  {
    [(COClusterRoleMonitor *)self _registerSnapshotObserver];
  }

  v15 = COLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p done restoring state after lost connection to service", buf, 0xCu);
  }

  _Block_object_dispose(&v28, 8);
}

void __48__COClusterRoleMonitor__lostConnectionToService__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) memberObservers];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v21 + 1) + 8 * v6) member];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [*(a1 + 32) roleObservers];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a1 + 48);
        v15 = [*(*(&v17 + 1) + 8 * v13) role];
        [v14 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = [*(a1 + 32) snapshotObservers];
  *(*(*(a1 + 56) + 8) + 24) = [v16 count] != 0;
}

- (void)_registerMemberObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__COClusterRoleMonitor__registerMemberObserver___block_invoke;
  v9[3] = &unk_278E131D8;
  objc_copyWeak(&v11, &location);
  v5 = observerCopy;
  v10 = v5;
  v6 = [(COClusterRoleMonitor *)self _remoteInterfaceWithErrorHandler:v9];
  v7 = COLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p registering observer for Member(%@)", buf, 0x16u);
  }

  cluster = [(COClusterRoleMonitor *)self cluster];
  [v6 registerForRoleChangesOfMember:v5 inCluster:cluster];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__COClusterRoleMonitor__registerMemberObserver___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to register observer for Member(%@): %@", &v7, 0x20u);
    }
  }
}

- (void)_unregisterMemberObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__COClusterRoleMonitor__unregisterMemberObserver___block_invoke;
  v9[3] = &unk_278E131D8;
  objc_copyWeak(&v11, &location);
  v5 = observerCopy;
  v10 = v5;
  v6 = [(COClusterRoleMonitor *)self _remoteInterfaceWithErrorHandler:v9];
  v7 = COLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p unregistering observer for Member(%@)", buf, 0x16u);
  }

  cluster = [(COClusterRoleMonitor *)self cluster];
  [v6 unregisterForRoleChangesOfMember:v5 inCluster:cluster];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__COClusterRoleMonitor__unregisterMemberObserver___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to unregister observer for Member(%@): %@", &v7, 0x20u);
    }
  }
}

- (void)_registerRoleObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__COClusterRoleMonitor__registerRoleObserver___block_invoke;
  v9[3] = &unk_278E131D8;
  objc_copyWeak(&v11, &location);
  v5 = observerCopy;
  v10 = v5;
  v6 = [(COClusterRoleMonitor *)self _remoteInterfaceWithErrorHandler:v9];
  v7 = COLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p registering observer for Role(%@)", buf, 0x16u);
  }

  cluster = [(COClusterRoleMonitor *)self cluster];
  [v6 registerForMemberChangesWithRole:v5 inCluster:cluster];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __46__COClusterRoleMonitor__registerRoleObserver___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to register observer for Role(%@): %@", &v7, 0x20u);
    }
  }
}

- (void)_unregisterRoleObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__COClusterRoleMonitor__unregisterRoleObserver___block_invoke;
  v9[3] = &unk_278E131D8;
  objc_copyWeak(&v11, &location);
  v5 = observerCopy;
  v10 = v5;
  v6 = [(COClusterRoleMonitor *)self _remoteInterfaceWithErrorHandler:v9];
  v7 = COLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p unregistering observer for Role(%@)", buf, 0x16u);
  }

  cluster = [(COClusterRoleMonitor *)self cluster];
  [v6 unregisterForMemberChangesWithRole:v5 inCluster:cluster];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__COClusterRoleMonitor__unregisterRoleObserver___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to unregister observer for Role(%@): %@", &v7, 0x20u);
    }
  }
}

- (void)_registerSnapshotObserver
{
  v14 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __49__COClusterRoleMonitor__registerSnapshotObserver__block_invoke;
  v9 = &unk_278E12710;
  objc_copyWeak(&v10, &location);
  v3 = [(COClusterRoleMonitor *)self _remoteInterfaceWithErrorHandler:&v6];
  v4 = COLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%p registering Snapshot observer", buf, 0xCu);
  }

  v5 = [(COClusterRoleMonitor *)self cluster:v6];
  [v3 registerForSnapshotChangesInCluster:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49__COClusterRoleMonitor__registerSnapshotObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__COClusterRoleMonitor__registerSnapshotObserver__block_invoke_cold_1();
    }
  }
}

- (void)_unregisterSnapshotObserver
{
  v14 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __51__COClusterRoleMonitor__unregisterSnapshotObserver__block_invoke;
  v9 = &unk_278E12710;
  objc_copyWeak(&v10, &location);
  v3 = [(COClusterRoleMonitor *)self _remoteInterfaceWithErrorHandler:&v6];
  v4 = COLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%p unregistering Snapshot observer", buf, 0xCu);
  }

  v5 = [(COClusterRoleMonitor *)self cluster:v6];
  [v3 unregisterForSnapshotChangesInCluster:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__COClusterRoleMonitor__unregisterSnapshotObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__COClusterRoleMonitor__unregisterSnapshotObserver__block_invoke_cold_1();
    }
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (NSXPCConnection)lastConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnection);

  return WeakRetained;
}

void __42__COClusterRoleMonitor__serviceConnection__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_244328000, a2, OS_LOG_TYPE_ERROR, "%p connection to Role service interrupted", &v2, 0xCu);
}

@end