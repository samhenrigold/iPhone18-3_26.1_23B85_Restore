@interface SOClockTimerObserver
+ (void)initialize;
- (SOClockTimerObserver)init;
- (SOClockTimerObserver)initWithInstanceContext:(id)context;
- (id)_timerSnapshot;
- (void)_beginGroup;
- (void)_consolidateNotifiedFiringTimers;
- (void)_endGroup;
- (void)_enumerateListenersUsingBlock:(id)block;
- (void)_fetchTimersForReason:(id)reason completion:(id)completion;
- (void)_handleFetchTimersForReason:(id)reason error:(id)error completion:(id)completion;
- (void)_handleFetchTimersForReason:(id)reason result:(id)result completion:(id)completion;
- (void)_reset;
- (void)_setUp;
- (void)_tearDown;
- (void)addListener:(id)listener;
- (void)clockItemStorageDidUpdate:(id)update insertedItemIDs:(id)ds updatedItemIDs:(id)iDs deletedItemIDs:(id)itemIDs;
- (void)dealloc;
- (void)firingTimerChanged:(id)changed;
- (void)firingTimerDismissed:(id)dismissed;
- (void)getFiringTimerIDsWithCompletion:(id)completion;
- (void)getTimerSnapshotWithCompletion:(id)completion;
- (void)invalidate;
- (void)removeListener:(id)listener;
- (void)stateReset:(id)reset;
- (void)timerFired:(id)fired;
- (void)timersAdded:(id)added;
- (void)timersChanged:(id)changed;
- (void)timersRemoved:(id)removed;
- (void)timersUpdated:(id)updated;
@end

@implementation SOClockTimerObserver

- (void)_consolidateNotifiedFiringTimers
{
  v24 = *MEMORY[0x277D85DE8];
  itemsByID = [(AFClockItemStorage *)self->_timerStorage itemsByID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke;
  v22[3] = &unk_279C3D410;
  v22[4] = self;
  [itemsByID enumerateKeysAndObjectsUsingBlock:v22];
  if ([(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs count])
  {
    v4 = MEMORY[0x277CBEB98];
    allKeys = [itemsByID allKeys];
    v6 = [v4 setWithArray:allKeys];

    v7 = MEMORY[0x277CBEB58];
    v8 = [(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs set];
    v9 = [v7 setWithSet:v8];

    v16 = v6;
    [v9 minusSet:v6];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          [(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs removeObject:v15];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke_4;
          v17[3] = &unk_279C3D2D0;
          v17[4] = self;
          v17[5] = v15;
          [(SOClockTimerObserver *)self _enumerateListenersUsingBlock:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

void __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isFiring] && (objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v5) & 1) == 0)
  {
    [*(*(a1 + 32) + 72) addObject:v5];
    v7 = *(a1 + 32);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke_2;
    v19 = &unk_279C3D2D0;
    v20 = v7;
    v8 = &v21;
    v21 = v5;
    v9 = &v16;
    goto LABEL_7;
  }

  if (([v6 isFiring] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v5))
  {
    [*(*(a1 + 32) + 72) removeObject:v5];
    v7 = *(a1 + 32);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __56__SOClockTimerObserver__consolidateNotifiedFiringTimers__block_invoke_3;
    v13 = &unk_279C3D2D0;
    v14 = v7;
    v8 = &v15;
    v15 = v5;
    v9 = &v10;
LABEL_7:
    [v7 _enumerateListenersUsingBlock:{v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
  }
}

- (void)_enumerateListenersUsingBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_listeners;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_handleFetchTimersForReason:(id)reason error:(id)error completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  errorCopy = error;
  completionCopy = completion;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v11 = 136315650;
    v12 = "[SOClockTimerObserver _handleFetchTimersForReason:error:completion:]";
    v13 = 2112;
    v14 = reasonCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_error_impl(&dword_26858F000, v10, OS_LOG_TYPE_ERROR, "%s reason = %@, error = %@", &v11, 0x20u);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    completionCopy[2](completionCopy, 0, errorCopy);
  }

LABEL_4:
}

- (void)_handleFetchTimersForReason:(id)reason result:(id)result completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v10 = SOClockTimerCreateFromMTTimers(result);
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[SOClockTimerObserver _handleFetchTimersForReason:result:completion:]";
    v14 = 2112;
    v15 = reasonCopy;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_26858F000, v11, OS_LOG_TYPE_INFO, "%s reason = %@, timers = %@", &v12, 0x20u);
  }

  [(AFClockItemStorage *)self->_timerStorage beginGrouping];
  [(AFClockItemStorage *)self->_timerStorage deleteAllItems];
  [(AFClockItemStorage *)self->_timerStorage insertOrUpdateItems:v10];
  [(AFClockItemStorage *)self->_timerStorage endGroupingWithOptions:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, 0);
  }
}

- (void)_fetchTimersForReason:(id)reason completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[SOClockTimerObserver _fetchTimersForReason:completion:]";
    v29 = 2112;
    v30 = reasonCopy;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  timers = [(SOClockTimerManager *)self->_timerManager timers];
  if (timers)
  {
    v10 = self->_queue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke;
    v22[3] = &unk_279C3D3C0;
    v11 = reasonCopy;
    v23 = v11;
    v12 = v10;
    v24 = v12;
    objc_copyWeak(&v26, buf);
    v13 = completionCopy;
    v25 = v13;
    v14 = [timers addSuccessBlock:v22];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_2;
    v17[3] = &unk_279C3D3E8;
    v18 = v11;
    v15 = v12;
    v19 = v15;
    objc_copyWeak(&v21, buf);
    v20 = v13;
    v16 = [timers addFailureBlock:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v26);
  }

  else
  {
    v15 = [MEMORY[0x277CEF2A0] errorWithCode:2106];
    [(SOClockTimerObserver *)self _handleFetchTimersForReason:reasonCopy error:v15 completion:completionCopy];
  }

  objc_destroyWeak(buf);
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v14 = "[SOClockTimerObserver _fetchTimersForReason:completion:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s reason = %@, result = %@", buf, 0x20u);
  }

  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_26;
  v8[3] = &unk_279C3D398;
  objc_copyWeak(&v12, (a1 + 56));
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v12);
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 136315650;
    v14 = "[SOClockTimerObserver _fetchTimersForReason:completion:]_block_invoke_2";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_error_impl(&dword_26858F000, v4, OS_LOG_TYPE_ERROR, "%s reason = %@, error = %@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_27;
  v8[3] = &unk_279C3D398;
  objc_copyWeak(&v12, (a1 + 56));
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v5, v8);

  objc_destroyWeak(&v12);
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFetchTimersForReason:*(a1 + 32) error:*(a1 + 40) completion:*(a1 + 48)];
}

void __57__SOClockTimerObserver__fetchTimersForReason_completion___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFetchTimersForReason:*(a1 + 32) result:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_reset
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[SOClockTimerObserver _reset]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_notifiedFiringTimerIDs removeAllObjects];
  [(AFClockItemStorage *)self->_timerStorage invalidate];
  if (self->_timerManager)
  {
    v4 = [objc_alloc(MEMORY[0x277CEF1F8]) initWithIdentifier:@"timer observer" delegate:self];
  }

  else
  {
    v4 = 0;
  }

  timerStorage = self->_timerStorage;
  self->_timerStorage = v4;

  if (self->_timerSnapshot)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SOClockTimerObserver__reset__block_invoke;
    v8[3] = &unk_279C3D370;
    v8[4] = self;
    [(SOClockTimerObserver *)self _enumerateListenersUsingBlock:v8];
    timerSnapshot = self->_timerSnapshot;
    self->_timerSnapshot = 0;
  }

  timersChangedToken = self->_timersChangedToken;
  self->_timersChangedToken = 0;
}

- (void)_tearDown
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SOClockTimerObserver _tearDown]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  timerManager = self->_timerManager;
  self->_timerManager = 0;

  [(SOClockTimerObserver *)self _reset];
}

- (void)_setUp
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v37 = "[SOClockTimerObserver _setUp]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  timerSnapshot = self->_timerSnapshot;
  self->_timerSnapshot = 0;

  v5 = [objc_alloc(MEMORY[0x277CEF1F8]) initWithIdentifier:@"timer observer" delegate:self];
  timerStorage = self->_timerStorage;
  self->_timerStorage = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  notifiedFiringTimerIDs = self->_notifiedFiringTimerIDs;
  self->_notifiedFiringTimerIDs = v7;

  v9 = [[SOClockTimerManager alloc] initWithInstanceContext:self->_instanceContext];
  timerManager = self->_timerManager;
  self->_timerManager = v9;

  v11 = self->_timerManager;
  if (v11)
  {
    [(SOClockTimerManager *)v11 checkIn];
    objc_initWeak(buf, self);
    v12 = self->_timerManager;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __30__SOClockTimerObserver__setUp__block_invoke;
    v34[3] = &unk_279C3D348;
    objc_copyWeak(&v35, buf);
    [(SOClockTimerManager *)v12 addHandler:v34 forEvent:1];
    v13 = self->_timerManager;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __30__SOClockTimerObserver__setUp__block_invoke_2;
    v32[3] = &unk_279C3D348;
    objc_copyWeak(&v33, buf);
    [(SOClockTimerManager *)v13 addHandler:v32 forEvent:2];
    v14 = self->_timerManager;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __30__SOClockTimerObserver__setUp__block_invoke_3;
    v30[3] = &unk_279C3D348;
    objc_copyWeak(&v31, buf);
    [(SOClockTimerManager *)v14 addHandler:v30 forEvent:3];
    v15 = self->_timerManager;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __30__SOClockTimerObserver__setUp__block_invoke_4;
    v28[3] = &unk_279C3D348;
    objc_copyWeak(&v29, buf);
    [(SOClockTimerManager *)v15 addHandler:v28 forEvent:4];
    v16 = self->_timerManager;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __30__SOClockTimerObserver__setUp__block_invoke_5;
    v26[3] = &unk_279C3D348;
    objc_copyWeak(&v27, buf);
    [(SOClockTimerManager *)v16 addHandler:v26 forEvent:5];
    v17 = self->_timerManager;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __30__SOClockTimerObserver__setUp__block_invoke_6;
    v24[3] = &unk_279C3D348;
    objc_copyWeak(&v25, buf);
    [(SOClockTimerManager *)v17 addHandler:v24 forEvent:6];
    v18 = self->_timerManager;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __30__SOClockTimerObserver__setUp__block_invoke_7;
    v22[3] = &unk_279C3D348;
    objc_copyWeak(&v23, buf);
    [(SOClockTimerManager *)v18 addHandler:v22 forEvent:8];
    v19 = self->_timerManager;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __30__SOClockTimerObserver__setUp__block_invoke_8;
    v20[3] = &unk_279C3D348;
    objc_copyWeak(&v21, buf);
    [(SOClockTimerManager *)v19 addHandler:v20 forEvent:7];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }
}

void __30__SOClockTimerObserver__setUp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersAdded:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersUpdated:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersRemoved:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timerFired:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained firingTimerChanged:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained firingTimerDismissed:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateReset:v3];
}

void __30__SOClockTimerObserver__setUp__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timersChanged:v3];
}

- (id)_timerSnapshot
{
  timerSnapshot = self->_timerSnapshot;
  if (!timerSnapshot)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SOClockTimerObserver__timerSnapshot__block_invoke;
    v7[3] = &unk_279C3D320;
    v7[4] = self;
    v4 = [MEMORY[0x277CEF208] newWithBuilder:v7];
    v5 = self->_timerSnapshot;
    self->_timerSnapshot = v4;

    timerSnapshot = self->_timerSnapshot;
  }

  return timerSnapshot;
}

void __38__SOClockTimerObserver__timerSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 64);
  v6 = a2;
  [v6 setGeneration:{objc_msgSend(v3, "generation")}];
  v4 = [*(*(a1 + 32) + 64) date];
  [v6 setDate:v4];

  v5 = [*(*(a1 + 32) + 64) itemsByID];
  [v6 setTimersByID:v5];

  [v6 setNotifiedFiringTimerIDs:*(*(a1 + 32) + 72)];
}

- (void)_endGroup
{
  p_timerSnapshotGroup = &self->_timerSnapshotGroup;
  timerSnapshotGroup = self->_timerSnapshotGroup;
  self->_timerSnapshotGroupDepth = p_timerSnapshotGroup[1] - 1;
  dispatch_group_leave(timerSnapshotGroup);
  if (!self->_timerSnapshotGroupDepth)
  {
    v5 = self->_timerSnapshotGroup;
    self->_timerSnapshotGroup = 0;
  }
}

- (void)_beginGroup
{
  timerSnapshotGroup = self->_timerSnapshotGroup;
  if (!timerSnapshotGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_timerSnapshotGroup;
    self->_timerSnapshotGroup = v4;

    timerSnapshotGroup = self->_timerSnapshotGroup;
  }

  dispatch_group_enter(timerSnapshotGroup);
  ++self->_timerSnapshotGroupDepth;
}

- (void)timersChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SOClockTimerObserver_timersChanged___block_invoke;
  v7[3] = &unk_279C3D598;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __38__SOClockTimerObserver_timersChanged___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 136315394;
      v13 = "[SOClockTimerObserver timersChanged:]_block_invoke";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
    }

    v5 = [MEMORY[0x277CCAD78] UUID];
    objc_storeStrong(v2 + 10, v5);
    objc_initWeak(buf, v2);
    v6 = dispatch_time(0, 250000000);
    v7 = *(*(a1 + 32) + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__SOClockTimerObserver_timersChanged___block_invoke_14;
    v9[3] = &unk_279C3D2F8;
    objc_copyWeak(&v11, buf);
    v10 = v5;
    v8 = v5;
    dispatch_after(v6, v7, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __38__SOClockTimerObserver_timersChanged___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 10);
    if (v4)
    {
      if (*(a1 + 32) && [v4 isEqual:?])
      {
        [v3 _beginGroup];
        v5[0] = MEMORY[0x277D85DD0];
        v5[1] = 3221225472;
        v5[2] = __38__SOClockTimerObserver_timersChanged___block_invoke_2;
        v5[3] = &unk_279C3D258;
        v5[4] = v3;
        [v3 _fetchTimersForReason:@"batched changes" completion:v5];
      }
    }
  }
}

uint64_t __38__SOClockTimerObserver_timersChanged___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SOClockTimerObserver timersChanged:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Timer fetch complete for batched changes", &v4, 0xCu);
  }

  return [*(a1 + 32) _endGroup];
}

- (void)stateReset:(id)reset
{
  v12 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[SOClockTimerObserver stateReset:]";
    v10 = 2112;
    v11 = resetCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SOClockTimerObserver_stateReset___block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __35__SOClockTimerObserver_stateReset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reset];
  [*(a1 + 32) _beginGroup];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SOClockTimerObserver_stateReset___block_invoke_2;
  v4[3] = &unk_279C3D258;
  v4[4] = v2;
  return [v2 _fetchTimersForReason:@"state reset" completion:v4];
}

uint64_t __35__SOClockTimerObserver_stateReset___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SOClockTimerObserver stateReset:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Timer fetch complete for state reset", &v4, 0xCu);
  }

  return [*(a1 + 32) _endGroup];
}

- (void)firingTimerDismissed:(id)dismissed
{
  v14 = *MEMORY[0x277D85DE8];
  dismissedCopy = dismissed;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SOClockTimerObserver firingTimerDismissed:]";
    v12 = 2112;
    v13 = dismissedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SOClockTimerObserver_firingTimerDismissed___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = dismissedCopy;
  v7 = dismissedCopy;
  dispatch_async(queue, v8);
}

void __45__SOClockTimerObserver_firingTimerDismissed___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockTimerObserverGetTimerIDsFromTimers(*(a1 + 40));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([*(*(a1 + 32) + 72) containsObject:v10])
        {
          [*(*(a1 + 32) + 72) removeObject:v10];
          v11 = *(a1 + 32);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __45__SOClockTimerObserver_firingTimerDismissed___block_invoke_2;
          v17[3] = &unk_279C3D2D0;
          v17[4] = v11;
          v17[5] = v10;
          [v11 _enumerateListenersUsingBlock:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 64) beginGrouping];
  [*(*(a1 + 32) + 64) insertOrUpdateItems:*(a1 + 40)];
  [*(*(a1 + 32) + 64) endGroupingWithOptions:1];
  [*(a1 + 32) _consolidateNotifiedFiringTimers];
  v12 = [*(a1 + 32) _timerSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__SOClockTimerObserver_firingTimerDismissed___block_invoke_3;
    v14[3] = &unk_279C3D2A8;
    v14[4] = v13;
    v15 = v2;
    v16 = v12;
    [v13 _enumerateListenersUsingBlock:v14];
  }
}

- (void)firingTimerChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SOClockTimerObserver firingTimerChanged:]";
    v12 = 2112;
    v13 = changedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SOClockTimerObserver_firingTimerChanged___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(queue, v8);
}

- (void)timerFired:(id)fired
{
  v14 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SOClockTimerObserver timerFired:]";
    v12 = 2112;
    v13 = firedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SOClockTimerObserver_timerFired___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = firedCopy;
  v7 = firedCopy;
  dispatch_async(queue, v8);
}

void __35__SOClockTimerObserver_timerFired___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockTimerObserverGetTimerIDsFromTimers(*(a1 + 40));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 72) containsObject:v10] & 1) == 0)
        {
          [*(*(a1 + 32) + 72) addObject:v10];
          v11 = *(a1 + 32);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __35__SOClockTimerObserver_timerFired___block_invoke_2;
          v17[3] = &unk_279C3D2D0;
          v17[4] = v11;
          v17[5] = v10;
          [v11 _enumerateListenersUsingBlock:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 64) beginGrouping];
  [*(*(a1 + 32) + 64) insertOrUpdateItems:*(a1 + 40)];
  [*(*(a1 + 32) + 64) endGroupingWithOptions:1];
  [*(a1 + 32) _consolidateNotifiedFiringTimers];
  v12 = [*(a1 + 32) _timerSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__SOClockTimerObserver_timerFired___block_invoke_3;
    v14[3] = &unk_279C3D2A8;
    v14[4] = v13;
    v15 = v2;
    v16 = v12;
    [v13 _enumerateListenersUsingBlock:v14];
  }
}

- (void)timersRemoved:(id)removed
{
  v14 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SOClockTimerObserver timersRemoved:]";
    v12 = 2112;
    v13 = removedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SOClockTimerObserver_timersRemoved___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = removedCopy;
  v7 = removedCopy;
  dispatch_async(queue, v8);
}

void __38__SOClockTimerObserver_timersRemoved___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = _SOClockTimerObserverGetTimerIDsFromTimers(*(a1 + 40));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([*(*(a1 + 32) + 72) containsObject:v10])
        {
          [*(*(a1 + 32) + 72) removeObject:v10];
          v11 = *(a1 + 32);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __38__SOClockTimerObserver_timersRemoved___block_invoke_2;
          v17[3] = &unk_279C3D2D0;
          v17[4] = v11;
          v17[5] = v10;
          [v11 _enumerateListenersUsingBlock:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 64) beginGrouping];
  [*(*(a1 + 32) + 64) deleteItemsWithIDs:v5];
  [*(*(a1 + 32) + 64) endGroupingWithOptions:1];
  [*(a1 + 32) _consolidateNotifiedFiringTimers];
  v12 = [*(a1 + 32) _timerSnapshot];
  if (v2 != v12 && ([v2 isEqual:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__SOClockTimerObserver_timersRemoved___block_invoke_3;
    v14[3] = &unk_279C3D2A8;
    v14[4] = v13;
    v15 = v2;
    v16 = v12;
    [v13 _enumerateListenersUsingBlock:v14];
  }
}

- (void)timersUpdated:(id)updated
{
  v14 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SOClockTimerObserver timersUpdated:]";
    v12 = 2112;
    v13 = updatedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SOClockTimerObserver_timersUpdated___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = updatedCopy;
  v7 = updatedCopy;
  dispatch_async(queue, v8);
}

- (void)timersAdded:(id)added
{
  v14 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SOClockTimerObserver timersAdded:]";
    v12 = 2112;
    v13 = addedCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s timers = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SOClockTimerObserver_timersAdded___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = addedCopy;
  v7 = addedCopy;
  dispatch_async(queue, v8);
}

- (void)clockItemStorageDidUpdate:(id)update insertedItemIDs:(id)ds updatedItemIDs:(id)iDs deletedItemIDs:(id)itemIDs
{
  v25 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  itemIDsCopy = itemIDs;
  if (self->_timerStorage == update)
  {
    dispatch_assert_queue_V2(self->_queue);
    v13 = MEMORY[0x277CEF098];
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[SOClockTimerObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v23 = 2112;
      v24 = dsCopy;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s insertedItemIDs = %@", buf, 0x16u);
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[SOClockTimerObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v23 = 2112;
      v24 = iDsCopy;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s  updatedItemIDs = %@", buf, 0x16u);
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[SOClockTimerObserver clockItemStorageDidUpdate:insertedItemIDs:updatedItemIDs:deletedItemIDs:]";
      v23 = 2112;
      v24 = itemIDsCopy;
      _os_log_impl(&dword_26858F000, v14, OS_LOG_TYPE_INFO, "%s  deletedItemIDs = %@", buf, 0x16u);
    }

    v15 = self->_timerSnapshot;
    timerSnapshot = self->_timerSnapshot;
    self->_timerSnapshot = 0;

    [(SOClockTimerObserver *)self _consolidateNotifiedFiringTimers];
    _timerSnapshot = [(SOClockTimerObserver *)self _timerSnapshot];
    if (v15 != _timerSnapshot && ([(AFClockTimerSnapshot *)v15 isEqual:_timerSnapshot]& 1) == 0)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __96__SOClockTimerObserver_clockItemStorageDidUpdate_insertedItemIDs_updatedItemIDs_deletedItemIDs___block_invoke;
      v18[3] = &unk_279C3D2A8;
      v18[4] = self;
      v19 = v15;
      v20 = _timerSnapshot;
      [(SOClockTimerObserver *)self _enumerateListenersUsingBlock:v18];
    }
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SOClockTimerObserver_invalidate__block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __34__SOClockTimerObserver_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _tearDown];
}

- (void)getFiringTimerIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SOClockTimerObserver_getFiringTimerIDsWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __56__SOClockTimerObserver_getFiringTimerIDsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 72) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getTimerSnapshotWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[SOClockTimerObserver getTimerSnapshotWithCompletion:]";
      _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    v4 = v2[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke_2;
    v7[3] = &unk_279C3D548;
    v7[4] = v2;
    v8 = *(a1 + 40);
    dispatch_group_notify(v3, v4, v7);
  }

  else
  {
    v5 = [v2 _timerSnapshot];
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[SOClockTimerObserver getTimerSnapshotWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_26858F000, v6, OS_LOG_TYPE_INFO, "%s timerSnapshot = %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __55__SOClockTimerObserver_getTimerSnapshotWithCompletion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _timerSnapshot];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[SOClockTimerObserver getTimerSnapshotWithCompletion:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s Notified, timerSnapshot = %@", &v4, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SOClockTimerObserver_removeListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SOClockTimerObserver_addListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)dealloc
{
  [(SOClockTimerObserver *)self _tearDown];
  v3.receiver = self;
  v3.super_class = SOClockTimerObserver;
  [(SOClockTimerObserver *)&v3 dealloc];
}

- (SOClockTimerObserver)initWithInstanceContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = SOClockTimerObserver;
  v5 = [(SOClockTimerObserver *)&v19 init];
  if (v5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SOClockTimerObserver initWithInstanceContext:]";
      _os_log_impl(&dword_26858F000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.assistant.clock-timer-observer", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    if (contextCopy)
    {
      defaultContext = contextCopy;
    }

    else
    {
      defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = defaultContext;

    v13 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    listeners = v5->_listeners;
    v5->_listeners = v13;

    [(SOClockTimerObserver *)v5 _beginGroup];
    v15 = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SOClockTimerObserver_initWithInstanceContext___block_invoke;
    block[3] = &unk_279C3D280;
    v18 = v5;
    dispatch_async(v15, block);
  }

  return v5;
}

void __48__SOClockTimerObserver_initWithInstanceContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUp];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SOClockTimerObserver_initWithInstanceContext___block_invoke_2;
  v3[3] = &unk_279C3D258;
  v4 = v2;
  [v4 _fetchTimersForReason:@"initial" completion:v3];
}

uint64_t __48__SOClockTimerObserver_initWithInstanceContext___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SOClockTimerObserver initWithInstanceContext:]_block_invoke_2";
    _os_log_impl(&dword_26858F000, v2, OS_LOG_TYPE_INFO, "%s Initial timer fetch completed", &v4, 0xCu);
  }

  return [*(a1 + 32) _endGroup];
}

- (SOClockTimerObserver)init
{
  currentContext = [MEMORY[0x277CEF2C8] currentContext];
  v4 = [(SOClockTimerObserver *)self initWithInstanceContext:currentContext];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    +[SOClockTimerManager warmUp];
  }
}

@end