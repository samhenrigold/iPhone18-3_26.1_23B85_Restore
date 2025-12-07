@interface NPKPassesManager
- (BOOL)shouldAllowMovingItemAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (NPKPassesManager)initWithOptions:(unint64_t)options;
- (id)defaultPaymentPass;
- (id)passForUniqueID:(id)d;
- (void)_didFinishLoadPasses;
- (void)_handleObjectSettingsChanged:(id)changed;
- (void)_loadContentAndImageSetsForAllPassesIfNecessaryWithCompletion:(id)completion;
- (void)_loadContentAndImageSetsForPass:(id)pass completion:(id)completion;
- (void)_loadContentAndImageSetsIfNecessaryForPasses:(id)passes completion:(id)completion;
- (void)_loadPasses;
- (void)_notifyObservers:(id)observers;
- (void)_registerGroupControllerGroupObserver;
- (void)_reloadPassesWithCompletion:(id)completion;
- (void)_updateCurrentPasses;
- (void)dealloc;
- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index;
- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)group:(id)group didUpdatePassState:(id)state forPass:(id)pass atIndex:(unint64_t)index;
- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index;
- (void)groupsController:(id)controller didMoveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)groupsController:(id)controller didRemoveGroup:(id)group atIndex:(unint64_t)index;
- (void)movePassAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)registerObserver:(id)observer;
- (void)reloadPassesWithCompletion:(id)completion;
- (void)removePass:(id)pass;
- (void)setDefaultPaymentPass:(id)pass;
- (void)unarchivePass:(id)pass;
- (void)unregisterObserver:(id)observer;
@end

@implementation NPKPassesManager

- (NPKPassesManager)initWithOptions:(unint64_t)options
{
  v23.receiver = self;
  v23.super_class = NPKPassesManager;
  v4 = [(NPKPassesManager *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v5->_observers;
    v5->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v8 = [NPKStandaloneFirstUnlockCoordinator alloc];
    v9 = [(NPKStandaloneFirstUnlockCoordinator *)v8 initWithQueue:MEMORY[0x277D85CD0]];
    firstUnlockCoordinator = v5->_firstUnlockCoordinator;
    v5->_firstUnlockCoordinator = v9;

    v11 = dispatch_queue_create("com.apple.nanoPassKit.NPKPassesManager.imageProcessing", 0);
    loadImageQueue = v5->_loadImageQueue;
    v5->_loadImageQueue = v11;

    objc_initWeak(&location, v5);
    v13 = v5->_firstUnlockCoordinator;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36__NPKPassesManager_initWithOptions___block_invoke;
    v19[3] = &unk_279945240;
    objc_copyWeak(&v21, &location);
    v14 = v5;
    v20 = v14;
    [(NPKStandaloneFirstUnlockCoordinator *)v13 performSubjectToFirstUnlock:v19];
    v14[4] = -1;
    uTF8String = [*MEMORY[0x277D385C8] UTF8String];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __36__NPKPassesManager_initWithOptions___block_invoke_62;
    v17[3] = &unk_279944F20;
    objc_copyWeak(&v18, &location);
    notify_register_dispatch(uTF8String, v14 + 4, MEMORY[0x277D85CD0], v17);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __36__NPKPassesManager_initWithOptions___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__NPKPassesManager_initWithOptions___block_invoke_2;
  v2[3] = &unk_279945240;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __36__NPKPassesManager_initWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    PKObservePassSettingsChanged();
    v2 = objc_alloc_init(MEMORY[0x277D37FC0]);
    v3 = [objc_alloc(MEMORY[0x277D37EF0]) initWithPassLibrary:v2];
    [v3 setDelegate:WeakRetained];
    v4 = WeakRetained[4];
    WeakRetained[4] = v3;

    v6 = pk_Payment_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Passes manager: Loading passes following first unlock", v10, 2u);
      }
    }

    [WeakRetained _loadPasses];
  }
}

void __36__NPKPassesManager_initWithOptions___block_invoke_62(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = pk_Payment_log(WeakRetained);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Passes manager: Reloading passes because default payment pass is changed", v7, 2u);
      }
    }

    [v2 _reloadPasses];
  }
}

- (void)dealloc
{
  PKUnregisterPassSettingsChangedObserver();
  if (notify_is_valid_token(self->_notifyToken))
  {
    notify_cancel(self->_notifyToken);
  }

  v3.receiver = self;
  v3.super_class = NPKPassesManager;
  [(NPKPassesManager *)&v3 dealloc];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v6;
    if (!v5)
    {
      [(NSHashTable *)self->_observers addObject:v6];
      observerCopy = v6;
    }
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v6;
    if (v5)
    {
      [(NSHashTable *)self->_observers removeObject:v6];
      observerCopy = v6;
    }
  }
}

- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  groupCopy = group;
  v10 = pk_General_log(groupCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = groupCopy;
      v23 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Groups controller inserted group %@ at index %lu", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  passes = [groupCopy passes];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NPKPassesManager_groupsController_didInsertGroup_atIndex___block_invoke;
  v17[3] = &unk_279945290;
  objc_copyWeak(&v20, buf);
  v15 = groupCopy;
  v18 = v15;
  v16 = passes;
  v19 = v16;
  [(NPKPassesManager *)self _loadContentAndImageSetsIfNecessaryForPasses:v16 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __60__NPKPassesManager_groupsController_didInsertGroup_atIndex___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] addGroupObserver:WeakRetained];
    [WeakRetained _updateCurrentPasses];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __60__NPKPassesManager_groupsController_didInsertGroup_atIndex___block_invoke_2;
    v3[3] = &unk_279945268;
    v3[4] = WeakRetained;
    v4 = a1[5];
    [WeakRetained _notifyObservers:v3];
  }
}

- (void)groupsController:(id)controller didMoveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v21 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v10 = pk_General_log(groupCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = groupCopy;
      v17 = 2048;
      indexCopy = index;
      v19 = 2048;
      toIndexCopy = toIndex;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Groups controller moved group %@ from index %lu to index %lu", buf, 0x20u);
    }
  }

  [(NPKPassesManager *)self _updateCurrentPasses];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__NPKPassesManager_groupsController_didMoveGroup_fromIndex_toIndex___block_invoke;
  v14[3] = &unk_2799452B8;
  v14[4] = self;
  [(NPKPassesManager *)self _notifyObservers:v14];
}

- (void)groupsController:(id)controller didRemoveGroup:(id)group atIndex:(unint64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v8 = pk_General_log(groupCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = groupCopy;
      v17 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Groups controller removed group %@ at index %lu", buf, 0x16u);
    }
  }

  [(NPKPassesManager *)self _updateCurrentPasses];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__NPKPassesManager_groupsController_didRemoveGroup_atIndex___block_invoke;
  v13[3] = &unk_279945268;
  v13[4] = self;
  v14 = groupCopy;
  v12 = groupCopy;
  [(NPKPassesManager *)self _notifyObservers:v13];
}

void __60__NPKPassesManager_groupsController_didRemoveGroup_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 passes];
  [v4 passesDataSource:v2 didRemovePasses:v5];
}

- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  v37 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  passCopy = pass;
  stateCopy = state;
  v13 = pk_General_log(stateCopy);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      localizedDescription = [passCopy localizedDescription];
      *buf = 138413314;
      v28 = groupCopy;
      v29 = 2112;
      v30 = uniqueID;
      v31 = 2112;
      v32 = localizedDescription;
      v33 = 2112;
      v34 = stateCopy;
      v35 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Group %@ inserted pass %@ (%@) with state (%@) at index %lu", buf, 0x34u);
    }
  }

  objc_initWeak(buf, self);
  if (passCopy)
  {
    v26 = passCopy;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__NPKPassesManager_group_didInsertPass_withState_atIndex___block_invoke;
  v22[3] = &unk_279945290;
  objc_copyWeak(&v25, buf);
  v20 = v19;
  v23 = v20;
  v21 = passCopy;
  v24 = v21;
  [(NPKPassesManager *)self _loadContentAndImageSetsIfNecessaryForPasses:v20 completion:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __58__NPKPassesManager_group_didInsertPass_withState_atIndex___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateCurrentPasses];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__NPKPassesManager_group_didInsertPass_withState_atIndex___block_invoke_2;
    v5[3] = &unk_279945268;
    v5[4] = v3;
    v6 = a1[4];
    [v3 _notifyObservers:v5];
    v4 = NPKIsTruthOnCard(a1[5]);
    NPKTrackTruthOnCard(v4);
  }
}

- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v20 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v9 = pk_General_log(groupCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = groupCopy;
      v16 = 2048;
      indexCopy = index;
      v18 = 2048;
      toIndexCopy = toIndex;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Group %@ moved pass from index %lu to index %lu", buf, 0x20u);
    }
  }

  [(NPKPassesManager *)self _updateCurrentPasses];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__NPKPassesManager_group_didMovePassFromIndex_toIndex___block_invoke;
  v13[3] = &unk_2799452B8;
  v13[4] = self;
  [(NPKPassesManager *)self _notifyObservers:v13];
}

- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index
{
  v27 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  passCopy = pass;
  v10 = pk_General_log(passCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      localizedDescription = [passCopy localizedDescription];
      *buf = 138413058;
      v20 = groupCopy;
      v21 = 2112;
      v22 = uniqueID;
      v23 = 2112;
      v24 = localizedDescription;
      v25 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Group %@ removed pass %@ (%@) at index %lu", buf, 0x2Au);
    }
  }

  [(NPKPassesManager *)self _updateCurrentPasses];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__NPKPassesManager_group_didRemovePass_atIndex___block_invoke;
  v17[3] = &unk_279945268;
  v17[4] = self;
  v18 = passCopy;
  v16 = passCopy;
  [(NPKPassesManager *)self _notifyObservers:v17];
}

void __48__NPKPassesManager_group_didRemovePass_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v4 passesDataSource:v2 didRemovePasses:{v5, v6, v7}];
}

- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  v35 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  passCopy = pass;
  stateCopy = state;
  v13 = pk_General_log(stateCopy);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      localizedDescription = [passCopy localizedDescription];
      *buf = 138413314;
      v26 = groupCopy;
      v27 = 2112;
      v28 = uniqueID;
      v29 = 2112;
      v30 = localizedDescription;
      v31 = 2112;
      v32 = stateCopy;
      v33 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Group %@ updated pass %@ (%@) with state (%@) at index %lu", buf, 0x34u);
    }
  }

  objc_initWeak(buf, self);
  if (passCopy)
  {
    v24 = passCopy;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__NPKPassesManager_group_didUpdatePass_withState_atIndex___block_invoke;
  v21[3] = &unk_279945240;
  objc_copyWeak(&v23, buf);
  v20 = v19;
  v22 = v20;
  [(NPKPassesManager *)self _loadContentAndImageSetsIfNecessaryForPasses:v20 completion:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

void __58__NPKPassesManager_group_didUpdatePass_withState_atIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateCurrentPasses];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__NPKPassesManager_group_didUpdatePass_withState_atIndex___block_invoke_2;
    v4[3] = &unk_279945268;
    v4[4] = v3;
    v5 = *(a1 + 32);
    [v3 _notifyObservers:v4];
  }
}

- (void)group:(id)group didUpdatePassState:(id)state forPass:(id)pass atIndex:(unint64_t)index
{
  v39 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  stateCopy = state;
  passCopy = pass;
  v13 = pk_General_log(passCopy);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      localizedDescription = [passCopy localizedDescription];
      *buf = 138413314;
      v30 = groupCopy;
      v31 = 2112;
      v32 = stateCopy;
      v33 = 2112;
      v34 = uniqueID;
      v35 = 2112;
      v36 = localizedDescription;
      v37 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Group %@ updated state (%@) for pass %@ (%@) at index %lu", buf, 0x34u);
    }
  }

  objc_initWeak(buf, self);
  if (passCopy)
  {
    v28 = passCopy;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__NPKPassesManager_group_didUpdatePassState_forPass_atIndex___block_invoke;
  v23[3] = &unk_279945308;
  objc_copyWeak(&v27, buf);
  v20 = passCopy;
  v24 = v20;
  v21 = stateCopy;
  v25 = v21;
  v22 = v19;
  v26 = v22;
  [(NPKPassesManager *)self _loadContentAndImageSetsIfNecessaryForPasses:v22 completion:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

void __61__NPKPassesManager_group_didUpdatePassState_forPass_atIndex___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateCurrentPasses];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __61__NPKPassesManager_group_didUpdatePassState_forPass_atIndex___block_invoke_2;
    v4[3] = &unk_2799452E0;
    v5 = a1[4];
    v6 = a1[5];
    v7 = v3;
    v8 = a1[6];
    [v3 _notifyObservers:v4];
  }
}

void __61__NPKPassesManager_group_didUpdatePassState_forPass_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) uniqueID];
    if (v4 && *(a1 + 40))
    {
      v5 = [*(a1 + 32) uniqueID];
      v6 = *(a1 + 40);
      v8 = v5;
      v9[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      v7 = MEMORY[0x277CBEC10];
    }

    [v3 passesDataSource:*(a1 + 48) didUpdateStates:v7 forPasses:*(a1 + 56)];
  }
}

- (id)passForUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  passes = [(NPKPassesManager *)self passes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__NPKPassesManager_passForUniqueID___block_invoke;
  v9[3] = &unk_279945330;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [passes enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __36__NPKPassesManager_passForUniqueID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)shouldAllowMovingItemAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  passes = [(NPKPassesManager *)self passes];
  if ([passes count] <= index || objc_msgSend(passes, "count") <= toIndex)
  {
    v16 = 0;
  }

  else
  {
    v8 = [passes objectAtIndex:index];
    v9 = [passes objectAtIndex:toIndex];
    groupsController = self->_groupsController;
    uniqueID = [v8 uniqueID];
    v12 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:uniqueID];
    v13 = self->_groupsController;
    uniqueID2 = [v9 uniqueID];
    v15 = [(PKGroupsController *)v13 groupIndexForPassUniqueID:uniqueID2];

    if (v12 == v15 || (v17 = self->_groupsController, [v9 uniqueID], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[PKGroupsController groupIndexForPassUniqueID:](v17, "groupIndexForPassUniqueID:", v18), v18, v19 != 0x7FFFFFFFFFFFFFFFLL) && ((-[PKGroupsController groupAtIndex:](self->_groupsController, "groupAtIndex:", v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "passAtIndex:", 0), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "passAtIndex:", objc_msgSend(v20, "passCount") - 1), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "uniqueID"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueID"), v23 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v22, "isEqualToString:", v23), v23, v22, objc_msgSend(v21, "uniqueID"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueID"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqualToString:", v25), v25, v24, v21, v33, v20, toIndex <= index) ? (v27 = v32) : (v27 = v26), v27 != 1) || objc_msgSend(v8, "passType") == 1 && objc_msgSend(v9, "passType") == 1 && objc_msgSend(v8, "style") != 7 && objc_msgSend(v9, "style") == 7)
    {
      v16 = 0;
    }

    else
    {
      passType = [v8 passType];
      if ((toIndex > index || passType != 1) && ((v29 = [v8 passType], toIndex <= index) || v29 == 1))
      {
        passType2 = [v9 passType];
        v16 = passType2 == [v8 passType];
      }

      else
      {
        v16 = 1;
      }
    }
  }

  return v16;
}

- (void)movePassAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v37 = *MEMORY[0x277D85DE8];
  passes = [(NPKPassesManager *)self passes];
  v8 = [passes objectAtIndexedSubscript:index];

  passes2 = [(NPKPassesManager *)self passes];
  v10 = [passes2 objectAtIndexedSubscript:toIndex];

  groupsController = [(NPKPassesManager *)self groupsController];
  uniqueID = [v8 uniqueID];
  v13 = [groupsController groupIndexForPassUniqueID:uniqueID];

  groupsController2 = [(NPKPassesManager *)self groupsController];
  uniqueID2 = [v10 uniqueID];
  v16 = [groupsController2 groupIndexForPassUniqueID:uniqueID2];

  v18 = pk_Payment_log(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x7FFFFFFFFFFFFFFFLL || v13 == v16)
  {
    if (v19)
    {
      v24 = pk_Payment_log(v20);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [v8 uniqueID];
        *buf = 138413314;
        v28 = uniqueID3;
        v29 = 2048;
        indexCopy2 = index;
        v31 = 2048;
        toIndexCopy2 = toIndex;
        v33 = 2048;
        v34 = v13;
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Warning: Not supported pass move. Pass %@ at index %lu to %lu (from group index %lu, to group index %lu)", buf, 0x34u);
      }
    }
  }

  else
  {
    if (v19)
    {
      v21 = pk_Payment_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID4 = [v8 uniqueID];
        *buf = 138413314;
        v28 = uniqueID4;
        v29 = 2048;
        indexCopy2 = index;
        v31 = 2048;
        toIndexCopy2 = toIndex;
        v33 = 2048;
        v34 = v13;
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: Moving pass %@ at index %lu to %lu (from group index %lu, to group index %lu)", buf, 0x34u);
      }
    }

    groupsController3 = [(NPKPassesManager *)self groupsController];
    [groupsController3 moveGroupAtIndex:v13 toIndex:v16];

    [(NPKPassesManager *)self _updateCurrentPasses];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __44__NPKPassesManager_movePassAtIndex_toIndex___block_invoke;
    v26[3] = &unk_2799452B8;
    v26[4] = self;
    [(NPKPassesManager *)self _notifyObservers:v26];
  }
}

- (void)unarchivePass:(id)pass
{
  passCopy = pass;
  objc_initWeak(&location, self);
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  uniqueID = [passCopy uniqueID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__NPKPassesManager_unarchivePass___block_invoke;
  v8[3] = &unk_279945358;
  v7 = passCopy;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [mEMORY[0x277D37FC0] setSortingState:2 forObjectWithUniqueID:uniqueID withCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__NPKPassesManager_unarchivePass___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) uniqueID];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass with unique id:%@ was manually recovered successfully", &v11, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _reloadPasses];
LABEL_7:

    return;
  }

  if (v5)
  {
    WeakRetained = pk_General_log(v6);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) uniqueID];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_25B300000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Warning: Pass with unique id:%@ failed to be manually recovered", &v11, 0xCu);
    }

    goto LABEL_7;
  }
}

- (void)removePass:(id)pass
{
  passCopy = pass;
  groupsController = [(NPKPassesManager *)self groupsController];
  uniqueID = [passCopy uniqueID];

  [groupsController handleUserPassDelete:uniqueID];
}

- (void)setDefaultPaymentPass:(id)pass
{
  v3 = MEMORY[0x277D380F0];
  passCopy = pass;
  v6 = objc_alloc_init(v3);
  uniqueID = [passCopy uniqueID];

  [v6 setDefaultPaymentPassUniqueIdentifier:uniqueID];
}

- (id)defaultPaymentPass
{
  currentPasses = [(NPKPassesManager *)self currentPasses];
  firstObject = [currentPasses firstObject];
  secureElementPass = [firstObject secureElementPass];

  if (secureElementPass && [secureElementPass npkIsDefaultPassEligible])
  {
    v5 = secureElementPass;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reloadPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NPKPassesManager_reloadPassesWithCompletion___block_invoke;
  v6[3] = &unk_279945380;
  v7 = completionCopy;
  v5 = completionCopy;
  [(NPKPassesManager *)self _reloadPassesWithCompletion:v6];
}

uint64_t __47__NPKPassesManager_reloadPassesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateCurrentPasses
{
  v48 = *MEMORY[0x277D85DE8];
  [(NPKPassesManager *)self setCurrentPasses:0];
  [(NPKPassesManager *)self setCurrentPaymentPasses:0];
  [(NPKPassesManager *)self setCurrentSecureElementPasses:0];
  [(NPKPassesManager *)self setCurrentExpiredPasses:0];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  if (NPKIsRunningInStoreDemoMode(array4, v7))
  {
    v8 = NPKIsPaymentSetupSupportedInRegion() != 2;
  }

  else
  {
    v8 = 1;
  }

  groupsController = [(NPKPassesManager *)self groupsController];
  groups = [groupsController groups];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __40__NPKPassesManager__updateCurrentPasses__block_invoke;
  v34[3] = &unk_2799453F8;
  v39 = v8;
  v11 = array3;
  v35 = v11;
  v12 = array2;
  v36 = v12;
  v13 = array;
  v37 = v13;
  v14 = array4;
  v38 = v14;
  [groups enumerateObjectsUsingBlock:v34];

  v15 = [v12 arrayByAddingObjectsFromArray:v13];
  v16 = [v15 arrayByAddingObjectsFromArray:v14];
  [(NPKPassesManager *)self setCurrentPasses:v16];

  v17 = [v12 copy];
  [(NPKPassesManager *)self setCurrentPaymentPasses:v17];

  v18 = [v11 copy];
  [(NPKPassesManager *)self setCurrentSecureElementPasses:v18];

  groupsController2 = [(NPKPassesManager *)self groupsController];
  expiredSectionPasses = [groupsController2 expiredSectionPasses];
  v21 = [expiredSectionPasses sortedArrayUsingComparator:&__block_literal_global_0];
  [(NPKPassesManager *)self setCurrentExpiredPasses:v21];

  v23 = pk_General_log(v22);
  LODWORD(expiredSectionPasses) = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (expiredSectionPasses)
  {
    v25 = pk_General_log(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      currentPasses = [(NPKPassesManager *)self currentPasses];
      v32 = [currentPasses count];
      currentPaymentPasses = [(NPKPassesManager *)self currentPaymentPasses];
      v27 = [currentPaymentPasses count];
      currentSecureElementPasses = [(NPKPassesManager *)self currentSecureElementPasses];
      v29 = [currentSecureElementPasses count];
      currentExpiredPasses = [(NPKPassesManager *)self currentExpiredPasses];
      v31 = [currentExpiredPasses count];
      *buf = 134218752;
      v41 = v32;
      v42 = 2048;
      v43 = v27;
      v44 = 2048;
      v45 = v29;
      v46 = 2048;
      v47 = v31;
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Updated passes with %lu passes, %lu payment styled passes, %lu se passes and %lu expired passes.", buf, 0x2Au);
    }
  }
}

void __40__NPKPassesManager__updateCurrentPasses__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passes];
  v5 = [v4 firstObject];

  if ([v5 style] == 6)
  {
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 secureElementPass];

  if ((v6 & 1) != 0 || v7)
  {
    v12 = v7 != 0;
    v13 = v6 & 1;
    v14 = [v3 passes];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__NPKPassesManager__updateCurrentPasses__block_invoke_2;
    v19[3] = &unk_2799453A8;
    v9 = &v20;
    v20 = v3;
    v24 = v12;
    v10 = &v21;
    v21 = *(a1 + 32);
    v25 = v13;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v15 = v3;
    [v14 enumerateObjectsWithOptions:2 usingBlock:v19];

    v8 = v22;
  }

  else
  {
    v8 = [v3 passes];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__NPKPassesManager__updateCurrentPasses__block_invoke_3;
    v16[3] = &unk_2799453D0;
    v9 = &v17;
    v17 = v3;
    v10 = &v18;
    v18 = *(a1 + 56);
    v11 = v3;
    [v8 enumerateObjectsUsingBlock:v16];
  }
}

void __40__NPKPassesManager__updateCurrentPasses__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(a1 + 32) passAtIndex:?];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 40) insertObject:v7 atIndex:0];
  }

  v5 = *(a1 + 65);
  if (v5 == 1)
  {
    [*(a1 + 48) insertObject:v7 atIndex:0];
    v5 = *(a1 + 65);
  }

  if (!v5 && *(a1 + 64) == 1)
  {
    [*(a1 + 56) insertObject:v7 atIndex:0];
  }

  v6 = [*(a1 + 32) stateAtIndex:a3];
  [v7 npkSetPassDynamicState:v6];
}

void __40__NPKPassesManager__updateCurrentPasses__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) passAtIndex:?];
  [*(a1 + 40) safelyAddObject:v6];
  v5 = [*(a1 + 32) stateAtIndex:a3];
  [v6 npkSetPassDynamicState:v5];
}

- (void)_registerGroupControllerGroupObserver
{
  v15 = *MEMORY[0x277D85DE8];
  groupsController = [(NPKPassesManager *)self groupsController];
  groups = [groupsController groups];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = groups;
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

        [*(*(&v10 + 1) + 8 * v9++) addGroupObserver:{self, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_loadPasses
{
  objc_initWeak(&location, self);
  groupsController = self->_groupsController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NPKPassesManager__loadPasses__block_invoke;
  v4[3] = &unk_279945030;
  objc_copyWeak(&v5, &location);
  [(PKGroupsController *)groupsController loadGroupsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __31__NPKPassesManager__loadPasses__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[80])
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __31__NPKPassesManager__loadPasses__block_invoke_2;
      v4[3] = &unk_279944F98;
      v4[4] = WeakRetained;
      [WeakRetained _loadContentAndImageSetsForAllPassesIfNecessaryWithCompletion:v4];
    }

    else
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __31__NPKPassesManager__loadPasses__block_invoke_3;
      v3[3] = &unk_279944F98;
      v3[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], v3);
    }

    [v2 _registerGroupControllerGroupObserver];
  }
}

- (void)_loadContentAndImageSetsForAllPassesIfNecessaryWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  groups = [(PKGroupsController *)self->_groupsController groups];
  v7 = [groups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(groups);
        }

        passes = [*(*(&v12 + 1) + 8 * v10) passes];
        [v5 addObjectsFromArray:passes];

        ++v10;
      }

      while (v8 != v10);
      v8 = [groups countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NPKPassesManager *)self _loadContentAndImageSetsIfNecessaryForPasses:v5 completion:completionCopy];
}

- (void)_loadContentAndImageSetsIfNecessaryForPasses:(id)passes completion:(id)completion
{
  passesCopy = passes;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_options)
  {
    v9 = dispatch_group_create();
    v10 = (LOBYTE(self->_options) >> 2) & 1;
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__NPKPassesManager__loadContentAndImageSetsIfNecessaryForPasses_completion___block_invoke;
    v14[3] = &unk_279945440;
    objc_copyWeak(&v16, &location);
    v17 = v10;
    v11 = v9;
    v15 = v11;
    [passesCopy enumerateObjectsUsingBlock:v14];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__NPKPassesManager__loadContentAndImageSetsIfNecessaryForPasses_completion___block_invoke_3;
    block[3] = &unk_279945198;
    v13 = v8;
    dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __76__NPKPassesManager__loadContentAndImageSetsIfNecessaryForPasses_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 48);
    if (v5 == 1)
    {
      dispatch_group_enter(*(a1 + 32));
      LOBYTE(v5) = *(a1 + 48);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__NPKPassesManager__loadContentAndImageSetsIfNecessaryForPasses_completion___block_invoke_2;
    v6[3] = &unk_279944FC0;
    v8 = v5;
    v7 = *(a1 + 32);
    [WeakRetained _loadContentAndImageSetsForPass:v3 completion:v6];
  }
}

void __76__NPKPassesManager__loadContentAndImageSetsIfNecessaryForPasses_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

uint64_t __76__NPKPassesManager__loadContentAndImageSetsIfNecessaryForPasses_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_didFinishLoadPasses
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Passes manager: All passes loaded.", buf, 2u);
    }
  }

  [(NPKPassesManager *)self _updateCurrentPasses];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__NPKPassesManager__didFinishLoadPasses__block_invoke;
  v8[3] = &unk_2799452B8;
  v8[4] = self;
  [(NPKPassesManager *)self _notifyObservers:v8];
}

- (void)_reloadPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  groupsController = self->_groupsController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NPKPassesManager__reloadPassesWithCompletion___block_invoke;
  v7[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(PKGroupsController *)groupsController reloadGroupsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__NPKPassesManager__reloadPassesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _updateCurrentPasses];
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v5 currentPasses];
      (*(v3 + 16))(v3, v4);
    }

    [v5 _registerGroupControllerGroupObserver];
    WeakRetained = v5;
  }
}

- (void)_loadContentAndImageSetsForPass:(id)pass completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  completionCopy = completion;
  uniqueID = [passCopy uniqueID];
  array = [MEMORY[0x277CBEB18] array];
  if ([passCopy style] == 6 || (objc_msgSend(passCopy, "displayProfile"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasBackgroundImage"), v8, v9))
  {
    [array addObject:&unk_286CE75A0];
  }

  if ([passCopy npkUsesDynamicView])
  {
    [array addObject:&unk_286CE75B8];
  }

  [array addObject:&unk_286CE75D0];
  if (NPKIsValidVASPass(passCopy))
  {
    [array addObject:&unk_286CE75E8];
  }

  v10 = dispatch_group_create();
  objc_initWeak(&location, self);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = array;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v11)
  {
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        integerValue = [v14 integerValue];
        v16 = pk_Payment_log(integerValue);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

        if (v17)
        {
          v19 = pk_Payment_log(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v49 = integerValue;
            v50 = 2112;
            v51 = uniqueID;
            _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Loading image set type %ld for pass with unique ID %@", buf, 0x16u);
          }
        }

        dispatch_group_enter(v10);
        integerValue2 = [v14 integerValue];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke;
        v38[3] = &unk_2799454B8;
        objc_copyWeak(v42, &location);
        v21 = passCopy;
        v39 = v21;
        v42[1] = integerValue;
        v40 = uniqueID;
        v41 = v10;
        [v21 loadImageSetAsync:integerValue2 preheat:1 withCompletion:v38];

        objc_destroyWeak(v42);
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v11);
  }

  v23 = pk_Payment_log(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (v24)
  {
    v26 = pk_Payment_log(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = uniqueID;
      _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Loading content for pass with unique ID %@", buf, 0xCu);
    }
  }

  dispatch_group_enter(v10);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke_87;
  v35[3] = &unk_2799454E0;
  v27 = uniqueID;
  v36 = v27;
  v28 = v10;
  v37 = v28;
  [passCopy loadContentAsyncWithCompletion:v35];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke_88;
  block[3] = &unk_279945198;
  v34 = completionCopy;
  v29 = completionCopy;
  dispatch_group_notify(v28, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&location);
}

void __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke_2;
    block[3] = &unk_279945490;
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v8 = v5;
    v12 = v6;
    v9 = *(a1 + 40);
    v10 = v3;
    v11 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isImageSetLoaded:*(a1 + 64)];
  v3 = v2;
  v4 = pk_Payment_log(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 64);
        v9 = *(a1 + 40);
        v27 = 134218242;
        v28 = v8;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Finished loading image set %ld for pass with unique ID %@", &v27, 0x16u);
      }
    }

    if ((*(*(a1 + 48) + 80) & 2) != 0)
    {
      v10 = [*(a1 + 32) imageSetLoadedIfNeeded:*(a1 + 64)];
      v11 = [v10 conformsToProtocol:&unk_286D2CFA8];
      v12 = v11;
      v13 = pk_Payment_log(v11);
      v14 = v13;
      if (v12)
      {
        v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v15)
        {
          v17 = pk_Payment_log(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 64);
            v19 = *(a1 + 40);
            v27 = 134218242;
            v28 = v18;
            v29 = 2112;
            v30 = v19;
            _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Memory-mapping %ld image set for pass with unique ID %@", &v27, 0x16u);
          }
        }

        [v10 memoryMapImageData];
      }

      else
      {
        v22 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

        if (v22)
        {
          v24 = pk_Payment_log(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = *(a1 + 64);
            v26 = *(a1 + 40);
            v27 = 134218242;
            v28 = v25;
            v29 = 2112;
            v30 = v26;
            _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEBUG, "Debug: Not memory-mapping %ld image set for pass with unique ID %@; does not conform to NPKMemoryMappableImageSet", &v27, 0x16u);
          }
        }
      }

LABEL_20:
    }
  }

  else if (v5)
  {
    v10 = pk_Payment_log(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 64);
      v21 = *(a1 + 40);
      v27 = 134218242;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Attempt to load image set %ld for pass with unique ID %@ was unsuccessful!", &v27, 0x16u);
    }

    goto LABEL_20;
  }

  dispatch_group_leave(*(a1 + 56));
}

void __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke_87(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Finished loading content for pass with unique ID %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __63__NPKPassesManager__loadContentAndImageSetsForPass_completion___block_invoke_88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_notifyObservers:(id)observers
{
  v15 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_handleObjectSettingsChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NPKPassesManager__handleObjectSettingsChanged___block_invoke;
  v6[3] = &unk_2799454E0;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __49__NPKPassesManager__handleObjectSettingsChanged___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D38760]];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D38758]];
  v5 = [v4 unsignedIntegerValue];

  v6 = [*(a1 + 40) passForUniqueID:v3];
  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Got object settings changed to %u for pass (%@) with unique ID %@", buf, 0x1Cu);
    }
  }

  if (v6)
  {
    [v6 setSettingsWithoutUpdatingDataAccessor:v5];
    v11 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__NPKPassesManager__handleObjectSettingsChanged___block_invoke_89;
    v12[3] = &unk_279945268;
    v12[4] = v11;
    v13 = v6;
    [v11 _notifyObservers:v12];
  }
}

void __49__NPKPassesManager__handleObjectSettingsChanged___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 passesDataSource:*(a1 + 32) didUpdateSettingsForPass:*(a1 + 40)];
  }
}

@end