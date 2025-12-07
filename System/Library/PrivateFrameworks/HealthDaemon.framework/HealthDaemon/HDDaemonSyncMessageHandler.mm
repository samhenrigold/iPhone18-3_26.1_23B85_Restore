@interface HDDaemonSyncMessageHandler
- (BOOL)_sendChangesWithError:(uint64_t)error;
- (BOOL)sendCodableChange:(id)change version:(id)version resultAnchor:(int64_t)anchor sequence:(int64_t)sequence done:(BOOL)done error:(id *)error;
- (HDDaemonSyncMessageHandler)initWithSyncEntityClass:(Class)class anchorRange:(HDSyncAnchorRange)range session:(id)session requiredAnchorMap:(id)map;
- (id)description;
- (void)abandonUnsentChangesForError:(id)error;
- (void)dealloc;
@end

@implementation HDDaemonSyncMessageHandler

- (HDDaemonSyncMessageHandler)initWithSyncEntityClass:(Class)class anchorRange:(HDSyncAnchorRange)range session:(id)session requiredAnchorMap:(id)map
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  mapCopy = map;
  v20.receiver = self;
  v20.super_class = HDDaemonSyncMessageHandler;
  v14 = [(HDDaemonSyncMessageHandler *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_syncEntityClass = class;
    v14->_anchorRange.start = start;
    v14->_anchorRange.end = end;
    v14->_lastAnchor = start;
    v14->_currentAnchor = start;
    objc_storeStrong(&v14->_session, session);
    v16 = objc_msgSend_copy(mapCopy);
    requiredAnchorMap = v15->_requiredAnchorMap;
    v15->_requiredAnchorMap = v16;

    v15->_sendChangesStatus = 1;
    v15->_done = 0;
    changes = v15->_changes;
    v15->_changes = 0;

    v15->_accumulatedChangeSetSize = 0;
  }

  return v15;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_changes count])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      changes = self->_changes;
      v5 = v3;
      *buf = 138412546;
      selfCopy = self;
      v9 = 2048;
      v10 = [(NSMutableArray *)changes count];
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "%@ has %ld changes that must be sent prior to deallocation", buf, 0x16u);
    }
  }

  v6.receiver = self;
  v6.super_class = HDDaemonSyncMessageHandler;
  [(HDDaemonSyncMessageHandler *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  shortSessionIdentifier = [(HDSyncSession *)self->_session shortSessionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p %@ %@ %lld -> %lld, %lld>", v4, self, shortSessionIdentifier, self->_syncEntityClass, self->_anchorRange.start, self->_anchorRange.end, self->_currentAnchor];

  return v6;
}

- (BOOL)sendCodableChange:(id)change version:(id)version resultAnchor:(int64_t)anchor sequence:(int64_t)sequence done:(BOOL)done error:(id *)error
{
  doneCopy = done;
  v46 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (self->_done)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDaemonSyncMessageHandler.m" lineNumber:94 description:{@"%@ is already done", self}];
  }

  self->_done = doneCopy;
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    syncEntityClass = self->_syncEntityClass;
    v26 = v15;
    v16 = HDSyncVersionRangeToString(*&version);
    v27 = a2;
    start = self->_anchorRange.start;
    end = self->_anchorRange.end;
    if (doneCopy)
    {
      v19 = "final";
    }

    else
    {
      v19 = "interim";
    }

    *buf = 138545154;
    v31 = syncEntityClass;
    v32 = 2114;
    v33 = v16;
    v34 = 2048;
    v35 = start;
    v36 = 2048;
    v37 = end;
    a2 = v27;
    v38 = 2080;
    v39 = v19;
    v40 = 2048;
    anchorCopy = anchor;
    v42 = 2048;
    v43 = [changeCopy count];
    v44 = 2048;
    sequenceCopy = sequence;
    _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Sync for %{public}@ (Version: %{public}@) from %lld -> %lld produced %s result anchor %lld and %lu objects with sequence %lld.", buf, 0x52u);
  }

  syncAnchorMapLimits = [(HDSyncSession *)self->_session syncAnchorMapLimits];

  if (sequence || self->_currentAnchor != anchor || syncAnchorMapLimits)
  {
    if (self->_anchorRange.end < anchor)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDaemonSyncMessageHandler.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"resultAnchor <= _anchorRange.end"}];
    }

    v29 = changeCopy;
    v21 = HKWithAutoreleasePool();
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"syncObjectsWithStore failed to update result anchor for entity type %@.", self->_syncEntityClass}];
    [(NSMutableArray *)self->_changes removeAllObjects];
    v21 = 0;
  }

  return v21;
}

BOOL __89__HDDaemonSyncMessageHandler_sendCodableChange_version_resultAnchor_sequence_done_error___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 48))
  {
    *(*(a1 + 32) + 80) = *(*(a1 + 32) + 88);
    v4 = [*(*(a1 + 32) + 64) lastObject];
    v5 = [v4 sequenceNumber];
    [v4 setSequenceNumber:objc_msgSend(v5 done:{"longLongValue"), 1}];
  }

  if ([*(a1 + 40) count])
  {
    v6 = [*(*(a1 + 32) + 32) newChangeWithSyncEntityClass:*(*(a1 + 32) + 8) version:*(a1 + 64)];
    v7 = *(a1 + 40);
    v8 = HDSyncAnchorRangeMake(*(*(a1 + 32) + 80), *(a1 + 56));
    [v6 setObjects:v7 syncAnchorRange:v8 requiredAnchorMap:{v9, *(*(a1 + 32) + 40)}];
    [v6 setSequenceNumber:*(a1 + 48) done:*(a1 + 72)];
    if (!*(*(a1 + 32) + 64))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = *(a1 + 32);
      v12 = *(v11 + 64);
      *(v11 + 64) = v10;
    }

    v13 = [v6 encodedByteCount];
    v14 = [*(*(a1 + 32) + 32) maxEncodedBytesPerChangeSetForSyncEntityClass:*(*(a1 + 32) + 8)];
    v15 = *(a1 + 32);
    v16 = *(v15 + 72) + v13;
    if (v16 <= v14)
    {
      *(v15 + 72) = v16;
    }

    else
    {
      if (![(HDDaemonSyncMessageHandler *)v15 _sendChangesWithError:a2])
      {

        return 0;
      }

      *(*(a1 + 32) + 72) = v13;
    }

    [*(*(a1 + 32) + 64) hk_addNonNilObject:v6];
  }

  if (*(a1 + 72) != 1 || (result = [(HDDaemonSyncMessageHandler *)*(a1 + 32) _sendChangesWithError:a2]))
  {
    *(*(a1 + 32) + 88) = *(a1 + 56);
    return 1;
  }

  return result;
}

- (BOOL)_sendChangesWithError:(uint64_t)error
{
  v39 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    return 0;
  }

  if (![*(error + 64) count])
  {
    return 1;
  }

  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = "accumulated";
    if (*(error + 48))
    {
      v5 = "final";
    }

    *buf = 138543618;
    *&buf[4] = error;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempt sending %s changes", buf, 0x16u);
  }

  v6 = *(error + 32);
  v7 = *(error + 64);
  v8 = v6;
  objc_opt_self();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__197;
  v28 = __Block_byref_object_dispose__197;
  v29 = 0;
  v9 = dispatch_semaphore_create(0);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __57__HDDaemonSyncMessageHandler__sendChanges_session_error___block_invoke;
  v35 = &unk_27862E958;
  v37 = &v30;
  v38 = &v24;
  v10 = v9;
  v36 = v10;
  [v8 sendChanges:v7 completion:buf];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v25[5];
  v12 = v11;
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  v15 = v31[3];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  v16 = v13;
  [*(error + 64) removeAllObjects];
  v17 = v15 != 0;
  if (v15)
  {
    if (v15 == 2)
    {
      *(error + 96) = 2;
    }
  }

  else
  {
    v18 = v16;
    if (v13)
    {
      v19 = v18;
      if (a2)
      {
        v20 = v18;
        *a2 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }

      *(error + 96) = 0;
      objc_storeStrong((error + 104), v11);
    }

    else
    {
      *(error + 96) = 0;
      v21 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sending changes failed but did not provide an error."];
      v22 = *(error + 104);
      *(error + 104) = v21;
    }
  }

  return v17;
}

void __57__HDDaemonSyncMessageHandler__sendChanges_session_error___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)abandonUnsentChangesForError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(NSMutableArray *)self->_changes count])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      changes = self->_changes;
      v7 = v5;
      v8 = 138543874;
      selfCopy = self;
      v10 = 2048;
      v11 = [(NSMutableArray *)changes count];
      v12 = 2114;
      v13 = errorCopy;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@ Abandoning %ld due to an error during generation: %{public}@", &v8, 0x20u);
    }

    [(NSMutableArray *)self->_changes removeAllObjects];
  }
}

@end