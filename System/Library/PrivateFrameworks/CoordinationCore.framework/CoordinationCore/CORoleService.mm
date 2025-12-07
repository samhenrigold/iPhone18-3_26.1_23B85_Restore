@interface CORoleService
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (CORoleService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (id)_membersWithRole:(id)role inCluster:(id)cluster;
- (id)_membersWithRole:(id)role inSnapshots:(id)snapshots;
- (id)_remoteInterfaceForClient:(id)client withErrorHandler:(id)handler;
- (id)_roleOfMember:(id)member inCluster:(id)cluster;
- (id)_roleOfMember:(id)member inSnapshots:(id)snapshots;
- (id)_snapshotsForCluster:(id)cluster;
- (void)_addMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_addRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster;
- (void)_addSnapshotObserverForClient:(id)client inCluster:(id)cluster;
- (void)_clientLost:(id)lost;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_identifyAndNotifyMemberChangesFromSnapshot:(id)snapshot inCluster:(id)cluster;
- (void)_identifyAndNotifyRoleChangesFromSnapshot:(id)snapshot inCluster:(id)cluster;
- (void)_notifyMemberObserver:(id)observer membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifyMemberObserversMembersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifyRoleObserver:(id)observer roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifyRoleObserversRoleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifySnapshotObserver:(id)observer snapshotOfCluster:(id)cluster didChangeTo:(id)to;
- (void)_notifySnapshotObserversSnapshotOfCluster:(id)cluster didChangeTo:(id)to;
- (void)_removeMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster;
- (void)_removeRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster;
- (void)_removeSnapshotObserverForClient:(id)client inCluster:(id)cluster;
- (void)_updateSnapshots:(id)snapshots inCluster:(id)cluster;
- (void)addOn:(id)on stateChanged:(id)changed;
- (void)registerForMemberChangesWithRole:(id)role inCluster:(id)cluster;
- (void)registerForRoleChangesOfMember:(id)member inCluster:(id)cluster;
- (void)registerForSnapshotChangesInCluster:(id)cluster;
- (void)unregisterForMemberChangesWithRole:(id)role inCluster:(id)cluster;
- (void)unregisterForRoleChangesOfMember:(id)member inCluster:(id)cluster;
- (void)unregisterForSnapshotChangesInCluster:(id)cluster;
@end

@implementation CORoleService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.role" entitlement:@"com.apple.private.coordination.role"];
  v5 = objc_alloc_init(CORoleAddOnProvider);
  v6 = [[CORoleService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:delegateCopy];

  return v6;
}

- (CORoleService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = CORoleService;
  v5 = [(COService *)&v15 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    snapshotState = v5->_snapshotState;
    v5->_snapshotState = dictionary;

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    roleObservers = v5->_roleObservers;
    v5->_roleObservers = dictionary2;

    dictionary3 = [MEMORY[0x277CBEAC0] dictionary];
    memberObservers = v5->_memberObservers;
    v5->_memberObservers = dictionary3;

    dictionary4 = [MEMORY[0x277CBEAC0] dictionary];
    snapshotObservers = v5->_snapshotObservers;
    v5->_snapshotObservers = dictionary4;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v16.receiver = self;
  v16.super_class = CORoleService;
  connectionCopy = connection;
  [(COService *)&v16 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857DA598;
  v7 = [v5 interfaceWithProtocol:v6];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  v8 = &unk_2857E6748;

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v8];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0, v16.receiver, v16.super_class}];
  [v9 setClasses:v12 forSelector:sel_membersWithRole_inCluster_didChangeTo_ argumentIndex:2 ofReply:0];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v9 setClasses:v15 forSelector:sel_snapshotOfCluster_didChangeTo_ argumentIndex:1 ofReply:0];

  [connectionCopy setRemoteObjectInterface:v9];
}

- (void)_clientLost:(id)lost
{
  v5.receiver = self;
  v5.super_class = CORoleService;
  lostCopy = lost;
  [(COService *)&v5 _clientLost:lostCopy];
  [(CORoleService *)self _removeRoleObserverForClient:lostCopy ofMember:0 inCluster:0, v5.receiver, v5.super_class];
  [(CORoleService *)self _removeMemberObserverForClient:lostCopy ofRole:0 inCluster:0];
  [(CORoleService *)self _removeSnapshotObserverForClient:lostCopy inCluster:0];
}

- (void)_addOnAdded:(id)added
{
  v18 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  pairCluster = [MEMORY[0x277CFD078] pairCluster];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(COService *)self _clustersForAddOn:addedCopy, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CBEB98] set];
        [(CORoleService *)self _updateSnapshots:v12 inCluster:v11];

        if ([pairCluster isEqual:v11])
        {
          [addedCopy _enableForPairLegacySupport];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [addedCopy setDelegate:self];
}

- (void)_addOnRemoved:(id)removed
{
  v15 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  [removedCopy setDelegate:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(COService *)self _clustersForAddOn:removedCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CORoleService *)self _updateSnapshots:0 inCluster:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_applicableToCluster:(id)cluster
{
  configuration = [cluster configuration];
  v4 = ([configuration requiredServices] & 0xC) != 0;

  return v4;
}

- (void)registerForRoleChangesOfMember:(id)member inCluster:(id)cluster
{
  memberCopy = member;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    v8 = [(CORoleService *)self _roleOfMember:memberCopy inCluster:clusterCopy];
    [(CORoleService *)self _notifyRoleObserver:currentClient roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:v8];
    [(CORoleService *)self _addRoleObserverForClient:currentClient ofMember:memberCopy inCluster:clusterCopy];
  }
}

- (void)unregisterForRoleChangesOfMember:(id)member inCluster:(id)cluster
{
  memberCopy = member;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    [(CORoleService *)self _removeRoleObserverForClient:currentClient ofMember:memberCopy inCluster:clusterCopy];
  }
}

- (void)registerForMemberChangesWithRole:(id)role inCluster:(id)cluster
{
  roleCopy = role;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    v8 = [(CORoleService *)self _membersWithRole:roleCopy inCluster:clusterCopy];
    [(CORoleService *)self _notifyMemberObserver:currentClient membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:v8];
    [(CORoleService *)self _addMemberObserverForClient:currentClient ofRole:roleCopy inCluster:clusterCopy];
  }
}

- (void)unregisterForMemberChangesWithRole:(id)role inCluster:(id)cluster
{
  roleCopy = role;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    [(CORoleService *)self _removeMemberObserverForClient:currentClient ofRole:roleCopy inCluster:clusterCopy];
  }
}

- (void)registerForSnapshotChangesInCluster:(id)cluster
{
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    v5 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
    [(CORoleService *)self _notifySnapshotObserver:currentClient snapshotOfCluster:clusterCopy didChangeTo:v5];
    [(CORoleService *)self _addSnapshotObserverForClient:currentClient inCluster:clusterCopy];
  }
}

- (void)unregisterForSnapshotChangesInCluster:(id)cluster
{
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    [(CORoleService *)self _removeSnapshotObserverForClient:currentClient inCluster:clusterCopy];
  }
}

- (void)addOn:(id)on stateChanged:(id)changed
{
  onCopy = on;
  changedCopy = changed;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CORoleService_addOn_stateChanged___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = onCopy;
  v13 = changedCopy;
  v9 = changedCopy;
  v10 = onCopy;
  dispatch_async(dispatchQueue, block);
}

void __36__CORoleService_addOn_stateChanged___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) _clustersForAddOn:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = COCoreLogForCategory(4);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = *(a1 + 48);
          *buf = 134218498;
          v16 = v9;
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Snapshot changed in Cluster(%@), now %@", buf, 0x20u);
        }

        [*(a1 + 32) _updateSnapshots:*(a1 + 48) inCluster:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
    }

    while (v4);
  }
}

- (void)_updateSnapshots:(id)snapshots inCluster:(id)cluster
{
  v19 = *MEMORY[0x277D85DE8];
  snapshotsCopy = snapshots;
  clusterCopy = cluster;
  v8 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    selfCopy2 = self;
    v15 = 2112;
    v16 = clusterCopy;
    v17 = 2112;
    v18 = snapshotsCopy;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p will process snapshot update for Cluster(%@) to Snapshots(%@)", &v13, 0x20u);
  }

  v9 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
  snapshotState = [(CORoleService *)self snapshotState];
  v11 = [snapshotState mutableCopy];

  if (snapshotsCopy)
  {
    [v11 setObject:snapshotsCopy forKey:clusterCopy];
  }

  else
  {
    v12 = COCoreLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      selfCopy2 = self;
      v15 = 2112;
      v16 = clusterCopy;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p removing snaphots for Cluster(%@)", &v13, 0x16u);
    }

    [v11 removeObjectForKey:clusterCopy];
    snapshotsCopy = [MEMORY[0x277CBEB98] set];
  }

  [(CORoleService *)self setSnapshotState:v11];
  [(CORoleService *)self _notifySnapshotObserversSnapshotOfCluster:clusterCopy didChangeTo:snapshotsCopy];
  [(CORoleService *)self _identifyAndNotifyMemberChangesFromSnapshot:v9 inCluster:clusterCopy];
  [(CORoleService *)self _identifyAndNotifyRoleChangesFromSnapshot:v9 inCluster:clusterCopy];
}

- (void)_identifyAndNotifyRoleChangesFromSnapshot:(id)snapshot inCluster:(id)cluster
{
  v23 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  clusterCopy = cluster;
  roleObservers = [(CORoleService *)self roleObservers];
  v9 = [roleObservers objectForKey:clusterCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [(CORoleService *)self _roleOfMember:v15 inSnapshots:snapshotCopy, v18];
        v17 = [(CORoleService *)self _roleOfMember:v15 inCluster:clusterCopy];
        if (([v17 isEqual:v16] & 1) == 0)
        {
          [(CORoleService *)self _notifyRoleObserversRoleOfMember:v15 inCluster:clusterCopy didChangeTo:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)_identifyAndNotifyMemberChangesFromSnapshot:(id)snapshot inCluster:(id)cluster
{
  v55 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  clusterCopy = cluster;
  memberObservers = [(CORoleService *)self memberObservers];
  v9 = [memberObservers objectForKey:clusterCopy];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    selfCopy = self;
    v34 = snapshotCopy;
    v31 = *v49;
    v32 = clusterCopy;
    do
    {
      v13 = 0;
      v35 = v11;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        v15 = [(CORoleService *)self _membersWithRole:v14 inSnapshots:snapshotCopy];
        v16 = [(CORoleService *)self _membersWithRole:v14 inCluster:clusterCopy];
        v17 = [v15 count];
        if (v17 != [v16 count])
        {
          goto LABEL_25;
        }

        v39 = v14;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v18 = v15;
        v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v19)
        {
          v20 = v19;
          v37 = v13;
          v38 = v15;
          v21 = *v45;
          while (1)
          {
            v22 = 0;
LABEL_10:
            if (*v45 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = v18;
            v24 = *(*(&v44 + 1) + 8 * v22);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v25 = v16;
            v26 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (!v26)
            {
              break;
            }

            v27 = v26;
            v28 = *v41;
LABEL_14:
            v29 = 0;
            while (1)
            {
              if (*v41 != v28)
              {
                objc_enumerationMutation(v25);
              }

              if ([v24 isSameDeviceAsMember:*(*(&v40 + 1) + 8 * v29)])
              {
                break;
              }

              if (v27 == ++v29)
              {
                v27 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
                if (v27)
                {
                  goto LABEL_14;
                }

                goto LABEL_24;
              }
            }

            ++v22;
            v18 = v23;
            if (v22 != v20)
            {
              goto LABEL_10;
            }

            v20 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (!v20)
            {

              self = selfCopy;
              snapshotCopy = v34;
              v12 = v31;
              clusterCopy = v32;
              v11 = v35;
              v13 = v37;
              v15 = v38;
              goto LABEL_26;
            }
          }

LABEL_24:

          self = selfCopy;
          snapshotCopy = v34;
          v12 = v31;
          clusterCopy = v32;
          v11 = v35;
          v15 = v38;
          v14 = v39;
          v13 = v37;
LABEL_25:
          [(CORoleService *)self _notifyMemberObserversMembersWithRole:v14 inCluster:clusterCopy didChangeTo:v16];
          goto LABEL_26;
        }

LABEL_26:
        ++v13;
      }

      while (v13 != v11);
      v30 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      v11 = v30;
    }

    while (v30);
  }
}

- (id)_roleOfMember:(id)member inCluster:(id)cluster
{
  v22 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  clusterCopy = cluster;
  v8 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
  v9 = [(CORoleService *)self _roleOfMember:memberCopy inSnapshots:v8];
  if ([v9 isUnknown] && +[CODeviceClass isAudioAccessory](CODeviceClass, "isAudioAccessory"))
  {
    pairCluster = [MEMORY[0x277CFD078] pairCluster];
    if ([clusterCopy isEqual:pairCluster])
    {
      v11 = [objc_alloc(MEMORY[0x277CFD0A0]) initWithRoleFlags:1];

      v9 = v11;
    }
  }

  v12 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218754;
    selfCopy = self;
    v16 = 2112;
    v17 = memberCopy;
    v18 = 2112;
    v19 = clusterCopy;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p Member(%@) in Cluster(%@) has Role(%@)", &v14, 0x2Au);
  }

  return v9;
}

- (id)_roleOfMember:(id)member inSnapshots:(id)snapshots
{
  v31 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  snapshotsCopy = snapshots;
  v8 = [snapshotsCopy countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(snapshotsCopy);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      member = [v12 member];
      v14 = [member isSameDeviceAsMember:memberCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [snapshotsCopy countByEnumeratingWithState:&v18 objects:v30 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    role = [v12 role];

    if (role)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  role = [MEMORY[0x277CFD0A0] roleForUnknown];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218754;
    selfCopy = self;
    v24 = 2112;
    v25 = role;
    v26 = 2112;
    v27 = memberCopy;
    v28 = 2112;
    v29 = snapshotsCopy;
    _os_log_error_impl(&dword_244378000, v16, OS_LOG_TYPE_ERROR, "%p synthesized Role(%@) for Member(%@) missing from Snapshots(%@)", buf, 0x2Au);
  }

LABEL_14:

  return role;
}

- (id)_membersWithRole:(id)role inCluster:(id)cluster
{
  v20 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  clusterCopy = cluster;
  v8 = [(CORoleService *)self _snapshotsForCluster:clusterCopy];
  v9 = [(CORoleService *)self _membersWithRole:roleCopy inSnapshots:v8];
  v10 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218754;
    selfCopy = self;
    v14 = 2112;
    v15 = roleCopy;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%p Role(%@) is associated with Members(%@) in Cluster(%@)", &v12, 0x2Au);
  }

  return v9;
}

- (id)_membersWithRole:(id)role inSnapshots:(id)snapshots
{
  v22 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  snapshotsCopy = snapshots;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = snapshotsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        role = [v13 role];
        if ([role satisfiesRole:roleCopy])
        {
          member = [v13 member];
          [v7 addObject:member];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_snapshotsForCluster:(id)cluster
{
  clusterCopy = cluster;
  snapshotState = [(CORoleService *)self snapshotState];
  v6 = [snapshotState objectForKey:clusterCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (void)_notifyRoleObserversRoleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  clusterCopy = cluster;
  toCopy = to;
  roleObservers = [(CORoleService *)self roleObservers];
  v12 = [roleObservers objectForKey:clusterCopy];

  v13 = [v12 objectForKey:memberCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

        [(CORoleService *)self _notifyRoleObserver:*(*(&v18 + 1) + 8 * v17++) roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:toCopy];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)_notifyMemberObserversMembersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  clusterCopy = cluster;
  toCopy = to;
  memberObservers = [(CORoleService *)self memberObservers];
  v12 = [memberObservers objectForKey:clusterCopy];

  v13 = [v12 objectForKey:roleCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

        [(CORoleService *)self _notifyMemberObserver:*(*(&v18 + 1) + 8 * v17++) membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:toCopy];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)_notifySnapshotObserversSnapshotOfCluster:(id)cluster didChangeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  toCopy = to;
  snapshotObservers = [(CORoleService *)self snapshotObservers];
  v9 = [snapshotObservers objectForKey:clusterCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CORoleService *)self _notifySnapshotObserver:*(*(&v15 + 1) + 8 * v14++) snapshotOfCluster:clusterCopy didChangeTo:toCopy, v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_notifyRoleObserver:(id)observer roleOfMember:(id)member inCluster:(id)cluster didChangeTo:(id)to
{
  v33 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  memberCopy = member;
  clusterCopy = cluster;
  toCopy = to;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke;
  v20 = &unk_278E16A88;
  selfCopy = self;
  v14 = observerCopy;
  v22 = v14;
  v15 = [(CORoleService *)self _remoteInterfaceForClient:v14 withErrorHandler:&v17];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    selfCopy2 = self;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = toCopy;
    v29 = 2112;
    v30 = memberCopy;
    v31 = 2112;
    v32 = clusterCopy;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Role(%@) of Member(%@) in Cluster(%@)", buf, 0x34u);
  }

  [v15 roleOfMember:memberCopy inCluster:clusterCopy didChangeTo:{toCopy, v17, v18, v19, v20, selfCopy}];
}

void __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__CORoleService__notifyRoleObserver_roleOfMember_inCluster_didChangeTo___block_invoke_cold_1();
  }
}

- (void)_notifyMemberObserver:(id)observer membersWithRole:(id)role inCluster:(id)cluster didChangeTo:(id)to
{
  v33 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  roleCopy = role;
  clusterCopy = cluster;
  toCopy = to;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke;
  v20 = &unk_278E16A88;
  selfCopy = self;
  v14 = observerCopy;
  v22 = v14;
  v15 = [(CORoleService *)self _remoteInterfaceForClient:v14 withErrorHandler:&v17];
  v16 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    selfCopy2 = self;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = toCopy;
    v29 = 2112;
    v30 = roleCopy;
    v31 = 2112;
    v32 = clusterCopy;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Members(%@) with Role(%@) in Cluster(%@)", buf, 0x34u);
  }

  [v15 membersWithRole:roleCopy inCluster:clusterCopy didChangeTo:{toCopy, v17, v18, v19, v20, selfCopy}];
}

void __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__CORoleService__notifyMemberObserver_membersWithRole_inCluster_didChangeTo___block_invoke_cold_1();
  }
}

- (void)_notifySnapshotObserver:(id)observer snapshotOfCluster:(id)cluster didChangeTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clusterCopy = cluster;
  toCopy = to;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke;
  v17 = &unk_278E16A88;
  selfCopy = self;
  v11 = observerCopy;
  v19 = v11;
  v12 = [(CORoleService *)self _remoteInterfaceForClient:v11 withErrorHandler:&v14];
  v13 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy2 = self;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = toCopy;
    v26 = 2112;
    v27 = clusterCopy;
    _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p change notification to Client(%@) for Snapshots(%@) in Cluster(%@)", buf, 0x2Au);
  }

  [v12 snapshotOfCluster:clusterCopy didChangeTo:{toCopy, v14, v15, v16, v17, selfCopy}];
}

void __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__CORoleService__notifySnapshotObserver_snapshotOfCluster_didChangeTo___block_invoke_cold_1();
  }
}

- (void)_addRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  memberCopy = member;
  clusterCopy = cluster;
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  roleObservers = [(CORoleService *)self roleObservers];
  v12 = [roleObservers mutableCopy];

  v13 = [v12 objectForKey:clusterCopy];
  v14 = v13;
  if (v13)
  {
    dictionary = [v13 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = dictionary;
  v17 = [dictionary objectForKey:memberCopy];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v17 addObject:clientCopy];
  [v16 setObject:v17 forKey:memberCopy];
  [v12 setObject:v16 forKey:clusterCopy];
  [(CORoleService *)self setRoleObservers:v12];
  v18 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218754;
    selfCopy = self;
    v21 = 2112;
    v22 = clientCopy;
    v23 = 2112;
    v24 = memberCopy;
    v25 = 2112;
    v26 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v18, OS_LOG_TYPE_DEBUG, "%p added client %@ role observer for %@ in %@", &v19, 0x2Au);
  }
}

- (void)_removeRoleObserverForClient:(id)client ofMember:(id)member inCluster:(id)cluster
{
  v48 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  memberCopy = member;
  clusterCopy = cluster;
  selfCopy = self;
  roleObservers = [(CORoleService *)self roleObservers];
  v22 = [roleObservers mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = roleObservers;
  v24 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v24)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if (!clusterCopy || [clusterCopy isEqual:*(*(&v34 + 1) + 8 * i)])
        {
          v26 = i;
          v13 = [obj objectForKey:v12];
          v28 = [v13 mutableCopy];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            do
            {
              v18 = 0;
              do
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v30 + 1) + 8 * v18);
                if (!memberCopy || [memberCopy isSameDeviceAsMember:*(*(&v30 + 1) + 8 * v18)])
                {
                  v20 = [v14 objectForKey:v19];
                  if ([v20 containsObject:clientCopy])
                  {
                    v21 = COCoreLogForCategory(4);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134218754;
                      v39 = selfCopy;
                      v40 = 2112;
                      v41 = clientCopy;
                      v42 = 2112;
                      v43 = memberCopy;
                      v44 = 2112;
                      v45 = clusterCopy;
                      _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p removed client %@ role observer for %@ in %@", buf, 0x2Au);
                    }

                    [v20 removeObject:clientCopy];
                    [(COService *)selfCopy _releaseAssertionForCluster:v12];
                    if (![v20 count])
                    {
                      [v28 removeObjectForKey:v19];
                    }
                  }
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v30 objects:v46 count:16];
            }

            while (v16);
          }

          if ([v28 count])
          {
            [v22 setObject:v28 forKey:v12];
          }

          else
          {
            [v22 removeObjectForKey:v12];
          }

          i = v26;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v24);
  }

  [(CORoleService *)selfCopy setRoleObservers:v22];
}

- (void)_addMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  roleCopy = role;
  clusterCopy = cluster;
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  memberObservers = [(CORoleService *)self memberObservers];
  v12 = [memberObservers mutableCopy];

  v13 = [v12 objectForKey:clusterCopy];
  v14 = v13;
  if (v13)
  {
    dictionary = [v13 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = dictionary;
  v17 = [dictionary objectForKey:roleCopy];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  [v17 addObject:clientCopy];
  [v16 setObject:v17 forKey:roleCopy];
  [v12 setObject:v16 forKey:clusterCopy];
  [(CORoleService *)self setMemberObservers:v12];
  v18 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218754;
    selfCopy = self;
    v21 = 2112;
    v22 = clientCopy;
    v23 = 2112;
    v24 = roleCopy;
    v25 = 2112;
    v26 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v18, OS_LOG_TYPE_DEBUG, "%p added client %@ member observer for %@ in %@", &v19, 0x2Au);
  }
}

- (void)_removeMemberObserverForClient:(id)client ofRole:(id)role inCluster:(id)cluster
{
  v48 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  roleCopy = role;
  clusterCopy = cluster;
  selfCopy = self;
  memberObservers = [(CORoleService *)self memberObservers];
  v22 = [memberObservers mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = memberObservers;
  v24 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v24)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if (!clusterCopy || [clusterCopy isEqual:*(*(&v34 + 1) + 8 * i)])
        {
          v26 = i;
          v13 = [obj objectForKey:v12];
          v28 = [v13 mutableCopy];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            do
            {
              v18 = 0;
              do
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v30 + 1) + 8 * v18);
                if (!roleCopy || [roleCopy isEqual:*(*(&v30 + 1) + 8 * v18)])
                {
                  v20 = [v14 objectForKey:v19];
                  if ([v20 containsObject:clientCopy])
                  {
                    v21 = COCoreLogForCategory(4);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134218754;
                      v39 = selfCopy;
                      v40 = 2112;
                      v41 = clientCopy;
                      v42 = 2112;
                      v43 = roleCopy;
                      v44 = 2112;
                      v45 = clusterCopy;
                      _os_log_debug_impl(&dword_244378000, v21, OS_LOG_TYPE_DEBUG, "%p removed client %@ member observer for %@ in %@", buf, 0x2Au);
                    }

                    [v20 removeObject:clientCopy];
                    [(COService *)selfCopy _releaseAssertionForCluster:v12];
                    if (![v20 count])
                    {
                      [v28 removeObjectForKey:v19];
                    }
                  }
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v30 objects:v46 count:16];
            }

            while (v16);
          }

          if ([v28 count])
          {
            [v22 setObject:v28 forKey:v12];
          }

          else
          {
            [v22 removeObjectForKey:v12];
          }

          i = v26;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v24);
  }

  [(CORoleService *)selfCopy setMemberObservers:v22];
}

- (void)_addSnapshotObserverForClient:(id)client inCluster:(id)cluster
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  clusterCopy = cluster;
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  snapshotObservers = [(CORoleService *)self snapshotObservers];
  v9 = [snapshotObservers objectForKey:clusterCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    snapshotObservers2 = [(CORoleService *)self snapshotObservers];
    v11 = [snapshotObservers2 mutableCopy];

    [v11 setObject:v9 forKey:clusterCopy];
    [(CORoleService *)self setSnapshotObservers:v11];
  }

  [v9 addObject:clientCopy];
  v12 = COCoreLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218498;
    selfCopy = self;
    v15 = 2112;
    v16 = clientCopy;
    v17 = 2112;
    v18 = clusterCopy;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p added client %@ snapshot observer in %@", &v13, 0x20u);
  }
}

- (void)_removeSnapshotObserverForClient:(id)client inCluster:(id)cluster
{
  v31 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  clusterCopy = cluster;
  snapshotObservers = [(CORoleService *)self snapshotObservers];
  v19 = [snapshotObservers mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = snapshotObservers;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
    *&v11 = 134218498;
    v18 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if (!clusterCopy || [clusterCopy isEqual:*(*(&v20 + 1) + 8 * v14)])
        {
          v16 = [v9 objectForKey:{v15, v18}];
          if ([v16 containsObject:clientCopy])
          {
            v17 = COCoreLogForCategory(4);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = v18;
              selfCopy = self;
              v26 = 2112;
              v27 = clientCopy;
              v28 = 2112;
              v29 = clusterCopy;
              _os_log_debug_impl(&dword_244378000, v17, OS_LOG_TYPE_DEBUG, "%p removed client %@ snapshot observer in %@", buf, 0x20u);
            }

            [v16 removeObject:clientCopy];
            [(COService *)self _releaseAssertionForCluster:v15];
            if (![v16 count])
            {
              [v19 removeObjectForKey:v15];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v12);
  }

  [(CORoleService *)self setSnapshotObservers:v19];
}

- (id)_remoteInterfaceForClient:(id)client withErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [client connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

@end