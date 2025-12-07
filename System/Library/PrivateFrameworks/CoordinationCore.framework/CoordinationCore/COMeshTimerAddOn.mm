@interface COMeshTimerAddOn
- (BOOL)_isTimer:(id)timer targetingAccessory:(id)accessory;
- (BOOL)_isTimer:(id)timer targetingAccessoryIdentifiers:(id)identifiers;
- (BOOL)performsLocalActions;
- (COMTActionDirector)actionDirector;
- (COMeshTimerAddOn)init;
- (COMeshTimerAddOn)initWithTimerManager:(id)manager;
- (COMeshTimerAddOn)initWithTimerManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter;
- (COMeshTimerAddOnDelegate)delegate;
- (id)_commandsForReconciling:(id)reconciling toTruth:(id)truth forNode:(id)node;
- (id)_currentAccessoryForClient:(id)client;
- (id)_filteredTimersList:(id)list forAccessory:(id)accessory;
- (id)_sendRequest:(id)request client:(id)client;
- (id)_timersForAccessories:(id)accessories fromClient:(id)client results:(id)results;
- (id)_timersForAccessory:(id)accessory member:(id)member;
- (id)_timersForAccessoryIdentifier:(id)identifier allowLocalStorage:(BOOL)storage;
- (id)addTimer:(id)timer client:(id)client member:(id)member;
- (id)dismissTimerWithIdentifier:(id)identifier client:(id)client;
- (id)removeTimer:(id)timer client:(id)client member:(id)member;
- (id)secondaryClusterMemberForAccessory:(id)accessory;
- (id)secondaryClusterMemberIfRequiredForAccessory:(id)accessory;
- (id)timers;
- (id)updateTimer:(id)timer client:(id)client member:(id)member;
- (void)_abandonMerge;
- (void)_addCompletionsToFuture:(id)future withXPCCallback:(id)callback transactionDescription:(const char *)description;
- (void)_addTimerDeleteEvent:(id)event;
- (void)_broadcastMerge:(id)merge withTruth:(id)truth;
- (void)_continueMerge:(id)merge withResponse:(id)response fromNode:(id)node;
- (void)_finishMerge:(id)merge;
- (void)_primeMerge:(id)merge withNodes:(id)nodes;
- (void)_processQueuedCommands;
- (void)_reloadIndexWithCompletion:(id)completion;
- (void)_sendNotification:(id)notification;
- (void)_startMerge;
- (void)_timerManagerStateReset:(id)reset;
- (void)_timerManagerTimerFired:(id)fired;
- (void)_timerManagerTimersAdded:(id)added;
- (void)_timerManagerTimersChanged:(id)changed;
- (void)_timerManagerTimersRemoved:(id)removed;
- (void)_timerManagerTimersUpdated:(id)updated;
- (void)_withLock:(id)lock;
- (void)addTimer:(id)timer asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply;
- (void)didAddToMeshController:(id)controller;
- (void)didChangeNodesForMeshController:(id)controller;
- (void)didStopMeshController:(id)controller;
- (void)director:(id)director membersChanged:(id)changed;
- (void)director:(id)director performAction:(id)action from:(id)from callback:(id)callback;
- (void)dismissTimerWithIdentifier:(id)identifier fromClient:(id)client withCallback:(id)callback;
- (void)establishSecondaryClusterForAccessory:(id)accessory;
- (void)handleTimerCreateRequest:(id)request callback:(id)callback;
- (void)handleTimerDeleteRequest:(id)request callback:(id)callback;
- (void)handleTimerDismissRequest:(id)request callback:(id)callback;
- (void)handleTimerFiredNotification:(id)notification;
- (void)handleTimerFiringTimerDismissedNotification:(id)notification;
- (void)handleTimerManagerStateResetNotification:(id)notification;
- (void)handleTimerReadRequest:(id)request callback:(id)callback;
- (void)handleTimerUpdateRequest:(id)request callback:(id)callback;
- (void)handleTimersAddedNotification:(id)notification;
- (void)handleTimersRemovedNotification:(id)notification;
- (void)handleTimersUpdatedNotification:(id)notification;
- (void)interestTracker:(id)tracker setInterests:(id)interests forMember:(id)member callback:(id)callback;
- (void)interestTrackerTriggerReset:(id)reset;
- (void)meshController:(id)controller didTransitionToState:(unint64_t)state;
- (void)removeTimer:(id)timer asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)setDelegate:(id)delegate;
- (void)setInterests:(id)interests asAccessory:(id)accessory withCallback:(id)callback;
- (void)timersAsAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)timersForAccessories:(id)accessories fromClient:(id)client callback:(id)callback;
- (void)updateTimer:(id)timer asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)willRemoveFromMeshController:(id)controller;
- (void)willStartMeshController:(id)controller;
@end

@implementation COMeshTimerAddOn

- (COMeshTimerAddOn)initWithTimerManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter
{
  v36 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  adapterCopy = adapter;
  hubAdapterCopy = hubAdapter;
  v33.receiver = self;
  v33.super_class = COMeshTimerAddOn;
  v12 = [(COMeshAddOn *)&v33 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x277D29740]);
    observedTimerManager = v13->_observedTimerManager;
    v13->_observedTimerManager = v14;

    [(MTTimerManager *)v13->_observedTimerManager checkIn];
    objc_storeStrong(&v13->_homekit, adapter);
    objc_storeStrong(&v13->_homehub, hubAdapter);
    v16 = objc_alloc_init(MEMORY[0x277CBEA60]);
    deletes = v13->_deletes;
    v13->_deletes = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
    mergingNodes = v13->_mergingNodes;
    v13->_mergingNodes = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    mergeResponses = v13->_mergeResponses;
    v13->_mergeResponses = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEA60]);
    queuedCommands = v13->_queuedCommands;
    v13->_queuedCommands = v22;

    objc_storeStrong(&v13->_timerManager, manager);
    recorder = v13->_recorder;
    v13->_recorder = &__block_literal_global_3;

    v25 = objc_alloc_init(MEMORY[0x277CBEB98]);
    members = v13->_members;
    v13->_members = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    interests = v13->_interests;
    v13->_interests = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    ourInterests = v13->_ourInterests;
    v13->_ourInterests = v29;

    v31 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = v13;
      _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "%p mesh add-on created", buf, 0xCu);
    }
  }

  return v13;
}

- (COMeshTimerAddOn)initWithTimerManager:(id)manager
{
  managerCopy = manager;
  v5 = +[COHomeKitAdapter sharedInstance];
  v6 = +[COHomeHubAdapter sharedInstance];
  v7 = [(COMeshTimerAddOn *)self initWithTimerManager:managerCopy homekitAdapter:v5 hubAdapter:v6];

  return v7;
}

- (COMeshTimerAddOn)init
{
  v3 = objc_alloc_init(MEMORY[0x277D29740]);
  v4 = [(COMeshTimerAddOn *)self initWithTimerManager:v3];

  return v4;
}

- (void)didAddToMeshController:(id)controller
{
  controllerCopy = controller;
  v51.receiver = self;
  v51.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v51 didAddToMeshController:controllerCopy];
  objc_initWeak(&location, self);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke;
  v48[3] = &unk_278E16B48;
  objc_copyWeak(&v49, &location);
  v5 = MEMORY[0x245D5FF10](v48);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_4;
  v46[3] = &unk_278E16B98;
  objc_copyWeak(&v47, &location);
  v6 = MEMORY[0x245D5FF10](v46);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_7;
  v44[3] = &unk_278E15FA8;
  objc_copyWeak(&v45, &location);
  v7 = (v5)[2](v5, v44);
  [controllerCopy registerHandler:v7 forRequestClass:objc_opt_class()];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_8;
  v42[3] = &unk_278E15FA8;
  objc_copyWeak(&v43, &location);
  v8 = (v5)[2](v5, v42);
  [controllerCopy registerHandler:v8 forRequestClass:objc_opt_class()];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_9;
  v40[3] = &unk_278E15FA8;
  objc_copyWeak(&v41, &location);
  v9 = (v5)[2](v5, v40);
  [controllerCopy registerHandler:v9 forRequestClass:objc_opt_class()];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_10;
  v38[3] = &unk_278E15FA8;
  objc_copyWeak(&v39, &location);
  v10 = (v5)[2](v5, v38);
  [controllerCopy registerHandler:v10 forRequestClass:objc_opt_class()];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_11;
  v36[3] = &unk_278E15FA8;
  objc_copyWeak(&v37, &location);
  v11 = (v5)[2](v5, v36);
  [controllerCopy registerHandler:v11 forRequestClass:objc_opt_class()];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_12;
  v34[3] = &unk_278E15FF8;
  objc_copyWeak(&v35, &location);
  v12 = (v6)[2](v6, v34);
  [controllerCopy registerHandler:v12 forNotificationClass:objc_opt_class()];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_13;
  v32[3] = &unk_278E15FF8;
  objc_copyWeak(&v33, &location);
  v13 = (v6)[2](v6, v32);
  [controllerCopy registerHandler:v13 forNotificationClass:objc_opt_class()];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_14;
  v30[3] = &unk_278E15FF8;
  objc_copyWeak(&v31, &location);
  v14 = (v6)[2](v6, v30);
  [controllerCopy registerHandler:v14 forNotificationClass:objc_opt_class()];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_15;
  v28[3] = &unk_278E15FF8;
  objc_copyWeak(&v29, &location);
  v15 = (v6)[2](v6, v28);
  [controllerCopy registerHandler:v15 forNotificationClass:objc_opt_class()];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_16;
  v26[3] = &unk_278E15FF8;
  objc_copyWeak(&v27, &location);
  v16 = (v6)[2](v6, v26);
  [controllerCopy registerHandler:v16 forNotificationClass:objc_opt_class()];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_17;
  v24[3] = &unk_278E15FF8;
  objc_copyWeak(&v25, &location);
  v17 = (v6)[2](v6, v24);
  [controllerCopy registerHandler:v17 forNotificationClass:objc_opt_class()];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_18;
  v22 = &unk_278E15FF8;
  objc_copyWeak(&v23, &location);
  v18 = (v6)[2](v6, &v19);
  [controllerCopy registerHandler:v18 forNotificationClass:{objc_opt_class(), v19, v20, v21, v22}];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

id __43__COMeshTimerAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_2;
  v11[3] = &unk_278E16B20;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained mergeRequest];

    if (v9)
    {
      v10 = [v8 queuedCommands];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_3;
      v13[3] = &unk_278E16AF8;
      v15 = *(a1 + 32);
      v14 = v5;
      v16 = v6;
      v11 = MEMORY[0x245D5FF10](v13);
      v12 = [v10 arrayByAddingObject:v11];
      [v8 setQueuedCommands:v12];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

id __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_5;
  v11[3] = &unk_278E16B70;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained mergeRequest];

    if (v6)
    {
      v7 = [v5 queuedCommands];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_6;
      v13 = &unk_278E159A0;
      v15 = *(a1 + 32);
      v14 = v3;
      v8 = MEMORY[0x245D5FF10](&v10);
      v9 = [v7 arrayByAddingObject:{v8, v10, v11, v12, v13}];
      [v5 setQueuedCommands:v9];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerCreateRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerReadRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerUpdateRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerDeleteRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerDismissRequest:v8 callback:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_12(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersAddedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_13(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersRemovedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerFiringTimerDismissedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerFiredNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersChangedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimersUpdatedNotification:v5];
  }
}

void __43__COMeshTimerAddOn_didAddToMeshController___block_invoke_18(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleTimerManagerStateResetNotification:v5];
  }
}

- (void)willRemoveFromMeshController:(id)controller
{
  v11[7] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v5 = 0;
  v11[6] = objc_opt_class();
  do
  {
    [controllerCopy deregisterHandlerForNotificationClass:v11[v5++]];
  }

  while (v5 != 7);
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v6 = 0;
  v10[4] = objc_opt_class();
  do
  {
    [controllerCopy deregisterHandlerForRequestClass:v10[v6++]];
  }

  while (v6 != 5);
  actionDirector = [(COMeshTimerAddOn *)self actionDirector];
  [actionDirector removeHandler:self];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__COMeshTimerAddOn_willRemoveFromMeshController___block_invoke;
  v9[3] = &unk_278E15AB8;
  v9[4] = self;
  [(COMeshTimerAddOn *)self _withLock:v9];
  v8.receiver = self;
  v8.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v8 willRemoveFromMeshController:controllerCopy];
}

- (void)willStartMeshController:(id)controller
{
  controllerCopy = controller;
  observedTimerManager = [(COMeshTimerAddOn *)self observedTimerManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__timerManagerTimersAdded_ name:*MEMORY[0x277D296A0] object:observedTimerManager];
  [defaultCenter addObserver:self selector:sel__timerManagerTimersRemoved_ name:*MEMORY[0x277D296B8] object:observedTimerManager];
  [defaultCenter addObserver:self selector:sel__timerManagerTimersUpdated_ name:*MEMORY[0x277D296C0] object:observedTimerManager];
  [defaultCenter addObserver:self selector:sel__timerManagerTimerFired_ name:*MEMORY[0x277D29698] object:observedTimerManager];
  [defaultCenter addObserver:self selector:sel__timerManagerStateReset_ name:*MEMORY[0x277D29690] object:observedTimerManager];
  [defaultCenter addObserver:self selector:sel__timerManagerTimersChanged_ name:*MEMORY[0x277D296A8] object:observedTimerManager];
  [(COMeshTimerAddOn *)self _reloadIndexWithCompletion:0];
  v7.receiver = self;
  v7.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v7 willStartMeshController:controllerCopy];
}

- (void)didStopMeshController:(id)controller
{
  v6.receiver = self;
  v6.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v6 didStopMeshController:controller];
  observedTimerManager = [(COMeshTimerAddOn *)self observedTimerManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D296A8] object:observedTimerManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D29690] object:observedTimerManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D29698] object:observedTimerManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D296C0] object:observedTimerManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D296B8] object:observedTimerManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D296A0] object:observedTimerManager];
}

- (void)meshController:(id)controller didTransitionToState:(unint64_t)state
{
  controllerCopy = controller;
  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeCompositionForTimerAddOn:self];
  }

  v16.receiver = self;
  v16.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v16 meshController:controllerCopy didTransitionToState:state];
  nodes = [controllerCopy nodes];
  if (state == 2)
  {
    [(COMeshTimerAddOn *)self _abandonMerge];
  }

  else if (state == 3)
  {
    ourInterests = [(COMeshTimerAddOn *)self ourInterests];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__COMeshTimerAddOn_meshController_didTransitionToState___block_invoke;
    v14[3] = &unk_278E16BC0;
    v15 = nodes;
    [ourInterests enumerateKeysAndObjectsUsingBlock:v14];

    v10 = [controllerCopy me];
    leader = [controllerCopy leader];
    if ([v10 isEqual:leader])
    {
      homekit = [(COMeshTimerAddOn *)self homekit];
      if ([homekit hasOptedToHH2])
      {
        isDistributedTimersEnabled = [MEMORY[0x277CFD0B8] isDistributedTimersEnabled];

        if (isDistributedTimersEnabled)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      [(COMeshTimerAddOn *)self _startMerge];
    }

    else
    {
    }
  }

LABEL_13:
}

void __56__COMeshTimerAddOn_meshController_didTransitionToState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = COMeshNodeForIDSIdentifier(v4, a2);
  [v5 setPrimaryAvailable:v6 != 0];
}

- (void)didChangeNodesForMeshController:(id)controller
{
  controllerCopy = controller;
  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeCompositionForTimerAddOn:self];
  }

  v26.receiver = self;
  v26.super_class = COMeshTimerAddOn;
  [(COMeshAddOn *)&v26 didChangeNodesForMeshController:controllerCopy];
  nodes = [controllerCopy nodes];
  meshController = [(COMeshAddOn *)self meshController];
  v8 = [meshController state] == 3;

  ourInterests = [(COMeshTimerAddOn *)self ourInterests];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __52__COMeshTimerAddOn_didChangeNodesForMeshController___block_invoke;
  v23 = &unk_278E16BE8;
  v10 = nodes;
  v24 = v10;
  v25 = v8;
  [ourInterests enumerateKeysAndObjectsUsingBlock:&v20];

  v11 = [(COMeshTimerAddOn *)self mergingNodes:v20];
  v12 = [MEMORY[0x277CBEB58] setWithArray:v11];
  v13 = MEMORY[0x277CBEB98];
  nodes2 = [controllerCopy nodes];
  v15 = [v13 setWithArray:nodes2];

  [v12 minusSet:v15];
  if ([v12 count])
  {
    v16 = [v11 mutableCopy];
    allObjects = [v12 allObjects];
    [v16 removeObjectsInArray:allObjects];

    [(COMeshTimerAddOn *)self setMergingNodes:v16];
    if (![v16 count])
    {
      v18 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(COMeshTimerAddOn *)controllerCopy didChangeNodesForMeshController:?];
      }

      mergeRequest = [(COMeshTimerAddOn *)self mergeRequest];
      [(COMeshTimerAddOn *)self _finishMerge:mergeRequest];
    }
  }
}

void __52__COMeshTimerAddOn_didChangeNodesForMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = COMeshNodeForIDSIdentifier(*(a1 + 32), a2);
  v6 = v5;
  if (!v5 || *(a1 + 40) == 1)
  {
    [v7 setPrimaryAvailable:v5 != 0];
  }
}

- (COMeshTimerAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11;
  v9 = __Block_byref_object_dispose__11;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMeshTimerAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshTimerAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMeshTimerAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__COMeshTimerAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  [(COMeshTimerAddOn *)self _withLock:v6];
}

void __32__COMeshTimerAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));

  if (v2 != WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 32);

    objc_storeWeak(v5, v4);
  }
}

- (COMTActionDirector)actionDirector
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11;
  v9 = __Block_byref_object_dispose__11;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__COMeshTimerAddOn_actionDirector__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshTimerAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)performsLocalActions
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v4 = [processName isEqualToString:@"xctest"];

  return v4;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_sendRequest:(id)request client:(id)client
{
  requestCopy = request;
  clientCopy = client;
  meshController = [(COMeshAddOn *)self meshController];
  v9 = objc_alloc_init(MEMORY[0x277D2C900]);
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__COMeshTimerAddOn__sendRequest_client___block_invoke;
  v18[3] = &unk_278E15C88;
  v19 = clientCopy;
  v20 = requestCopy;
  v21 = meshController;
  v11 = v9;
  v22 = v11;
  v12 = meshController;
  v13 = requestCopy;
  v14 = clientCopy;
  dispatch_async(meshControllerQueue, v18);

  v15 = v22;
  v16 = v11;

  return v11;
}

void __40__COMeshTimerAddOn__sendRequest_client___block_invoke(id *a1)
{
  v2 = [a1[4] clientLifetimeActivity];
  v3 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:v2];

  if (v3)
  {
    [a1[5] setActivity:v3];
    nw_activity_activate();
  }

  v4 = a1[5];
  v5 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__COMeshTimerAddOn__sendRequest_client___block_invoke_2;
  v13[3] = &unk_278E16C10;
  v14 = v3;
  v6 = v4;
  v7 = a1[4];
  v8 = a1[7];
  v9 = a1[6];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v12 = v3;
  [v5 sendRequest:v4 withCompletionHandler:v13];
}

void __40__COMeshTimerAddOn__sendRequest_client___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v13 = [v12 error];
  }

  if (*(a1 + 32))
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    if (v14)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      xpc_dictionary_set_string(v14, "command", [v16 UTF8String]);

      v17 = [*(a1 + 48) clientBundleIdentifier];
      v18 = v17;
      if (!v17)
      {
        v5 = [MEMORY[0x277CCA8D8] mainBundle];
        v18 = [v5 bundleIdentifier];
      }

      xpc_dictionary_set_string(v14, "client", [v18 UTF8String]);
      if (!v17)
      {
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v13)
  {
    v19 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 64);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = 134218498;
      v24 = v20;
      v25 = 2112;
      v26 = v22;
      v27 = 2112;
      v28 = v13;
      _os_log_error_impl(&dword_244378000, v19, OS_LOG_TYPE_ERROR, "%p %@ from leader failed (%@)", &v23, 0x20u);
    }

    [*(a1 + 56) finishWithError:v13];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (void)_addCompletionsToFuture:(id)future withXPCCallback:(id)callback transactionDescription:(const char *)description
{
  futureCopy = future;
  callbackCopy = callback;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__11;
  v18[4] = __Block_byref_object_dispose__11;
  v19 = os_transaction_create();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke;
  v15[3] = &unk_278E16C38;
  v8 = callbackCopy;
  v16 = v8;
  v17 = v18;
  v9 = [futureCopy addFailureBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2;
  v12[3] = &unk_278E16C60;
  v10 = v8;
  v13 = v10;
  v14 = v18;
  v11 = [futureCopy addSuccessBlock:v12];

  _Block_object_dispose(v18, 8);
}

void __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __83__COMeshTimerAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (id)_filteredTimersList:(id)list forAccessory:(id)accessory
{
  listCopy = list;
  accessoryCopy = accessory;
  v8 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _filteredTimersList:forAccessory:];
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__COMeshTimerAddOn__filteredTimersList_forAccessory___block_invoke;
  v17 = &unk_278E16C88;
  v9 = accessoryCopy;
  v18 = v9;
  selfCopy = self;
  v10 = [listCopy indexesOfObjectsPassingTest:&v14];
  if ([v10 count])
  {
    v11 = [listCopy mutableCopy];
    [v11 removeObjectsAtIndexes:v10];

    listCopy = v11;
  }

  v12 = listCopy;

  return listCopy;
}

uint64_t __53__COMeshTimerAddOn__filteredTimersList_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isTimer:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFD068]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (id)_timersForAccessoryIdentifier:(id)identifier allowLocalStorage:(BOOL)storage
{
  identifierCopy = identifier;
  meshController = [(COMeshAddOn *)self meshController];
  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  timerManager = [(COMeshTimerAddOn *)self timerManager];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  co_ClientBundleIdentifier = [currentConnection co_ClientBundleIdentifier];

  if (![co_ClientBundleIdentifier length])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    co_ClientBundleIdentifier = bundleIdentifier;
  }

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke;
  block[3] = &unk_278E16D70;
  storageCopy = storage;
  block[4] = self;
  v24 = meshController;
  v25 = identifierCopy;
  v26 = timerManager;
  v15 = v8;
  v27 = v15;
  v28 = co_ClientBundleIdentifier;
  v16 = co_ClientBundleIdentifier;
  v17 = timerManager;
  v18 = identifierCopy;
  v19 = meshController;
  dispatch_async(meshControllerQueue, block);

  v20 = v28;
  v21 = v15;

  return v15;
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1 && [*(a1 + 32) performsLocalActions] && (objc_msgSend(*(a1 + 40), "leader"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v14 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 134218242;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using local list of timers for %@", buf, 0x16u);
    }

    v17 = [*(a1 + 56) timers];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96;
    v35[3] = &unk_278E16CB0;
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v36 = v18;
    v37 = v19;
    v38 = v20;
    v39 = *(a1 + 64);
    v21 = [v17 addCompletionBlock:v35];

    v22 = [*(a1 + 32) recorder];
    (v22)[2](v22, 0x2857B5848, &__block_literal_global_102);

    v12 = v36;
  }

  else
  {
    v3 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 134218242;
      v41 = v4;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p requesting list of timers for %@ from the leader ", buf, 0x16u);
    }

    v6 = [[COTimerReadRequest alloc] initWithAccessoryUniqueIdentifier:*(a1 + 48) requiresFilter:1];
    v7 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:0];
    if (v7)
    {
      [(COMeshRequest *)v6 setActivity:v7];
      nw_activity_activate();
    }

    v8 = *(a1 + 40);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103;
    v26 = &unk_278E16D48;
    v27 = v7;
    v28 = v6;
    v29 = *(a1 + 72);
    v30 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v31 = v9;
    v32 = v10;
    v33 = *(a1 + 64);
    v34 = *(a1 + 56);
    v11 = v6;
    v12 = v7;
    [v8 sendRequest:v11 withCompletionHandler:&v23];
    v13 = [*(a1 + 32) recorder];
    (v13)[2](v13, 0x2857B5848, &__block_literal_global_108);
  }
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96_cold_1();
    }

    [*(a1 + 56) finishWithError:v7];
    goto LABEL_14;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_8;
  }

  v9 = [*(a1 + 40) homekit];
  v10 = [v9 accessoryWithUniqueIdentifier:*(a1 + 32)];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 40) _filteredTimersList:v5 forAccessory:v10];

    v5 = v12;
LABEL_8:
    v13 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v17 = 134218242;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p local timers list: %@", &v17, 0x16u);
    }

    [*(a1 + 56) finishWithResult:v5];
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v16 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_96_cold_2();
  }

  [*(a1 + 56) finishWithError:v15];
LABEL_14:
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v12 = [v11 error];
    if (!v12)
    {
      if (*(a1 + 32))
      {
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          xpc_dictionary_set_string(v17, "command", [v19 UTF8String]);

          xpc_dictionary_set_string(v17, "client", [*(a1 + 48) UTF8String]);
          nw_activity_submit_metrics();
        }

        nw_activity_complete_with_reason();
      }

      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__11;
      v43 = __Block_byref_object_dispose__11;
      v44 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v11 timers];
        v21 = v40[5];
        v40[5] = v20;

        if (!*(a1 + 56) || ![*(a1 + 40) requiresFilter] || (objc_msgSend(v11, "isFiltered") & 1) != 0)
        {
          goto LABEL_25;
        }

        v22 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *(a1 + 64);
          *buf = 134217984;
          v46 = v23;
          _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_INFO, "%p timer results from leader not filtered!", buf, 0xCu);
        }

        v24 = [*(a1 + 72) homekit];
        v25 = [v24 accessoryWithUniqueIdentifier:*(a1 + 56)];
        if (!v25)
        {
          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
          v34 = COCoreLogForCategory(3);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_2();
          }

          [*(a1 + 80) finishWithError:v12];
          goto LABEL_28;
        }

        v26 = [*(a1 + 72) _filteredTimersList:v40[5] forAccessory:v25];
        v27 = v40[5];
        v40[5] = v26;
      }

      else
      {
        v28 = [MEMORY[0x277CBEA60] array];
        v24 = v40[5];
        v40[5] = v28;
      }

LABEL_25:
      v29 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 64);
        v31 = v40[5];
        *buf = 134218242;
        v46 = v30;
        v47 = 2112;
        v48 = v31;
        _os_log_impl(&dword_244378000, v29, OS_LOG_TYPE_DEFAULT, "%p timers list from leader: %@", buf, 0x16u);
      }

      v32 = [*(a1 + 88) timers];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_105;
      v35[3] = &unk_278E16D20;
      v38 = &v39;
      v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      v33 = [v32 addCompletionBlock:v35];

      v12 = 0;
      v24 = v36;
LABEL_28:

      _Block_object_dispose(&v39, 8);
      goto LABEL_10;
    }
  }

  if (*(a1 + 32))
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      xpc_dictionary_set_string(v13, "command", [v15 UTF8String]);

      xpc_dictionary_set_string(v13, "client", [*(a1 + 48) UTF8String]);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  v16 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_1();
  }

  [*(a1 + 80) finishWithError:v12];
LABEL_10:
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_105(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 isFiring])
        {
          v9 = [v8 timerID];
          v10 = *(*(*(a1 + 48) + 8) + 40);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_2;
          v20[3] = &unk_278E16CF8;
          v11 = v9;
          v21 = v11;
          v12 = [v10 indexOfObjectPassingTest:v20];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v12;
            v14 = [*(*(*(a1 + 48) + 8) + 40) mutableCopy];
            [v14 replaceObjectAtIndex:v13 withObject:v8];
            v15 = *(*(a1 + 48) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  v17 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 134218242;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p timers list after merge: %@", buf, 0x16u);
  }

  [*(a1 + 40) finishWithResult:*(*(*(a1 + 48) + 8) + 40)];
}

uint64_t __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 timerID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_timersForAccessory:(id)accessory member:(id)member
{
  accessoryCopy = accessory;
  memberCopy = member;
  meshController = [(COMeshAddOn *)self meshController];
  v9 = objc_alloc_init(MEMORY[0x277D2C900]);
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke;
  block[3] = &unk_278E15868;
  v19 = meshController;
  v20 = accessoryCopy;
  selfCopy = self;
  v11 = v9;
  v22 = v11;
  v23 = memberCopy;
  v12 = memberCopy;
  v13 = accessoryCopy;
  v14 = meshController;
  dispatch_async(meshControllerQueue, block);

  v15 = v23;
  v16 = v11;

  return v11;
}

void __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v22 = v3;
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster timers for %{public}@", buf, 0x16u);
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [COMTReadAction actionWithTargetType:v6 targetMemento:*(a1 + 40)];

  v8 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:0];
  if (v8)
  {
    nw_activity_activate();
  }

  objc_initWeak(buf, *(a1 + 48));
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_111;
  v16 = &unk_278E16DC0;
  v17 = *(a1 + 32);
  objc_copyWeak(&v20, buf);
  v9 = v8;
  v18 = v9;
  v19 = *(a1 + 56);
  v10 = MEMORY[0x245D5FF10](&v13);
  v11 = [*(a1 + 48) actionDirector];
  v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
  [v11 requestAction:v7 members:v12 activity:v9 withCompletion:v10];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_111(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_2;
  block[3] = &unk_278E16D98;
  objc_copyWeak(&v15, a1 + 7);
  v11 = v6;
  v12 = a1[5];
  v13 = a1[6];
  v14 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
}

void __47__COMeshTimerAddOn__timersForAccessory_member___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(a1 + 40))
      {
        nw_activity_complete_with_reason();
        v3 = *(a1 + 32);
      }

      [*(a1 + 48) finishWithError:v3];
    }

    else
    {
      v5 = a1 + 48;
      v4 = *(a1 + 48);
      v6 = *(v5 + 8);
      v7 = [v6 timers];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = MEMORY[0x277CBEBF8];
      }

      [v4 finishWithResult:v9];
    }

    WeakRetained = v10;
  }
}

- (id)_timersForAccessories:(id)accessories fromClient:(id)client results:(id)results
{
  accessoriesCopy = accessories;
  clientCopy = client;
  resultsCopy = results;
  meshController = [(COMeshAddOn *)self meshController];
  v12 = &off_244448000;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    timers = [timerManager timers];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v15 = objc_alloc_init(COTimerReadRequest);
    v16 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:0];
    if (v16)
    {
      [(COMeshRequest *)v15 setActivity:v16];
      nw_activity_activate();
    }

    clientBundleIdentifier = [clientCopy clientBundleIdentifier];
    if (![clientBundleIdentifier length])
    {
      [MEMORY[0x277CCA8D8] mainBundle];
      v42 = v14;
      v18 = resultsCopy;
      v19 = accessoriesCopy;
      v20 = meshController;
      v22 = v21 = clientCopy;
      bundleIdentifier = [v22 bundleIdentifier];

      clientCopy = v21;
      meshController = v20;
      accessoriesCopy = v19;
      resultsCopy = v18;
      v14 = v42;
      clientBundleIdentifier = bundleIdentifier;
      v12 = &off_244448000;
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = *(v12 + 186);
    v53[2] = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke;
    v53[3] = &unk_278E16DE8;
    v54 = v16;
    v55 = v15;
    v56 = clientBundleIdentifier;
    timers = v14;
    v57 = timers;
    v25 = clientBundleIdentifier;
    v26 = v12;
    v27 = v25;
    v28 = v15;
    v29 = v16;
    [meshController sendRequest:v28 withCompletionHandler:v53];

    v12 = v26;
  }

  v30 = objc_alloc_init(MEMORY[0x277D2C900]);
  v45 = MEMORY[0x277D85DD0];
  v46 = *(v12 + 186);
  v31 = v46;
  v47 = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_2;
  v48 = &unk_278E16E60;
  v49 = accessoriesCopy;
  selfCopy = self;
  v51 = resultsCopy;
  v32 = v30;
  v52 = v32;
  v33 = resultsCopy;
  v34 = accessoriesCopy;
  v35 = [timers addSuccessBlock:&v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = v31;
  v43[2] = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_5;
  v43[3] = &unk_278E15B38;
  v36 = v32;
  v44 = v36;
  v37 = [timers addFailureBlock:v43];
  v38 = v44;
  v39 = v36;

  return v36;
}

void __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v11 = [v10 error];
  }

  if (*(a1 + 32))
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    if (v12)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      xpc_dictionary_set_string(v12, "command", [v14 UTF8String]);

      xpc_dictionary_set_string(v12, "client", [*(a1 + 48) UTF8String]);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v11)
  {
    [*(a1 + 56) finishWithError:v11];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = *(a1 + 56);
    if (isKindOfClass)
    {
      v17 = [v10 timers];
      [v16 finishWithResult:v17];
    }

    else
    {
      [v16 finishWithResult:MEMORY[0x277CBEBF8]];
    }
  }
}

void __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_3;
  v8[3] = &unk_278E16E38;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
  [*(a1 + 56) finishWithNoResult];
}

void __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_4;
  v10 = &unk_278E16E10;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_filter:&v7];
  [*(a1 + 48) setObject:v6 forKey:{v5, v7, v8, v9, v10, v11}];
}

uint64_t __61__COMeshTimerAddOn__timersForAccessories_fromClient_results___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [v2 _isTimer:v4 targetingAccessoryIdentifiers:{v5, v8, v9}];

  return v6;
}

- (BOOL)_isTimer:(id)timer targetingAccessoryIdentifiers:(id)identifiers
{
  v44 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  identifiersCopy = identifiers;
  siriContext = [timerCopy siriContext];
  v8 = [siriContext objectForKey:*MEMORY[0x277CFD068]];
  v9 = v8;
  v10 = v8 == 0;
  if (identifiersCopy && v8)
  {
    v11 = [MEMORY[0x277CCACE0] componentsWithString:v8];
    scheme = [v11 scheme];
    if ([scheme isEqualToString:@"siri-hk-target"])
    {
      path = [v11 path];
      v14 = [path isEqualToString:@"accessory"];

      if (v14)
      {
        v15 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          timerID = [timerCopy timerID];
          query = [v11 query];
          *buf = 138412802;
          v39 = timerID;
          v40 = 2112;
          v41 = query;
          v42 = 2112;
          v43 = identifiersCopy;
          _os_log_debug_impl(&dword_244378000, v15, OS_LOG_TYPE_DEBUG, "checking if timer (%@) target (%@) contains %@", buf, 0x20u);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        queryItems = [v11 queryItems];
        v17 = [queryItems countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v29 = v11;
          v30 = v9;
          v31 = siriContext;
          v32 = timerCopy;
          v19 = *v34;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(queryItems);
              }

              v21 = *(*(&v33 + 1) + 8 * i);
              name = [v21 name];
              v23 = [@"identifier" isEqualToString:name];

              if (v23)
              {
                value = [v21 value];
                if (value)
                {
                  v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
                  if (v25 && ([identifiersCopy containsObject:v25] & 1) != 0)
                  {

                    v10 = 1;
                    goto LABEL_30;
                  }
                }
              }
            }

            v18 = [queryItems countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }

          v10 = 0;
LABEL_30:
          siriContext = v31;
          timerCopy = v32;
          v11 = v29;
          v9 = v30;
          goto LABEL_27;
        }

LABEL_26:
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
    }

    queryItems = COCoreLogForCategory(3);
    if (os_log_type_enabled(queryItems, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _isTimer:targetingAccessoryIdentifiers:];
    }

    goto LABEL_26;
  }

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _isTimer:timerCopy targetingAccessoryIdentifiers:?];
  }

LABEL_28:

  return v10;
}

- (id)_currentAccessoryForClient:(id)client
{
  connection = [client connection];
  co_PeerInstance = [connection co_PeerInstance];

  if (co_PeerInstance)
  {
    homehub = [(COMeshTimerAddOn *)self homehub];
    homekit = [(COMeshTimerAddOn *)self homekit];
    currentAccessory = [homehub accessoryForPeerInstance:co_PeerInstance usingHomeKitAdapter:homekit];
  }

  else
  {
    homehub = [(COMeshTimerAddOn *)self homekit];
    currentAccessory = [homehub currentAccessory];
  }

  return currentAccessory;
}

- (void)_sendNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277D296B0]];

  name = [notificationCopy name];

  meshController = [(COMeshAddOn *)self meshController];
  interests = [(COMeshTimerAddOn *)self interests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__COMeshTimerAddOn__sendNotification___block_invoke;
  v14[3] = &unk_278E16EB0;
  v15 = v7;
  selfCopy = self;
  v17 = name;
  v18 = meshController;
  v11 = meshController;
  v12 = name;
  v13 = v7;
  [interests enumerateKeysAndObjectsUsingBlock:v14];
}

void __38__COMeshTimerAddOn__sendNotification___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__COMeshTimerAddOn__sendNotification___block_invoke_2;
  v20[3] = &unk_278E16C88;
  v7 = a1[4];
  v20[4] = a1[5];
  v8 = v6;
  v21 = v8;
  v9 = [v7 indexesOfObjectsPassingTest:v20];
  if ([v9 count])
  {
    v10 = [COMTTimerNotificationAction alloc];
    v11 = a1[6];
    v12 = [a1[4] objectsAtIndexes:v9];
    v13 = [(COMTTimerNotificationAction *)v10 initWithReason:v11 timers:v12];

    v14 = [a1[5] actionDirector];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__COMeshTimerAddOn__sendNotification___block_invoke_3;
    v16[3] = &unk_278E16E88;
    v17 = a1[7];
    v18 = a1[6];
    v19 = v5;
    [v14 requestAction:v13 members:v15 withCompletion:v16];
  }
}

void __38__COMeshTimerAddOn__sendNotification___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38__COMeshTimerAddOn__sendNotification___block_invoke_3_cold_1();
    }
  }
}

- (void)_timerManagerTimersAdded:(id)added
{
  addedCopy = added;
  userInfo = [addedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D296B0]];

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COMeshTimerAddOn__timerManagerTimersAdded___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v9 = addedCopy;
  v14 = v9;
  dispatch_async(meshControllerQueue, block);

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate timerAddOn:self didAddTimers:v8];
  }
}

uint64_t __45__COMeshTimerAddOn__timerManagerTimersAdded___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 isCurrentTimer] & 1) == 0)
        {
          v8 = [v7 lastModifiedDate];
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEAA8] distantPast];
          }

          v9 = [*(a1 + 40) timerIndex];
          v10 = [v7 timerID];
          [v9 setObject:v8 forKey:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _sendNotification:*(a1 + 48)];
}

- (void)_timerManagerTimersRemoved:(id)removed
{
  removedCopy = removed;
  userInfo = [removedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D296B0]];

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timerManagerTimersRemoved___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v9 = removedCopy;
  v14 = v9;
  dispatch_async(meshControllerQueue, block);

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate timerAddOn:self didRemoveTimers:v8];
  }
}

uint64_t __47__COMeshTimerAddOn__timerManagerTimersRemoved___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        if (([v7 isCurrentTimer] & 1) == 0)
        {
          v8 = [*(a1 + 40) timerIndex];
          v9 = [v7 timerID];
          [v8 removeObjectForKey:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _sendNotification:*(a1 + 48)];
}

- (void)_timerManagerTimersUpdated:(id)updated
{
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D296B0]];

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshTimerAddOn__timerManagerTimersUpdated___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v9 = updatedCopy;
  v14 = v9;
  dispatch_async(meshControllerQueue, block);

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate timerAddOn:self didUpdateTimers:v8];
  }
}

uint64_t __47__COMeshTimerAddOn__timerManagerTimersUpdated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 isCurrentTimer] & 1) == 0)
        {
          v8 = [v7 lastModifiedDate];
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEAA8] distantPast];
          }

          v9 = [*(a1 + 40) timerIndex];
          v10 = [v7 timerID];
          [v9 setObject:v8 forKey:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _sendNotification:*(a1 + 48)];
}

- (void)_timerManagerTimerFired:(id)fired
{
  userInfo = [fired userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D296B0]];

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate timerAddOn:self didFireTimers:v5];
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    meshController = [(COMeshAddOn *)self meshController];
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _timerManagerTimerFired:];
    }

    v9 = [(COTimerNotification *)[COTimerFiredNotification alloc] initWithTimers:v5];
    [meshController sendNotification:v9];
  }
}

- (void)_timerManagerStateReset:(id)reset
{
  resetCopy = reset;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke;
  v5[3] = &unk_278E16A10;
  objc_copyWeak(&v6, &location);
  [(COMeshTimerAddOn *)self _reloadIndexWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained meshController];
    if (a2)
    {
      v6 = objc_alloc_init(COTimerManagerStateResetNotification);
      v7 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke_cold_1();
      }

      [v5 sendNotification:v6];
      v8 = [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 didResetTimerAddOn:v4];
      }
    }

    else
    {
      v6 = COCoreLogForCategory(3);
      if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v5;
        _os_log_impl(&dword_244378000, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "%p not emitting state reset, timers not updated", &v9, 0xCu);
      }
    }
  }
}

- (void)_timerManagerTimersChanged:(id)changed
{
  userInfo = [changed userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D296B0]];

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate timerAddOn:self didChangeTimers:v6];
  }
}

- (void)_startMerge
{
  v20 = *MEMORY[0x277D85DE8];
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  initForMerge = [[COTimerReadRequest alloc] initForMerge];
  [(COMeshTimerAddOn *)self setMergeRequest:initForMerge];
  v6 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = meshController;
    v18 = 2048;
    v19 = initForMerge;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting merge for %p...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    timers = [timerManager timers];
  }

  else
  {
    timers = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__COMeshTimerAddOn__startMerge__block_invoke;
  v12[3] = &unk_278E16F00;
  v9 = meshControllerQueue;
  v13 = v9;
  objc_copyWeak(&v15, buf);
  v10 = initForMerge;
  v14 = v10;
  v11 = [timers addCompletionBlock:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __31__COMeshTimerAddOn__startMerge__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__COMeshTimerAddOn__startMerge__block_invoke_2;
  block[3] = &unk_278E16ED8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __31__COMeshTimerAddOn__startMerge__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  [WeakRetained _broadcastMerge:*(a1 + 32) withTruth:v3];
}

- (void)_broadcastMerge:(id)merge withTruth:(id)truth
{
  v36 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  truthCopy = truth;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  mergeRequest = [(COMeshTimerAddOn *)self mergeRequest];

  if (mergeRequest == mergeCopy)
  {
    v11 = eTagForTimers(truthCopy);
    [mergeCopy setETag:v11];
    v12 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v31 = meshController;
      v32 = 2048;
      v33 = mergeCopy;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p broadcasting merge %p with eTag %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(COMeshTimerAddOn *)self setMergingNodes:v13];

    v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COMeshTimerAddOn *)self setMergeResponses:v14];

    [(COMeshTimerAddOn *)self setMergeTimers:truthCopy];
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke;
    v27[3] = &unk_278E16F28;
    objc_copyWeak(&v29, buf);
    v15 = mergeCopy;
    v28 = v15;
    v16 = MEMORY[0x245D5FF10](v27);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2;
    v24 = &unk_278E16F50;
    objc_copyWeak(&v26, buf);
    v17 = v15;
    v25 = v17;
    v18 = MEMORY[0x245D5FF10](&v21);
    v19 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(COMeshTimerAddOn *)self setMergingNodes:v19, v21, v22, v23, v24];

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COMeshTimerAddOn *)self setMergeResponses:v20];

    [meshController broadcastRequest:v17 includingSelf:0 recipientsCallback:v16 completionHandler:v18];
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v31 = meshController;
      v32 = 2048;
      v33 = mergeCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p ignoring broadcast for merge %p", buf, 0x16u);
    }
  }
}

void __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _primeMerge:*(a1 + 32) withNodes:v5];
  }
}

void __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      [WeakRetained _continueMerge:v7 withResponse:v9 fromNode:v8];
    }

    else
    {
      v12 = [WeakRetained mergingNodes];
      v13 = [v12 mutableCopy];

      [v13 removeObject:v8];
      [v11 setMergingNodes:v13];
      if (![v13 count])
      {
        v14 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2_cold_1();
        }

        [v11 _finishMerge:*(a1 + 32)];
      }
    }
  }
}

- (void)_primeMerge:(id)merge withNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  nodesCopy = nodes;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  mergeRequest = [(COMeshTimerAddOn *)self mergeRequest];

  if (mergeRequest == mergeCopy)
  {
    [(COMeshTimerAddOn *)self setMergingNodes:nodesCopy];
    v12 = [nodesCopy count];
    v13 = COCoreLogForCategory(3);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = 134218496;
        v16 = meshController;
        v17 = 2048;
        v18 = mergeCopy;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p merge %p with %ld others.", &v15, 0x20u);
      }
    }

    else
    {
      if (v14)
      {
        v15 = 134218240;
        v16 = meshController;
        v17 = 2048;
        v18 = mergeCopy;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p is solo, so %p is finished.", &v15, 0x16u);
      }

      [(COMeshTimerAddOn *)self _finishMerge:mergeCopy];
    }
  }

  else
  {
    v11 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218240;
      v16 = meshController;
      v17 = 2048;
      v18 = mergeCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p ignoring prime of merge %p", &v15, 0x16u);
    }
  }
}

- (void)_continueMerge:(id)merge withResponse:(id)response fromNode:(id)node
{
  v28 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  responseCopy = response;
  nodeCopy = node;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  mergeRequest = [(COMeshTimerAddOn *)self mergeRequest];

  if (mergeRequest == mergeCopy)
  {
    mergingNodes = [(COMeshTimerAddOn *)self mergingNodes];
    v14 = [mergingNodes mutableCopy];

    [v14 removeObject:nodeCopy];
    [(COMeshTimerAddOn *)self setMergingNodes:v14];
    if ([responseCopy skipInMerge])
    {
      v16 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v22 = 134218496;
        v23 = meshController;
        v24 = 2048;
        v25 = nodeCopy;
        v26 = 2048;
        v27 = mergeCopy;
        _os_log_debug_impl(&dword_244378000, v16, OS_LOG_TYPE_DEBUG, "%p skipping node %p in merge %p", &v22, 0x20u);
      }
    }

    else
    {
      mergeResponses = [(COMeshTimerAddOn *)self mergeResponses];
      v18 = [mergeResponses mutableCopy];

      [v18 setObject:responseCopy forKey:nodeCopy];
      [(COMeshTimerAddOn *)self setMergeResponses:v18];
    }

    v19 = [v14 count];
    v20 = COCoreLogForCategory(3);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
    if (v19)
    {
      if (v21)
      {
        v22 = 134218496;
        v23 = meshController;
        v24 = 2048;
        v25 = mergeCopy;
        v26 = 2048;
        v27 = v19;
        _os_log_debug_impl(&dword_244378000, v20, OS_LOG_TYPE_DEBUG, "%p merge %p still waiting on %ld others.", &v22, 0x20u);
      }
    }

    else
    {
      if (v21)
      {
        [COMeshTimerAddOn _continueMerge:withResponse:fromNode:];
      }

      [(COMeshTimerAddOn *)self _finishMerge:mergeCopy];
    }
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218240;
      v23 = meshController;
      v24 = 2048;
      v25 = mergeCopy;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p ignoring continuation of merge %p", &v22, 0x16u);
    }
  }
}

- (void)_abandonMerge
{
  v13 = *MEMORY[0x277D85DE8];
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  mergeRequest = [(COMeshTimerAddOn *)self mergeRequest];
  v6 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = meshController;
    v11 = 2048;
    v12 = mergeRequest;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p abandoning merge %p", &v9, 0x16u);
  }

  [(COMeshTimerAddOn *)self setMergeRequest:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshTimerAddOn *)self setMergeResponses:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(COMeshTimerAddOn *)self setMergingNodes:v8];

  [(COMeshTimerAddOn *)self _processQueuedCommands];
}

- (id)_commandsForReconciling:(id)reconciling toTruth:(id)truth forNode:(id)node
{
  v61 = *MEMORY[0x277D85DE8];
  reconcilingCopy = reconciling;
  truthCopy = truth;
  nodeCopy = node;
  array = [MEMORY[0x277CBEA60] array];
  v49 = [truthCopy mutableCopy];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = reconcilingCopy;
  v12 = [(COTimersRemovedNotification *)v11 countByEnumeratingWithState:&v50 objects:v60 count:16];
  v47 = truthCopy;
  if (!v12)
  {
    v14 = 0;
    v48 = 0;
    v28 = v11;
    v26 = v49;
LABEL_30:

    goto LABEL_31;
  }

  v13 = v12;
  v45 = array;
  v46 = nodeCopy;
  v14 = 0;
  v48 = 0;
  v15 = *v51;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v51 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v50 + 1) + 8 * i);
      if (([v17 isCurrentTimer] & 1) == 0)
      {
        timerID = [v17 timerID];
        v19 = [truthCopy objectForKey:timerID];
        if (v19)
        {
          v20 = [v17 co_preferredTimer:v19];
          if (v17 != v20 && ([v17 isEqualIgnoringLastModifiedDate:v20] & 1) == 0)
          {
            if (v48)
            {
              v21 = [v48 arrayByAddingObject:v20];

              v48 = v21;
              truthCopy = v47;
            }

            else
            {
              v48 = [MEMORY[0x277CBEA60] arrayWithObject:v20];
            }
          }
        }

        else if (v14)
        {
          v22 = [v14 arrayByAddingObject:v17];

          v14 = v22;
        }

        else
        {
          v14 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
        }

        timerID2 = [v17 timerID];
        [v49 removeObjectForKey:timerID2];
      }
    }

    v13 = [(COTimersRemovedNotification *)v11 countByEnumeratingWithState:&v50 objects:v60 count:16];
  }

  while (v13);

  if (!v48)
  {
    array = v45;
    nodeCopy = v46;
    v26 = v49;
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v24 = [(COTimerNotification *)[COTimersUpdatedNotification alloc] initWithTimers:v48];
  v25 = COCoreLogForCategory(3);
  nodeCopy = v46;
  v26 = v49;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    meshController = [(COMeshAddOn *)self meshController];
    timers = [(COTimerNotification *)v24 timers];
    *buf = 134218498;
    v55 = meshController;
    v56 = 2112;
    v57 = v46;
    v58 = 2112;
    v59 = timers;
    _os_log_debug_impl(&dword_244378000, v25, OS_LOG_TYPE_DEBUG, "%p %@ updating %@", buf, 0x20u);

    truthCopy = v47;
  }

  v27 = [v45 arrayByAddingObject:v24];

  array = v27;
  if (v14)
  {
LABEL_27:
    v28 = [(COTimerNotification *)[COTimersRemovedNotification alloc] initWithTimers:v14];
    v29 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      timers2 = [(COTimerNotification *)v28 timers];
      *buf = 134218498;
      v55 = meshController2;
      v56 = 2112;
      v57 = nodeCopy;
      v58 = 2112;
      v59 = timers2;
      _os_log_debug_impl(&dword_244378000, v29, OS_LOG_TYPE_DEBUG, "%p %@ removing %@", buf, 0x20u);

      truthCopy = v47;
    }

    v30 = [array arrayByAddingObject:v28];

    array = v30;
    goto LABEL_30;
  }

LABEL_31:
  if ([v26 count])
  {
    v31 = [COTimersAddedNotification alloc];
    allValues = [v26 allValues];
    v33 = [(COTimerNotification *)v31 initWithTimers:allValues];

    v34 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      meshController3 = [(COMeshAddOn *)self meshController];
      timers3 = [(COTimerNotification *)v33 timers];
      *buf = 134218498;
      v55 = meshController3;
      v56 = 2112;
      v57 = nodeCopy;
      v58 = 2112;
      v59 = timers3;
      _os_log_debug_impl(&dword_244378000, v34, OS_LOG_TYPE_DEBUG, "%p %@ requires %@", buf, 0x20u);

      truthCopy = v47;
    }

    v35 = [array arrayByAddingObject:v33];

    array = v35;
  }

  v36 = array;

  return array;
}

- (void)_finishMerge:(id)merge
{
  v146 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
  mergeRequest = [(COMeshTimerAddOn *)self mergeRequest];

  log = COCoreLogForCategory(3);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (mergeRequest != mergeCopy)
  {
    if (v7)
    {
      *buf = 134218240;
      v143 = meshController;
      v144 = 2048;
      v145 = mergeCopy;
      _os_log_impl(&dword_244378000, log, OS_LOG_TYPE_DEFAULT, "%p ignoring conclusion of merge %p", buf, 0x16u);
    }

    goto LABEL_92;
  }

  v76 = dispatchQueue;
  if (v7)
  {
    *buf = 134218240;
    v143 = meshController;
    v144 = 2048;
    v145 = mergeCopy;
    _os_log_impl(&dword_244378000, log, OS_LOG_TYPE_DEFAULT, "%p completing merge %p...", buf, 0x16u);
  }

  v77 = mergeCopy;

  mergeTimers = [(COMeshTimerAddOn *)self mergeTimers];
  selfCopy = self;
  mergeResponses = [(COMeshTimerAddOn *)self mergeResponses];
  v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  log = mergeTimers;
  v10 = [log countByEnumeratingWithState:&v130 objects:v141 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v131;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v131 != v12)
        {
          objc_enumerationMutation(log);
        }

        v14 = *(*(&v130 + 1) + 8 * i);
        if (([v14 isCurrentTimer] & 1) == 0)
        {
          timerID = [v14 timerID];
          [v94 setObject:v14 forKey:timerID];
        }
      }

      v11 = [log countByEnumeratingWithState:&v130 objects:v141 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  deletes = [(COMeshTimerAddOn *)self deletes];
  v18 = [deletes countByEnumeratingWithState:&v126 objects:v140 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v127;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v127 != v20)
        {
          objc_enumerationMutation(deletes);
        }

        v22 = *(*(&v126 + 1) + 8 * j);
        identifier = [v22 identifier];
        [v16 setObject:v22 forKey:identifier];
      }

      v19 = [deletes countByEnumeratingWithState:&v126 objects:v140 count:16];
    }

    while (v19);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = mergeResponses;
  v93 = v16;
  v84 = [obj countByEnumeratingWithState:&v122 objects:v139 count:16];
  if (v84)
  {
    v81 = *v123;
    do
    {
      v24 = 0;
      do
      {
        if (*v123 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v88 = v24;
        v25 = [obj objectForKey:{*(*(&v122 + 1) + 8 * v24), v76}];
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v90 = v25;
        timers = [v25 timers];
        v27 = [timers countByEnumeratingWithState:&v118 objects:v138 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v119;
          do
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v119 != v29)
              {
                objc_enumerationMutation(timers);
              }

              v31 = *(*(&v118 + 1) + 8 * k);
              if (([v31 isCurrentTimer] & 1) == 0)
              {
                timerID2 = [v31 timerID];
                v33 = [v94 objectForKey:timerID2];
                v34 = [v31 co_preferredTimer:v33];

                if (v31 == v34)
                {
                  [v94 setObject:v31 forKey:timerID2];
                }
              }
            }

            v28 = [timers countByEnumeratingWithState:&v118 objects:v138 count:16];
          }

          while (v28);
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        deletes2 = [v90 deletes];
        v36 = [deletes2 countByEnumeratingWithState:&v114 objects:v137 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v115;
          do
          {
            for (m = 0; m != v37; ++m)
            {
              if (*v115 != v38)
              {
                objc_enumerationMutation(deletes2);
              }

              v40 = *(*(&v114 + 1) + 8 * m);
              identifier2 = [v40 identifier];
              v42 = [v16 objectForKey:identifier2];
              if (!v42 || ([v40 date], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "date"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "compare:", v44), v44, v16 = v93, v43, v45 == -1))
              {
                [v16 setObject:v40 forKey:identifier2];
              }
            }

            v37 = [deletes2 countByEnumeratingWithState:&v114 objects:v137 count:16];
          }

          while (v37);
        }

        v24 = v88 + 1;
      }

      while ((v88 + 1) != v84);
      v84 = [obj countByEnumeratingWithState:&v122 objects:v139 count:16];
    }

    while (v84);
  }

  v46 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _finishMerge:];
  }

  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __33__COMeshTimerAddOn__finishMerge___block_invoke;
  v112[3] = &unk_278E16F78;
  v47 = v94;
  v113 = v47;
  [v16 enumerateKeysAndObjectsUsingBlock:v112];
  v48 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn _finishMerge:];
  }

  array = [MEMORY[0x277CBEB18] array];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v80 = v47;
  v49 = [(COMeshTimerAddOn *)selfCopy _commandsForReconciling:log toTruth:v47 forNode:0];
  v50 = [v49 countByEnumeratingWithState:&v108 objects:v136 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v109;
    do
    {
      for (n = 0; n != v51; ++n)
      {
        if (*v109 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v108 + 1) + 8 * n);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = v107;
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v56 = __33__COMeshTimerAddOn__finishMerge___block_invoke_143;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v106;
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v56 = __33__COMeshTimerAddOn__finishMerge___block_invoke_2;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v55 = v105;
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v56 = __33__COMeshTimerAddOn__finishMerge___block_invoke_3;
          }
        }

        v55[2] = v56;
        v55[3] = &unk_278E156B0;
        v55[4] = selfCopy;
        v55[5] = v54;
        v57 = MEMORY[0x245D5FF10]();
        [array addObject:v57];
      }

      v51 = [v49 countByEnumeratingWithState:&v108 objects:v136 count:16];
    }

    while (v51);
  }

  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v101 = 0u;
  v85 = obj;
  v59 = selfCopy;
  v58 = v93;
  v82 = [v85 countByEnumeratingWithState:&v101 objects:v135 count:16];
  if (v82)
  {
    v79 = *v102;
    do
    {
      v60 = 0;
      do
      {
        if (*v102 != v79)
        {
          objc_enumerationMutation(v85);
        }

        v61 = *(*(&v101 + 1) + 8 * v60);
        v62 = [v85 objectForKey:{v61, v76}];
        v89 = v62;
        v91 = v60;
        if ([v62 notModified])
        {
          timers2 = log;
          v64 = COCoreLogForCategory(3);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v143 = meshController;
            v144 = 2112;
            v145 = v61;
            _os_log_debug_impl(&dword_244378000, v64, OS_LOG_TYPE_DEBUG, "%p response is not-modified for %@", buf, 0x16u);
          }
        }

        else
        {
          timers2 = [v62 timers];
        }

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        obja = timers2;
        v65 = [(COMeshTimerAddOn *)v59 _commandsForReconciling:timers2 toTruth:v80 forNode:v61];
        v66 = [v65 countByEnumeratingWithState:&v97 objects:v134 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v98;
          do
          {
            for (ii = 0; ii != v67; ++ii)
            {
              if (*v98 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v97 + 1) + 8 * ii);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v96[0] = MEMORY[0x277D85DD0];
                v96[1] = 3221225472;
                v96[2] = __33__COMeshTimerAddOn__finishMerge___block_invoke_145;
                v96[3] = &unk_278E15728;
                v96[4] = v59;
                v96[5] = v70;
                v96[6] = v61;
                v71 = MEMORY[0x245D5FF10](v96);
                [array addObject:v71];

                v59 = selfCopy;
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v97 objects:v134 count:16];
          }

          while (v67);
        }

        v60 = v91 + 1;
        v58 = v93;
      }

      while (v91 + 1 != v82);
      v82 = [v85 countByEnumeratingWithState:&v101 objects:v135 count:16];
    }

    while (v82);
  }

  [(COMeshTimerAddOn *)v59 setMergeRequest:0];
  [(COMeshTimerAddOn *)v59 setMergeTimers:0];
  v72 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshTimerAddOn *)v59 setMergeResponses:v72];

  v73 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(COMeshTimerAddOn *)v59 setMergingNodes:v73];

  queuedCommands = [(COMeshTimerAddOn *)v59 queuedCommands];
  [array addObjectsFromArray:queuedCommands];

  [(COMeshTimerAddOn *)v59 setQueuedCommands:array];
  v75 = COCoreLogForCategory(3);
  mergeCopy = v77;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v143 = meshController;
    v144 = 2048;
    v145 = v77;
    _os_log_impl(&dword_244378000, v75, OS_LOG_TYPE_DEFAULT, "%p concluded merge %p", buf, 0x16u);
  }

  [(COMeshTimerAddOn *)v59 _processQueuedCommands];
  dispatchQueue = v76;
LABEL_92:
}

void __33__COMeshTimerAddOn__finishMerge___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 32) removeObjectForKey:v4];
  }
}

void __33__COMeshTimerAddOn__finishMerge___block_invoke_145(uint64_t a1)
{
  v2 = [*(a1 + 32) meshController];
  [v2 sendCommand:*(a1 + 40) toPeer:*(a1 + 48)];
}

- (void)_reloadIndexWithCompletion:(id)completion
{
  completionCopy = completion;
  observedTimerManager = [(COMeshTimerAddOn *)self observedTimerManager];
  timers = [observedTimerManager timers];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke;
  v14[3] = &unk_278E15C10;
  objc_copyWeak(&v16, &location);
  v7 = completionCopy;
  v15 = v7;
  v8 = [timers addFailureBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_2;
  v11[3] = &unk_278E16FA0;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  v10 = [timers addSuccessBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_cold_1();
    }

    v6 = [WeakRetained meshControllerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_146;
    v7[3] = &unk_278E16240;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

uint64_t __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_146(uint64_t a1)
{
  [*(a1 + 32) setTimerIndex:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v17 = v3;
    v5 = v3;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if (([v12 isCurrentTimer] & 1) == 0)
          {
            v13 = [v12 timerID];
            v14 = [v12 lastModifiedDate];
            if (!v14)
            {
              v14 = [MEMORY[0x277CBEAA8] distantPast];
            }

            [v6 setObject:v14 forKey:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v15 = [WeakRetained meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_3;
    block[3] = &unk_278E15B60;
    block[4] = WeakRetained;
    v19 = v6;
    v20 = *(a1 + 32);
    v16 = v6;
    dispatch_async(v15, block);

    v3 = v17;
  }
}

uint64_t __47__COMeshTimerAddOn__reloadIndexWithCompletion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timerIndex];
  v3 = [v2 isEqualToDictionary:*(a1 + 40)];

  [*(a1 + 32) setTimerIndex:*(a1 + 40)];
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "yes";
    v6 = *(a1 + 32);
    if (v3)
    {
      v5 = "no";
    }

    v8 = 134218242;
    v9 = v6;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p timer index reloaded; updated: %s", &v8, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v3 ^ 1u);
  }

  return result;
}

- (void)_processQueuedCommands
{
  v14 = *MEMORY[0x277D85DE8];
  queuedCommands = [(COMeshTimerAddOn *)self queuedCommands];
  [(COMeshTimerAddOn *)self setQueuedCommands:MEMORY[0x277CBEBF8]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = queuedCommands;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addTimerDeleteEvent:(id)event
{
  eventCopy = event;
  deletes = [(COMeshTimerAddOn *)self deletes];
  v6 = [deletes arrayByAddingObject:eventCopy];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [currentCalendar dateByAddingUnit:16 value:-2 toDate:v8 options:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__COMeshTimerAddOn__addTimerDeleteEvent___block_invoke;
  v14[3] = &unk_278E16FC8;
  v15 = v9;
  v10 = v9;
  v11 = [v6 indexesOfObjectsPassingTest:v14];
  if ([v11 count])
  {
    v12 = [v6 mutableCopy];
    [v12 removeObjectsAtIndexes:v11];

    v6 = v12;
  }

  v13 = [v6 sortedArrayUsingSelector:sel_compare_];
  [(COMeshTimerAddOn *)self setDeletes:v13];
}

BOOL __41__COMeshTimerAddOn__addTimerDeleteEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 compare:*(a1 + 32)] == -1;

  return v4;
}

- (id)timers
{
  performsLocalActions = [(COMeshTimerAddOn *)self performsLocalActions];

  return [(COMeshTimerAddOn *)self _timersForAccessoryIdentifier:0 allowLocalStorage:performsLocalActions];
}

- (id)addTimer:(id)timer client:(id)client member:(id)member
{
  v61 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  clientCopy = client;
  memberCopy = member;
  v11 = [(COTimerRequest *)[COTimerCreateRequest alloc] initWithTimer:timerCopy];
  meshController = [(COMeshAddOn *)self meshController];
  v44 = timerCopy;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v26 = memberCopy;
    v35 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      timerID = [v44 timerID];
      *buf = 134218242;
      v58 = meshController2;
      v59 = 2112;
      v60 = timerID;
      _os_log_impl(&dword_244378000, v35, OS_LOG_TYPE_DEFAULT, "%p directly add a timer %@", buf, 0x16u);
    }

    v38 = objc_alloc_init(MEMORY[0x277D2C900]);
    dispatchQueue = [meshController dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    v27 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v54 = v11;
    v28 = v38;
    v55 = v28;
    v56 = meshController;
    dispatch_async(dispatchQueue, block);

    v32 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (memberCopy)
    {
      v42 = v11;
      if (v15)
      {
        timerID2 = [timerCopy timerID];
        *buf = 134218242;
        v58 = meshController;
        v59 = 2112;
        v60 = timerID2;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to add %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTTimerCreateAction alloc] initWithTimer:timerCopy];
      clientLifetimeActivity = [clientCopy clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:clientLifetimeActivity];

      if (v20)
      {
        nw_activity_activate();
      }

      v43 = clientCopy;
      clientBundleIdentifier = [clientCopy clientBundleIdentifier];
      if (![clientBundleIdentifier length])
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];

        clientBundleIdentifier = bundleIdentifier;
      }

      actionDirector = [(COMeshTimerAddOn *)self actionDirector];
      v25 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
      v47[0] = MEMORY[0x277D85DD0];
      v26 = memberCopy;
      v27 = &off_244448000;
      v47[1] = 3221225472;
      v47[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155;
      v47[3] = &unk_278E15778;
      v48 = v20;
      v49 = v18;
      v50 = clientBundleIdentifier;
      v28 = v17;
      v51 = v28;
      v52 = meshController;
      v29 = clientBundleIdentifier;
      v30 = v18;
      v31 = v20;
      [actionDirector requestAction:v30 members:v25 activity:v31 withCompletion:v47];

      v32 = 0;
      v11 = v42;
      clientCopy = v43;
    }

    else
    {
      v26 = 0;
      if (v15)
      {
        meshController3 = [(COMeshAddOn *)self meshController];
        timerID3 = [v44 timerID];
        *buf = 134218242;
        v58 = meshController3;
        v59 = 2112;
        v60 = timerID3;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to add a timer %@", buf, 0x16u);
      }

      v28 = [(COMeshTimerAddOn *)self _sendRequest:v11 client:clientCopy];
      v32 = 0;
      v27 = &off_244448000;
    }
  }

  recorder = [(COMeshTimerAddOn *)self recorder];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = *(v27 + 186);
  v45[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_156;
  v45[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v46 = v32;
  (recorder)[2](recorder, 0x2857B5848, v45);

  return v28;
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerCreateRequest:v3 callback:v4];
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      xpc_dictionary_set_string(v7, "command", [v9 UTF8String]);

      xpc_dictionary_set_string(v7, "client", [*(a1 + 48) UTF8String]);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v6)
  {
    v10 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155_cold_1();
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)updateTimer:(id)timer client:(id)client member:(id)member
{
  v61 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  clientCopy = client;
  memberCopy = member;
  v11 = [(COTimerRequest *)[COTimerUpdateRequest alloc] initWithTimer:timerCopy];
  meshController = [(COMeshAddOn *)self meshController];
  v44 = timerCopy;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v26 = memberCopy;
    v35 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      timerID = [v44 timerID];
      *buf = 134218242;
      v58 = meshController2;
      v59 = 2112;
      v60 = timerID;
      _os_log_impl(&dword_244378000, v35, OS_LOG_TYPE_DEFAULT, "%p directly update a timer %@", buf, 0x16u);
    }

    v38 = objc_alloc_init(MEMORY[0x277D2C900]);
    dispatchQueue = [meshController dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    v27 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v54 = v11;
    v28 = v38;
    v55 = v28;
    v56 = meshController;
    dispatch_async(dispatchQueue, block);

    v32 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (memberCopy)
    {
      v42 = v11;
      if (v15)
      {
        timerID2 = [timerCopy timerID];
        *buf = 134218242;
        v58 = meshController;
        v59 = 2112;
        v60 = timerID2;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to update %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTTimerUpdateAction alloc] initWithTimer:timerCopy];
      clientLifetimeActivity = [clientCopy clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:clientLifetimeActivity];

      if (v20)
      {
        nw_activity_activate();
      }

      v43 = clientCopy;
      clientBundleIdentifier = [clientCopy clientBundleIdentifier];
      if (![clientBundleIdentifier length])
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];

        clientBundleIdentifier = bundleIdentifier;
      }

      actionDirector = [(COMeshTimerAddOn *)self actionDirector];
      v25 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
      v47[0] = MEMORY[0x277D85DD0];
      v26 = memberCopy;
      v27 = &off_244448000;
      v47[1] = 3221225472;
      v47[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158;
      v47[3] = &unk_278E15778;
      v48 = v20;
      v49 = v18;
      v50 = clientBundleIdentifier;
      v28 = v17;
      v51 = v28;
      v52 = meshController;
      v29 = clientBundleIdentifier;
      v30 = v18;
      v31 = v20;
      [actionDirector requestAction:v30 members:v25 activity:v31 withCompletion:v47];

      v32 = 0;
      v11 = v42;
      clientCopy = v43;
    }

    else
    {
      v26 = 0;
      if (v15)
      {
        meshController3 = [(COMeshAddOn *)self meshController];
        timerID3 = [v44 timerID];
        *buf = 134218242;
        v58 = meshController3;
        v59 = 2112;
        v60 = timerID3;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to update a timer %@", buf, 0x16u);
      }

      v28 = [(COMeshTimerAddOn *)self _sendRequest:v11 client:clientCopy];
      v32 = 0;
      v27 = &off_244448000;
    }
  }

  recorder = [(COMeshTimerAddOn *)self recorder];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = *(v27 + 186);
  v45[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_159;
  v45[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v46 = v32;
  (recorder)[2](recorder, 0x2857B5848, v45);

  return v28;
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerUpdateRequest:v3 callback:v4];
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      xpc_dictionary_set_string(v7, "command", [v9 UTF8String]);

      xpc_dictionary_set_string(v7, "client", [*(a1 + 48) UTF8String]);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v6)
  {
    v10 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158_cold_1();
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)removeTimer:(id)timer client:(id)client member:(id)member
{
  v64 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  clientCopy = client;
  memberCopy = member;
  v11 = [(COTimerRequest *)[COTimerDeleteRequest alloc] initWithTimer:timerCopy];
  meshController = [(COMeshAddOn *)self meshController];
  v47 = timerCopy;
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v38 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      timerID = [timerCopy timerID];
      *buf = 134218242;
      v61 = meshController2;
      v62 = 2112;
      v63 = timerID;
      _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "%p directly remove a timer %@", buf, 0x16u);
    }

    v41 = objc_alloc_init(MEMORY[0x277D2C900]);
    dispatchQueue = [meshController dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    v25 = meshController;
    v30 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v57 = v11;
    v31 = v41;
    v58 = v31;
    v59 = v25;
    dispatch_async(dispatchQueue, block);

    v35 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (memberCopy)
    {
      v45 = v11;
      if (v15)
      {
        timerID2 = [timerCopy timerID];
        *buf = 134218242;
        v61 = meshController;
        v62 = 2112;
        v63 = timerID2;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to remove %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      timerID3 = [timerCopy timerID];
      v21 = [COMTDeleteAction actionWithTargetType:v19 targetIdentifier:timerID3];

      clientLifetimeActivity = [clientCopy clientLifetimeActivity];
      v23 = [CONetworkActivityFactory activityWithLabel:4 parentActivity:clientLifetimeActivity];

      if (v23)
      {
        nw_activity_activate();
      }

      v46 = clientCopy;
      clientBundleIdentifier = [clientCopy clientBundleIdentifier];
      v25 = meshController;
      if (![clientBundleIdentifier length])
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];

        clientBundleIdentifier = bundleIdentifier;
      }

      actionDirector = [(COMeshTimerAddOn *)self actionDirector];
      v29 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
      v50[0] = MEMORY[0x277D85DD0];
      v30 = &off_244448000;
      v50[1] = 3221225472;
      v50[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161;
      v50[3] = &unk_278E15778;
      v51 = v23;
      v52 = v21;
      v53 = clientBundleIdentifier;
      v31 = v17;
      v54 = v31;
      v55 = v25;
      v32 = clientBundleIdentifier;
      v33 = v21;
      v34 = v23;
      [actionDirector requestAction:v33 members:v29 activity:v34 withCompletion:v50];

      v35 = 0;
      v11 = v45;
      clientCopy = v46;
    }

    else
    {
      v25 = meshController;
      if (v15)
      {
        meshController3 = [(COMeshAddOn *)self meshController];
        timerID4 = [v47 timerID];
        *buf = 134218242;
        v61 = meshController3;
        v62 = 2112;
        v63 = timerID4;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to remove a timer %@", buf, 0x16u);
      }

      v31 = [(COMeshTimerAddOn *)self _sendRequest:v11 client:clientCopy];
      v35 = 0;
      v30 = &off_244448000;
    }
  }

  recorder = [(COMeshTimerAddOn *)self recorder];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = *(v30 + 186);
  v48[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_162;
  v48[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v49 = v35;
  (recorder)[2](recorder, 0x2857B5848, v48);

  return v31;
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerDeleteRequest:v3 callback:v4];
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      xpc_dictionary_set_string(v7, "command", [v9 UTF8String]);

      xpc_dictionary_set_string(v7, "client", [*(a1 + 48) UTF8String]);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v6)
  {
    v10 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161_cold_1();
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)dismissTimerWithIdentifier:(id)identifier client:(id)client
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v8 = [[COTimerDismissRequest alloc] initWithTimerIdentifier:identifierCopy];
  meshController = [(COMeshAddOn *)self meshController];
  if (-[COMeshTimerAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v22 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v35 = meshController2;
      v36 = 2112;
      v37 = identifierCopy;
      _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p directly dismiss a timer %@", buf, 0x16u);
    }

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    dispatchQueue = [meshController dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v13 = &v31;
    v31 = v8;
    v18 = v24;
    v32 = v18;
    v33 = meshController;
    dispatch_async(dispatchQueue, block);

    v19 = 1;
  }

  else
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    v12 = [timerManager dismissTimerWithIdentifier:identifierCopy];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163;
    v28[3] = &unk_278E17010;
    v28[4] = self;
    v13 = &v29;
    v14 = identifierCopy;
    v29 = v14;
    v15 = [v12 addCompletionBlock:v28];

    v16 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      meshController3 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v35 = meshController3;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p requesting leader to dismiss a timer %@", buf, 0x16u);
    }

    v18 = [(COMeshTimerAddOn *)self _sendRequest:v8 client:clientCopy];
    v19 = 0;
  }

  recorder = [(COMeshTimerAddOn *)self recorder];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_165;
  v26[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v27 = v19;
  (recorder)[2](recorder, 0x2857B5848, v26);

  return v18;
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleTimerDismissRequest:v3 callback:v4];
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) meshController];
    v8 = *(a1 + 40);
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p early dismissed %@.", &v9, 0x16u);
  }
}

- (BOOL)_isTimer:(id)timer targetingAccessory:(id)accessory
{
  v14[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  timerCopy = timer;
  if (accessoryCopy)
  {
    homekit = [(COMeshTimerAddOn *)self homekit];
    v9 = [homekit homeForAccessory:accessoryCopy];
    if (v9)
    {
      v10 = [homekit identifiersForAccessoriesAssociatedWithAccessory:accessoryCopy inHome:v9];
    }

    else
    {
      uniqueIdentifier = [accessoryCopy uniqueIdentifier];
      v14[0] = uniqueIdentifier;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    }

    v11 = [(COMeshTimerAddOn *)self _isTimer:timerCopy targetingAccessoryIdentifiers:v10];
  }

  else
  {
    v11 = [(COMeshTimerAddOn *)self _isTimer:timerCopy targetingAccessoryIdentifiers:0];
    homekit = timerCopy;
  }

  return v11;
}

- (void)handleTimerReadRequest:(id)request callback:(id)callback
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  accessoryUniqueIdentifier = [requestCopy accessoryUniqueIdentifier];
  v10 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    meshController = [(COMeshAddOn *)self meshController];
    *buf = 134218242;
    v32 = meshController;
    v33 = 2112;
    v34 = accessoryUniqueIdentifier;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p retrieving timers for %@...", buf, 0x16u);
  }

  requiresFilter = [requestCopy requiresFilter];
  v13 = requiresFilter;
  v14 = 0;
  if (requiresFilter && accessoryUniqueIdentifier)
  {
    homekit = [(COMeshTimerAddOn *)self homekit];
    v16 = [homekit accessoryWithUniqueIdentifier:accessoryUniqueIdentifier];
    if (!v16)
    {
      timers = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
      v22 = [[COMeshResponse alloc] initWithError:timers];
      callbackCopy[2](callbackCopy, v22, 0);
      goto LABEL_11;
    }

    v14 = v16;
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    timers = [timerManager timers];
  }

  else
  {
    timers = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke;
  v29[3] = &unk_278E17038;
  v19 = callbackCopy;
  v30 = v19;
  v20 = [timers addFailureBlock:v29];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_167;
  v23[3] = &unk_278E17060;
  v28 = v13;
  v24 = v14;
  selfCopy = self;
  v26 = requestCopy;
  v27 = v19;
  homekit = v14;
  v21 = [timers addSuccessBlock:v23];

  v22 = v30;
LABEL_11:
}

void __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_167(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_2;
    v27 = &unk_278E16C88;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v28 = v4;
    v29 = v5;
    v6 = [v3 indexesOfObjectsPassingTest:&v24];
    if ([v6 count])
    {
      v7 = [v3 mutableCopy];
      [v7 removeObjectsAtIndexes:v6];

      v3 = v7;
    }

    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "... returning filtered timers list\n%@", buf, 0xCu);
    }

    v9 = [[COTimerReadResponse alloc] initWithFilteredTimers:v3];
    goto LABEL_17;
  }

  if (([*(a1 + 48) isForMerge] & 1) == 0)
  {
    v12 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "... returning timers list\n%@", buf, 0xCu);
    }

    v11 = [[COTimerReadResponse alloc] initWithTimers:v3];
    goto LABEL_16;
  }

  if (![*(a1 + 40) performsLocalActions] || objc_msgSend(MEMORY[0x277CFD0B8], "isDistributedTimersEnabled"))
  {
    v10 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "... returning skip-in-merge", buf, 2u);
    }

    v11 = [[COTimerReadResponse alloc] initWithSkipInMerge];
LABEL_16:
    v9 = v11;
    goto LABEL_17;
  }

  v13 = [*(a1 + 48) eTag];
  if (v13 && (v14 = v13, [*(a1 + 48) eTag], v15 = objc_claimAutoreleasedReturnValue(), eTagForTimers(v3), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v14, v17))
  {
    v18 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "... returning not-modified", buf, 2u);
    }

    v19 = [COTimerReadResponse alloc];
    v20 = [*(a1 + 40) deletes];
    v21 = [(COTimerReadResponse *)v19 initNotModifiedWithDeletes:v20];
  }

  else
  {
    v22 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "... returning alarms list and deletes\n%@", buf, 0xCu);
    }

    v23 = [COTimerReadResponse alloc];
    v20 = [*(a1 + 40) deletes];
    v21 = [(COTimerReadResponse *)v23 initWithTimers:v3 deletes:v20];
  }

  v9 = v21;

LABEL_17:
  (*(*(a1 + 56) + 16))();
}

uint64_t __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isTimer:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFD068]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (void)handleTimerCreateRequest:(id)request callback:(id)callback
{
  v34 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  requestCopy = request;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  timer = [requestCopy timer];

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timer timerID];
    *buf = 134218242;
    v31 = meshController;
    v32 = 2112;
    v33 = timerID;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p adding timer %@...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    [timerManager addTimer:timer];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    timerManager = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [v14 futureWithError:timerManager];
  }
  v15 = ;

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke;
  v27[3] = &unk_278E17088;
  v16 = timer;
  v28 = v16;
  v17 = callbackCopy;
  v29 = v17;
  v18 = [v15 addFailureBlock:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168;
  v23[3] = &unk_278E170B0;
  v25 = meshController;
  v26 = v17;
  v24 = v16;
  v19 = meshController;
  v20 = v17;
  v21 = v16;
  v22 = [v15 addSuccessBlock:v23];
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) timerID];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... timer (%@) create completed", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COTimersAddedNotification alloc];
  v10 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8 = [(COTimerNotification *)v6 initWithTimers:v7];

  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
}

- (void)handleTimerUpdateRequest:(id)request callback:(id)callback
{
  v34 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  requestCopy = request;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  timer = [requestCopy timer];

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timer timerID];
    *buf = 134218242;
    v31 = meshController;
    v32 = 2112;
    v33 = timerID;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p updating timer %@...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    [timerManager updateTimer:timer];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    timerManager = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [v14 futureWithError:timerManager];
  }
  v15 = ;

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke;
  v27[3] = &unk_278E17088;
  v16 = timer;
  v28 = v16;
  v17 = callbackCopy;
  v29 = v17;
  v18 = [v15 addFailureBlock:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169;
  v23[3] = &unk_278E170B0;
  v25 = meshController;
  v26 = v17;
  v24 = v16;
  v19 = meshController;
  v20 = v17;
  v21 = v16;
  v22 = [v15 addSuccessBlock:v23];
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) timerID];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... timer (%@) update completed", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COTimersUpdatedNotification alloc];
  v10 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8 = [(COTimerNotification *)v6 initWithTimers:v7];

  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
}

- (void)handleTimerDeleteRequest:(id)request callback:(id)callback
{
  v35 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  requestCopy = request;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  timer = [requestCopy timer];

  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timer timerID];
    *buf = 134218242;
    v32 = meshController;
    v33 = 2112;
    v34 = timerID;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p delete timer %@...", buf, 0x16u);
  }

  if ([(COMeshTimerAddOn *)self performsLocalActions])
  {
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    [timerManager removeTimer:timer];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    timerManager = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [v14 futureWithError:timerManager];
  }
  v15 = ;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke;
  v28[3] = &unk_278E17088;
  v16 = timer;
  v29 = v16;
  v17 = callbackCopy;
  v30 = v17;
  v18 = [v15 addFailureBlock:v28];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170;
  v23[3] = &unk_278E170D8;
  v24 = v16;
  selfCopy = self;
  v26 = meshController;
  v27 = v17;
  v19 = meshController;
  v20 = v17;
  v21 = v16;
  v22 = [v15 addSuccessBlock:v23];
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) timerID];
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "... timer (%@) delete completed", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [COTimerDeleteEvent alloc];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(COTimerDeleteEvent *)v6 initWithIdentifier:v3 date:v7];
  [v5 _addTimerDeleteEvent:v8];

  v9 = *(a1 + 56);
  v10 = objc_alloc_init(COMeshResponse);
  (*(v9 + 16))(v9, v10, 0);

  v11 = [COTimersRemovedNotification alloc];
  v15 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [(COTimerNotification *)v11 initWithTimers:v12];

  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170_cold_1(a1, v2);
  }

  [*(a1 + 48) sendNotification:v13];
}

- (void)handleTimerDismissRequest:(id)request callback:(id)callback
{
  v50 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  meshController = [(COMeshAddOn *)self meshController];
  dispatchQueue = [meshController dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifier = [requestCopy identifier];
  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = meshController;
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p dismiss timer %@...", buf, 0x16u);
  }

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__11;
  v48 = __Block_byref_object_dispose__11;
  v49 = 0;
  timerManager = [(COMeshTimerAddOn *)self timerManager];
  v13 = [timerManager dismissTimerWithIdentifier:identifier];
  timers = [timerManager timers];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke;
  v39[3] = &unk_278E17100;
  v42 = v44;
  v43 = buf;
  v15 = meshController;
  v40 = v15;
  selfCopy = self;
  v16 = MEMORY[0x245D5FF10](v39);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174;
  v36[3] = &unk_278E17088;
  v17 = identifier;
  v37 = v17;
  v18 = callbackCopy;
  v38 = v18;
  v19 = [v13 addFailureBlock:v36];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_175;
  v31[3] = &unk_278E17128;
  v20 = v17;
  v32 = v20;
  v21 = v18;
  v33 = v21;
  v35 = v44;
  v22 = v16;
  v34 = v22;
  v23 = [v13 addSuccessBlock:v31];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_176;
  v27[3] = &unk_278E17178;
  v24 = v20;
  v28 = v24;
  v30 = buf;
  v25 = v22;
  v29 = v25;
  v26 = [timers addSuccessBlock:v27];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v44, 8);
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = a1 + 56;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = [COTimerFiringTimerDismissedNotification alloc];
      v11[0] = *(*(*v2 + 8) + 40);
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v5 = [(COTimerNotification *)v3 initWithTimers:v4];

      v6 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_cold_1(a1, v2);
      }

      [*(a1 + 32) sendNotification:v5];
      v7 = [*(a1 + 40) delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = *(a1 + 40);
        v10 = *(*(*(a1 + 56) + 8) + 40);
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
        [v7 timerAddOn:v8 didDismissTimers:v9];
      }
    }
  }
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_174_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

uint64_t __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_175(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... timer (%@) dismiss completed", &v7, 0xCu);
  }

  v4 = a1[5];
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  *(*(a1[7] + 8) + 24) = 1;
  return (*(a1[6] + 16))();
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_176(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_2;
  v6[3] = &unk_278E17150;
  v7 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 timerIDString];
  v8 = [v7 isEqualToString:a1[4]];
  *a4 = v8;

  if (v8)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    (*(a1[5] + 16))();
  }
}

- (void)handleTimersAddedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  timers = [notificationCopy timers];

  if ([timers count])
  {
    if ([(COMeshTimerAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
      timerManager = [(COMeshTimerAddOn *)self timerManager];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke;
      v16[3] = &unk_278E171A0;
      v16[4] = self;
      v17 = v7;
      v18 = timerManager;
      v10 = timerManager;
      v11 = v7;
      [timers enumerateObjectsUsingBlock:v16];
      futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke_179;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = timers;
    v13 = [futureWithNoResult addSuccessBlock:v14];
  }

  else
  {
    futureWithNoResult = COCoreLogForCategory(3);
    if (os_log_type_enabled(futureWithNoResult, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimersAddedNotification:];
    }
  }
}

void __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 timerID];
    v9 = 134218242;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p adding local timer %@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) addTimer:v3];
  [v7 addObject:v8];
}

void __50__COMeshTimerAddOn_handleTimersAddedNotification___block_invoke_179(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished adding local timers", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didAddTimers:*(a1 + 40)];
  }
}

- (void)handleTimersRemovedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  timers = [notificationCopy timers];

  if ([timers count])
  {
    if ([(COMeshTimerAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
      v9 = [MEMORY[0x277CBEAA8] now];
      timerManager = [(COMeshTimerAddOn *)self timerManager];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke;
      v18[3] = &unk_278E171F0;
      v18[4] = self;
      v19 = v9;
      v20 = v7;
      v21 = timerManager;
      v11 = timerManager;
      v12 = v7;
      v13 = v9;
      [timers enumerateObjectsUsingBlock:v18];
      futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:v12 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke_181;
    v16[3] = &unk_278E171C8;
    v16[4] = self;
    v17 = timers;
    v15 = [futureWithNoResult addSuccessBlock:v16];
  }

  else
  {
    futureWithNoResult = COCoreLogForCategory(3);
    if (os_log_type_enabled(futureWithNoResult, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimersRemovedNotification:];
    }
  }
}

void __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 timerID];
  v5 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v11 = 134218242;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p removing local timer %@", &v11, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [[COTimerDeleteEvent alloc] initWithIdentifier:v4 date:*(a1 + 40)];
  [v7 _addTimerDeleteEvent:v8];

  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) removeTimer:v3];

  [v9 addObject:v10];
}

void __52__COMeshTimerAddOn_handleTimersRemovedNotification___block_invoke_181(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished removing local timers", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didRemoveTimers:*(a1 + 40)];
  }
}

- (void)handleTimersUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  timers = [notificationCopy timers];

  if ([timers count])
  {
    if ([(COMeshTimerAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
      timerManager = [(COMeshTimerAddOn *)self timerManager];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke;
      v16[3] = &unk_278E171A0;
      v16[4] = self;
      v17 = v7;
      v18 = timerManager;
      v10 = timerManager;
      v11 = v7;
      [timers enumerateObjectsUsingBlock:v16];
      futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke_182;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = timers;
    v13 = [futureWithNoResult addSuccessBlock:v14];
  }

  else
  {
    futureWithNoResult = COCoreLogForCategory(3);
    if (os_log_type_enabled(futureWithNoResult, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimersUpdatedNotification:];
    }
  }
}

void __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 timerID];
    v9 = 134218242;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p updating local timer %@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) updateTimer:v3];
  [v7 addObject:v8];
}

void __52__COMeshTimerAddOn_handleTimersUpdatedNotification___block_invoke_182(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished updating local timers", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didUpdateTimers:*(a1 + 40)];
  }
}

- (void)handleTimerFiredNotification:(id)notification
{
  notificationCopy = notification;
  if (![(COMeshTimerAddOn *)self performsLocalActions])
  {
    delegate = [(COMeshTimerAddOn *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      timers = [notificationCopy timers];
      [delegate timerAddOn:self didUpdateTimers:timers];
    }
  }
}

- (void)handleTimerFiringTimerDismissedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  timers = [notificationCopy timers];

  if ([timers count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
    timerManager = [(COMeshTimerAddOn *)self timerManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke;
    v16[3] = &unk_278E171A0;
    v16[4] = self;
    v17 = v7;
    v18 = timerManager;
    v10 = timerManager;
    v11 = v7;
    [timers enumerateObjectsUsingBlock:v16];
    v12 = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke_183;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = timers;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v8 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn handleTimerFiringTimerDismissedNotification:];
    }
  }
}

void __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a2 timerID];
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p dismissing local timer %@", &v10, 0x16u);
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = [v3 UUIDString];
  v9 = [v6 dismissTimerWithIdentifier:v8];
  [v7 addObject:v9];
}

void __64__COMeshTimerAddOn_handleTimerFiringTimerDismissedNotification___block_invoke_183(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished dismissing local timers", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 timerAddOn:*(a1 + 32) didDismissTimers:*(a1 + 40)];
  }
}

- (void)handleTimerManagerStateResetNotification:(id)notification
{
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn handleTimerManagerStateResetNotification:?];
  }

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didResetTimerAddOn:self];
  }
}

- (void)timersAsAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn timersAsAccessory:? fromClient:? withCallback:?];
  }

  if (accessoryCopy)
  {
    performsLocalActions = 0;
LABEL_5:
    v13 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
    goto LABEL_6;
  }

  performsLocalActions = [(COMeshTimerAddOn *)self performsLocalActions];
  v13 = [(COMeshTimerAddOn *)self _currentAccessoryForClient:clientCopy];
  if (v13)
  {
    accessoryCopy = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v13];

    if (accessoryCopy)
    {
      goto LABEL_5;
    }

    v13 = 0;
  }

  else
  {
    accessoryCopy = 0;
  }

LABEL_6:
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__11;
  v26[4] = __Block_byref_object_dispose__11;
  v27 = os_transaction_create();
  if (v13)
  {
    v14 = [(COMeshTimerAddOn *)self _timersForAccessory:accessoryCopy member:v13];
  }

  else
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    v14 = [(COMeshTimerAddOn *)self _timersForAccessoryIdentifier:uniqueIdentifier allowLocalStorage:performsLocalActions];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke;
  v23[3] = &unk_278E16C38;
  v16 = callbackCopy;
  v24 = v16;
  v25 = v26;
  v17 = [v14 addFailureBlock:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2;
  v20[3] = &unk_278E17218;
  v18 = v16;
  v21 = v18;
  v22 = v26;
  v19 = [v14 addSuccessBlock:v20];

  _Block_object_dispose(v26, 8);
}

void __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)timersForAccessories:(id)accessories fromClient:(id)client callback:(id)callback
{
  accessoriesCopy = accessories;
  clientCopy = client;
  callbackCopy = callback;
  meshController = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn timersForAccessories:fromClient:callback:];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  meshController2 = [(COMeshAddOn *)self meshController];
  nodeManager = [meshController2 nodeManager];
  v17 = [nodeManager activeNodesWithSelfNode:1];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke;
  v38[3] = &unk_278E17240;
  v18 = v17;
  v39 = v18;
  v19 = array;
  v40 = v19;
  selfCopy = self;
  v20 = array2;
  v42 = v20;
  v21 = meshController;
  v43 = v21;
  [accessoriesCopy enumerateObjectsUsingBlock:v38];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__11;
  v36[4] = __Block_byref_object_dispose__11;
  v37 = os_transaction_create();
  dispatchQueue = [v21 dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_187;
  block[3] = &unk_278E172B8;
  v29 = v19;
  selfCopy2 = self;
  v31 = clientCopy;
  v32 = v20;
  v33 = v21;
  v34 = callbackCopy;
  v35 = v36;
  v23 = callbackCopy;
  v24 = v21;
  v25 = v20;
  v26 = clientCopy;
  v27 = v19;
  dispatch_async(dispatchQueue, block);

  _Block_object_dispose(v36, 8);
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 categoryType];
  v5 = [v3 IDSIdentifier];
  if (![v4 isEqualToString:*MEMORY[0x277CCE8B0]] || (COMeshNodeForIDSIdentifier(*(a1 + 32), v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = *(a1 + 40);
LABEL_4:
    [v7 addObject:v3];
    goto LABEL_5;
  }

  v8 = [*(a1 + 48) secondaryClusterMemberForAccessory:v3];

  if (v8)
  {
    v7 = *(a1 + 56);
    goto LABEL_4;
  }

  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 64);
    v11 = 134218242;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p not getting timers for %@, accessory unavailable", &v11, 0x16u);
  }

LABEL_5:
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_187(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 40) _timersForAccessories:*(a1 + 32) fromClient:*(a1 + 48) results:v2];
    [v3 addObject:v4];
  }

  if ([*(a1 + 56) count])
  {
    v5 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_2;
    v25[3] = &unk_278E16E38;
    v6 = v3;
    v7 = *(a1 + 40);
    v26 = v6;
    v27 = v7;
    v28 = v2;
    [v5 enumerateObjectsUsingBlock:v25];
  }

  v8 = MEMORY[0x277D2C938];
  v9 = [*(a1 + 64) dispatchQueue];
  v10 = [v8 schedulerWithDispatchQueue:v9];

  v11 = [MEMORY[0x277D2C900] combineAllFutures:v3 ignoringErrors:1 scheduler:v10];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_5;
  v21[3] = &unk_278E17290;
  v12 = *(a1 + 72);
  v22 = v2;
  v23 = v12;
  v24 = *(a1 + 80);
  v13 = v2;
  v14 = [v11 addSuccessBlock:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_6;
  v18[3] = &unk_278E16C38;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v19 = v15;
  v20 = v16;
  v17 = [v11 addFailureBlock:v18];
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  [a1[4] addObject:v4];
  v5 = [a1[5] secondaryClusterMemberForAccessory:v3];
  v6 = [a1[5] _timersForAccessory:v3 member:v5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_3;
  v14[3] = &unk_278E17268;
  v15 = a1[6];
  v16 = v3;
  v7 = v4;
  v17 = v7;
  v8 = v3;
  v9 = [v6 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_4;
  v12[3] = &unk_278E15B38;
  v13 = v7;
  v10 = v7;
  v11 = [v6 addFailureBlock:v12];
}

uint64_t __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 uniqueIdentifier];
  [v4 setObject:v3 forKey:v7];

  v8 = a1[6];

  return [v8 finishWithNoResult];
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __61__COMeshTimerAddOn_timersForAccessories_fromClient_callback___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)addTimer:(id)timer asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  timerCopy = timer;
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn addTimer:asAccessory:fromClient:withCallback:];
  }

  siriContext = [timerCopy siriContext];
  v16 = [siriContext objectForKey:*MEMORY[0x277CFD068]];
  if (accessoryCopy)
  {
    v17 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(COMeshTimerAddOn *)self addTimer:timerCopy client:clientCopy member:v17];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v18 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.timers.create"];
}

- (void)updateTimer:(id)timer asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  timerCopy = timer;
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn updateTimer:asAccessory:fromClient:withCallback:];
  }

  if (accessoryCopy)
  {
    v15 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(COMeshTimerAddOn *)self updateTimer:timerCopy client:clientCopy member:v15];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v16 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.timers.update"];
}

- (void)removeTimer:(id)timer asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  timerCopy = timer;
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  v14 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn removeTimer:asAccessory:fromClient:withCallback:];
  }

  if (accessoryCopy)
  {
    v15 = [(COMeshTimerAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(COMeshTimerAddOn *)self removeTimer:timerCopy client:clientCopy member:v15];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v16 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.timers.delete"];
}

- (void)dismissTimerWithIdentifier:(id)identifier fromClient:(id)client withCallback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v9 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn dismissTimerWithIdentifier:fromClient:withCallback:];
  }

  v10 = [(COMeshTimerAddOn *)self dismissTimerWithIdentifier:identifierCopy];
  [(COMeshTimerAddOn *)self _addCompletionsToFuture:v10 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.timers.dismiss"];
}

- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply
{
  accessoryCopy = accessory;
  instanceCopy = instance;
  replyCopy = reply;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke;
  v15[3] = &unk_278E15D00;
  v16 = accessoryCopy;
  selfCopy = self;
  v18 = instanceCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = instanceCopy;
  v14 = accessoryCopy;
  dispatch_async(meshControllerQueue, v15);
}

void __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [*(a1 + 32) IDSIdentifier];
  v4 = [*(a1 + 32) categoryType];
  v5 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 134218754;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    v53 = 2112;
    v54 = v2;
    v55 = 2112;
    v56 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p as %@ checking dispatch for %@ of %@...", buf, 0x2Au);
  }

  if (*(a1 + 48) | v2)
  {
    if ([v4 isEqualToString:*MEMORY[0x277CCE8B0]])
    {
      v9 = [*(a1 + 40) meshController];
      v8 = [v9 state];

      v10 = [*(a1 + 40) ourInterests];
      v11 = [v10 objectForKey:v3];

      if (v11)
      {
        v12 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v39 = *(a1 + 32);
          v38 = *(a1 + 40);
          *buf = 134218498;
          v50 = v38;
          v51 = 2048;
          v52 = v11;
          v53 = 2112;
          v54 = v39;
          _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p using interest tracker %p for can dispatch of %@", buf, 0x20u);
        }

        LODWORD(v8) = [v11 canDispatchWithPrimary:v8 == 3];
      }

      else if (v8 == 3)
      {
        v40 = v3;
        v19 = COCoreLogForCategory(3);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2((a1 + 40), v19, v20, v21, v22, v23, v24, v25);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v26 = [*(a1 + 40) meshController];
        v8 = [v26 nodes];

        v27 = [v8 countByEnumeratingWithState:&v45 objects:v60 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v46;
          while (2)
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(v8);
              }

              v31 = [*(*(&v45 + 1) + 8 * i) IDSIdentifier];
              v32 = [v31 isEqual:v40];

              if (v32)
              {

                LODWORD(v8) = 1;
                goto LABEL_36;
              }
            }

            v28 = [v8 countByEnumeratingWithState:&v45 objects:v60 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v33 = [*(a1 + 40) secondaryClusterMemberForAccessory:*(a1 + 32)];
        LODWORD(v8) = v33 != 0;

LABEL_36:
        v3 = v40;
      }

      else
      {
        LODWORD(v8) = 0;
      }
    }

    else
    {
      v13 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1();
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = [*(a1 + 40) meshController];
      v11 = [v14 nodes];

      v8 = [v11 countByEnumeratingWithState:&v41 objects:v59 count:16];
      if (v8)
      {
        v15 = *v42;
        while (2)
        {
          for (j = 0; j != v8; j = j + 1)
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = [*(*(&v41 + 1) + 8 * j) remote];
            v18 = [v17 type];

            if (v18 != -1)
            {
              LODWORD(v8) = 1;
              goto LABEL_37;
            }
          }

          v8 = [v11 countByEnumeratingWithState:&v41 objects:v59 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_37:
  }

  else
  {
    LODWORD(v8) = 1;
  }

  v34 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v37 = " not";
    if (v8)
    {
      v37 = "";
    }

    *buf = 134219010;
    v50 = v35;
    v51 = 2112;
    v52 = v36;
    v53 = 2080;
    v54 = v37;
    v55 = 2112;
    v56 = v2;
    v57 = 2112;
    v58 = v4;
    _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p as %@ can%s dispatch for %@ of %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)establishSecondaryClusterForAccessory:(id)accessory
{
  v12 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([MEMORY[0x277CFD0B8] isHomeKitUsingAlarmsAndTimersIDSService])
  {
    v5 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v10 = 2112;
      v11 = @"com.apple.private.alloy.alarms-timers";
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p HomeKit is making use of IDS Service %@ for timers", buf, 0x16u);
    }
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__COMeshTimerAddOn_establishSecondaryClusterForAccessory___block_invoke;
    v6[3] = &unk_278E156B0;
    v6[4] = self;
    v7 = accessoryCopy;
    [(COMeshTimerAddOn *)self _withLock:v6];
  }
}

void __58__COMeshTimerAddOn_establishSecondaryClusterForAccessory___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CFD0B8] isGlobalTimersEnabled] && !*(*(a1 + 32) + 80))
  {
    v2 = NSClassFromString(&cfstr_Coclusterrealm.isa);
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [v3 homeUniqueIdentifier];
      v5 = [(objc_class *)v2 realmWithHomeKitHomeIdentifier:v4];
    }

    else
    {
      v5 = [(objc_class *)v2 realmForCurrent];
    }

    v6 = [MEMORY[0x277CFD080] configurationWithDomain:@"com.apple.alarms-timers" requiredServices:12 options:0 realm:v5 globalServiceName:@"com.apple.private.alloy.alarms-timers"];
    v7 = [MEMORY[0x277CFD078] clusterWithConfiguration:v6];
    v8 = [COMTActionDirector directorForCluster:v7];
    v9 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:3];
    v11 = [v9 setWithArray:{v10, v18, v19}];

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [*(a1 + 32) meshControllerQueue];
    [v8 registerHandler:v12 forType:v14 actions:v11 queue:v15];

    v16 = *(a1 + 32);
    v17 = *(v16 + 80);
    *(v16 + 80) = v8;
  }
}

- (id)secondaryClusterMemberForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  iDSIdentifier = [accessory IDSIdentifier];
  if ([iDSIdentifier length] && objc_msgSend(MEMORY[0x277CFD0B8], "isGlobalMessagingEnabled"))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(COMeshTimerAddOn *)self members];
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          member = [v9 member];
          deviceMetadata = [member deviceMetadata];
          v12 = [deviceMetadata objectForKey:@"IDS"];
          v13 = [v12 isEqual:iDSIdentifier];

          if (v13)
          {
            member2 = [v9 member];
            goto LABEL_14;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    member2 = 0;
LABEL_14:
  }

  else
  {
    member2 = 0;
  }

  return member2;
}

- (id)secondaryClusterMemberIfRequiredForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  categoryType = [accessoryCopy categoryType];
  if ([categoryType isEqualToString:*MEMORY[0x277CCE8B0]])
  {
    iDSIdentifier = [accessoryCopy IDSIdentifier];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    meshController = [(COMeshAddOn *)self meshController];
    nodes = [meshController nodes];

    v9 = [nodes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(nodes);
          }

          iDSIdentifier2 = [*(*(&v17 + 1) + 8 * i) IDSIdentifier];
          v14 = [iDSIdentifier2 isEqual:iDSIdentifier];

          if (v14)
          {

            v15 = 0;
            goto LABEL_13;
          }
        }

        v10 = [nodes countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [(COMeshTimerAddOn *)self secondaryClusterMemberForAccessory:accessoryCopy];
LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setInterests:(id)interests asAccessory:(id)accessory withCallback:(id)callback
{
  interestsCopy = interests;
  accessoryCopy = accessory;
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke;
  v15[3] = &unk_278E172E0;
  v16 = accessoryCopy;
  selfCopy = self;
  v18 = interestsCopy;
  v19 = callbackCopy;
  v12 = interestsCopy;
  v13 = callbackCopy;
  v14 = accessoryCopy;
  dispatch_async(meshControllerQueue, v15);
}

void __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) IDSIdentifier];
  if (v2)
  {
    v3 = [*(a1 + 40) ourInterests];
    v4 = [v3 objectForKey:v2];

    if (!v4)
    {
      v5 = [*(a1 + 40) meshController];
      v6 = [v5 nodes];

      v7 = COMeshNodeForIDSIdentifier(v6, v2);
      v8 = [*(a1 + 40) secondaryClusterMemberForAccessory:*(a1 + 32)];
      v4 = [[COInterestTracker alloc] initWithAccessory:*(a1 + 32) delegate:*(a1 + 40) primaryAvailable:v7 != 0 secondary:v8];
      v9 = [*(a1 + 40) ourInterests];
      v10 = [v9 mutableCopy];

      [v10 setObject:v4 forKey:v2];
      [*(a1 + 40) setOurInterests:v10];
      v11 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v20 = 134218498;
        v21 = v12;
        v22 = 2048;
        v23 = v4;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p using %p to track our interests for accessory %@", &v20, 0x20u);
      }
    }

    [(COInterestTracker *)v4 setInterests:*(a1 + 48)];
    if (![*(a1 + 48) count])
    {
      v14 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v20 = 134218498;
        v21 = v15;
        v22 = 2048;
        v23 = v4;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p removing tracker %p for accessory %@", &v20, 0x20u);
      }

      v17 = [*(a1 + 40) ourInterests];
      v18 = [v17 mutableCopy];

      [v18 removeObjectForKey:v2];
      [*(a1 + 40) setOurInterests:v18];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v19 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)interestTracker:(id)tracker setInterests:(id)interests forMember:(id)member callback:(id)callback
{
  v45 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  interestsCopy = interests;
  memberCopy = member;
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  allObjects = [interestsCopy allObjects];
  v18 = [COMTUpdateInterestAction actionWithTargetType:v16 targetIdentifiers:allObjects];

  v19 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy = self;
    v39 = 2048;
    v40 = trackerCopy;
    v41 = 2114;
    v42 = v18;
    v43 = 2114;
    v44 = interestsCopy;
    _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p setting interests for tracker %p via %{public}@ to %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke;
  v32[3] = &unk_278E17308;
  objc_copyWeak(&v36, buf);
  v20 = trackerCopy;
  v33 = v20;
  v21 = v18;
  v34 = v21;
  v22 = callbackCopy;
  v35 = v22;
  v23 = MEMORY[0x245D5FF10](v32);
  meshControllerQueue2 = [(COMeshAddOn *)self meshControllerQueue];
  actionDirector = [(COMeshTimerAddOn *)self actionDirector];
  v26 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke_205;
  v29[3] = &unk_278E17330;
  v27 = meshControllerQueue2;
  v30 = v27;
  v28 = v23;
  v31 = v28;
  [actionDirector requestAction:v21 members:v26 activity:0 withCompletion:v29];

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

void __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(3);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v12 = 134218754;
        v13 = WeakRetained;
        v14 = 2048;
        v15 = v7;
        v16 = 2048;
        v17 = v8;
        v18 = 2112;
        v19 = v3;
        _os_log_error_impl(&dword_244378000, v6, OS_LOG_TYPE_ERROR, "%p failed to set interests for tracker %p via %p: %@", &v12, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 134218496;
      v13 = WeakRetained;
      v14 = 2048;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p successfully set interests for tracker %p via %p", &v12, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
    v11 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 didChangeCompositionForTimerAddOn:WeakRetained];
    }
  }
}

void __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke_205(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__COMeshTimerAddOn_interestTracker_setInterests_forMember_callback___block_invoke_2;
  v8[3] = &unk_278E159A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (void)interestTrackerTriggerReset:(id)reset
{
  resetCopy = reset;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  v6 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [COMeshTimerAddOn handleTimerManagerStateResetNotification:?];
  }

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    accessory = [resetCopy accessory];
    uniqueIdentifier = [accessory uniqueIdentifier];

    [delegate timerAddOn:self resetAccesory:uniqueIdentifier];
  }
}

- (void)director:(id)director membersChanged:(id)changed
{
  v59 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  members = [(COMeshTimerAddOn *)self members];
  v7 = [members mutableCopy];

  [v7 minusSet:changedCopy];
  [(COMeshTimerAddOn *)self setMembers:changedCopy];
  interests = [(COMeshTimerAddOn *)self interests];
  allKeys = [interests allKeys];
  v10 = [allKeys mutableCopy];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = changedCopy;
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      v15 = 0;
      do
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        member = [*(*(&v48 + 1) + 8 * v15) member];
        [v10 removeObject:member];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    interests2 = [(COMeshTimerAddOn *)self interests];
    v18 = [interests2 mutableCopy];

    [v18 removeObjectsForKeys:v10];
    [(COMeshTimerAddOn *)self setInterests:v18];
    v19 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p removing interests for %@", buf, 0x16u);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      v24 = 0;
      do
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        member2 = [*(*(&v44 + 1) + 8 * v24) member];
        iDSIdentifier = [member2 IDSIdentifier];

        ourInterests = [(COMeshTimerAddOn *)self ourInterests];
        v28 = [ourInterests objectForKey:iDSIdentifier];

        if (v28)
        {
          [v28 setSecondary:0];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v22);
  }

  v39 = v20;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = v11;
  v30 = [v29 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v41;
    do
    {
      v33 = 0;
      do
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(v29);
        }

        member3 = [*(*(&v40 + 1) + 8 * v33) member];
        iDSIdentifier2 = [member3 IDSIdentifier];
        ourInterests2 = [(COMeshTimerAddOn *)self ourInterests];
        v37 = [ourInterests2 objectForKey:iDSIdentifier2];

        if (v37)
        {
          [v37 setSecondary:member3];
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v31);
  }

  delegate = [(COMeshTimerAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeCompositionForTimerAddOn:self];
  }
}

- (void)director:(id)director performAction:(id)action from:(id)from callback:(id)callback
{
  directorCopy = director;
  actionCopy = action;
  fromCopy = from;
  callbackCopy = callback;
  actionIdentifier = [actionCopy actionIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      targetIdentifier = actionCopy;
      memento = [(COTimerUpdateRequest *)targetIdentifier memento];
      uniqueIdentifier = [memento uniqueIdentifier];

      if (!uniqueIdentifier)
      {
        homekit = [(COMeshTimerAddOn *)self homekit];
        currentAccessory = [homekit currentAccessory];
        uniqueIdentifier = [currentAccessory uniqueIdentifier];
      }

      reason = [[COTimerReadRequest alloc] initWithAccessoryUniqueIdentifier:uniqueIdentifier];
      objc_initWeak(&location, self);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_2;
      v38[3] = &unk_278E17380;
      v40 = callbackCopy;
      objc_copyWeak(&v41, &location);
      v39 = actionIdentifier;
      [(COMeshTimerAddOn *)self handleTimerReadRequest:reason callback:v38];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = actionCopy;
        v26 = [COTimerUpdateRequest alloc];
        timer = [v25 timer];

        targetIdentifier = [(COTimerRequest *)v26 initWithTimer:timer];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_3;
        v35[3] = &unk_278E17358;
        v36 = actionIdentifier;
        v37 = callbackCopy;
        [(COMeshTimerAddOn *)self handleTimerUpdateRequest:targetIdentifier callback:v35];

        v19 = v36;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        targetIdentifier = [actionCopy targetIdentifier];
        uniqueIdentifier = [objc_alloc(MEMORY[0x277D29730]) initWithIdentifier:targetIdentifier];
        reason = [(COTimerRequest *)[COTimerDeleteRequest alloc] initWithTimer:uniqueIdentifier];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_4;
        v32[3] = &unk_278E17358;
        v33 = actionIdentifier;
        v34 = callbackCopy;
        [(COMeshTimerAddOn *)self handleTimerDeleteRequest:reason callback:v32];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          targetIdentifier = [actionCopy targetIdentifiers];
          interests = [(COMeshTimerAddOn *)self interests];
          uniqueIdentifier = [interests mutableCopy];

          if ([(COTimerUpdateRequest *)targetIdentifier count])
          {
            [uniqueIdentifier setObject:targetIdentifier forKey:fromCopy];
          }

          else
          {
            [uniqueIdentifier removeObjectForKey:fromCopy];
          }

          [(COMeshTimerAddOn *)self setInterests:uniqueIdentifier];
          v30 = [[COMTResult alloc] initWithActionIdentifier:actionIdentifier];
          (*(callbackCopy + 2))(callbackCopy, v30, 0);

          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        targetIdentifier = actionCopy;
        uniqueIdentifier = [(COMeshTimerAddOn *)self delegate];
        reason = [(COTimerUpdateRequest *)targetIdentifier reason];
        timers = [(COTimerUpdateRequest *)targetIdentifier timers];
        if ([(COTimerReadRequest *)reason isEqual:*MEMORY[0x277D296A0]]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [uniqueIdentifier timerAddOn:self didAddTimers:timers];
        }

        else if ([(COTimerReadRequest *)reason isEqual:*MEMORY[0x277D296B8]]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [uniqueIdentifier timerAddOn:self didRemoveTimers:timers];
        }

        else if ([(COTimerReadRequest *)reason isEqual:*MEMORY[0x277D296C0]]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          [uniqueIdentifier timerAddOn:self didUpdateTimers:timers];
        }

        v31 = [[COMTResult alloc] initWithActionIdentifier:actionIdentifier];
        (*(callbackCopy + 2))(callbackCopy, v31, 0);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v15 = actionCopy;
  v16 = [COTimerCreateRequest alloc];
  timer2 = [v15 timer];

  targetIdentifier = [(COTimerRequest *)v16 initWithTimer:timer2];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke;
  v43[3] = &unk_278E17358;
  v44 = actionIdentifier;
  v45 = callbackCopy;
  [(COMeshTimerAddOn *)self handleTimerCreateRequest:targetIdentifier callback:v43];

  v19 = v44;
LABEL_3:

LABEL_14:
LABEL_15:
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5 || ([a2 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [[COMTResult alloc] initWithActionIdentifier:*(a1 + 32)];
    v6 = 0;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5 || ([v9 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v9 timers];
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8 = [[COMTTimerReadResult alloc] initWithTimers:v6 actionIdentifier:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5 || ([a2 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [[COMTResult alloc] initWithActionIdentifier:*(a1 + 32)];
    v6 = 0;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

void __57__COMeshTimerAddOn_director_performAction_from_callback___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5 || ([a2 error], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [[COMTResult alloc] initWithActionIdentifier:*(a1 + 32)];
    v6 = 0;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

- (void)didChangeNodesForMeshController:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 mergeRequest];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_filteredTimersList:forAccessory:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p timers list from leader failed (%@)");
}

void __68__COMeshTimerAddOn__timersForAccessoryIdentifier_allowLocalStorage___block_invoke_103_cold_2()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p specified accessory (%@) was not found in order to filter timers!");
}

- (void)_isTimer:(void *)a1 targetingAccessoryIdentifiers:.cold.2(void *a1)
{
  v1 = [a1 timerID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __38__COMeshTimerAddOn__sendNotification___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_4();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_244378000, v3, OS_LOG_TYPE_ERROR, "%p failed to send notifiction '%@' to member %@", v4, 0x20u);
}

void __46__COMeshTimerAddOn__broadcastMerge_withTruth___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_continueMerge:withResponse:fromNode:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  v3 = v0;
  _os_log_debug_impl(&dword_244378000, v1, OS_LOG_TYPE_DEBUG, "%p merge %p received last response", v2, 0x16u);
}

- (void)_finishMerge:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_finishMerge:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p direct add failed (%@)");
}

void __43__COMeshTimerAddOn_addTimer_client_member___block_invoke_155_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p add failed via secondary cluster (%@)");
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p direct update failed (%@)");
}

void __46__COMeshTimerAddOn_updateTimer_client_member___block_invoke_158_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p update failed via secondary cluster (%@)");
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p direct remove failed (%@)");
}

void __46__COMeshTimerAddOn_removeTimer_client_member___block_invoke_161_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p remove failed via secondary cluster (%@)");
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%p direct dismiss failed (%@)");
}

void __54__COMeshTimerAddOn_dismissTimerWithIdentifier_client___block_invoke_163_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x20u);
}

void __52__COMeshTimerAddOn_handleTimerReadRequest_callback___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "... timers list failed (%@)", v1, 0xCu);
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) timerID];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void __54__COMeshTimerAddOn_handleTimerCreateRequest_callback___block_invoke_168_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) timerID];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void __54__COMeshTimerAddOn_handleTimerUpdateRequest_callback___block_invoke_169_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) timerID];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void __54__COMeshTimerAddOn_handleTimerDeleteRequest_callback___block_invoke_170_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __55__COMeshTimerAddOn_handleTimerDismissRequest_callback___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(*a2 + 8) + 40) timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleTimerManagerStateResetNotification:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)timersAsAccessory:(void *)a1 fromClient:withCallback:.cold.1(void *a1)
{
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)timersForAccessories:fromClient:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  [v0 count];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)addTimer:asAccessory:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [v1 meshController];
  v3 = [v0 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)updateTimer:asAccessory:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [v1 meshController];
  v3 = [v0 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)removeTimer:asAccessory:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [v1 meshController];
  v3 = [v0 timerID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)dismissTimerWithIdentifier:fromClient:withCallback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_0_2(&dword_244378000, v1, v2, "%p looking for non-ephemeral node...", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __60__COMeshTimerAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_2(&dword_244378000, a2, a3, "%p looking for HomePod...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __58__COMeshTimerAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  v2 = 134217984;
  v3 = v0;
  _os_log_error_impl(&dword_244378000, v1, OS_LOG_TYPE_ERROR, "%p cannot set interests, IDS identifier missing", &v2, 0xCu);
}

@end