@interface HDPairedSyncManager
- (HDPairedSyncManager)initWithProfile:(id)profile queue:(id)queue;
- (__CFString)_typeStringForSyncSession:(__CFString *)session;
- (id)diagnosticDescription;
- (void)dealloc;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
@end

@implementation HDPairedSyncManager

- (HDPairedSyncManager)initWithProfile:(id)profile queue:(id)queue
{
  profileCopy = profile;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = HDPairedSyncManager;
  v8 = [(HDPairedSyncManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_queue, queue);
    daemon = [profileCopy daemon];
    v11 = [daemon pairedSyncCoordinatorWithServiceName:@"com.apple.pairedsync.healthd"];
    pairedSyncCoordinator = v9->_pairedSyncCoordinator;
    v9->_pairedSyncCoordinator = v11;

    [(PSYSyncCoordinator *)v9->_pairedSyncCoordinator setDelegate:v9 queue:v9->_queue];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    unfinishedSyncSessions = v9->_unfinishedSyncSessions;
    v9->_unfinishedSyncSessions = weakObjectsHashTable;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v9];
  }

  return v9;
}

- (void)dealloc
{
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  v4.receiver = self;
  v4.super_class = HDPairedSyncManager;
  [(HDPairedSyncManager *)&v4 dealloc];
}

- (__CFString)_typeStringForSyncSession:(__CFString *)session
{
  v3 = a2;
  v4 = v3;
  if (session)
  {
    syncSessionType = [v3 syncSessionType];
    if (syncSessionType > 2)
    {
      session = 0;
    }

    else
    {
      session = off_278622BF0[syncSessionType];
    }
  }

  return session;
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_2;
  block[3] = &unk_278613830;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v4;
  if (v1)
  {
    if (v3)
    {
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:sel__queue_didSendRestoreMessagesForSession_error_ object:v1 file:@"HDPairedSyncManager.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"syncSession != nil"}];

      if (v5)
      {
LABEL_4:
        _HKInitializeLogging();
        v6 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v9 = v5;
          _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "failed to send restore messages: %{public}@", buf, 0xCu);
        }
      }
    }

    [v3 syncDidCompleteSending];
  }
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_4;
  block[3] = &unk_278613830;
  block[4] = v6;
  v10 = v5;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

void __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    [*(v1 + 32) removeObject:v3];
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    v6 = *MEMORY[0x277CCC328];
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = v5;
        v11 = [v3 sessionIdentifier];
        v12 = [v11 UUIDString];
        v13 = 138543618;
        v14 = v12;
        v15 = 2114;
        v16 = v4;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "sync session %{public}@ failed error: %{public}@", &v13, 0x16u);
      }

      [v3 syncDidFailWithError:v4];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
        v8 = [v3 sessionIdentifier];
        v9 = [v8 UUIDString];
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "sync session %{public}@ complete", &v13, 0xCu);
      }

      [v3 syncDidComplete];
    }
  }
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v25 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  sessionCopy = session;
  dispatch_assert_queue_V2(queue);
  v7 = sessionCopy;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(HDPairedSyncManager *)self _typeStringForSyncSession:v7];
    sessionIdentifier = [v7 sessionIdentifier];
    uUIDString = [sessionIdentifier UUIDString];
    pairedDevice = [v7 pairedDevice];
    hd_shortDescription = [pairedDevice hd_shortDescription];
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = uUIDString;
    *&buf[22] = 2114;
    v22 = hd_shortDescription;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ did start for device %{public}@", buf, 0x20u);
  }

  [(NSHashTable *)self->_unfinishedSyncSessions addObject:v7];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  nanoSyncManager = [WeakRetained nanoSyncManager];
  pairedDevice2 = [v7 pairedDevice];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke;
  v22 = &unk_278616020;
  selfCopy = self;
  v24 = v7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HDPairedSyncManager__queue_pairedSyncDidStartWithSession___block_invoke_3;
  v19[3] = &unk_278616020;
  v19[4] = self;
  v18 = v24;
  v20 = v18;
  [nanoSyncManager pairedSyncDidBeginForDevice:pairedDevice2 messagesSentHandler:buf completion:v19];
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(HDPairedSyncManager *)self _typeStringForSyncSession:sessionCopy];
    sessionIdentifier = [sessionCopy sessionIdentifier];
    uUIDString = [sessionIdentifier UUIDString];
    v11 = 138412546;
    v12 = v8;
    v13 = 2114;
    v14 = uUIDString;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%@ %{public}@ was invalidated", &v11, 0x16u);
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    pairedSyncCoordinator = self->_pairedSyncCoordinator;
    v6 = v4;
    syncRestriction = [(PSYSyncCoordinator *)pairedSyncCoordinator syncRestriction];
    v8 = @"limit push";
    if (syncRestriction != 1)
    {
      v8 = 0;
    }

    if (!syncRestriction)
    {
      v8 = @"none";
    }

    v9 = v8;
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "sync restriction changed to %@", &v10, 0xCu);
  }
}

- (id)diagnosticDescription
{
  v25 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  if (self)
  {
    syncRestriction = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator syncRestriction];
    v5 = @"limit push";
    if (syncRestriction != 1)
    {
      v5 = 0;
    }

    if (!syncRestriction)
    {
      v5 = @"none";
    }
  }

  else
  {
    v5 = 0;
  }

  [string appendFormat:@"\n\tSync Restriction: %@", v5];
  allObjects = [(NSHashTable *)self->_unfinishedSyncSessions allObjects];
  if ([allObjects count])
  {
    [string appendFormat:@"\n\tUnfinished Sync Sessions:"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = allObjects;
    obj = allObjects;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          sessionIdentifier = [v11 sessionIdentifier];
          uUIDString = [sessionIdentifier UUIDString];
          v14 = [(HDPairedSyncManager *)self _typeStringForSyncSession:v11];
          pairedDevice = [v11 pairedDevice];
          hd_shortDescription = [pairedDevice hd_shortDescription];
          [string appendFormat:@"\n\t\t%@ (%@): %@", uUIDString, v14, hd_shortDescription];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    allObjects = v18;
  }

  return string;
}

@end