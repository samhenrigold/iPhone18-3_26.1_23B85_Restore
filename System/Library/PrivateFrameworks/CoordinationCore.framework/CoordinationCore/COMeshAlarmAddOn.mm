@interface COMeshAlarmAddOn
- (BOOL)_isAlarm:(id)alarm targetingAccessory:(id)accessory;
- (BOOL)_isAlarm:(id)alarm targetingAccessoryIdentifiers:(id)identifiers;
- (BOOL)performsLocalActions;
- (COMTActionDirector)actionDirector;
- (COMeshAlarmAddOn)init;
- (COMeshAlarmAddOn)initWithAlarmManager:(id)manager;
- (COMeshAlarmAddOn)initWithAlarmManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter;
- (COMeshAlarmAddOnDelegate)delegate;
- (id)_alarmsForAccessory:(id)accessory allowLocalStorage:(BOOL)storage usingLeader:(BOOL)leader member:(id)member client:(id)client;
- (id)_commandsForReconciling:(id)reconciling toTruth:(id)truth forNode:(id)node;
- (id)_currentAccessoryForConnection:(id)connection;
- (id)_filteredAlarmsList:(id)list forAccessory:(id)accessory;
- (id)_sendRequest:(id)request client:(id)client;
- (id)addAlarm:(id)alarm member:(id)member client:(id)client;
- (id)alarmsForAccessory:(id)accessory;
- (id)dismissAlarmWithIdentifier:(id)identifier client:(id)client;
- (id)removeAlarm:(id)alarm member:(id)member client:(id)client;
- (id)secondaryClusterMemberForAccessory:(id)accessory;
- (id)secondaryClusterMemberIfRequiredForAccessory:(id)accessory;
- (id)snoozeAlarmWithIdentifier:(id)identifier client:(id)client;
- (id)updateAlarm:(id)alarm member:(id)member client:(id)client;
- (void)_abandonMerge;
- (void)_accessorySettingValueUpdated:(id)updated;
- (void)_addAlarmDeleteEvent:(id)event;
- (void)_addCompletionsToFuture:(id)future withXPCCallback:(id)callback transactionDescription:(const char *)description;
- (void)_alarmManagerAlarmFired:(id)fired;
- (void)_alarmManagerAlarmsAdded:(id)added;
- (void)_alarmManagerAlarmsChanged:(id)changed;
- (void)_alarmManagerAlarmsRemoved:(id)removed;
- (void)_alarmManagerAlarmsUpdated:(id)updated;
- (void)_alarmManagerFiringAlarmChanged:(id)changed;
- (void)_alarmManagerFiringAlarmDismissed:(id)dismissed;
- (void)_alarmManagerStateReset:(id)reset;
- (void)_broadcastMerge:(id)merge withTruth:(id)truth;
- (void)_continueMerge:(id)merge withResponse:(id)response fromNode:(id)node;
- (void)_finishMerge:(id)merge;
- (void)_primeMerge:(id)merge withNodes:(id)nodes;
- (void)_processQueuedCommands;
- (void)_reaperFired;
- (void)_reloadIndexWithCompletion:(id)completion;
- (void)_replicateToMobileTimerFromHomeKit;
- (void)_sendNotification:(id)notification;
- (void)_startMerge;
- (void)_withLock:(id)lock;
- (void)addAlarm:(id)alarm asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)alarmsAsAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)alarmsForAccessories:(id)accessories fromClient:(id)client callback:(id)callback;
- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply;
- (void)dealloc;
- (void)didAddToMeshController:(id)controller;
- (void)didChangeNodesForMeshController:(id)controller;
- (void)didStopMeshController:(id)controller;
- (void)director:(id)director membersChanged:(id)changed;
- (void)director:(id)director performAction:(id)action from:(id)from callback:(id)callback;
- (void)dismissAlarmWithIdentifier:(id)identifier fromClient:(id)client withCallback:(id)callback;
- (void)establishSecondaryClusterForAccessory:(id)accessory;
- (void)handleAlarmCreateRequest:(id)request callback:(id)callback;
- (void)handleAlarmDeleteRequest:(id)request callback:(id)callback;
- (void)handleAlarmDismissRequest:(id)request callback:(id)callback;
- (void)handleAlarmFiredNotification:(id)notification;
- (void)handleAlarmFiringAlarmDismissedNotification:(id)notification;
- (void)handleAlarmManagerStateResetNotification:(id)notification;
- (void)handleAlarmReadRequest:(id)request callback:(id)callback;
- (void)handleAlarmSnoozeNotification:(id)notification;
- (void)handleAlarmSnoozeRequest:(id)request callback:(id)callback;
- (void)handleAlarmUpdateRequest:(id)request callback:(id)callback;
- (void)handleAlarmsAddedNotification:(id)notification;
- (void)handleAlarmsRemovedNotification:(id)notification;
- (void)handleAlarmsUpdatedNotification:(id)notification;
- (void)interestTracker:(id)tracker setInterests:(id)interests forMember:(id)member callback:(id)callback;
- (void)interestTrackerTriggerReset:(id)reset;
- (void)mediaSystemCompanionTransitionedFrom:(id)from to:(id)to;
- (void)meshController:(id)controller didTransitionToState:(unint64_t)state;
- (void)reapNonRepeatingAlarmsOlderThanDate:(id)date accessory:(id)accessory home:(id)home;
- (void)removeAlarm:(id)alarm asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)setDelegate:(id)delegate;
- (void)setInterests:(id)interests asAccessory:(id)accessory withCallback:(id)callback;
- (void)snoozeAlarmWithIdentifier:(id)identifier fromClient:(id)client withCallback:(id)callback;
- (void)updateAlarm:(id)alarm asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback;
- (void)willRemoveFromMeshController:(id)controller;
- (void)willStartMeshController:(id)controller;
@end

@implementation COMeshAlarmAddOn

- (COMeshAlarmAddOn)initWithAlarmManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter
{
  v51 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  adapterCopy = adapter;
  hubAdapterCopy = hubAdapter;
  v48.receiver = self;
  v48.super_class = COMeshAlarmAddOn;
  v12 = [(COMeshAddOn *)&v48 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x277D296D8]);
    observedAlarmManager = v13->_observedAlarmManager;
    v13->_observedAlarmManager = v14;

    [(MTAlarmManager *)v13->_observedAlarmManager checkIn];
    objc_storeStrong(&v13->_homekit, adapter);
    objc_storeStrong(&v13->_homehub, hubAdapter);
    objc_initWeak(&location, v13);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke;
    v45[3] = &unk_278E18590;
    objc_copyWeak(&v46, &location);
    v16 = [adapterCopy registerMediaSystemUpdateHandler:v45];
    mediaSystemUpdateRegistration = v13->_mediaSystemUpdateRegistration;
    v13->_mediaSystemUpdateRegistration = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
    deletes = v13->_deletes;
    v13->_deletes = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEA60]);
    mergingNodes = v13->_mergingNodes;
    v13->_mergingNodes = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    mergeResponses = v13->_mergeResponses;
    v13->_mergeResponses = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEA60]);
    queuedCommands = v13->_queuedCommands;
    v13->_queuedCommands = v24;

    objc_storeStrong(&v13->_alarmManager, manager);
    recorder = v13->_recorder;
    v13->_recorder = &__block_literal_global_10;

    v27 = objc_alloc_init(MEMORY[0x277CBEB98]);
    members = v13->_members;
    v13->_members = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    interests = v13->_interests;
    v13->_interests = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    ourInterests = v13->_ourInterests;
    v13->_ourInterests = v31;

    v33 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v50 = v13;
      _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "%p mesh add-on created", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__accessorySettingValueUpdated_ name:*MEMORY[0x277CCEDB0] object:0];
    [defaultCenter addObserver:v13 selector:sel__alarmManagerAlarmsAdded_ name:*MEMORY[0x277D29590] object:v13->_observedAlarmManager];
    [defaultCenter addObserver:v13 selector:sel__alarmManagerAlarmsRemoved_ name:*MEMORY[0x277D295A8] object:v13->_observedAlarmManager];
    [defaultCenter addObserver:v13 selector:sel__alarmManagerAlarmsUpdated_ name:*MEMORY[0x277D295B0] object:v13->_observedAlarmManager];
    [defaultCenter addObserver:v13 selector:sel__alarmManagerFiringAlarmDismissed_ name:*MEMORY[0x277D295C0] object:v13->_observedAlarmManager];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults doubleForKey:@"ReapCadence"];
    if (v36 <= 0.0)
    {
      v37 = 6.048e14;
    }

    else
    {
      v37 = v36 * 1000000000.0;
    }

    v38 = dispatch_walltime(0, v37);
    v39 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    reaper = v13->_reaper;
    v13->_reaper = v39;

    dispatch_source_set_timer(v13->_reaper, v38, v37, 0x3B9ACA00uLL);
    v41 = v13->_reaper;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke_54;
    handler[3] = &unk_278E15B10;
    objc_copyWeak(&v44, &location);
    dispatch_source_set_event_handler(v41, handler);
    dispatch_activate(v13->_reaper);
    objc_destroyWeak(&v44);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained mediaSystemCompanionTransitionedFrom:v8 to:v5];
  }
}

void __67__COMeshAlarmAddOn_initWithAlarmManager_homekitAdapter_hubAdapter___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reaperFired];
    WeakRetained = v2;
  }
}

- (COMeshAlarmAddOn)initWithAlarmManager:(id)manager
{
  managerCopy = manager;
  v5 = +[COHomeKitAdapter sharedInstance];
  v6 = +[COHomeHubAdapter sharedInstance];
  v7 = [(COMeshAlarmAddOn *)self initWithAlarmManager:managerCopy homekitAdapter:v5 hubAdapter:v6];

  return v7;
}

- (COMeshAlarmAddOn)init
{
  v3 = objc_alloc_init(MEMORY[0x277D296D8]);
  v4 = [(COMeshAlarmAddOn *)self initWithAlarmManager:v3];

  return v4;
}

- (void)dealloc
{
  homekit = [(COMeshAlarmAddOn *)self homekit];
  mediaSystemUpdateRegistration = [(COMeshAlarmAddOn *)self mediaSystemUpdateRegistration];
  [homekit unregisterMediaSystemUpdateHandler:mediaSystemUpdateRegistration];

  v5.receiver = self;
  v5.super_class = COMeshAlarmAddOn;
  [(COMeshAlarmAddOn *)&v5 dealloc];
}

- (void)didAddToMeshController:(id)controller
{
  controllerCopy = controller;
  v56.receiver = self;
  v56.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v56 didAddToMeshController:controllerCopy];
  objc_initWeak(&location, self);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke;
  v53[3] = &unk_278E16B48;
  objc_copyWeak(&v54, &location);
  v5 = MEMORY[0x245D5FF10](v53);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_4;
  v51[3] = &unk_278E16B98;
  objc_copyWeak(&v52, &location);
  v6 = MEMORY[0x245D5FF10](v51);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_7;
  v49[3] = &unk_278E15FA8;
  objc_copyWeak(&v50, &location);
  v7 = (v5)[2](v5, v49);
  [controllerCopy registerHandler:v7 forRequestClass:objc_opt_class()];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_8;
  v47[3] = &unk_278E15FA8;
  objc_copyWeak(&v48, &location);
  v8 = (v5)[2](v5, v47);
  [controllerCopy registerHandler:v8 forRequestClass:objc_opt_class()];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_9;
  v45[3] = &unk_278E15FA8;
  objc_copyWeak(&v46, &location);
  v9 = (v5)[2](v5, v45);
  [controllerCopy registerHandler:v9 forRequestClass:objc_opt_class()];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_10;
  v43[3] = &unk_278E15FA8;
  objc_copyWeak(&v44, &location);
  v10 = (v5)[2](v5, v43);
  [controllerCopy registerHandler:v10 forRequestClass:objc_opt_class()];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_11;
  v41[3] = &unk_278E15FA8;
  objc_copyWeak(&v42, &location);
  v11 = (v5)[2](v5, v41);
  [controllerCopy registerHandler:v11 forRequestClass:objc_opt_class()];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_12;
  v39[3] = &unk_278E15FA8;
  objc_copyWeak(&v40, &location);
  v12 = (v5)[2](v5, v39);
  [controllerCopy registerHandler:v12 forRequestClass:objc_opt_class()];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_13;
  v37[3] = &unk_278E15FF8;
  objc_copyWeak(&v38, &location);
  v13 = (v6)[2](v6, v37);
  [controllerCopy registerHandler:v13 forNotificationClass:objc_opt_class()];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_14;
  v35[3] = &unk_278E15FF8;
  objc_copyWeak(&v36, &location);
  v14 = (v6)[2](v6, v35);
  [controllerCopy registerHandler:v14 forNotificationClass:objc_opt_class()];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_15;
  v33[3] = &unk_278E15FF8;
  objc_copyWeak(&v34, &location);
  v15 = (v6)[2](v6, v33);
  [controllerCopy registerHandler:v15 forNotificationClass:objc_opt_class()];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_16;
  v31[3] = &unk_278E15FF8;
  objc_copyWeak(&v32, &location);
  [controllerCopy registerHandler:v31 forNotificationClass:objc_opt_class()];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_17;
  v29[3] = &unk_278E15FF8;
  objc_copyWeak(&v30, &location);
  v16 = (v6)[2](v6, v29);
  [controllerCopy registerHandler:v16 forNotificationClass:objc_opt_class()];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_18;
  v27[3] = &unk_278E15FF8;
  objc_copyWeak(&v28, &location);
  v17 = (v6)[2](v6, v27);
  [controllerCopy registerHandler:v17 forNotificationClass:objc_opt_class()];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_19;
  v25[3] = &unk_278E15FF8;
  objc_copyWeak(&v26, &location);
  v18 = (v6)[2](v6, v25);
  [controllerCopy registerHandler:v18 forNotificationClass:objc_opt_class()];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_20;
  v23 = &unk_278E15FF8;
  objc_copyWeak(&v24, &location);
  v19 = (v6)[2](v6, &v20);
  [controllerCopy registerHandler:v19 forNotificationClass:{objc_opt_class(), v20, v21, v22, v23}];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

id __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_2;
  v11[3] = &unk_278E16B20;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      v13[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_3;
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

id __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_5;
  v11[3] = &unk_278E16B70;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D5FF10](v11);
  v9 = MEMORY[0x245D5FF10](v5, v6, v7, v8);

  objc_destroyWeak(&v13);

  return v9;
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_5(uint64_t a1, void *a2)
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
      v12 = __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_6;
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

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmCreateRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmReadRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmUpdateRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmDeleteRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmSnoozeRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmDismissRequest:v8 callback:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_13(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsAddedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsRemovedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_15(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmFiringAlarmDismissedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmFiredNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsChangedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_18(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmsUpdatedNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_19(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmManagerStateResetNotification:v5];
  }
}

void __43__COMeshAlarmAddOn_didAddToMeshController___block_invoke_20(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleAlarmSnoozeNotification:v5];
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
  v10[4] = objc_opt_class();
  v6 = 0;
  v10[5] = objc_opt_class();
  do
  {
    [controllerCopy deregisterHandlerForRequestClass:v10[v6++]];
  }

  while (v6 != 6);
  actionDirector = [(COMeshAlarmAddOn *)self actionDirector];
  [actionDirector removeHandler:self];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__COMeshAlarmAddOn_willRemoveFromMeshController___block_invoke;
  v9[3] = &unk_278E15AB8;
  v9[4] = self;
  [(COMeshAlarmAddOn *)self _withLock:v9];
  v8.receiver = self;
  v8.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v8 willRemoveFromMeshController:controllerCopy];
}

- (void)willStartMeshController:(id)controller
{
  controllerCopy = controller;
  observedAlarmManager = [(COMeshAlarmAddOn *)self observedAlarmManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__alarmManagerAlarmFired_ name:*MEMORY[0x277D29588] object:observedAlarmManager];
  [defaultCenter addObserver:self selector:sel__alarmManagerStateReset_ name:*MEMORY[0x277D295D8] object:observedAlarmManager];
  [defaultCenter addObserver:self selector:sel__alarmManagerAlarmsChanged_ name:*MEMORY[0x277D29598] object:observedAlarmManager];
  [defaultCenter addObserver:self selector:sel__alarmManagerFiringAlarmChanged_ name:*MEMORY[0x277D295B8] object:observedAlarmManager];
  [(COMeshAlarmAddOn *)self _reloadIndexWithCompletion:0];
  v7.receiver = self;
  v7.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v7 willStartMeshController:controllerCopy];
}

- (void)didStopMeshController:(id)controller
{
  v6.receiver = self;
  v6.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v6 didStopMeshController:controller];
  observedAlarmManager = [(COMeshAlarmAddOn *)self observedAlarmManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D295B8] object:observedAlarmManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D29598] object:observedAlarmManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D295D8] object:observedAlarmManager];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D29588] object:observedAlarmManager];
}

- (void)meshController:(id)controller didTransitionToState:(unint64_t)state
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v16 meshController:controllerCopy didTransitionToState:state];
  nodes = [controllerCopy nodes];
  if (state == 3)
  {
    ourInterests = [(COMeshAlarmAddOn *)self ourInterests];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__COMeshAlarmAddOn_meshController_didTransitionToState___block_invoke;
    v14[3] = &unk_278E16BC0;
    v15 = nodes;
    [ourInterests enumerateKeysAndObjectsUsingBlock:v14];
  }

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeCompositionForAlarmAddOn:self];
  }

  if (state == 3)
  {
    v10 = [controllerCopy me];
    leader = [controllerCopy leader];
    if ([v10 isEqual:leader])
    {
      homekit = [(COMeshAlarmAddOn *)self homekit];
      if ([homekit hasOptedToHH2])
      {
        isDistributedTimersEnabled = [MEMORY[0x277CFD0B8] isDistributedTimersEnabled];

        if (isDistributedTimersEnabled)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      [(COMeshAlarmAddOn *)self _startMerge];
    }

    else
    {
    }
  }

  else if (state == 2)
  {
    [(COMeshAlarmAddOn *)self _abandonMerge];
  }

LABEL_15:
}

void __56__COMeshAlarmAddOn_meshController_didTransitionToState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = COMeshNodeForIDSIdentifier(v4, a2);
  [v5 setPrimaryAvailable:v6 != 0];
}

- (void)didChangeNodesForMeshController:(id)controller
{
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = COMeshAlarmAddOn;
  [(COMeshAddOn *)&v24 didChangeNodesForMeshController:controllerCopy];
  nodes = [controllerCopy nodes];
  meshController = [(COMeshAddOn *)self meshController];
  v7 = [meshController state] == 3;

  ourInterests = [(COMeshAlarmAddOn *)self ourInterests];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __52__COMeshAlarmAddOn_didChangeNodesForMeshController___block_invoke;
  v21 = &unk_278E16BE8;
  v9 = nodes;
  v22 = v9;
  v23 = v7;
  [ourInterests enumerateKeysAndObjectsUsingBlock:&v18];

  v10 = [(COMeshAlarmAddOn *)self delegate:v18];
  if (objc_opt_respondsToSelector())
  {
    [v10 didChangeCompositionForAlarmAddOn:self];
  }

  mergingNodes = [(COMeshAlarmAddOn *)self mergingNodes];
  v12 = [MEMORY[0x277CBEB58] setWithArray:mergingNodes];
  v13 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v12 minusSet:v13];
  if ([v12 count])
  {
    v14 = [mergingNodes mutableCopy];
    allObjects = [v12 allObjects];
    [v14 removeObjectsInArray:allObjects];

    [(COMeshAlarmAddOn *)self setMergingNodes:v14];
    if (![v14 count])
    {
      mergeRequest = [(COMeshAlarmAddOn *)self mergeRequest];
      v17 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [COMeshAlarmAddOn didChangeNodesForMeshController:];
      }

      [(COMeshAlarmAddOn *)self _finishMerge:mergeRequest];
    }
  }
}

void __52__COMeshAlarmAddOn_didChangeNodesForMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = COMeshNodeForIDSIdentifier(*(a1 + 32), a2);
  v6 = v5;
  if (!v5 || *(a1 + 40) == 1)
  {
    [v7 setPrimaryAvailable:v5 != 0];
  }
}

- (COMeshAlarmAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMeshAlarmAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshAlarmAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMeshAlarmAddOn_delegate__block_invoke(uint64_t a1)
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
  v6[2] = __32__COMeshAlarmAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  [(COMeshAlarmAddOn *)self _withLock:v6];
}

void __32__COMeshAlarmAddOn_setDelegate___block_invoke(uint64_t a1)
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
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__COMeshAlarmAddOn_actionDirector__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMeshAlarmAddOn *)self _withLock:v4];
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
  v18[2] = __40__COMeshAlarmAddOn__sendRequest_client___block_invoke;
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

void __40__COMeshAlarmAddOn__sendRequest_client___block_invoke(id *a1)
{
  v2 = [a1[4] clientLifetimeActivity];
  v3 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v2];

  if (v3)
  {
    [a1[5] setActivity:v3];
    nw_activity_activate();
  }

  v4 = a1[5];
  v5 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__COMeshAlarmAddOn__sendRequest_client___block_invoke_2;
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

void __40__COMeshAlarmAddOn__sendRequest_client___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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
    v19 = COCoreLogForCategory(2);
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
  v18[3] = __Block_byref_object_copy__24;
  v18[4] = __Block_byref_object_dispose__24;
  v19 = os_transaction_create();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke;
  v15[3] = &unk_278E16C38;
  v8 = callbackCopy;
  v16 = v8;
  v17 = v18;
  v9 = [futureCopy addFailureBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2;
  v12[3] = &unk_278E16C60;
  v10 = v8;
  v13 = v10;
  v14 = v18;
  v11 = [futureCopy addSuccessBlock:v12];

  _Block_object_dispose(v18, 8);
}

void __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __83__COMeshAlarmAddOn__addCompletionsToFuture_withXPCCallback_transactionDescription___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_sendNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  interests = [(COMeshAlarmAddOn *)self interests];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__COMeshAlarmAddOn__sendNotification___block_invoke;
  v11[3] = &unk_278E185D8;
  v12 = v7;
  selfCopy = self;
  v14 = notificationCopy;
  v9 = notificationCopy;
  v10 = v7;
  [interests enumerateKeysAndObjectsUsingBlock:v11];
}

void __38__COMeshAlarmAddOn__sendNotification___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __38__COMeshAlarmAddOn__sendNotification___block_invoke_2;
  v19 = &unk_278E17E70;
  v7 = a1[4];
  v20 = a1[5];
  v8 = v6;
  v21 = v8;
  v9 = [v7 indexesOfObjectsPassingTest:&v16];
  if ([v9 count])
  {
    v10 = [COMTAlarmNotificationAction alloc];
    v11 = [a1[6] name];
    v12 = [a1[4] objectsAtIndexes:v9];
    v13 = [(COMTAlarmNotificationAction *)v10 initWithReason:v11 alarms:v12];

    v14 = [a1[5] actionDirector];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v5];
    [v14 requestAction:v13 members:v15 withCompletion:&__block_literal_global_120];
  }
}

- (void)_alarmManagerAlarmsAdded:(id)added
{
  addedCopy = added;
  userInfo = [addedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COMeshAlarmAddOn__alarmManagerAlarmsAdded___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v9 = addedCopy;
  v14 = v9;
  dispatch_async(meshControllerQueue, block);

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alarmAddOn:self didAddAlarms:v8];
  }
}

uint64_t __45__COMeshAlarmAddOn__alarmManagerAlarmsAdded___block_invoke(uint64_t a1)
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
        v8 = [v7 lastModifiedDate];
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v9 = [*(a1 + 40) alarmIndex];
        v10 = [v7 alarmID];
        [v9 setObject:v8 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _sendNotification:*(a1 + 48)];
}

- (void)_alarmManagerAlarmsRemoved:(id)removed
{
  removedCopy = removed;
  userInfo = [removedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshAlarmAddOn__alarmManagerAlarmsRemoved___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v9 = removedCopy;
  v14 = v9;
  dispatch_async(meshControllerQueue, block);

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alarmAddOn:self didRemoveAlarms:v8];
  }
}

uint64_t __47__COMeshAlarmAddOn__alarmManagerAlarmsRemoved___block_invoke(uint64_t a1)
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
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) alarmIndex];
        v9 = [v7 alarmID];
        [v8 removeObjectForKey:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _sendNotification:*(a1 + 48)];
}

- (void)_alarmManagerAlarmsUpdated:(id)updated
{
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COMeshAlarmAddOn__alarmManagerAlarmsUpdated___block_invoke;
  block[3] = &unk_278E15728;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v9 = updatedCopy;
  v14 = v9;
  dispatch_async(meshControllerQueue, block);

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alarmAddOn:self didUpdateAlarms:v8];
  }
}

uint64_t __47__COMeshAlarmAddOn__alarmManagerAlarmsUpdated___block_invoke(uint64_t a1)
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
        v8 = [v7 lastModifiedDate];
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v9 = [*(a1 + 40) alarmIndex];
        v10 = [v7 alarmID];
        [v9 setObject:v8 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _sendNotification:*(a1 + 48)];
}

- (void)_alarmManagerFiringAlarmDismissed:(id)dismissed
{
  userInfo = [dismissed userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alarmAddOn:self didDismissAlarms:v6];
  }
}

- (void)_startMerge
{
  v20 = *MEMORY[0x277D85DE8];
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  initForMerge = [[COAlarmReadRequest alloc] initForMerge];
  [(COMeshAlarmAddOn *)self setMergeRequest:initForMerge];
  v6 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = meshController;
    v18 = 2048;
    v19 = initForMerge;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting merge for %p...", buf, 0x16u);
  }

  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
    alarms = [alarmManager alarms];
  }

  else
  {
    alarms = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__COMeshAlarmAddOn__startMerge__block_invoke;
  v12[3] = &unk_278E16F00;
  v9 = meshControllerQueue;
  v13 = v9;
  objc_copyWeak(&v15, buf);
  v10 = initForMerge;
  v14 = v10;
  v11 = [alarms addCompletionBlock:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __31__COMeshAlarmAddOn__startMerge__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__COMeshAlarmAddOn__startMerge__block_invoke_2;
  block[3] = &unk_278E16ED8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __31__COMeshAlarmAddOn__startMerge__block_invoke_2(uint64_t a1)
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
  v34 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  truthCopy = truth;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  mergeRequest = [(COMeshAlarmAddOn *)self mergeRequest];

  if (mergeRequest == mergeCopy)
  {
    v11 = eTagForAlarms(truthCopy);
    [mergeCopy setETag:v11];
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v29 = meshController;
      v30 = 2048;
      v31 = mergeCopy;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p broadcasting merge %p with eTag %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(COMeshAlarmAddOn *)self setMergingNodes:v13];

    v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(COMeshAlarmAddOn *)self setMergeResponses:v14];

    [(COMeshAlarmAddOn *)self setMergeAlarms:truthCopy];
    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke;
    v25[3] = &unk_278E16F28;
    objc_copyWeak(&v27, buf);
    v15 = mergeCopy;
    v26 = v15;
    v16 = MEMORY[0x245D5FF10](v25);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke_2;
    v22 = &unk_278E16F50;
    objc_copyWeak(&v24, buf);
    v17 = v15;
    v23 = v17;
    v18 = MEMORY[0x245D5FF10](&v19);
    [meshController broadcastRequest:v17 includingSelf:0 recipientsCallback:v16 completionHandler:{v18, v19, v20, v21, v22}];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v29 = meshController;
      v30 = 2048;
      v31 = mergeCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p ignoring broadcast for merge %p", buf, 0x16u);
    }
  }
}

void __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _primeMerge:*(a1 + 32) withNodes:v5];
  }
}

void __46__COMeshAlarmAddOn__broadcastMerge_withTruth___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
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
        v14 = COCoreLogForCategory(2);
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
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  mergeRequest = [(COMeshAlarmAddOn *)self mergeRequest];

  if (mergeRequest == mergeCopy)
  {
    [(COMeshAlarmAddOn *)self setMergingNodes:nodesCopy];
    v12 = [nodesCopy count];
    v13 = COCoreLogForCategory(2);
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

      [(COMeshAlarmAddOn *)self _finishMerge:mergeCopy];
    }
  }

  else
  {
    v11 = COCoreLogForCategory(2);
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
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  mergeRequest = [(COMeshAlarmAddOn *)self mergeRequest];

  if (mergeRequest == mergeCopy)
  {
    mergingNodes = [(COMeshAlarmAddOn *)self mergingNodes];
    v14 = [mergingNodes mutableCopy];

    [v14 removeObject:nodeCopy];
    [(COMeshAlarmAddOn *)self setMergingNodes:v14];
    if ([responseCopy skipInMerge])
    {
      v16 = COCoreLogForCategory(2);
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
      mergeResponses = [(COMeshAlarmAddOn *)self mergeResponses];
      v18 = [mergeResponses mutableCopy];

      [v18 setObject:responseCopy forKey:nodeCopy];
      [(COMeshAlarmAddOn *)self setMergeResponses:v18];
    }

    v19 = [v14 count];
    v20 = COCoreLogForCategory(2);
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
        [COMeshAlarmAddOn _continueMerge:withResponse:fromNode:];
      }

      [(COMeshAlarmAddOn *)self _finishMerge:mergeCopy];
    }
  }

  else
  {
    v14 = COCoreLogForCategory(2);
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
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  mergeRequest = [(COMeshAlarmAddOn *)self mergeRequest];
  v6 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = meshController;
    v11 = 2048;
    v12 = mergeRequest;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p abandoning merge %p", &v9, 0x16u);
  }

  [(COMeshAlarmAddOn *)self setMergeRequest:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshAlarmAddOn *)self setMergeResponses:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(COMeshAlarmAddOn *)self setMergingNodes:v8];

  [(COMeshAlarmAddOn *)self _processQueuedCommands];
}

- (id)_commandsForReconciling:(id)reconciling toTruth:(id)truth forNode:(id)node
{
  selfCopy = self;
  v67 = *MEMORY[0x277D85DE8];
  reconcilingCopy = reconciling;
  truthCopy = truth;
  nodeCopy = node;
  array = [MEMORY[0x277CBEA60] array];
  v54 = truthCopy;
  v11 = [truthCopy mutableCopy];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = reconcilingCopy;
  v13 = [(COAlarmsRemovedNotification *)v12 countByEnumeratingWithState:&v55 objects:v66 count:16];
  v53 = v11;
  if (!v13)
  {
    v15 = 0;
    v51 = 0;
    v30 = v12;
LABEL_30:

    goto LABEL_31;
  }

  v14 = v13;
  v48 = array;
  v49 = nodeCopy;
  v15 = 0;
  v51 = 0;
  obj = v12;
  v16 = *v56;
  v50 = *v56;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v56 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v55 + 1) + 8 * i);
      alarmID = [v18 alarmID];
      v20 = [v54 objectForKey:alarmID];
      v21 = v20;
      if (v20)
      {
        v22 = MEMORY[0x277D296D0];
        v65[0] = v20;
        v65[1] = v18;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
        v24 = [v22 mostRecentlyUpdatedAlarmForAlarms:v23];

        if (v18 == v24)
        {
          v11 = v53;
        }

        else
        {
          v11 = v53;
          if (([v18 isEqualIgnoringLastModifiedDate:v24] & 1) == 0)
          {
            if (v51)
            {
              v25 = [v51 arrayByAddingObject:v24];

              v51 = v25;
              v11 = v53;
            }

            else
            {
              v51 = [MEMORY[0x277CBEA60] arrayWithObject:v24];
            }

            v16 = v50;
          }
        }
      }

      else if (v15)
      {
        v26 = [v15 arrayByAddingObject:v18];

        v15 = v26;
      }

      else
      {
        v15 = [MEMORY[0x277CBEA60] arrayWithObject:v18];
      }

      alarmID2 = [v18 alarmID];
      [v11 removeObjectForKey:alarmID2];
    }

    v12 = obj;
    v14 = [(COAlarmsRemovedNotification *)obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  }

  while (v14);

  if (!v51)
  {
    array = v48;
    nodeCopy = v49;
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v28 = [(COAlarmNotification *)[COAlarmsUpdatedNotification alloc] initWithAlarms:v51];
  v29 = COCoreLogForCategory(2);
  nodeCopy = v49;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    meshController = [(COMeshAddOn *)selfCopy meshController];
    alarms = [(COAlarmNotification *)v28 alarms];
    *buf = 134218498;
    v60 = meshController;
    v61 = 2112;
    v62 = v49;
    v63 = 2112;
    v64 = alarms;
    _os_log_debug_impl(&dword_244378000, v29, OS_LOG_TYPE_DEBUG, "%p %@ updating %@", buf, 0x20u);

    v11 = v53;
  }

  array = [v48 arrayByAddingObject:v28];

  v12 = obj;
  if (v15)
  {
LABEL_27:
    v30 = [(COAlarmNotification *)[COAlarmsRemovedNotification alloc] initWithAlarms:v15];
    v31 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      meshController2 = [(COMeshAddOn *)selfCopy meshController];
      alarms2 = [(COAlarmNotification *)v30 alarms];
      *buf = 134218498;
      v60 = meshController2;
      v61 = 2112;
      v62 = nodeCopy;
      v63 = 2112;
      v64 = alarms2;
      _os_log_debug_impl(&dword_244378000, v31, OS_LOG_TYPE_DEBUG, "%p %@ removing %@", buf, 0x20u);

      v11 = v53;
    }

    v32 = [array arrayByAddingObject:v30];

    array = v32;
    goto LABEL_30;
  }

LABEL_31:
  if ([v11 count])
  {
    v33 = [COAlarmsAddedNotification alloc];
    allValues = [v11 allValues];
    v35 = [(COAlarmNotification *)v33 initWithAlarms:allValues];

    v36 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      meshController3 = [v47 meshController];
      alarms3 = [(COAlarmNotification *)v35 alarms];
      *buf = 134218498;
      v60 = meshController3;
      v61 = 2112;
      v62 = nodeCopy;
      v63 = 2112;
      v64 = alarms3;
      _os_log_debug_impl(&dword_244378000, v36, OS_LOG_TYPE_DEBUG, "%p %@ requires %@", buf, 0x20u);

      v11 = v53;
    }

    v37 = [array arrayByAddingObject:v35];

    array = v37;
  }

  v38 = array;

  return array;
}

- (void)_finishMerge:(id)merge
{
  v149 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  mergeRequest = [(COMeshAlarmAddOn *)self mergeRequest];

  if (mergeRequest != mergeCopy)
  {
    v7 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v146 = meshController;
      v147 = 2048;
      v148 = mergeCopy;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p ignoring conclusion of merge %p", buf, 0x16u);
    }

    goto LABEL_87;
  }

  v79 = mergeCopy;
  mergeAlarms = [(COMeshAlarmAddOn *)self mergeAlarms];
  selfCopy = self;
  mergeResponses = [(COMeshAlarmAddOn *)self mergeResponses];
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v10 = mergeAlarms;
  v11 = [v10 countByEnumeratingWithState:&v132 objects:v144 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v133;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v133 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v132 + 1) + 8 * i);
        alarmID = [v15 alarmID];
        [v95 setObject:v15 forKey:alarmID];
      }

      v12 = [v10 countByEnumeratingWithState:&v132 objects:v144 count:16];
    }

    while (v12);
  }

  v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  deletes = [(COMeshAlarmAddOn *)self deletes];
  v18 = [deletes countByEnumeratingWithState:&v128 objects:v143 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v129;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v129 != v20)
        {
          objc_enumerationMutation(deletes);
        }

        v22 = *(*(&v128 + 1) + 8 * j);
        identifier = [v22 identifier];
        [v97 setObject:v22 forKey:identifier];
      }

      v19 = [deletes countByEnumeratingWithState:&v128 objects:v143 count:16];
    }

    while (v19);
  }

  v81 = v10;

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = mergeResponses;
  v24 = 0x277CBE000uLL;
  v86 = [obj countByEnumeratingWithState:&v124 objects:v142 count:16];
  if (v86)
  {
    v84 = *v125;
    do
    {
      v25 = 0;
      do
      {
        if (*v125 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v90 = v25;
        v26 = [obj objectForKey:*(*(&v124 + 1) + 8 * v25)];
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v92 = v26;
        alarms = [v26 alarms];
        v28 = [alarms countByEnumeratingWithState:&v120 objects:v141 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v121;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v121 != v30)
              {
                objc_enumerationMutation(alarms);
              }

              v32 = *(*(&v120 + 1) + 8 * k);
              alarmID2 = [v32 alarmID];
              v34 = [v95 objectForKey:alarmID2];
              v35 = v34;
              if (!v34 || (v36 = MEMORY[0x277D296D0], v140[0] = v34, v140[1] = v32, [*(v24 + 2656) arrayWithObjects:v140 count:2], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "mostRecentlyUpdatedAlarmForAlarms:", v37), v38 = objc_claimAutoreleasedReturnValue(), v38, v37, v32 == v38))
              {
                [v95 setObject:v32 forKey:alarmID2];
              }
            }

            v29 = [alarms countByEnumeratingWithState:&v120 objects:v141 count:16];
          }

          while (v29);
        }

        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        deletes2 = [v92 deletes];
        v40 = [deletes2 countByEnumeratingWithState:&v116 objects:v139 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v117;
          do
          {
            for (m = 0; m != v41; ++m)
            {
              if (*v117 != v42)
              {
                objc_enumerationMutation(deletes2);
              }

              v44 = *(*(&v116 + 1) + 8 * m);
              identifier2 = [v44 identifier];
              v46 = [v97 objectForKey:identifier2];
              if (!v46 || ([v44 date], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "date"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v47, "compare:", v48), v48, v47, v49 == -1))
              {
                [v97 setObject:v44 forKey:identifier2];
              }
            }

            v41 = [deletes2 countByEnumeratingWithState:&v116 objects:v139 count:16];
          }

          while (v41);
        }

        v25 = v90 + 1;
        v24 = 0x277CBE000;
      }

      while ((v90 + 1) != v86);
      v86 = [obj countByEnumeratingWithState:&v124 objects:v142 count:16];
    }

    while (v86);
  }

  v50 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _finishMerge:];
  }

  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __33__COMeshAlarmAddOn__finishMerge___block_invoke;
  v114[3] = &unk_278E18600;
  v51 = v95;
  v115 = v51;
  [v97 enumerateKeysAndObjectsUsingBlock:v114];
  v52 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _finishMerge:];
  }

  array = [MEMORY[0x277CBEB18] array];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v83 = v51;
  v53 = [(COMeshAlarmAddOn *)selfCopy _commandsForReconciling:v81 toTruth:v51 forNode:0];
  v54 = [v53 countByEnumeratingWithState:&v110 objects:v138 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v111;
    do
    {
      for (n = 0; n != v55; ++n)
      {
        if (*v111 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v110 + 1) + 8 * n);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = v109;
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v60 = __33__COMeshAlarmAddOn__finishMerge___block_invoke_137;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v59 = v108;
            v108[0] = MEMORY[0x277D85DD0];
            v108[1] = 3221225472;
            v60 = __33__COMeshAlarmAddOn__finishMerge___block_invoke_2;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v59 = v107;
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v60 = __33__COMeshAlarmAddOn__finishMerge___block_invoke_3;
          }
        }

        v59[2] = v60;
        v59[3] = &unk_278E156B0;
        v59[4] = selfCopy;
        v59[5] = v58;
        v61 = MEMORY[0x245D5FF10]();
        [array addObject:v61];
      }

      v55 = [v53 countByEnumeratingWithState:&v110 objects:v138 count:16];
    }

    while (v55);
  }

  v105 = 0u;
  v106 = 0u;
  v104 = 0u;
  v103 = 0u;
  v87 = obj;
  v62 = 0x277CBE000;
  v85 = [v87 countByEnumeratingWithState:&v103 objects:v137 count:16];
  if (v85)
  {
    v82 = *v104;
    do
    {
      v63 = 0;
      do
      {
        if (*v104 != v82)
        {
          objc_enumerationMutation(v87);
        }

        v64 = *(*(&v103 + 1) + 8 * v63);
        v65 = [v87 objectForKey:v64];
        v91 = v65;
        v93 = v63;
        if ([v65 notModified])
        {
          alarms2 = v81;
          v67 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v146 = meshController;
            v147 = 2112;
            v148 = v64;
            _os_log_debug_impl(&dword_244378000, v67, OS_LOG_TYPE_DEBUG, "%p response is not-modified for %@", buf, 0x16u);
          }
        }

        else
        {
          alarms2 = [v65 alarms];
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        obja = alarms2;
        v68 = [(COMeshAlarmAddOn *)selfCopy _commandsForReconciling:alarms2 toTruth:v83 forNode:v64];
        v69 = [v68 countByEnumeratingWithState:&v99 objects:v136 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v100;
          do
          {
            for (ii = 0; ii != v70; ++ii)
            {
              if (*v100 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v99 + 1) + 8 * ii);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v98[0] = MEMORY[0x277D85DD0];
                v98[1] = 3221225472;
                v98[2] = __33__COMeshAlarmAddOn__finishMerge___block_invoke_139;
                v98[3] = &unk_278E15728;
                v98[4] = selfCopy;
                v98[5] = v73;
                v98[6] = v64;
                v74 = MEMORY[0x245D5FF10](v98);
                [array addObject:v74];
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v99 objects:v136 count:16];
          }

          while (v70);
        }

        v63 = v93 + 1;
        v62 = 0x277CBE000uLL;
      }

      while (v93 + 1 != v85);
      v85 = [v87 countByEnumeratingWithState:&v103 objects:v137 count:16];
    }

    while (v85);
  }

  [(COMeshAlarmAddOn *)selfCopy setMergeRequest:0];
  [(COMeshAlarmAddOn *)selfCopy setMergeAlarms:0];
  v75 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [(COMeshAlarmAddOn *)selfCopy setMergeResponses:v75];

  v76 = objc_alloc_init(*(v62 + 2656));
  [(COMeshAlarmAddOn *)selfCopy setMergingNodes:v76];

  queuedCommands = [(COMeshAlarmAddOn *)selfCopy queuedCommands];
  [array addObjectsFromArray:queuedCommands];

  [(COMeshAlarmAddOn *)selfCopy setQueuedCommands:array];
  v78 = COCoreLogForCategory(2);
  mergeCopy = v79;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v146 = meshController;
    v147 = 2048;
    v148 = v79;
    _os_log_impl(&dword_244378000, v78, OS_LOG_TYPE_DEFAULT, "%p concluded merge %p", buf, 0x16u);
  }

  [(COMeshAlarmAddOn *)selfCopy _processQueuedCommands];
  v7 = v81;
LABEL_87:
}

void __33__COMeshAlarmAddOn__finishMerge___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 32) removeObjectForKey:v4];
  }
}

void __33__COMeshAlarmAddOn__finishMerge___block_invoke_139(uint64_t a1)
{
  v2 = [*(a1 + 32) meshController];
  [v2 sendCommand:*(a1 + 40) toPeer:*(a1 + 48)];
}

- (void)_reloadIndexWithCompletion:(id)completion
{
  completionCopy = completion;
  observedAlarmManager = [(COMeshAlarmAddOn *)self observedAlarmManager];
  alarms = [observedAlarmManager alarms];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke;
  v14[3] = &unk_278E15C10;
  objc_copyWeak(&v16, &location);
  v7 = completionCopy;
  v15 = v7;
  v8 = [alarms addFailureBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_2;
  v11[3] = &unk_278E16FA0;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  v10 = [alarms addSuccessBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_cold_1();
    }

    v6 = [WeakRetained meshControllerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_140;
    v7[3] = &unk_278E16240;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

uint64_t __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_140(uint64_t a1)
{
  [*(a1 + 32) setAlarmIndex:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_2(uint64_t a1, void *a2)
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
          v13 = [v12 alarmID];
          v14 = [v12 lastModifiedDate];
          if (!v14)
          {
            v14 = [MEMORY[0x277CBEAA8] distantPast];
          }

          [v6 setObject:v14 forKey:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v15 = [WeakRetained meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_3;
    block[3] = &unk_278E15B60;
    block[4] = WeakRetained;
    v19 = v6;
    v20 = *(a1 + 32);
    v16 = v6;
    dispatch_async(v15, block);

    v3 = v17;
  }
}

uint64_t __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) alarmIndex];
  v3 = [v2 isEqualToDictionary:*(a1 + 40)];

  [*(a1 + 32) setAlarmIndex:*(a1 + 40)];
  v4 = COCoreLogForCategory(2);
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
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p alarm index reloaded; updated: %s", &v8, 0x16u);
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
  queuedCommands = [(COMeshAlarmAddOn *)self queuedCommands];
  [(COMeshAlarmAddOn *)self setQueuedCommands:MEMORY[0x277CBEBF8]];
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

- (void)_addAlarmDeleteEvent:(id)event
{
  eventCopy = event;
  deletes = [(COMeshAlarmAddOn *)self deletes];
  v6 = [deletes arrayByAddingObject:eventCopy];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v8 options:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__COMeshAlarmAddOn__addAlarmDeleteEvent___block_invoke;
  v14[3] = &unk_278E18628;
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
  [(COMeshAlarmAddOn *)self setDeletes:v13];
}

BOOL __41__COMeshAlarmAddOn__addAlarmDeleteEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 compare:*(a1 + 32)] == -1;

  return v4;
}

- (void)_alarmManagerAlarmFired:(id)fired
{
  v85 = *MEMORY[0x277D85DE8];
  userInfo = [fired userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  homekit = [(COMeshAlarmAddOn *)self homekit];
  currentAccessory = [homekit currentAccessory];
  if (([homekit hasOptedToHH2] & 1) != 0 || !currentAccessory)
  {
    goto LABEL_45;
  }

  v8 = [homekit homeForAccessory:currentAccessory];
  v57 = homekit;
  v58 = v5;
  v63 = currentAccessory;
  if (!v8)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v9 = [homekit mediaSystemForAccessory:currentAccessory inHome:v8];
  if (!v9 || ([homekit accessoriesInMediaSystem:v9 inHome:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_18:
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn _alarmManagerAlarmFired:];
    }

    goto LABEL_20;
  }

  v11 = v10;
  firstObject = [v10 firstObject];
  v60 = v8;
  v59 = v9;
  if ([firstObject isEqual:currentAccessory])
  {
    v13 = [v11 objectAtIndex:1];

    firstObject = v13;
  }

  v56 = firstObject;
  device = [firstObject device];
  idsIdentifier = [device idsIdentifier];
  uUIDString = [idsIdentifier UUIDString];

  [(COMeshAddOn *)self meshController];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v61 = v78 = 0u;
  nodes = [v61 nodes];
  v18 = [nodes countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (!v18)
  {
LABEL_56:

    v5 = v58;
    v9 = v59;
    currentAccessory = v63;
    v8 = v60;
LABEL_20:

    v25 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn _alarmManagerAlarmFired:];
    }

    array = [MEMORY[0x277CBEB18] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v27 = v5;
    v28 = [v27 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v72;
      v62 = v27;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v72 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v71 + 1) + 8 * i);
          if (([v32 isEnabled] & 1) == 0 && -[COMeshAlarmAddOn _isAlarm:targetingAccessory:](self, "_isAlarm:targetingAccessory:", v32, currentAccessory))
          {
            v33 = array;
            v34 = COCoreLogForCategory(2);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              alarmID = [v32 alarmID];
              *buf = 134218242;
              selfCopy3 = self;
              v81 = 2112;
              v82 = alarmID;
              _os_log_debug_impl(&dword_244378000, v34, OS_LOG_TYPE_DEBUG, "%p %@ is not enabled, so will update.", buf, 0x16u);
            }

            v35 = [v32 mutableCopy];
            [v35 setFiredDate:0];
            [v35 setSnoozeFireDate:0];
            [v35 setEnabled:0];
            v36 = objc_alloc_init(MEMORY[0x277D2C900]);
            v37 = [(COAlarmRequest *)[COAlarmUpdateRequest alloc] initWithAlarm:v35];
            meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke;
            block[3] = &unk_278E18678;
            block[4] = self;
            v67 = v37;
            v69 = v32;
            selfCopy2 = self;
            v68 = v36;
            v39 = v36;
            v40 = v37;
            dispatch_async(meshControllerQueue, block);

            array = v33;
            [v33 addObject:v39];

            v27 = v62;
            currentAccessory = v63;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v29);
    }

    if ([array count])
    {
      v42 = MEMORY[0x277D2C938];
      meshControllerQueue2 = [(COMeshAddOn *)self meshControllerQueue];
      v44 = [v42 schedulerWithDispatchQueue:meshControllerQueue2];

      futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:array ignoringErrors:1 scheduler:v44];

      homekit = v57;
      v5 = v58;
    }

    else
    {
      v46 = COCoreLogForCategory(2);
      homekit = v57;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [COMeshAlarmAddOn _alarmManagerAlarmFired:];
      }

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
      v5 = v58;
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_152;
    v64[3] = &unk_278E186A0;
    v64[4] = self;
    v65 = v27;
    v47 = [futureWithNoResult addCompletionBlock:v64];

LABEL_53:
    goto LABEL_54;
  }

  v19 = v18;
  v20 = *v76;
LABEL_10:
  v21 = 0;
  while (1)
  {
    if (*v76 != v20)
    {
      objc_enumerationMutation(nodes);
    }

    v22 = *(*(&v75 + 1) + 8 * v21);
    iDSIdentifier = [v22 IDSIdentifier];
    v24 = [uUIDString isEqual:iDSIdentifier];

    if (v24)
    {
      break;
    }

    if (v19 == ++v21)
    {
      v19 = [nodes countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  v48 = [v61 me];
  remote = [v22 remote];
  if ([remote compare:v48] != -1)
  {
    software = [remote software];
    v51 = [software hasPrefix:@"14."];

    if (!v51)
    {

      goto LABEL_56;
    }
  }

  v52 = COCoreLogForCategory(2);
  homekit = v57;
  v5 = v58;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _alarmManagerAlarmFired:];
  }

  currentAccessory = v63;
LABEL_45:
  v53 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_244378000, v53, OS_LOG_TYPE_DEFAULT, "%p posting fired notification.", buf, 0xCu);
  }

  array = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [array alarmAddOn:self didFireAlarms:v5];
  }

  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    futureWithNoResult = [(COMeshAddOn *)self meshController];
    v54 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _timerManagerTimerFired:];
    }

    v55 = [(COAlarmNotification *)[COAlarmFiredNotification alloc] initWithAlarms:v5];
    [futureWithNoResult sendNotification:v55];

    goto LABEL_53;
  }

LABEL_54:
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2;
  v4[3] = &unk_278E18650;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmUpdateRequest:v3 callback:v4];
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_152(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p done synchronizing, so posting notification.", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didFireAlarms:*(a1 + 40)];
  }

  if ([*(a1 + 32) performsLocalActions])
  {
    v5 = [*(a1 + 32) meshController];
    v6 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _timerManagerTimerFired:];
    }

    v7 = [(COAlarmNotification *)[COAlarmFiredNotification alloc] initWithAlarms:*(a1 + 40)];
    [v5 sendNotification:v7];
  }
}

- (void)_alarmManagerStateReset:(id)reset
{
  resetCopy = reset;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__COMeshAlarmAddOn__alarmManagerStateReset___block_invoke;
  v5[3] = &unk_278E16A10;
  objc_copyWeak(&v6, &location);
  [(COMeshAlarmAddOn *)self _reloadIndexWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__COMeshAlarmAddOn__alarmManagerStateReset___block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained meshController];
    if (a2)
    {
      v6 = objc_alloc_init(COAlarmManagerStateResetNotification);
      v7 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __44__COMeshTimerAddOn__timerManagerStateReset___block_invoke_cold_1();
      }

      [v5 sendNotification:v6];
      v8 = [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 didResetAlarmAddOn:v4];
      }
    }

    else
    {
      v6 = COCoreLogForCategory(2);
      if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v5;
        _os_log_impl(&dword_244378000, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "%p not emitting state reset, alarms not updated", &v9, 0xCu);
      }
    }
  }
}

- (void)_alarmManagerAlarmsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alarmAddOn:self didChangeAlarms:v6];
  }
}

- (void)_alarmManagerFiringAlarmChanged:(id)changed
{
  userInfo = [changed userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D295A0]];

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alarmAddOn:self didChangeFiringAlarms:v6];
  }
}

- (void)_accessorySettingValueUpdated:(id)updated
{
  object = [updated object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyPath = [object keyPath];
    v5 = [keyPath isEqualToString:@"root.mobileTimer.alarms"];

    if (v5)
    {
      homekit = [(COMeshAlarmAddOn *)self homekit];
      currentAccessory = [homekit currentAccessory];
      if (currentAccessory)
      {
        delegate = [homekit homeForAccessory:currentAccessory];
        if (delegate && [homekit isAlarmsCollectionSetting:object forAccessory:currentAccessory inHome:delegate])
        {
          [(COMeshAlarmAddOn *)self _replicateToMobileTimerFromHomeKit];
        }
      }

      else
      {
        delegate = [(COMeshAlarmAddOn *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate didResetAlarmAddOn:self];
        }
      }
    }
  }
}

- (id)_currentAccessoryForConnection:(id)connection
{
  co_PeerInstance = [connection co_PeerInstance];
  if (co_PeerInstance)
  {
    homehub = [(COMeshAlarmAddOn *)self homehub];
    homekit = [(COMeshAlarmAddOn *)self homekit];
    currentAccessory = [homehub accessoryForPeerInstance:co_PeerInstance usingHomeKitAdapter:homekit];
  }

  else
  {
    homehub = [(COMeshAlarmAddOn *)self homekit];
    currentAccessory = [homehub currentAccessory];
  }

  return currentAccessory;
}

- (void)_replicateToMobileTimerFromHomeKit
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    homekit = [(COMeshAlarmAddOn *)self homekit];
    hasOptedToHH2 = [homekit hasOptedToHH2];

    if ((hasOptedToHH2 & 1) == 0)
    {
      meshController = [(COMeshAddOn *)self meshController];
      v6 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v23 = meshController;
        _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting replication of alarms...", buf, 0xCu);
      }

      homekit2 = [(COMeshAlarmAddOn *)self homekit];
      currentAccessory = [homekit2 currentAccessory];
      if (currentAccessory)
      {
        v9 = [homekit2 homeForAccessory:currentAccessory];
        if (v9)
        {
          v10 = [homekit2 alarmsForAccessory:currentAccessory inHome:v9];
          if (v10)
          {
            alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
            alarms = [alarmManager alarms];
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __54__COMeshAlarmAddOn__replicateToMobileTimerFromHomeKit__block_invoke;
            v15[3] = &unk_278E186C8;
            v15[4] = self;
            v16 = currentAccessory;
            v17 = v10;
            v18 = meshController;
            v19 = alarmManager;
            v20 = homekit2;
            v21 = v9;
            v13 = alarmManager;
            v14 = [alarms addSuccessBlock:v15];
          }
        }
      }
    }
  }
}

void __54__COMeshAlarmAddOn__replicateToMobileTimerFromHomeKit__block_invoke(uint64_t a1, void *a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v81;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v81 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v80 + 1) + 8 * i);
        if ([*(a1 + 32) _isAlarm:v11 targetingAccessory:*(a1 + 40)])
        {
          [v4 addObject:v11];
          v12 = [v11 alarmID];
          [v5 setObject:v11 forKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v8);
  }

  v62 = v4;

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v14 = *(a1 + 48);
  v15 = [v14 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v77;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v77 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v76 + 1) + 8 * j);
        v20 = [v19 alarmID];
        [v13 setObject:v19 forKey:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v16);
  }

  v61 = v6;

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v21 = v13;
  v22 = [v21 countByEnumeratingWithState:&v72 objects:v91 count:16];
  if (v22)
  {
    v23 = v22;
    v67 = *v73;
    do
    {
      v24 = 0;
      do
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v72 + 1) + 8 * v24);
        v26 = [v21 objectForKey:{v25, v61, v62}];
        v27 = [v5 objectForKey:v25];
        if (v27)
        {
          v28 = [v26 COPreferredAlarm:v27];
          v29 = v28;
          if (v27 == v28)
          {
          }

          else
          {
            v30 = [v26 isEqualIgnoringLastModifiedDate:v27];

            if ((v30 & 1) == 0)
            {
              if ([v27 co_isMediaSystemOriginating] && !objc_msgSend(v26, "co_isMediaSystemOriginating"))
              {
                v39 = [v26 co_HomeKitAlarmCopy];
                v40 = COCoreLogForCategory(2);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v63 = *(a1 + 56);
                  v64 = [v39 alarmID];
                  v65 = v39;
                  v41 = [v26 alarmID];
                  *buf = 134218498;
                  v86 = v63;
                  v87 = 2112;
                  v88 = v64;
                  v89 = 2112;
                  v90 = v41;
                  v42 = v41;
                  _os_log_impl(&dword_244378000, v40, OS_LOG_TYPE_DEFAULT, "%p swapping %@ for %@", buf, 0x20u);

                  v39 = v65;
                }

                v43 = [*(a1 + 72) removeAlarm:v26 fromAccessory:*(a1 + 40) inHome:*(a1 + 80)];
                v44 = [*(a1 + 72) addAlarm:v39 toAccessory:*(a1 + 40) inHome:*(a1 + 80)];
              }

              else
              {
                v31 = COCoreLogForCategory(2);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  v66 = *(a1 + 56);
                  v47 = [v26 alarmID];
                  *buf = 134218242;
                  v86 = v66;
                  v87 = 2112;
                  v88 = v47;
                  _os_log_debug_impl(&dword_244378000, v31, OS_LOG_TYPE_DEBUG, "%p updating alarm %@", buf, 0x16u);
                }

                v32 = [*(a1 + 64) updateAlarm:v26];
              }

LABEL_41:
              [v5 removeObjectForKey:v25];
              goto LABEL_42;
            }
          }

          if (([v27 isFiring] & 1) != 0 || objc_msgSend(v27, "isSnoozed"))
          {
            v35 = [v27 co_alarmUpdatedWithHomeKitAlarm:v26];
            if (v35)
            {
              v36 = COCoreLogForCategory(2);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = *(a1 + 56);
                *buf = 134218242;
                v86 = v37;
                v87 = 2112;
                v88 = v35;
                _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p targeted updating alarm %@", buf, 0x16u);
              }

              v38 = [*(a1 + 64) updateAlarm:v35];
            }
          }

          goto LABEL_41;
        }

        v33 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 56);
          v46 = [v26 alarmID];
          *buf = 134218242;
          v86 = v45;
          v87 = 2112;
          v88 = v46;
          _os_log_debug_impl(&dword_244378000, v33, OS_LOG_TYPE_DEBUG, "%p adding alarm %@", buf, 0x16u);
        }

        v34 = [*(a1 + 64) addAlarm:v26];
LABEL_42:

        ++v24;
      }

      while (v23 != v24);
      v48 = [v21 countByEnumeratingWithState:&v72 objects:v91 count:16];
      v23 = v48;
    }

    while (v48);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v49 = v5;
  v50 = [v49 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v69;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v69 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [v49 objectForKey:{*(*(&v68 + 1) + 8 * k), v61}];
        if ([*(a1 + 32) _isAlarm:v54 targetingAccessory:*(a1 + 40)])
        {
          v55 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            v57 = *(a1 + 56);
            v58 = [v54 alarmID];
            *buf = 134218242;
            v86 = v57;
            v87 = 2112;
            v88 = v58;
            _os_log_debug_impl(&dword_244378000, v55, OS_LOG_TYPE_DEBUG, "%p removing alarm %@", buf, 0x16u);
          }

          v56 = [*(a1 + 64) removeAlarm:v54];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v51);
  }

  v59 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = *(a1 + 56);
    *buf = 134217984;
    v86 = v60;
    _os_log_impl(&dword_244378000, v59, OS_LOG_TYPE_DEFAULT, "... %p finished replication of alarms.", buf, 0xCu);
  }
}

- (id)_filteredAlarmsList:(id)list forAccessory:(id)accessory
{
  listCopy = list;
  accessoryCopy = accessory;
  v8 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _filteredAlarmsList:forAccessory:];
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __53__COMeshAlarmAddOn__filteredAlarmsList_forAccessory___block_invoke;
  v17 = &unk_278E17E70;
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

uint64_t __53__COMeshAlarmAddOn__filteredAlarmsList_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isAlarm:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFCEC8]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (id)_alarmsForAccessory:(id)accessory allowLocalStorage:(BOOL)storage usingLeader:(BOOL)leader member:(id)member client:(id)client
{
  accessoryCopy = accessory;
  memberCopy = member;
  clientCopy = client;
  meshController = [(COMeshAddOn *)self meshController];
  v16 = objc_alloc_init(MEMORY[0x277D2C900]);
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke;
  block[3] = &unk_278E18790;
  v27 = memberCopy;
  v28 = meshController;
  v29 = accessoryCopy;
  v30 = clientCopy;
  selfCopy = self;
  v18 = v16;
  v32 = v18;
  storageCopy = storage;
  leaderCopy = leader;
  v19 = clientCopy;
  v20 = accessoryCopy;
  v21 = meshController;
  v22 = memberCopy;
  dispatch_async(meshControllerQueue, block);

  v23 = v32;
  v24 = v18;

  return v18;
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 134218242;
      v69 = v3;
      v70 = 2114;
      v71 = v4;
      _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster alarms for %{public}@", buf, 0x16u);
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [COMTReadAction actionWithTargetType:v6 targetMemento:*(a1 + 48)];

    v8 = [*(a1 + 56) clientLifetimeActivity];
    v9 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v8];

    if (v9)
    {
      nw_activity_activate();
    }

    v10 = [*(a1 + 64) meshControllerQueue];
    objc_initWeak(buf, *(a1 + 64));
    v11 = [*(a1 + 64) actionDirector];
    v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_167;
    v61[3] = &unk_278E18718;
    v13 = v10;
    v62 = v13;
    objc_copyWeak(&v67, buf);
    v14 = v9;
    v63 = v14;
    v15 = v7;
    v64 = v15;
    v65 = *(a1 + 56);
    v66 = *(a1 + 72);
    [v11 requestAction:v15 members:v12 activity:v14 withCompletion:v61];

    v16 = [*(a1 + 64) recorder];
    (v16)[2](v16, 0x2857B5848, &__block_literal_global_170);

    objc_destroyWeak(&v67);
    objc_destroyWeak(buf);
  }

  else if (*(a1 + 80) == 1 && [*(a1 + 64) performsLocalActions] && (objc_msgSend(*(a1 + 40), "leader"), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v34 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      *buf = 134218242;
      v69 = v35;
      v70 = 2112;
      v71 = v36;
      _os_log_impl(&dword_244378000, v34, OS_LOG_TYPE_DEFAULT, "%p using local list of alarms for %@", buf, 0x16u);
    }

    v37 = [*(a1 + 64) alarmManager];
    v38 = [v37 alarms];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171;
    v56[3] = &unk_278E16CB0;
    v39 = *(a1 + 48);
    v40 = *(a1 + 64);
    v57 = v39;
    v58 = v40;
    v59 = *(a1 + 40);
    v60 = *(a1 + 72);
    v41 = [v38 addCompletionBlock:v56];

    v42 = [*(a1 + 64) recorder];
    (v42)[2](v42, 0x2857B5848, &__block_literal_global_175);

    v15 = v57;
  }

  else
  {
    v18 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *buf = 134218242;
      v69 = v19;
      v70 = 2112;
      v71 = v20;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p requesting list of alarms for %@ from the leader", buf, 0x16u);
    }

    v21 = [COAlarmReadRequest alloc];
    v22 = [*(a1 + 48) uniqueIdentifier];
    v23 = [(COAlarmReadRequest *)v21 initWithAccessoryUniqueIdentifier:v22 requiresFilter:1];

    if (*(a1 + 81) == 1)
    {
      v24 = [*(a1 + 56) clientLifetimeActivity];
      v25 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v24];

      if (v25)
      {
        [(COMeshRequest *)v23 setActivity:v25];
        nw_activity_activate();
      }
    }

    else
    {
      v25 = 0;
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176;
    v48[3] = &unk_278E18740;
    v26 = v25;
    v49 = v26;
    v50 = *(a1 + 56);
    v51 = *(a1 + 48);
    v15 = v23;
    v52 = v15;
    v27 = *(a1 + 40);
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v53 = v27;
    v54 = v28;
    v55 = v29;
    v30 = MEMORY[0x245D5FF10](v48);
    v31 = v30;
    if (*(a1 + 81))
    {
      [*(a1 + 40) sendRequest:v15 withCompletionHandler:v30];
    }

    else
    {
      v32 = *(a1 + 64);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_180;
      v45[3] = &unk_278E18768;
      v47 = v30;
      v46 = v15;
      [v32 handleAlarmReadRequest:v46 callback:v45];
    }

    v33 = [*(a1 + 64) recorder];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_2_181;
    v43[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
    v44 = *(a1 + 81);
    (v33)[2](v33, 0x2857B5848, v43);
  }
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_2;
  block[3] = &unk_278E186F0;
  objc_copyWeak(&v17, (a1 + 72));
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = v6;
  v15 = v5;
  v16 = *(a1 + 64);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v17);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    if (*(a1 + 32))
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      if (v4)
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        xpc_dictionary_set_string(v4, "command", [v6 UTF8String]);

        v7 = [*(a1 + 48) clientBundleIdentifier];
        v8 = v7;
        if (!v7)
        {
          v1 = [MEMORY[0x277CCA8D8] mainBundle];
          v8 = [v1 bundleIdentifier];
        }

        xpc_dictionary_set_string(v4, "client", [v8 UTF8String]);
        if (!v7)
        {
        }

        nw_activity_submit_metrics();
      }
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    if (v9)
    {
      if (v10)
      {
        nw_activity_complete_with_reason();
        v9 = *(a1 + 56);
      }

      [*(a1 + 72) finishWithError:v9];
    }

    else
    {
      if (v10)
      {
        nw_activity_complete_with_reason();
      }

      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v13 = v11;
      v14 = [v13 alarms];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = MEMORY[0x277CBEBF8];
      }

      [v12 finishWithResult:v16];
    }

    WeakRetained = v17;
  }
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_1();
    }

    [*(a1 + 56) finishWithError:v7];
    goto LABEL_14;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_8;
  }

  v9 = [*(a1 + 40) homekit];
  v10 = [*(a1 + 32) uniqueIdentifier];
  v11 = [v9 accessoryWithUniqueIdentifier:v10];

  if (v11)
  {
    v12 = [*(a1 + 40) _filteredAlarmsList:v5 forAccessory:v11];

    v5 = v12;
LABEL_8:
    v13 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v17 = 134218242;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p local alarms list: %@", &v17, 0x16u);
    }

    [*(a1 + 56) finishWithResult:v5];
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v16 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_2();
  }

  [*(a1 + 56) finishWithError:v15];
LABEL_14:
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v14)
  {
    v14 = [v13 error];
    if (!v14)
    {
      if (*(a1 + 32))
      {
        v22 = xpc_dictionary_create(0, 0, 0);
        if (v22)
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          xpc_dictionary_set_string(v22, "command", [v24 UTF8String]);

          v25 = [*(a1 + 40) clientBundleIdentifier];
          v26 = v25;
          if (!v25)
          {
            v5 = [MEMORY[0x277CCA8D8] mainBundle];
            v26 = [v5 bundleIdentifier];
          }

          xpc_dictionary_set_string(v22, "client", [v26 UTF8String]);
          if (!v25)
          {
          }

          nw_activity_submit_metrics();
        }

        nw_activity_complete_with_reason();
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v13 alarms];
        if (*(a1 + 48) && [*(a1 + 56) requiresFilter] && (objc_msgSend(v13, "isFiltered") & 1) == 0)
        {
          v28 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = *(a1 + 64);
            *buf = 134217984;
            v53 = v29;
            _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_INFO, "%p alarm results from leader not filtered!", buf, 0xCu);
          }

          v30 = [*(a1 + 72) homekit];
          v31 = [*(a1 + 48) uniqueIdentifier];
          v32 = [v30 accessoryWithUniqueIdentifier:v31];

          if (!v32)
          {
            v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
            v43 = COCoreLogForCategory(2);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_2();
            }

            [*(a1 + 80) finishWithError:v15];
            goto LABEL_38;
          }

          v33 = [*(a1 + 72) _filteredAlarmsList:v27 forAccessory:v32];

          v27 = v33;
        }
      }

      else
      {
        v27 = [MEMORY[0x277CBEA60] array];
      }

      v34 = [*(a1 + 72) homekit];
      v35 = [v34 hasOptedToHH2];

      if (v35)
      {
        v36 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 64);
          *buf = 134218242;
          v53 = v37;
          v54 = 2112;
          v55 = v27;
          _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p alarms list from leader: %@", buf, 0x16u);
        }

        [*(a1 + 80) finishWithResult:v27];
      }

      else
      {
        v38 = [*(a1 + 72) alarmManager];
        v39 = [v38 alarms];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_178;
        v48[3] = &unk_278E17268;
        v40 = v27;
        v49 = v40;
        v50 = *(a1 + 64);
        v51 = *(a1 + 80);
        v41 = [v39 addSuccessBlock:v48];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179;
        v44[3] = &unk_278E17E48;
        v45 = *(a1 + 64);
        v27 = v40;
        v46 = v27;
        v47 = *(a1 + 80);
        v42 = [v39 addFailureBlock:v44];
      }

      v15 = 0;
LABEL_38:

      goto LABEL_14;
    }
  }

  v15 = v14;
  if (*(a1 + 32))
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    if (v16)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      xpc_dictionary_set_string(v16, "command", [v18 UTF8String]);

      v19 = [*(a1 + 40) clientBundleIdentifier];
      v20 = v19;
      if (!v19)
      {
        v6 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v6 bundleIdentifier];
      }

      xpc_dictionary_set_string(v16, "client", [v20 UTF8String]);
      if (!v19)
      {
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  v21 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_1();
  }

  [*(a1 + 80) finishWithError:v15];
LABEL_14:
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_178(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [v11 alarmID];
          [v5 setObject:v11 forKey:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v8);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = *(a1 + 32);
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * j);
          v19 = [v18 alarmID];
          v20 = [v5 objectForKey:v19];

          v21 = [v18 COPreferredAlarm:v20];
          [v4 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v15);
    }

    v3 = v25;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v22 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    *buf = 134218498;
    v35 = v23;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = v24;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p alarms list after local merge: %@ [list from leader: %@]", buf, 0x20u);
  }

  [*(a1 + 48) finishWithResult:v4];
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179_cold_1();
  }

  [*(a1 + 48) finishWithResult:*(a1 + 40)];
}

- (BOOL)_isAlarm:(id)alarm targetingAccessoryIdentifiers:(id)identifiers
{
  v44 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  identifiersCopy = identifiers;
  siriContext = [alarmCopy siriContext];
  v8 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];
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
        v15 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          alarmID = [alarmCopy alarmID];
          query = [v11 query];
          *buf = 138412802;
          v39 = alarmID;
          v40 = 2112;
          v41 = query;
          v42 = 2112;
          v43 = identifiersCopy;
          _os_log_debug_impl(&dword_244378000, v15, OS_LOG_TYPE_DEBUG, "checking if alarm (%@) target (%@) contains %@", buf, 0x20u);
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
          v32 = alarmCopy;
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
          alarmCopy = v32;
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

    queryItems = COCoreLogForCategory(2);
    if (os_log_type_enabled(queryItems, OS_LOG_TYPE_DEBUG))
    {
      [COMeshTimerAddOn _isTimer:targetingAccessoryIdentifiers:];
    }

    goto LABEL_26;
  }

  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn _isAlarm:alarmCopy targetingAccessoryIdentifiers:?];
  }

LABEL_28:

  return v10;
}

- (id)alarmsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:accessoryCopy];
    if (v5)
    {
      v6 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = [(COMeshAlarmAddOn *)self _alarmsForAccessory:v5 allowLocalStorage:[(COMeshAlarmAddOn *)self performsLocalActions] usingLeader:1 member:v6 client:0];

  return v7;
}

- (id)addAlarm:(id)alarm member:(id)member client:(id)client
{
  v54 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  memberCopy = member;
  clientCopy = client;
  v11 = [(COAlarmRequest *)[COAlarmCreateRequest alloc] initWithAlarm:alarmCopy];
  meshController = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v30 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      alarmID = [alarmCopy alarmID];
      *buf = 134218242;
      v51 = meshController2;
      v52 = 2112;
      v53 = alarmID;
      _os_log_impl(&dword_244378000, v30, OS_LOG_TYPE_DEFAULT, "%p directly add an alarm %@", buf, 0x16u);
    }

    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    v26 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v47 = v11;
    v23 = v33;
    v48 = v23;
    v49 = meshController;
    dispatch_async(meshControllerQueue, block);

    v27 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (memberCopy)
    {
      v37 = v11;
      if (v15)
      {
        alarmID2 = [alarmCopy alarmID];
        *buf = 134218242;
        v51 = meshController;
        v52 = 2112;
        v53 = alarmID2;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to add %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTAlarmCreateAction alloc] initWithAlarm:alarmCopy];
      clientLifetimeActivity = [clientCopy clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:clientLifetimeActivity];

      if (v20)
      {
        nw_activity_activate();
      }

      actionDirector = [(COMeshAlarmAddOn *)self actionDirector];
      v22 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192;
      v40[3] = &unk_278E15778;
      v41 = v20;
      v42 = v18;
      v43 = clientCopy;
      v23 = v17;
      v44 = v23;
      v45 = meshController;
      v24 = v18;
      v25 = v20;
      [actionDirector requestAction:v24 members:v22 activity:v25 withCompletion:v40];

      v26 = &off_244448000;
      v27 = 0;
      v11 = v37;
    }

    else
    {
      if (v15)
      {
        meshController3 = [(COMeshAddOn *)self meshController];
        alarmID3 = [alarmCopy alarmID];
        *buf = 134218242;
        v51 = meshController3;
        v52 = 2112;
        v53 = alarmID3;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to add an alarm %@", buf, 0x16u);
      }

      v23 = [(COMeshAlarmAddOn *)self _sendRequest:v11 client:clientCopy];
      v27 = 0;
      v26 = &off_244448000;
    }
  }

  recorder = [(COMeshAlarmAddOn *)self recorder];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = *(v26 + 186);
  v38[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_193;
  v38[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v39 = v27;
  (recorder)[2](recorder, 0x2857B5848, v38);

  return v23;
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmCreateRequest:v3 callback:v4];
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      xpc_dictionary_set_string(v8, "command", [v10 UTF8String]);

      v11 = [*(a1 + 48) clientBundleIdentifier];
      v12 = v11;
      if (!v11)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = [v3 bundleIdentifier];
      }

      xpc_dictionary_set_string(v8, "client", [v12 UTF8String]);
      if (!v11)
      {
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v7)
  {
    v13 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192_cold_1();
    }

    [*(a1 + 56) finishWithError:v7];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)updateAlarm:(id)alarm member:(id)member client:(id)client
{
  v54 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  memberCopy = member;
  clientCopy = client;
  v11 = [(COAlarmRequest *)[COAlarmUpdateRequest alloc] initWithAlarm:alarmCopy];
  meshController = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v30 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      alarmID = [alarmCopy alarmID];
      *buf = 134218242;
      v51 = meshController2;
      v52 = 2112;
      v53 = alarmID;
      _os_log_impl(&dword_244378000, v30, OS_LOG_TYPE_DEFAULT, "%p directly update an alarm %@", buf, 0x16u);
    }

    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    v26 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v47 = v11;
    v23 = v33;
    v48 = v23;
    v49 = meshController;
    dispatch_async(meshControllerQueue, block);

    v27 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (memberCopy)
    {
      v37 = v11;
      if (v15)
      {
        alarmID2 = [alarmCopy alarmID];
        *buf = 134218242;
        v51 = meshController;
        v52 = 2112;
        v53 = alarmID2;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to update %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = [[COMTAlarmUpdateAction alloc] initWithAlarm:alarmCopy];
      clientLifetimeActivity = [clientCopy clientLifetimeActivity];
      v20 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:clientLifetimeActivity];

      if (v20)
      {
        nw_activity_activate();
      }

      actionDirector = [(COMeshAlarmAddOn *)self actionDirector];
      v22 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195;
      v40[3] = &unk_278E15778;
      v41 = v20;
      v42 = v18;
      v43 = clientCopy;
      v23 = v17;
      v44 = v23;
      v45 = meshController;
      v24 = v18;
      v25 = v20;
      [actionDirector requestAction:v24 members:v22 activity:v25 withCompletion:v40];

      v26 = &off_244448000;
      v27 = 0;
      v11 = v37;
    }

    else
    {
      if (v15)
      {
        meshController3 = [(COMeshAddOn *)self meshController];
        alarmID3 = [alarmCopy alarmID];
        *buf = 134218242;
        v51 = meshController3;
        v52 = 2112;
        v53 = alarmID3;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to update an alarm %@", buf, 0x16u);
      }

      v23 = [(COMeshAlarmAddOn *)self _sendRequest:v11 client:clientCopy];
      v27 = 0;
      v26 = &off_244448000;
    }
  }

  recorder = [(COMeshAlarmAddOn *)self recorder];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = *(v26 + 186);
  v38[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_196;
  v38[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v39 = v27;
  (recorder)[2](recorder, 0x2857B5848, v38);

  return v23;
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmUpdateRequest:v3 callback:v4];
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      xpc_dictionary_set_string(v8, "command", [v10 UTF8String]);

      v11 = [*(a1 + 48) clientBundleIdentifier];
      v12 = v11;
      if (!v11)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = [v3 bundleIdentifier];
      }

      xpc_dictionary_set_string(v8, "client", [v12 UTF8String]);
      if (!v11)
      {
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v7)
  {
    v13 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195_cold_1();
    }

    [*(a1 + 56) finishWithError:v7];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)removeAlarm:(id)alarm member:(id)member client:(id)client
{
  v57 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  memberCopy = member;
  clientCopy = client;
  v11 = [(COAlarmRequest *)[COAlarmDeleteRequest alloc] initWithAlarm:alarmCopy];
  meshController = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v33 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      alarmID = [alarmCopy alarmID];
      *buf = 134218242;
      v54 = meshController2;
      v55 = 2112;
      v56 = alarmID;
      _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "%p directly remove an alarm %@", buf, 0x16u);
    }

    v36 = objc_alloc_init(MEMORY[0x277D2C900]);
    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    v29 = &off_244448000;
    block[1] = 3221225472;
    block[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v50 = v11;
    v26 = v36;
    v51 = v26;
    v52 = meshController;
    dispatch_async(meshControllerQueue, block);

    v30 = 1;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (memberCopy)
    {
      v40 = v11;
      if (v15)
      {
        alarmID2 = [alarmCopy alarmID];
        *buf = 134218242;
        v54 = meshController;
        v55 = 2112;
        v56 = alarmID2;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p using secondary cluster to remove %@", buf, 0x16u);
      }

      v17 = objc_alloc_init(MEMORY[0x277D2C900]);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      alarmID3 = [alarmCopy alarmID];
      v21 = [COMTDeleteAction actionWithTargetType:v19 targetIdentifier:alarmID3];

      clientLifetimeActivity = [clientCopy clientLifetimeActivity];
      v23 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:clientLifetimeActivity];

      if (v23)
      {
        nw_activity_activate();
      }

      actionDirector = [(COMeshAlarmAddOn *)self actionDirector];
      v25 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198;
      v43[3] = &unk_278E15778;
      v44 = v23;
      v45 = v21;
      v46 = clientCopy;
      v26 = v17;
      v47 = v26;
      v48 = meshController;
      v27 = v21;
      v28 = v23;
      [actionDirector requestAction:v27 members:v25 activity:v28 withCompletion:v43];

      v29 = &off_244448000;
      v30 = 0;
      v11 = v40;
    }

    else
    {
      if (v15)
      {
        meshController3 = [(COMeshAddOn *)self meshController];
        alarmID4 = [alarmCopy alarmID];
        *buf = 134218242;
        v54 = meshController3;
        v55 = 2112;
        v56 = alarmID4;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p requesting leader to remove an alarm %@", buf, 0x16u);
      }

      v26 = [(COMeshAlarmAddOn *)self _sendRequest:v11 client:clientCopy];
      v30 = 0;
      v29 = &off_244448000;
    }
  }

  recorder = [(COMeshAlarmAddOn *)self recorder];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = *(v29 + 186);
  v41[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_199;
  v41[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v42 = v30;
  (recorder)[2](recorder, 0x2857B5848, v41);

  return v26;
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmDeleteRequest:v3 callback:v4];
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (*(a1 + 32))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      xpc_dictionary_set_string(v8, "command", [v10 UTF8String]);

      v11 = [*(a1 + 48) clientBundleIdentifier];
      v12 = v11;
      if (!v11)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = [v3 bundleIdentifier];
      }

      xpc_dictionary_set_string(v8, "client", [v12 UTF8String]);
      if (!v11)
      {
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  if (v7)
  {
    v13 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198_cold_1();
    }

    [*(a1 + 56) finishWithError:v7];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }
}

- (id)snoozeAlarmWithIdentifier:(id)identifier client:(id)client
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v8 = [[COAlarmSnoozeRequest alloc] initWithAlarmIdentifier:identifierCopy];
  meshController = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v17 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v28 = meshController2;
      v29 = 2112;
      v30 = identifierCopy;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p directly snooze an alarm %@", buf, 0x16u);
    }

    v19 = objc_alloc_init(MEMORY[0x277D2C900]);
    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v24 = v8;
    v13 = v19;
    v25 = v13;
    v26 = meshController;
    dispatch_async(meshControllerQueue, block);

    v14 = 1;
  }

  else
  {
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      meshController3 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v28 = meshController3;
      v29 = 2112;
      v30 = identifierCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p requesting leader to snooze an alarm %@", buf, 0x16u);
    }

    v13 = [(COMeshAlarmAddOn *)self _sendRequest:v8 client:clientCopy];
    v14 = 0;
  }

  recorder = [(COMeshAlarmAddOn *)self recorder];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_200;
  v21[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v22 = v14;
  (recorder)[2](recorder, 0x2857B5848, v21);

  return v13;
}

void __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmSnoozeRequest:v3 callback:v4];
}

void __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

- (id)dismissAlarmWithIdentifier:(id)identifier client:(id)client
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v8 = [[COAlarmDismissRequest alloc] initWithAlarmIdentifier:identifierCopy];
  meshController = [(COMeshAddOn *)self meshController];
  if (-[COMeshAlarmAddOn performsLocalActions](self, "performsLocalActions") && ([meshController leader], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v22 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v35 = meshController2;
      v36 = 2112;
      v37 = identifierCopy;
      _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p directly dismiss an alarm %@", buf, 0x16u);
    }

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke;
    block[3] = &unk_278E15C88;
    block[4] = self;
    v13 = &v31;
    v31 = v8;
    v18 = v24;
    v32 = v18;
    v33 = meshController;
    dispatch_async(meshControllerQueue, block);

    v19 = 1;
  }

  else
  {
    alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
    v12 = [alarmManager dismissAlarmWithIdentifier:identifierCopy];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201;
    v28[3] = &unk_278E17010;
    v28[4] = self;
    v13 = &v29;
    v14 = identifierCopy;
    v29 = v14;
    v15 = [v12 addCompletionBlock:v28];

    v16 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      meshController3 = [(COMeshAddOn *)self meshController];
      *buf = 134218242;
      v35 = meshController3;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p requesting leader to dismiss an alarm %@", buf, 0x16u);
    }

    v18 = [(COMeshAlarmAddOn *)self _sendRequest:v8 client:clientCopy];
    v19 = 0;
  }

  recorder = [(COMeshAlarmAddOn *)self recorder];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_203;
  v26[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v27 = v19;
  (recorder)[2](recorder, 0x2857B5848, v26);

  return v18;
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2;
  v4[3] = &unk_278E165B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleAlarmDismissRequest:v3 callback:v4];
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 error], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2_cold_1();
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201_cold_1();
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

- (BOOL)_isAlarm:(id)alarm targetingAccessory:(id)accessory
{
  v14[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  alarmCopy = alarm;
  if (accessoryCopy)
  {
    homekit = [(COMeshAlarmAddOn *)self homekit];
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

    v11 = [(COMeshAlarmAddOn *)self _isAlarm:alarmCopy targetingAccessoryIdentifiers:v10];
  }

  else
  {
    v11 = [(COMeshAlarmAddOn *)self _isAlarm:alarmCopy targetingAccessoryIdentifiers:0];
    homekit = alarmCopy;
  }

  return v11;
}

- (void)handleAlarmReadRequest:(id)request callback:(id)callback
{
  v61 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  accessoryUniqueIdentifier = [requestCopy accessoryUniqueIdentifier];
  v10 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    meshController = [(COMeshAddOn *)self meshController];
    *buf = 134218242;
    v56 = meshController;
    v57 = 2112;
    *v58 = accessoryUniqueIdentifier;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p retrieving alarms for %@...", buf, 0x16u);
  }

  requiresFilter = [requestCopy requiresFilter];
  homekit = [(COMeshAlarmAddOn *)self homekit];
  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    meshController2 = [(COMeshAddOn *)self meshController];
    isForMerge = [requestCopy isForMerge];
    [requestCopy eTag];
    v39 = v40 = callbackCopy;
    *buf = 134218754;
    v56 = meshController2;
    v57 = 1024;
    *v58 = requiresFilter;
    *&v58[4] = 1024;
    *&v58[6] = isForMerge;
    v59 = 2112;
    v60 = v39;
    _os_log_debug_impl(&dword_244378000, v14, OS_LOG_TYPE_DEBUG, "%p request info: filter: %d, merge: %d, eTag: %@", buf, 0x22u);

    callbackCopy = v40;
  }

  v15 = 0;
  v16 = 0;
  if (!requiresFilter || !accessoryUniqueIdentifier)
  {
    goto LABEL_19;
  }

  v17 = [homekit accessoryWithUniqueIdentifier:accessoryUniqueIdentifier];
  if (v17)
  {
    v16 = v17;
    if ([homekit hasOptedToHH2])
    {
      v15 = 0;
    }

    else
    {
      v19 = [homekit homeForAccessory:v16];
      v15 = MEMORY[0x277CBEBF8];
      if (v19)
      {
        v20 = [homekit alarmsForAccessory:v16 inHome:v19];
        v21 = callbackCopy;
        v22 = v20;
        if (v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v15;
        }

        v15 = v23;

        callbackCopy = v21;
      }
    }

LABEL_19:
    if ([(COMeshAlarmAddOn *)self performsLocalActions])
    {
      [(COMeshAlarmAddOn *)self alarmManager];
      v25 = v24 = callbackCopy;
      alarms = [v25 alarms];

      callbackCopy = v24;
    }

    else
    {
      alarms = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
    }

    if ([homekit hasOptedToHH2])
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke;
      v53[3] = &unk_278E17038;
      v27 = homekit;
      v28 = accessoryUniqueIdentifier;
      v29 = callbackCopy;
      v30 = callbackCopy;
      v54 = v30;
      v31 = [alarms addFailureBlock:v53];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_205;
      v47[3] = &unk_278E17060;
      v52 = requiresFilter;
      v48 = v16;
      selfCopy = self;
      v50 = requestCopy;
      v32 = v30;
      callbackCopy = v29;
      accessoryUniqueIdentifier = v28;
      homekit = v27;
      v33 = &v54;
      v51 = v32;
      v34 = [alarms addSuccessBlock:v47];

      v35 = v48;
    }

    else
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_206;
      v41[3] = &unk_278E187B8;
      v33 = v42;
      v42[0] = v15;
      v42[1] = self;
      v43 = v16;
      v46 = requiresFilter;
      v44 = requestCopy;
      v45 = callbackCopy;
      v36 = [alarms addCompletionBlock:v41];

      v35 = v43;
    }

    goto LABEL_26;
  }

  v18 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [COMeshAlarmAddOn handleAlarmReadRequest:callback:];
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v15 = [[COMeshResponse alloc] initWithError:v16];
  (*(callbackCopy + 2))(callbackCopy, v15, 0);
LABEL_26:
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_205(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2;
    v27 = &unk_278E17E70;
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

    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "... returning filtered alarms list\n%@", buf, 0xCu);
    }

    v9 = [[COAlarmReadResponse alloc] initWithFilteredAlarms:v3];
    goto LABEL_17;
  }

  if (([*(a1 + 48) isForMerge] & 1) == 0)
  {
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "... returning alarms list\n%@", buf, 0xCu);
    }

    v11 = [[COAlarmReadResponse alloc] initWithAlarms:v3];
    goto LABEL_16;
  }

  if (![*(a1 + 40) performsLocalActions] || objc_msgSend(MEMORY[0x277CFD0B8], "isDistributedTimersEnabled"))
  {
    v10 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "... returning skip-in-merge", buf, 2u);
    }

    v11 = [[COAlarmReadResponse alloc] initWithSkipInMerge];
LABEL_16:
    v9 = v11;
    goto LABEL_17;
  }

  v13 = [*(a1 + 48) eTag];
  if (v13 && (v14 = v13, [*(a1 + 48) eTag], v15 = objc_claimAutoreleasedReturnValue(), eTagForAlarms(v3), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v14, v17))
  {
    v18 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "... returning not-modified", buf, 2u);
    }

    v19 = [COAlarmReadResponse alloc];
    v20 = [*(a1 + 40) deletes];
    v21 = [(COAlarmReadResponse *)v19 initNotModifiedWithDeletes:v20];
  }

  else
  {
    v22 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "... returning alarms list and deletes\n%@", buf, 0xCu);
    }

    v23 = [COAlarmReadResponse alloc];
    v20 = [*(a1 + 40) deletes];
    v21 = [(COAlarmReadResponse *)v23 initWithAlarms:v3 deletes:v20];
  }

  v9 = v21;

LABEL_17:
  (*(*(a1 + 56) + 16))();
}

uint64_t __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isAlarm:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFCEC8]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

void __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {

    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = [v5 arrayByAddingObjectsFromArray:v8];
    }

    else
    {
      v9 = v8;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          v20 = [v19 alarmID];
          v21 = [v13 objectForKey:v20];
          v22 = [*(a1 + 40) _isAlarm:v19 targetingAccessory:*(a1 + 48)];
          if (v21)
          {
            v23 = [*(a1 + 40) _isAlarm:v21 targetingAccessory:*(a1 + 48)];
          }

          else
          {
            v23 = 0;
          }

          if (v23 == v22)
          {
            v24 = [v19 COPreferredAlarm:v21];
          }

          else
          {
            if (v22)
            {
              v25 = v19;
            }

            else
            {
              v25 = v21;
            }

            v24 = v25;
          }

          v26 = v24;
          [v13 setObject:v24 forKey:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v16);
    }

    v27 = [v13 allValues];
    v5 = [v27 sortedArrayUsingSelector:sel_compare_];

LABEL_26:
    if (*(a1 + 72) == 1)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2_207;
      v40 = &unk_278E17E70;
      v28 = *(a1 + 48);
      v29 = *(a1 + 40);
      v41 = v28;
      v42 = v29;
      v30 = [v5 indexesOfObjectsPassingTest:&v37];
      if ([v30 count])
      {
        v31 = [v5 mutableCopy];
        [v31 removeObjectsAtIndexes:v30];

        v5 = v31;
      }

      v32 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v5;
        _os_log_impl(&dword_244378000, v32, OS_LOG_TYPE_DEFAULT, "... returning filtered alarms list\n%@", buf, 0xCu);
      }

      v7 = [[COAlarmReadResponse alloc] initWithFilteredAlarms:v5];
    }

    else
    {
      v33 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v5;
        _os_log_impl(&dword_244378000, v33, OS_LOG_TYPE_DEFAULT, "... returning alarms list\n%@", buf, 0xCu);
      }

      v34 = [*(a1 + 56) isForMerge];
      v35 = [COAlarmReadResponse alloc];
      v36 = v35;
      if ((v34 & 1) == 0)
      {
        v7 = [(COAlarmReadResponse *)v35 initWithAlarms:v5];
        goto LABEL_38;
      }

      v30 = [*(a1 + 40) deletes];
      v7 = [(COAlarmReadResponse *)v36 initWithAlarms:v5 deletes:v30];
    }

LABEL_38:
    (*(*(a1 + 64) + 16))();
    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_26;
  }

  v10 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_cold_1();
  }

  v11 = *(a1 + 64);
  v12 = [[COMeshResponse alloc] initWithError:v7];
  (*(v11 + 16))(v11, v12, 0);

LABEL_39:
}

uint64_t __52__COMeshAlarmAddOn_handleAlarmReadRequest_callback___block_invoke_2_207(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _isAlarm:a2 targetingAccessory:?];
  }

  else
  {
    v3 = [a2 siriContext];
    v4 = [v3 objectForKey:*MEMORY[0x277CFCEC8]];
    v2 = v4 == 0;
  }

  return v2 ^ 1u;
}

- (void)handleAlarmCreateRequest:(id)request callback:(id)callback
{
  v64 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  val = self;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  alarm = [requestCopy alarm];
  v7 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    meshController2 = [(COMeshAddOn *)self meshController];
    alarmID = [alarm alarmID];
    *buf = 134218242;
    v61 = meshController2;
    v62 = 2112;
    v63 = alarmID;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p adding alarm %@...", buf, 0x16u);
  }

  homekit = [(COMeshAlarmAddOn *)val homekit];
  siriContext = [alarm siriContext];
  v40 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];

  v11 = [v40 length];
  if (v11)
  {
    v35 = [homekit allAccessoriesForSiriContextTargetReference:v40];
  }

  else
  {
    v35 = 0;
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  performsLocalActions = [(COMeshAlarmAddOn *)val performsLocalActions];
  if (!v11 || [homekit hasOptedToHH2])
  {
    if (performsLocalActions)
    {
      alarmManager = [(COMeshAlarmAddOn *)val alarmManager];
      [alarmManager addAlarm:alarm];
    }

    else
    {
      alarmManager = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      [MEMORY[0x277D2C900] futureWithError:alarmManager];
    }
    v13 = ;
    [v42 addObject:{v13, v35}];
LABEL_12:

    if ([v42 count] == 1)
    {
      firstObject = [v42 firstObject];
    }

    else
    {
      v15 = MEMORY[0x277D2C938];
      dispatchQueue = [meshController dispatchQueue];
      v17 = [v15 schedulerWithDispatchQueue:dispatchQueue];

      firstObject = [MEMORY[0x277D2C900] combineAllFutures:v42 ignoringErrors:1 scheduler:v17];
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke;
    v52[3] = &unk_278E17088;
    v18 = alarm;
    v53 = v18;
    v19 = callbackCopy;
    v54 = v19;
    v20 = [firstObject addFailureBlock:v52];
    objc_initWeak(buf, val);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208;
    v45[3] = &unk_278E187E0;
    v46 = v18;
    v49 = v19;
    v47 = meshController;
    objc_copyWeak(&v50, buf);
    v51 = performsLocalActions;
    v48 = val;
    v21 = [firstObject addSuccessBlock:v45];
    objc_destroyWeak(&v50);

    objc_destroyWeak(buf);
    v22 = v53;
    goto LABEL_16;
  }

  if (v35)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = v35;
    alarmManager = 0;
    v23 = [v13 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v23)
    {
      v24 = *v56;
      v25 = *MEMORY[0x277CCE8B0];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v13);
          }

          v27 = *(*(&v55 + 1) + 8 * i);
          category = [v27 category];
          categoryType = [category categoryType];
          v30 = [v25 isEqualToString:categoryType];

          if (v30)
          {
            v31 = [homekit homeForAccessory:v27];
            if (v31)
            {
              v32 = [homekit addAlarm:alarm toAccessory:v27 inHome:v31];
              [v42 addObject:v32];
            }
          }

          else if (!alarmManager)
          {
            alarmManager2 = [(COMeshAlarmAddOn *)val alarmManager];
            alarmManager = [alarmManager2 addAlarm:alarm];

            [v42 addObject:alarmManager];
          }
        }

        v23 = [v13 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v23);
    }

    goto LABEL_12;
  }

  v34 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [COMeshAlarmAddOn handleAlarmCreateRequest:callback:];
  }

  firstObject = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v22 = [[COMeshResponse alloc] initWithError:firstObject];
  (*(callbackCopy + 2))(callbackCopy, v22, 0);
LABEL_16:
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) alarmID];
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... alarm (%@) create completed", buf, 0xCu);
  }

  v4 = *(a1 + 56);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COAlarmsAddedNotification alloc];
  v15 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v8 = [(COAlarmNotification *)v6 initWithAlarms:v7];

  v9 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained && (*(a1 + 72) & 1) == 0)
  {
    v12 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 48);
      v14 = [(COAlarmNotification *)v8 alarms];
      [v12 alarmAddOn:v13 didAddAlarms:v14];
    }
  }
}

- (void)handleAlarmUpdateRequest:(id)request callback:(id)callback
{
  v64 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  val = self;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  alarm = [requestCopy alarm];
  v7 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    meshController2 = [(COMeshAddOn *)self meshController];
    alarmID = [alarm alarmID];
    *buf = 134218242;
    v61 = meshController2;
    v62 = 2112;
    v63 = alarmID;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p updating alarm %@...", buf, 0x16u);
  }

  homekit = [(COMeshAlarmAddOn *)val homekit];
  siriContext = [alarm siriContext];
  v40 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];

  v11 = [v40 length];
  if (v11)
  {
    v35 = [homekit allAccessoriesForSiriContextTargetReference:v40];
  }

  else
  {
    v35 = 0;
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  performsLocalActions = [(COMeshAlarmAddOn *)val performsLocalActions];
  if (!v11 || [homekit hasOptedToHH2])
  {
    if (performsLocalActions)
    {
      alarmManager = [(COMeshAlarmAddOn *)val alarmManager];
      [alarmManager updateAlarm:alarm];
    }

    else
    {
      alarmManager = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
      [MEMORY[0x277D2C900] futureWithError:alarmManager];
    }
    v13 = ;
    [v42 addObject:{v13, v35}];
LABEL_12:

    if ([v42 count] == 1)
    {
      firstObject = [v42 firstObject];
    }

    else
    {
      v15 = MEMORY[0x277D2C938];
      dispatchQueue = [meshController dispatchQueue];
      v17 = [v15 schedulerWithDispatchQueue:dispatchQueue];

      firstObject = [MEMORY[0x277D2C900] combineAllFutures:v42 ignoringErrors:1 scheduler:v17];
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke;
    v52[3] = &unk_278E17088;
    v18 = alarm;
    v53 = v18;
    v19 = callbackCopy;
    v54 = v19;
    v20 = [firstObject addFailureBlock:v52];
    objc_initWeak(buf, val);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210;
    v45[3] = &unk_278E187E0;
    v46 = v18;
    v49 = v19;
    v47 = meshController;
    objc_copyWeak(&v50, buf);
    v51 = performsLocalActions;
    v48 = val;
    v21 = [firstObject addSuccessBlock:v45];
    objc_destroyWeak(&v50);

    objc_destroyWeak(buf);
    v22 = v53;
    goto LABEL_16;
  }

  if (v35)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = v35;
    alarmManager = 0;
    v23 = [v13 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v23)
    {
      v24 = *v56;
      v25 = *MEMORY[0x277CCE8B0];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v13);
          }

          v27 = *(*(&v55 + 1) + 8 * i);
          category = [v27 category];
          categoryType = [category categoryType];
          v30 = [v25 isEqualToString:categoryType];

          if (v30)
          {
            v31 = [homekit homeForAccessory:v27];
            if (v31)
            {
              v32 = [homekit updateAlarm:alarm onAccessory:v27 inHome:v31];
              [v42 addObject:v32];
            }
          }

          else if (!alarmManager)
          {
            alarmManager2 = [(COMeshAlarmAddOn *)val alarmManager];
            alarmManager = [alarmManager2 updateAlarm:alarm];

            [v42 addObject:alarmManager];
          }
        }

        v23 = [v13 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v23);
    }

    goto LABEL_12;
  }

  v34 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [COMeshAlarmAddOn handleAlarmUpdateRequest:callback:];
  }

  firstObject = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v22 = [[COMeshResponse alloc] initWithError:firstObject];
  (*(callbackCopy + 2))(callbackCopy, v22, 0);
LABEL_16:
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) alarmID];
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... alarm (%@) update completed", buf, 0xCu);
  }

  v4 = *(a1 + 56);
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  v6 = [COAlarmsUpdatedNotification alloc];
  v15 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v8 = [(COAlarmNotification *)v6 initWithAlarms:v7];

  v9 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210_cold_1(a1, (a1 + 32));
  }

  [*(a1 + 40) sendNotification:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained && (*(a1 + 72) & 1) == 0)
  {
    v12 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 48);
      v14 = [(COAlarmNotification *)v8 alarms];
      [v12 alarmAddOn:v13 didUpdateAlarms:v14];
    }
  }
}

- (void)handleAlarmDeleteRequest:(id)request callback:(id)callback
{
  v62 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  val = self;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  alarm = [requestCopy alarm];
  v7 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    meshController2 = [(COMeshAddOn *)self meshController];
    alarmID = [alarm alarmID];
    *buf = 134218242;
    v59 = meshController2;
    v60 = 2112;
    v61 = alarmID;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p deleting alarm %@...", buf, 0x16u);
  }

  homekit = [(COMeshAlarmAddOn *)self homekit];
  siriContext = [alarm siriContext];
  v40 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];

  if ([v40 length])
  {
    v12 = [homekit accessoriesForSiriContextTargetReference:v40];
  }

  else
  {
    v12 = 0;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
  v14 = [alarmManager removeAlarm:alarm];
  [v43 addObject:v14];

  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v53 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v16)
  {
    v17 = *v54;
    v18 = *MEMORY[0x277CCE8B0];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        if (([homekit hasOptedToHH2] & 1) == 0)
        {
          category = [v20 category];
          categoryType = [category categoryType];
          v23 = [v18 isEqualToString:categoryType];

          if (v23)
          {
            v24 = [homekit homeForAccessory:v20];
            if (v24)
            {
              v25 = [homekit removeAlarm:alarm fromAccessory:v20 inHome:v24];
              [v43 addObject:v25];
            }
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v16);
  }

  if ([v43 count] == 1)
  {
    firstObject = [v43 firstObject];
  }

  else
  {
    v27 = MEMORY[0x277D2C938];
    dispatchQueue = [meshController dispatchQueue];
    v29 = [v27 schedulerWithDispatchQueue:dispatchQueue];

    firstObject = [MEMORY[0x277D2C900] combineAllFutures:v43 ignoringErrors:1 scheduler:v29];
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke;
  v50[3] = &unk_278E17088;
  v30 = alarm;
  v51 = v30;
  v31 = callbackCopy;
  v52 = v31;
  v32 = [firstObject addFailureBlock:v50];
  objc_initWeak(buf, val);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211;
  v44[3] = &unk_278E18808;
  v33 = v30;
  v45 = v33;
  v46 = val;
  v34 = v31;
  v48 = v34;
  v35 = meshController;
  v47 = v35;
  objc_copyWeak(&v49, buf);
  v36 = [firstObject addSuccessBlock:v44];
  objc_destroyWeak(&v49);

  objc_destroyWeak(buf);
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) alarmID];
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "... alarm (%@) delete completed", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [COAlarmDeleteEvent alloc];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(COAlarmDeleteEvent *)v6 initWithIdentifier:v3 date:v7];
  [v5 _addAlarmDeleteEvent:v8];

  v9 = *(a1 + 56);
  v10 = objc_alloc_init(COMeshResponse);
  (*(v9 + 16))(v9, v10, 0);

  v11 = [COAlarmsRemovedNotification alloc];
  v20 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v13 = [(COAlarmNotification *)v11 initWithAlarms:v12];

  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211_cold_1(a1, v2);
  }

  [*(a1 + 48) sendNotification:v13];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v16 = WeakRetained;
  if (WeakRetained && ([WeakRetained performsLocalActions] & 1) == 0)
  {
    v17 = [v16 delegate];
    if (objc_opt_respondsToSelector())
    {
      v18 = *(a1 + 40);
      v19 = [(COAlarmNotification *)v13 alarms];
      [v17 alarmAddOn:v18 didRemoveAlarms:v19];
    }
  }
}

- (void)handleAlarmSnoozeRequest:(id)request callback:(id)callback
{
  v26 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  requestCopy = request;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  identifier = [requestCopy identifier];

  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v23 = meshController;
    v24 = 2112;
    v25 = identifier;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p snoozing alarm %@...", buf, 0x16u);
  }

  alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
  v13 = [alarmManager snoozeAlarmWithIdentifier:identifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke;
  v18[3] = &unk_278E18830;
  v20 = meshController;
  v21 = callbackCopy;
  v19 = identifier;
  v14 = meshController;
  v15 = callbackCopy;
  v16 = identifier;
  v17 = [v13 addCompletionBlock:v18];
}

void __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = COCoreLogForCategory(2);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "... alarm (%@) snooze completed", &v14, 0xCu);
  }

  v10 = *(a1 + 48);
  v11 = objc_alloc_init(COMeshResponse);
  (*(v10 + 16))(v10, v11, 0);

  v12 = [[COAlarmSnoozeNotification alloc] initWithAlarmIdentifier:*(a1 + 32)];
  v13 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_2();
  }

  [*(a1 + 40) sendNotification:v12];
}

- (void)handleAlarmDismissRequest:(id)request callback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  identifier = [requestCopy identifier];
  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = meshController;
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p dismissing alarm %@...", buf, 0x16u);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = __Block_byref_object_copy__24;
  v50 = __Block_byref_object_dispose__24;
  v51 = 0;
  alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
  v13 = [alarmManager dismissAlarmWithIdentifier:identifier];
  alarms = [alarmManager alarms];
  objc_initWeak(&location, self);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke;
  v39[3] = &unk_278E18858;
  v42 = v46;
  v43 = buf;
  v15 = meshController;
  v40 = v15;
  objc_copyWeak(&v44, &location);
  selfCopy = self;
  v16 = MEMORY[0x245D5FF10](v39);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213;
  v36[3] = &unk_278E17088;
  v17 = identifier;
  v37 = v17;
  v18 = callbackCopy;
  v38 = v18;
  v19 = [v13 addFailureBlock:v36];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_214;
  v31[3] = &unk_278E17128;
  v20 = v17;
  v32 = v20;
  v21 = v18;
  v33 = v21;
  v35 = v46;
  v22 = v16;
  v34 = v22;
  v23 = [v13 addSuccessBlock:v31];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_215;
  v27[3] = &unk_278E17178;
  v24 = v20;
  v28 = v24;
  v30 = buf;
  v25 = v22;
  v29 = v25;
  v26 = [alarms addSuccessBlock:v27];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v46, 8);
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = a1 + 56;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = [COAlarmFiringAlarmDismissedNotification alloc];
      v13[0] = *(*(*v2 + 8) + 40);
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v5 = [(COAlarmNotification *)v3 initWithAlarms:v4];

      v6 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_cold_1(a1, v2);
      }

      [*(a1 + 32) sendNotification:v5];
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v8 = WeakRetained;
      if (WeakRetained)
      {
        v9 = [WeakRetained delegate];
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 40);
          v12 = *(*(*(a1 + 56) + 8) + 40);
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
          [v9 alarmAddOn:v10 didDismissAlarms:v11];
        }
      }
    }
  }
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213_cold_1();
  }

  v5 = *(a1 + 40);
  v6 = [[COMeshResponse alloc] initWithError:v3];
  (*(v5 + 16))(v5, v6, 0);
}

uint64_t __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_214(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "... alarm (%@) dismiss completed", &v7, 0xCu);
  }

  v4 = a1[5];
  v5 = objc_alloc_init(COMeshResponse);
  (*(v4 + 16))(v4, v5, 0);

  *(*(a1[7] + 8) + 24) = 1;
  return (*(a1[6] + 16))();
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_215(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_2;
  v6[3] = &unk_278E18880;
  v7 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 alarmIDString];
  v8 = [v7 isEqualToString:a1[4]];
  *a4 = v8;

  if (v8)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    (*(a1[5] + 16))();
  }
}

- (void)handleAlarmsAddedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  alarms = [notificationCopy alarms];

  if ([alarms count])
  {
    if ([(COMeshAlarmAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
      alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke;
      v16[3] = &unk_278E188A8;
      v16[4] = self;
      v17 = v7;
      v18 = alarmManager;
      v10 = alarmManager;
      v11 = v7;
      [alarms enumerateObjectsUsingBlock:v16];
      futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke_217;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = alarms;
    v13 = [futureWithNoResult addSuccessBlock:v14];
  }

  else
  {
    futureWithNoResult = COCoreLogForCategory(2);
    if (os_log_type_enabled(futureWithNoResult, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn handleAlarmsAddedNotification:];
    }
  }
}

void __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 alarmID];
    v9 = 134218242;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p adding local alarm %@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) addAlarm:v3];
  [v7 addObject:v8];
}

void __50__COMeshAlarmAddOn_handleAlarmsAddedNotification___block_invoke_217(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished adding local alarms", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didAddAlarms:*(a1 + 40)];
  }
}

- (void)handleAlarmsRemovedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  alarms = [notificationCopy alarms];

  if ([alarms count])
  {
    if ([(COMeshAlarmAddOn *)self performsLocalActions])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
      v9 = [MEMORY[0x277CBEAA8] now];
      alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke;
      v18[3] = &unk_278E188D0;
      v18[4] = self;
      v19 = v9;
      v20 = v7;
      v21 = alarmManager;
      v11 = alarmManager;
      v12 = v7;
      v13 = v9;
      [alarms enumerateObjectsUsingBlock:v18];
      futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:v12 ignoringErrors:1 scheduler:v8];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke_218;
    v16[3] = &unk_278E171C8;
    v16[4] = self;
    v17 = alarms;
    v15 = [futureWithNoResult addSuccessBlock:v16];
  }

  else
  {
    futureWithNoResult = COCoreLogForCategory(2);
    if (os_log_type_enabled(futureWithNoResult, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn handleAlarmsRemovedNotification:];
    }
  }
}

void __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 alarmID];
  v5 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v11 = 134218242;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p removing local alarm %@", &v11, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [[COAlarmDeleteEvent alloc] initWithIdentifier:v4 date:*(a1 + 40)];
  [v7 _addAlarmDeleteEvent:v8];

  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) removeAlarm:v3];

  [v9 addObject:v10];
}

void __52__COMeshAlarmAddOn_handleAlarmsRemovedNotification___block_invoke_218(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished removing local alarms", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didRemoveAlarms:*(a1 + 40)];
  }
}

- (void)handleAlarmsUpdatedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  alarms = [notificationCopy alarms];

  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
    alarms2 = [alarmManager alarms];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke;
    v12[3] = &unk_278E16CB0;
    v13 = meshControllerQueue;
    v14 = alarms;
    selfCopy = self;
    v16 = alarmManager;
    delegate = alarmManager;
    v10 = [alarms2 addCompletionBlock:v12];
  }

  else
  {
    v11 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p not performing local updates.", buf, 0xCu);
    }

    delegate = [(COMeshAlarmAddOn *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate alarmAddOn:self didUpdateAlarms:alarms];
    }
  }
}

void __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v27 = a3;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:*(a1 + 32)];
  v28 = v5;
  v31 = [v5 na_dictionaryWithKeyGenerator:&__block_literal_global_221];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 alarmID];
        v13 = [v31 objectForKey:v12];
        if ((([v13 isFiring] & 1) != 0 || objc_msgSend(v13, "isSnoozed")) && (objc_msgSend(*(a1 + 48), "homekit"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hasOptedToHH2"), v14, !v15))
        {
          v19 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 48);
            *buf = 134218242;
            v40 = v20;
            v41 = 2112;
            v42 = v12;
            _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p not updating busy alarm %@", buf, 0x16u);
          }

          if (!v8)
          {
            v8 = [*(a1 + 40) mutableCopy];
          }

          [v8 replaceObjectAtIndex:objc_msgSend(v8 withObject:{"indexOfObject:", v11), v13}];
        }

        else
        {
          v16 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 48);
            *buf = 134218242;
            v40 = v17;
            v41 = 2112;
            v42 = v12;
            _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%p updating local alarm %@", buf, 0x16u);
          }

          v18 = [*(a1 + 56) updateAlarm:v11];
          [v30 addObject:v18];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v30 count])
  {
    v21 = v26;
    v22 = [MEMORY[0x277D2C900] combineAllFutures:v30 ignoringErrors:1 scheduler:v26];
  }

  else
  {
    v22 = [MEMORY[0x277D2C900] futureWithNoResult];
    v21 = v26;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke_222;
  v32[3] = &unk_278E18918;
  v23 = *(a1 + 40);
  v32[4] = *(a1 + 48);
  v33 = v8;
  v34 = v23;
  v24 = v8;
  v25 = [v22 addSuccessBlock:v32];
}

void __52__COMeshAlarmAddOn_handleAlarmsUpdatedNotification___block_invoke_222(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished updating local alarms", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(a1 + 48);
    }

    [v4 alarmAddOn:*(a1 + 32) didUpdateAlarms:v5];
  }
}

- (void)handleAlarmFiredNotification:(id)notification
{
  notificationCopy = notification;
  if (![(COMeshAlarmAddOn *)self performsLocalActions])
  {
    delegate = [(COMeshAlarmAddOn *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      alarms = [notificationCopy alarms];
      [delegate alarmAddOn:self didUpdateAlarms:alarms];
    }
  }
}

- (void)handleAlarmFiringAlarmDismissedNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  alarms = [notificationCopy alarms];

  if ([alarms count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:meshControllerQueue];
    alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke;
    v16[3] = &unk_278E188A8;
    v16[4] = self;
    v17 = v7;
    v18 = alarmManager;
    v10 = alarmManager;
    v11 = v7;
    [alarms enumerateObjectsUsingBlock:v16];
    v12 = [MEMORY[0x277D2C900] combineAllFutures:v11 ignoringErrors:1 scheduler:v8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke_223;
    v14[3] = &unk_278E171C8;
    v14[4] = self;
    v15 = alarms;
    v13 = [v12 addSuccessBlock:v14];
  }

  else
  {
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [COMeshAlarmAddOn handleAlarmFiringAlarmDismissedNotification:];
    }
  }
}

void __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a2 alarmID];
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p dismissing local alarm %@", &v10, 0x16u);
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = [v3 UUIDString];
  v9 = [v6 dismissAlarmWithIdentifier:v8];
  [v7 addObject:v9];
}

void __64__COMeshAlarmAddOn_handleAlarmFiringAlarmDismissedNotification___block_invoke_223(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p finished dismissing local alarms", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 alarmAddOn:*(a1 + 32) didDismissAlarms:*(a1 + 40)];
  }
}

- (void)handleAlarmSnoozeNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  meshController = [(COMeshAddOn *)self meshController];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);
  identifier = [notificationCopy identifier];
  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v8 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v20 = meshController;
      v21 = 2112;
      v22 = identifier;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p locally snoozing alarm %@...", buf, 0x16u);
    }

    alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
    v10 = [alarmManager snoozeAlarmWithIdentifier:identifier];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke;
    v17[3] = &unk_278E18940;
    v18 = identifier;
    v11 = [v10 addCompletionBlock:v17];
  }

  else
  {
    objc_initWeak(buf, self);
    v12 = objc_alloc_init(COAlarmReadRequest);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_224;
    v13[3] = &unk_278E18990;
    objc_copyWeak(&v16, buf);
    v14 = identifier;
    selfCopy = self;
    [meshController sendRequest:v12 withCompletionHandler:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "... local snooze of alarm (%@) complete", &v8, 0xCu);
  }
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 alarms];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_2;
      v10[3] = &unk_278E18968;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = v9;
      [v7 enumerateObjectsUsingBlock:v10];
    }
  }
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 alarmIDString];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *a4 = 1;
    v9 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = *(a1 + 40);
      v12[0] = v6;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      [v9 alarmAddOn:v10 didUpdateAlarms:v11];
    }
  }
}

- (void)handleAlarmManagerStateResetNotification:(id)notification
{
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn handleAlarmManagerStateResetNotification:?];
  }

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didResetAlarmAddOn:self];
  }
}

- (void)alarmsAsAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  v46 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  v11 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn alarmsAsAccessory:? fromClient:? withCallback:?];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__24;
  v42 = __Block_byref_object_dispose__24;
  v43 = 0;
  if (accessoryCopy)
  {
    performsLocalActions = 0;
  }

  else
  {
    performsLocalActions = [(COMeshAlarmAddOn *)self performsLocalActions];
    connection = [clientCopy connection];
    v14 = [(COMeshAlarmAddOn *)self _currentAccessoryForConnection:connection];

    if (v14)
    {
      accessoryCopy = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v14];
    }

    else
    {
      accessoryCopy = 0;
    }
  }

  categoryType = [accessoryCopy categoryType];
  if (accessoryCopy)
  {
    v16 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
  }

  else
  {
    v16 = 0;
  }

  homekit = [(COMeshAlarmAddOn *)self homekit];
  hasOptedToHH2 = [homekit hasOptedToHH2];
  if (categoryType)
  {
    v19 = hasOptedToHH2;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {

LABEL_21:
    v26 = os_transaction_create();
    v23 = v39[5];
    v39[5] = v26;
    v25 = 1;
    goto LABEL_22;
  }

  v20 = [*MEMORY[0x277CCE8B0] isEqualToString:categoryType];

  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = os_transaction_create();
  v22 = v39[5];
  v39[5] = v21;

  v23 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    meshController = [(COMeshAddOn *)self meshController];
    *buf = 134217984;
    v45 = meshController;
    _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%p locally reading alarms", buf, 0xCu);
  }

  v25 = 0;
LABEL_22:

  v27 = [(COMeshAlarmAddOn *)self _alarmsForAccessory:accessoryCopy allowLocalStorage:performsLocalActions usingLeader:v25 member:v16 client:clientCopy];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke;
  v35[3] = &unk_278E16C38;
  v28 = callbackCopy;
  v36 = v28;
  v37 = &v38;
  v29 = [v27 addFailureBlock:v35];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke_2;
  v32[3] = &unk_278E17218;
  v30 = v28;
  v33 = v30;
  v34 = &v38;
  v31 = [v27 addSuccessBlock:v32];

  _Block_object_dispose(&v38, 8);
}

void __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __62__COMeshAlarmAddOn_alarmsAsAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__COMeshTimerAddOn_timersAsAccessory_fromClient_withCallback___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)alarmsForAccessories:(id)accessories fromClient:(id)client callback:(id)callback
{
  accessoriesCopy = accessories;
  clientCopy = client;
  callbackCopy = callback;
  meshController = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn alarmsForAccessories:fromClient:callback:];
  }

  if ([accessoriesCopy count])
  {
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__24;
    v41[4] = __Block_byref_object_dispose__24;
    v42 = MEMORY[0x277CBEBF8];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__24;
    v39[4] = __Block_byref_object_dispose__24;
    v40 = MEMORY[0x277CBEBF8];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__24;
    v37[4] = __Block_byref_object_dispose__24;
    v38 = MEMORY[0x277CBEBF8];
    homekit = [(COMeshAlarmAddOn *)self homekit];
    hasOptedToHH2 = [homekit hasOptedToHH2];

    if (hasOptedToHH2)
    {
      meshController2 = [(COMeshAddOn *)self meshController];
      nodeManager = [meshController2 nodeManager];
      v17 = [nodeManager activeNodesWithSelfNode:1];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2;
      v30[3] = &unk_278E189E0;
      v18 = v17;
      v31 = v18;
      selfCopy = self;
      v34 = v39;
      v35 = v37;
      v33 = meshController;
      [accessoriesCopy enumerateObjectsUsingBlock:v30];
    }

    else
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke;
      v36[3] = &unk_278E189B8;
      v36[4] = v41;
      v36[5] = v39;
      [accessoriesCopy enumerateObjectsUsingBlock:v36];
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__24;
    v28[4] = __Block_byref_object_dispose__24;
    v29 = os_transaction_create();
    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_229;
    block[3] = &unk_278E18AF8;
    v24 = v41;
    block[4] = self;
    v25 = v39;
    v21 = meshController;
    v22 = clientCopy;
    v26 = v37;
    v23 = callbackCopy;
    v27 = v28;
    dispatch_async(meshControllerQueue, block);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v37, 8);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x277CBEC10], 0);
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CCE8B0];
  v4 = a2;
  v5 = [v4 categoryType];
  LODWORD(v3) = [v3 isEqualToString:v5];

  if (v3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 40;
  }

  v7 = [*(*(*(a1 + v6) + 8) + 40) arrayByAddingObject:v4];

  v8 = *(*(a1 + v6) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 categoryType];
  v5 = [v3 IDSIdentifier];
  if (![v4 isEqualToString:*MEMORY[0x277CCE8B0]] || (COMeshNodeForIDSIdentifier(*(a1 + 32), v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) arrayByAddingObject:v3];
    v8 = *(a1 + 56);
LABEL_4:
    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    goto LABEL_5;
  }

  v11 = [*(a1 + 40) secondaryClusterMemberForAccessory:v3];

  if (v11)
  {
    v7 = [*(*(*(a1 + 64) + 8) + 40) arrayByAddingObject:v3];
    v8 = *(a1 + 64);
    goto LABEL_4;
  }

  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    v14 = 134218242;
    v15 = v13;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p not getting alarms for %@, accessory unavailable", &v14, 0x16u);
  }

LABEL_5:
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_229(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v3 = [*(a1 + 32) homekit];
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2_230;
    v59[3] = &unk_278E18A08;
    v60 = v3;
    v61 = v2;
    v5 = v3;
    [v4 enumerateObjectsUsingBlock:v59];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D2C900]);
    [v6 addObject:v7];
    if ([*(a1 + 32) performsLocalActions] && (objc_msgSend(*(a1 + 40), "leader"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v32 = [*(a1 + 32) alarmManager];
      v17 = [v32 alarms];

      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_3;
      v55[3] = &unk_278E18A58;
      v33 = *(a1 + 32);
      v58 = *(a1 + 72);
      v55[4] = v33;
      v56 = v2;
      v57 = v7;
      v16 = v7;
      v34 = [v17 addCompletionBlock:v55];
    }

    else
    {
      v9 = objc_alloc_init(COAlarmReadRequest);
      v10 = [*(a1 + 48) clientLifetimeActivity];
      v11 = [CONetworkActivityFactory activityWithLabel:3 parentActivity:v10];

      if (v11)
      {
        [(COMeshRequest *)v9 setActivity:v11];
        nw_activity_activate();
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_6;
      v47[3] = &unk_278E18A80;
      v48 = v11;
      v49 = v9;
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v54 = *(a1 + 72);
      v14 = *(a1 + 32);
      v50 = v13;
      v51 = v14;
      v52 = v2;
      v53 = v7;
      v15 = v7;
      v16 = v9;
      v17 = v11;
      [v12 sendRequest:v16 withCompletionHandler:v47];
    }
  }

  v18 = *(*(*(a1 + 80) + 8) + 40);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_9;
  v42[3] = &unk_278E18AD0;
  v19 = *(a1 + 32);
  v43 = v6;
  v44 = v19;
  v45 = *(a1 + 48);
  v20 = v2;
  v46 = v20;
  v21 = v6;
  [v18 enumerateObjectsUsingBlock:v42];
  v22 = MEMORY[0x277D2C938];
  v23 = [*(a1 + 40) dispatchQueue];
  v24 = [v22 schedulerWithDispatchQueue:v23];

  v25 = [MEMORY[0x277D2C900] combineAllFutures:v21 ignoringErrors:1 scheduler:v24];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_11;
  v38[3] = &unk_278E17290;
  v26 = *(a1 + 56);
  v39 = v20;
  v40 = v26;
  v41 = *(a1 + 88);
  v27 = v20;
  v28 = [v25 addSuccessBlock:v38];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_12;
  v35[3] = &unk_278E16C38;
  v29 = *(a1 + 56);
  v30 = *(a1 + 88);
  v36 = v29;
  v37 = v30;
  v31 = [v25 addFailureBlock:v35];
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_2_230(uint64_t a1, void *a2)
{
  v11 = [a2 uniqueIdentifier];
  v3 = [*(a1 + 32) accessoryWithUniqueIdentifier:?];
  v4 = [*(a1 + 32) homeForAccessory:v3];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) alarmsForAccessory:v3 inHome:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    [v7 setObject:v10 forKey:v11];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 48) finishWithError:a3];
  }

  else
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_4;
    v11[3] = &unk_278E16E38;
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [v7 enumerateObjectsUsingBlock:v11];
    [*(a1 + 48) finishWithNoResult];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_5;
  v10 = &unk_278E18A30;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_filter:&v7];
  [*(a1 + 48) setObject:v6 forKey:{v5, v7, v8, v9, v10, v11}];
}

uint64_t __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_5(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [v2 _isAlarm:v4 targetingAccessoryIdentifiers:{v5, v8, v9}];

  return v6;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
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
    [*(a1 + 72) finishWithError:v13];
  }

  else
  {
    v19 = *(*(*(a1 + 80) + 8) + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_7;
    v23[3] = &unk_278E16E38;
    v20 = v12;
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v24 = v20;
    v25 = v21;
    v26 = v22;
    [v19 enumerateObjectsUsingBlock:v23];
    [*(a1 + 72) finishWithNoResult];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) alarms];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_8;
  v10 = &unk_278E18A30;
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_filter:&v7];

  [*(a1 + 48) setObject:v6 forKey:{v5, v7, v8, v9, v10, v11}];
}

uint64_t __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [v2 _isAlarm:v4 targetingAccessoryIdentifiers:{v5, v8, v9}];

  return v6;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  [*(a1 + 32) addObject:v4];
  v5 = *(a1 + 40);
  v6 = [v5 secondaryClusterMemberForAccessory:v3];
  v7 = [v5 _alarmsForAccessory:v3 allowLocalStorage:0 usingLeader:0 member:v6 client:*(a1 + 48)];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_10;
  v11[3] = &unk_278E18AA8;
  v12 = *(a1 + 56);
  v13 = v3;
  v14 = v4;
  v8 = v4;
  v9 = v3;
  v10 = [v7 addCompletionBlock:v11];
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    [*(a1 + 48) finishWithError:a3];
  }

  else
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) uniqueIdentifier];
    [v7 setObject:v6 forKey:v8];

    [*(a1 + 48) finishWithNoResult];
  }
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_11(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __61__COMeshAlarmAddOn_alarmsForAccessories_fromClient_callback___block_invoke_12(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)addAlarm:(id)alarm asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  v39 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  if (accessoryCopy)
  {
    categoryType = [accessoryCopy categoryType];
  }

  else
  {
    categoryType = 0;
  }

  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn addAlarm:alarmCopy asAccessory:v14 fromClient:? withCallback:?];
  }

  siriContext = [alarmCopy siriContext];
  v27 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];
  homekit = [(COMeshAlarmAddOn *)self homekit];
  hasOptedToHH2 = [homekit hasOptedToHH2];
  if (categoryType)
  {
    v18 = hasOptedToHH2;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) != 0 || ![*MEMORY[0x277CCE8B0] isEqualToString:categoryType])
  {
    if (accessoryCopy)
    {
      v24 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
    }

    else
    {
      v24 = 0;
    }

    v25 = [(COMeshAlarmAddOn *)self addAlarm:alarmCopy member:v24 client:clientCopy];
    [(COMeshAlarmAddOn *)self _addCompletionsToFuture:v25 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.alarms.create"];

    if (accessoryCopy)
    {
    }
  }

  else
  {
    v26 = [(COAlarmRequest *)[COAlarmCreateRequest alloc] initWithAlarm:alarmCopy];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__24;
    v33[4] = __Block_byref_object_dispose__24;
    v34 = os_transaction_create();
    v19 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      meshController = [(COMeshAddOn *)self meshController];
      alarmID = [alarmCopy alarmID];
      *buf = 134218242;
      v36 = meshController;
      v37 = 2112;
      v38 = alarmID;
      _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%p locally adding %@", buf, 0x16u);
    }

    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke;
    block[3] = &unk_278E18B48;
    block[4] = self;
    v30 = v26;
    v31 = callbackCopy;
    v32 = v33;
    v23 = v26;
    dispatch_async(meshControllerQueue, block);

    _Block_object_dispose(v33, 8);
  }
}

void __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke_2;
  v6[3] = &unk_278E18B20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 handleAlarmCreateRequest:v3 callback:v6];
}

void __65__COMeshAlarmAddOn_addAlarm_asAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    (*(v4 + 16))(*(a1 + 32), a3);
  }

  else
  {
    v5 = [a2 error];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)updateAlarm:(id)alarm asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  v47 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  if (accessoryCopy)
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    categoryType = [accessoryCopy categoryType];
  }

  else
  {
    categoryType = 0;
    uniqueIdentifier = 0;
  }

  v15 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn updateAlarm:alarmCopy asAccessory:v15 fromClient:? withCallback:?];
  }

  homekit = [(COMeshAlarmAddOn *)self homekit];
  if (!categoryType)
  {
    if (uniqueIdentifier)
    {
      categoryType = 0;
      goto LABEL_22;
    }

    connection = [clientCopy connection];
    co_PeerInstance = [connection co_PeerInstance];

    if (co_PeerInstance && (-[COMeshAlarmAddOn homehub](self, "homehub"), v18 = objc_claimAutoreleasedReturnValue(), [v18 accessoryIdentifierForPeerInstance:co_PeerInstance usingHomeKitAdapter:homekit], uniqueIdentifier = objc_claimAutoreleasedReturnValue(), v18, uniqueIdentifier))
    {
      currentAccessory = [homekit accessoryWithUniqueIdentifier:uniqueIdentifier];
      if (!currentAccessory)
      {
LABEL_12:
        categoryType = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      currentAccessory = [homekit currentAccessory];
      uniqueIdentifier = 0;
      if (!currentAccessory)
      {
        goto LABEL_12;
      }
    }

    siriContext = [alarmCopy siriContext];
    v21 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];

    if (!v21 || (COAlarmSiriContextTargetReferenceForAccessory(), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 compare:v22 options:1] == 0, v22, v23))
    {
      category = [currentAccessory category];
      categoryType = [category categoryType];
    }

    else
    {
      categoryType = 0;
    }

    if (!accessoryCopy)
    {
      accessoryCopy = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:currentAccessory];
    }

    goto LABEL_21;
  }

LABEL_22:
  hasOptedToHH2 = [homekit hasOptedToHH2];
  if (categoryType)
  {
    v26 = hasOptedToHH2;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) != 0 || ![*MEMORY[0x277CCE8B0] isEqualToString:categoryType])
  {
    if (accessoryCopy)
    {
      v32 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(COMeshAlarmAddOn *)self updateAlarm:alarmCopy member:v32 client:clientCopy];
    [(COMeshAlarmAddOn *)self _addCompletionsToFuture:v33 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.alarms.update"];

    if (accessoryCopy)
    {
    }
  }

  else
  {
    v35 = [(COAlarmRequest *)[COAlarmUpdateRequest alloc] initWithAlarm:alarmCopy];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__24;
    v41[4] = __Block_byref_object_dispose__24;
    v42 = os_transaction_create();
    v27 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      meshController = [(COMeshAddOn *)self meshController];
      alarmID = [alarmCopy alarmID];
      *buf = 134218242;
      v44 = meshController;
      v45 = 2112;
      v46 = alarmID;
      _os_log_impl(&dword_244378000, v27, OS_LOG_TYPE_DEFAULT, "%p locally updating %@", buf, 0x16u);
    }

    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke;
    block[3] = &unk_278E18B48;
    block[4] = self;
    v38 = v35;
    v39 = callbackCopy;
    v40 = v41;
    v31 = v35;
    dispatch_async(meshControllerQueue, block);

    _Block_object_dispose(v41, 8);
  }
}

void __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke_2;
  v6[3] = &unk_278E18B20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 handleAlarmUpdateRequest:v3 callback:v6];
}

void __68__COMeshAlarmAddOn_updateAlarm_asAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    (*(v4 + 16))(*(a1 + 32), a3);
  }

  else
  {
    v5 = [a2 error];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)removeAlarm:(id)alarm asAccessory:(id)accessory fromClient:(id)client withCallback:(id)callback
{
  v47 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  accessoryCopy = accessory;
  clientCopy = client;
  callbackCopy = callback;
  if (accessoryCopy)
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    categoryType = [accessoryCopy categoryType];
  }

  else
  {
    categoryType = 0;
    uniqueIdentifier = 0;
  }

  v15 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn removeAlarm:alarmCopy asAccessory:v15 fromClient:? withCallback:?];
  }

  homekit = [(COMeshAlarmAddOn *)self homekit];
  if (!categoryType)
  {
    if (uniqueIdentifier)
    {
      categoryType = 0;
      goto LABEL_22;
    }

    connection = [clientCopy connection];
    co_PeerInstance = [connection co_PeerInstance];

    if (co_PeerInstance && (-[COMeshAlarmAddOn homehub](self, "homehub"), v18 = objc_claimAutoreleasedReturnValue(), [v18 accessoryIdentifierForPeerInstance:co_PeerInstance usingHomeKitAdapter:homekit], uniqueIdentifier = objc_claimAutoreleasedReturnValue(), v18, uniqueIdentifier))
    {
      currentAccessory = [homekit accessoryWithUniqueIdentifier:uniqueIdentifier];
      if (!currentAccessory)
      {
LABEL_12:
        categoryType = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      currentAccessory = [homekit currentAccessory];
      uniqueIdentifier = 0;
      if (!currentAccessory)
      {
        goto LABEL_12;
      }
    }

    siriContext = [alarmCopy siriContext];
    v21 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];

    if (!v21 || (COAlarmSiriContextTargetReferenceForAccessory(), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 compare:v22 options:1] == 0, v22, v23))
    {
      category = [currentAccessory category];
      categoryType = [category categoryType];
    }

    else
    {
      categoryType = 0;
    }

    if (!accessoryCopy)
    {
      accessoryCopy = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:currentAccessory];
    }

    goto LABEL_21;
  }

LABEL_22:
  hasOptedToHH2 = [homekit hasOptedToHH2];
  if (categoryType)
  {
    v26 = hasOptedToHH2;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) != 0 || ![*MEMORY[0x277CCE8B0] isEqualToString:categoryType])
  {
    if (accessoryCopy)
    {
      v32 = [(COMeshAlarmAddOn *)self secondaryClusterMemberIfRequiredForAccessory:accessoryCopy];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(COMeshAlarmAddOn *)self removeAlarm:alarmCopy member:v32 client:clientCopy];
    [(COMeshAlarmAddOn *)self _addCompletionsToFuture:v33 withXPCCallback:callbackCopy transactionDescription:"com.apple.CoordinationCore.alarms.delete"];

    if (accessoryCopy)
    {
    }
  }

  else
  {
    v35 = [(COAlarmRequest *)[COAlarmDeleteRequest alloc] initWithAlarm:alarmCopy];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__24;
    v41[4] = __Block_byref_object_dispose__24;
    v42 = os_transaction_create();
    v27 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      meshController = [(COMeshAddOn *)self meshController];
      alarmID = [alarmCopy alarmID];
      *buf = 134218242;
      v44 = meshController;
      v45 = 2112;
      v46 = alarmID;
      _os_log_impl(&dword_244378000, v27, OS_LOG_TYPE_DEFAULT, "%p locally removing %@", buf, 0x16u);
    }

    meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke;
    block[3] = &unk_278E18B48;
    block[4] = self;
    v38 = v35;
    v39 = callbackCopy;
    v40 = v41;
    v31 = v35;
    dispatch_async(meshControllerQueue, block);

    _Block_object_dispose(v41, 8);
  }
}

void __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke_2;
  v6[3] = &unk_278E18B20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 handleAlarmDeleteRequest:v3 callback:v6];
}

void __68__COMeshAlarmAddOn_removeAlarm_asAccessory_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    (*(v4 + 16))(*(a1 + 32), a3);
  }

  else
  {
    v5 = [a2 error];
    (*(v4 + 16))(v4, v5);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)snoozeAlarmWithIdentifier:(id)identifier fromClient:(id)client withCallback:(id)callback
{
  identifierCopy = identifier;
  clientCopy = client;
  callbackCopy = callback;
  meshController = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn snoozeAlarmWithIdentifier:fromClient:withCallback:];
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__24;
  v38[4] = __Block_byref_object_dispose__24;
  v39 = os_transaction_create();
  v13 = [(COMeshAlarmAddOn *)self snoozeAlarmWithIdentifier:identifierCopy client:clientCopy];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke;
  v33[3] = &unk_278E18B70;
  v14 = meshController;
  v34 = v14;
  v15 = identifierCopy;
  v35 = v15;
  v16 = callbackCopy;
  v36 = v16;
  v37 = v38;
  v17 = [v13 addFailureBlock:v33];
  alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
  homekit = [(COMeshAlarmAddOn *)self homekit];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239;
  v26[3] = &unk_278E18C10;
  v20 = v14;
  v27 = v20;
  v21 = v15;
  v28 = v21;
  v22 = v16;
  v31 = v22;
  v23 = homekit;
  v29 = v23;
  v24 = alarmManager;
  v30 = v24;
  v32 = v38;
  v25 = [v13 addSuccessBlock:v26];

  _Block_object_dispose(v38, 8);
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239(uint64_t a1)
{
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239_cold_1();
  }

  (*(*(a1 + 64) + 16))();
  v3 = [*(a1 + 48) currentAccessory];
  v4 = [*(a1 + 48) homeForAccessory:v3];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [*(a1 + 56) alarms];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_240;
    v12[3] = &unk_278E18BE8;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = v3;
    v16 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v17 = v7;
    v18 = v8;
    v9 = [v6 addCompletionBlock:v12];

    v10 = v13;
  }

  else
  {
    v11 = *(*(a1 + 72) + 8);
    v10 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_240(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      if (([*(a1 + 40) hasOptedToHH2] & 1) == 0)
      {
        v11 = [v10 alarmID];
        v12 = [v4 isEqual:v11];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = [*(a1 + 40) alarmsForAccessory:*(a1 + 48) inHome:*(a1 + 56)];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_2;
    v29[3] = &unk_278E18B98;
    v30 = v4;
    v16 = [v15 na_firstObjectPassingTest:v29];

    if (v16 && ([v16 isEnabled] & 1) == 0)
    {
      v18 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 64);
        v20 = *(a1 + 32);
        *buf = 134218242;
        v36 = v19;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p updating the state of the snoozed alarm %@", buf, 0x16u);
      }

      v21 = [v10 mutableCopy];
      [v21 setEnabled:1];
      v17 = [*(a1 + 40) updateAlarm:v21 onAccessory:*(a1 + 48) inHome:*(a1 + 56)];
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_10:
  }

  v17 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_22:
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_241;
  v25[3] = &unk_278E18BC0;
  v26 = *(a1 + 64);
  v22 = *(a1 + 32);
  v23 = *(a1 + 72);
  v27 = v22;
  v28 = v23;
  v24 = [v17 addCompletionBlock:v25];
}

uint64_t __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_241(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p done updating the state of the snoozed alarm %@", &v7, 0x16u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)dismissAlarmWithIdentifier:(id)identifier fromClient:(id)client withCallback:(id)callback
{
  identifierCopy = identifier;
  clientCopy = client;
  callbackCopy = callback;
  meshController = [(COMeshAddOn *)self meshController];
  v12 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn dismissAlarmWithIdentifier:fromClient:withCallback:];
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__24;
  v33[4] = __Block_byref_object_dispose__24;
  v34 = os_transaction_create();
  v13 = [(COMeshAlarmAddOn *)self dismissAlarmWithIdentifier:identifierCopy client:clientCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke;
  v27[3] = &unk_278E18C88;
  v14 = meshController;
  v28 = v14;
  v15 = identifierCopy;
  v29 = v15;
  selfCopy = self;
  v16 = callbackCopy;
  v31 = v16;
  v32 = v33;
  v17 = [v13 addFailureBlock:v27];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245;
  v22[3] = &unk_278E18CB0;
  v18 = v14;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  v20 = v16;
  v25 = v20;
  v26 = v33;
  v21 = [v13 addSuccessBlock:v22];

  _Block_object_dispose(v33, 8);
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1();
  }

  v3 = [*(a1 + 48) alarmManager];
  v4 = [v3 dismissAlarmWithIdentifier:*(a1 + 40)];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243;
  v20[3] = &unk_278E18B70;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = *(a1 + 64);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v21 = v8;
  v22 = v7;
  v9 = [v4 addFailureBlock:v20];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244;
  v14[3] = &unk_278E18C60;
  v15 = v3;
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v18 = v10;
  v19 = v11;
  v12 = v3;
  v13 = [v4 addSuccessBlock:v14];
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243_cold_1();
  }

  (*(*(a1 + 48) + 16))();
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244(uint64_t a1)
{
  v2 = [*(a1 + 32) alarms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2;
  v9[3] = &unk_278E18C38;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v3 = [v2 addSuccessBlock:v9];

  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244_cold_1();
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v5, v6);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 32)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 alarmID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = [COAlarmFiringAlarmDismissedNotification alloc];
          v21 = v10;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
          v15 = [(COAlarmNotification *)v13 initWithAlarms:v14];

          v16 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2_cold_1(a1, v10);
          }

          [*(a1 + 40) sendNotification:v15];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245(uint64_t a1)
{
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245_cold_1();
  }

  (*(*(a1 + 48) + 16))();
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply
{
  accessoryCopy = accessory;
  instanceCopy = instance;
  replyCopy = reply;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke;
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

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [*(a1 + 32) categoryType];
  v4 = [*(a1 + 32) IDSIdentifier];
  v5 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 134218754;
    v52 = v6;
    v53 = 2112;
    v54 = v7;
    v55 = 2112;
    v56 = v2;
    v57 = 2112;
    v58 = v3;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p as %@ checking dispatch for %@ of %@...", buf, 0x2Au);
  }

  if (!(*(a1 + 48) | v2))
  {
    LODWORD(v8) = 1;
    goto LABEL_43;
  }

  v9 = [v3 isEqualToString:*MEMORY[0x277CCE8B0]];
  v11 = (a1 + 40);
  v10 = *(a1 + 40);
  if (v9)
  {
    v12 = [v10 homekit];
    v13 = [v12 hasOptedToHH2];

    if (v13)
    {
      v14 = [*v11 meshController];
      v15 = [v14 state];

      v16 = [*v11 ourInterests];
      v17 = [v16 objectForKey:v4];

      if (v17)
      {
        v8 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v41 = *(a1 + 32);
          v40 = *(a1 + 40);
          *buf = 134218498;
          v52 = v40;
          v53 = 2048;
          v54 = v17;
          v55 = 2112;
          v56 = v41;
          _os_log_debug_impl(&dword_244378000, v8, OS_LOG_TYPE_DEBUG, "%p using interest tracker %p for can dispatch of %@", buf, 0x20u);
        }

        LODWORD(v8) = [v17 canDispatchWithPrimary:v15 == 3];
      }

      else
      {
        if (v15 == 3)
        {
          v26 = COCoreLogForCategory(2);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_3();
          }

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v27 = [*v11 meshController];
          v28 = [v27 nodes];

          obj = v28;
          v29 = [v28 countByEnumeratingWithState:&v47 objects:v62 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v48;
            while (2)
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v48 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = [*(*(&v47 + 1) + 8 * i) IDSIdentifier];
                v34 = [v33 isEqual:v4];

                if (v34)
                {

                  goto LABEL_41;
                }
              }

              v30 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
              if (v30)
              {
                continue;
              }

              break;
            }
          }
        }

        v35 = [*(a1 + 40) secondaryClusterMemberForAccessory:*(a1 + 32)];
        LODWORD(v8) = v35 != 0;
      }
    }

    else
    {
      v17 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2();
      }

      LODWORD(v8) = 1;
    }
  }

  else
  {
    v18 = [v10 meshController];
    v19 = [v18 state];

    if (v19 != 3)
    {
      LODWORD(v8) = 0;
      goto LABEL_43;
    }

    v20 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1();
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = [*v11 meshController];
    v17 = [v21 nodes];

    v8 = [v17 countByEnumeratingWithState:&v43 objects:v61 count:16];
    if (v8)
    {
      v22 = *v44;
      while (2)
      {
        for (j = 0; j != v8; j = (j + 1))
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = [*(*(&v43 + 1) + 8 * j) remote];
          v25 = [v24 type];

          if (v25 != -1)
          {
LABEL_41:
            LODWORD(v8) = 1;
            goto LABEL_42;
          }
        }

        v8 = [v17 countByEnumeratingWithState:&v43 objects:v61 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_42:

LABEL_43:
  v36 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = " not";
    if (v8)
    {
      v39 = "";
    }

    *buf = 134219010;
    v52 = v37;
    v53 = 2112;
    v54 = v38;
    v55 = 2080;
    v56 = v39;
    v57 = 2112;
    v58 = v2;
    v59 = 2112;
    v60 = v3;
    _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p as %@ can%s dispatch for %@ of %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)mediaSystemCompanionTransitionedFrom:(id)from to:(id)to
{
  v37 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  homekit = [(COMeshAlarmAddOn *)self homekit];
  if ([homekit hasOptedToHH2])
  {
    v9 = [fromCopy isEqual:toCopy];
    if (toCopy != fromCopy && (v9 & 1) == 0)
    {
      currentAccessory = [homekit currentAccessory];
      v11 = currentAccessory;
      if (!currentAccessory)
      {
LABEL_17:

        goto LABEL_18;
      }

      uniqueIdentifier = [currentAccessory uniqueIdentifier];
      v13 = uniqueIdentifier;
      if (toCopy)
      {
        v14 = [uniqueIdentifier co_compare:toCopy];
        alarmManager = COCoreLogForCategory(2);
        v16 = os_log_type_enabled(alarmManager, OS_LOG_TYPE_DEFAULT);
        if (v14 == 1)
        {
          if (v16)
          {
            *buf = 134218498;
            selfCopy4 = self;
            v33 = 2112;
            v34 = v13;
            v35 = 2112;
            v36 = toCopy;
            _os_log_impl(&dword_244378000, alarmManager, OS_LOG_TYPE_DEFAULT, "%p system pair alarms deferred by %@ to %@", buf, 0x20u);
          }

          goto LABEL_16;
        }

        if (v16)
        {
          *buf = 134218498;
          selfCopy4 = self;
          v33 = 2112;
          v34 = v13;
          v35 = 2112;
          v36 = toCopy;
          _os_log_impl(&dword_244378000, alarmManager, OS_LOG_TYPE_DEFAULT, "%p system pair alarms being coalesced for %@ and %@", buf, 0x20u);
        }

        alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
        alarms = [alarmManager alarms];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke;
        v27[3] = &unk_278E17268;
        v28 = v13;
        v29 = toCopy;
        selfCopy3 = self;
        v21 = [alarms addSuccessBlock:v27];

        v20 = v28;
      }

      else
      {
        v17 = COCoreLogForCategory(2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          selfCopy4 = self;
          v33 = 2112;
          v34 = v13;
          v35 = 2112;
          v36 = fromCopy;
          _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p system pair alarms splitting %@ from %@", buf, 0x20u);
        }

        alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
        alarms = [alarmManager alarms];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_248;
        v22[3] = &unk_278E16E60;
        v23 = v13;
        v24 = fromCopy;
        selfCopy5 = self;
        v26 = v11;
        v19 = [alarms addSuccessBlock:v22];

        v20 = v23;
      }

LABEL_16:
      goto LABEL_17;
    }
  }

LABEL_18:
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke(void *a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v18[0] = a1[4];
  v18[1] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v18 count:2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_2;
  v16[3] = &unk_278E17E70;
  v16[4] = a1[6];
  v17 = v6;
  v7 = v6;
  v8 = [v5 indexesOfObjectsPassingTest:v16];
  v9 = [v5 objectsAtIndexes:v8];

  v10 = UniqueAlarms(v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3;
  v13[3] = &unk_278E18968;
  v11 = a1[6];
  v14 = v10;
  v15 = v11;
  v12 = v10;
  [v9 enumerateObjectsUsingBlock:v13];
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [*(a1 + 40) removeAlarm:v4];
  }
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_248(void *a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v21[0] = a1[4];
  v21[1] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v21 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_2_249;
  v18[3] = &unk_278E17E70;
  v18[4] = a1[6];
  v19 = v6;
  v7 = v6;
  v8 = [v5 indexesOfObjectsPassingTest:v18];
  v9 = [v5 objectsAtIndexes:v8];

  v10 = UniqueAlarms(v9);

  v20 = a1[4];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v12 = COAlarmSiriContextTargetReferenceForAccessory();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3_250;
  v15[3] = &unk_278E188A8;
  v15[4] = a1[6];
  v16 = v11;
  v17 = v12;
  v13 = v12;
  v14 = v11;
  [v10 enumerateObjectsUsingBlock:v15];
}

uint64_t __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_2_249(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 co_targetReference];
  if (v4)
  {
    v5 = [*(a1 + 32) _isAlarm:v3 targetingAccessoryIdentifiers:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__COMeshAlarmAddOn_mediaSystemCompanionTransitionedFrom_to___block_invoke_3_250(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D296F0]);
  v5 = [*(a1 + 32) _isAlarm:v3 targetingAccessoryIdentifiers:*(a1 + 40)];
  v6 = COCoreLogForCategory(2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v3 alarmID];
      v10 = [v4 alarmID];
      v18 = 134218498;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v11 = "%p replacing %@ with %@";
LABEL_6:
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, v11, &v18, 0x20u);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v9 = [v3 alarmID];
    v10 = [v4 alarmID];
    v18 = 134218498;
    v19 = v12;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v11 = "%p duplicating %@ to %@";
    goto LABEL_6;
  }

  if (v4)
  {
    [v4 setHour:{objc_msgSend(v3, "hour")}];
    [v4 setMinute:{objc_msgSend(v3, "minute")}];
    [v4 setEnabled:{objc_msgSend(v3, "isEnabled")}];
    [v4 setRepeatSchedule:{objc_msgSend(v3, "repeatSchedule")}];
    v13 = [v3 title];
    [v4 setTitle:v13];

    v14 = [v3 sound];
    [v4 setSound:v14];

    v15 = [v3 siriContext];
    [v4 setSiriContext:v15];

    [v4 co_setTargetReference:*(a1 + 48)];
    v16 = [*(a1 + 32) addAlarm:v4];
    if (v5)
    {
      v17 = [*(a1 + 32) removeAlarm:v3];
    }
  }
}

- (void)establishSecondaryClusterForAccessory:(id)accessory
{
  v13 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([MEMORY[0x277CFD0B8] isHomeKitUsingAlarmsAndTimersIDSService])
  {
    homekit = COCoreLogForCategory(2);
    if (os_log_type_enabled(homekit, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = @"com.apple.private.alloy.alarms-timers";
      _os_log_impl(&dword_244378000, homekit, OS_LOG_TYPE_DEFAULT, "%p HomeKit is making use of IDS Service %@ for alarms", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    homekit = [(COMeshAlarmAddOn *)self homekit];
    if (([homekit hasOptedToHH2]& 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    actionDirector = self->_actionDirector;

    if (!actionDirector)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __58__COMeshAlarmAddOn_establishSecondaryClusterForAccessory___block_invoke;
      v7[3] = &unk_278E156B0;
      v7[4] = self;
      v8 = accessoryCopy;
      [(COMeshAlarmAddOn *)self _withLock:v7];
    }
  }

LABEL_9:
}

void __58__COMeshAlarmAddOn_establishSecondaryClusterForAccessory___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 80))
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
    obj = [(COMeshAlarmAddOn *)self members];
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
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (![MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    goto LABEL_14;
  }

  homekit = [(COMeshAlarmAddOn *)self homekit];
  hasOptedToHH2 = [homekit hasOptedToHH2];

  if (!hasOptedToHH2)
  {
    goto LABEL_14;
  }

  categoryType = [accessoryCopy categoryType];
  if (([categoryType isEqualToString:*MEMORY[0x277CCE8B0]] & 1) == 0)
  {

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  iDSIdentifier = [accessoryCopy IDSIdentifier];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  meshController = [(COMeshAddOn *)self meshController];
  nodes = [meshController nodes];

  v11 = [nodes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(nodes);
        }

        iDSIdentifier2 = [*(*(&v19 + 1) + 8 * i) IDSIdentifier];
        v16 = [iDSIdentifier2 isEqual:iDSIdentifier];

        if (v16)
        {

          v17 = 0;
          goto LABEL_19;
        }
      }

      v12 = [nodes countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(COMeshAlarmAddOn *)self secondaryClusterMemberForAccessory:accessoryCopy];
LABEL_19:

LABEL_15:

  return v17;
}

- (void)setInterests:(id)interests asAccessory:(id)accessory withCallback:(id)callback
{
  interestsCopy = interests;
  accessoryCopy = accessory;
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke;
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

void __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke(uint64_t a1)
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
      v11 = COCoreLogForCategory(2);
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
      v14 = COCoreLogForCategory(2);
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
    v19 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1();
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

  v19 = COCoreLogForCategory(2);
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
  v32[2] = __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke;
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
  actionDirector = [(COMeshAlarmAddOn *)self actionDirector];
  v26 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke_263;
  v29[3] = &unk_278E17330;
  v27 = meshControllerQueue2;
  v30 = v27;
  v28 = v23;
  v31 = v28;
  [actionDirector requestAction:v21 members:v26 activity:0 withCompletion:v29];

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

void __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(2);
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
      [v11 didChangeCompositionForAlarmAddOn:WeakRetained];
    }
  }
}

void __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke_263(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__COMeshAlarmAddOn_interestTracker_setInterests_forMember_callback___block_invoke_2;
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

  v6 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [COMeshAlarmAddOn handleAlarmManagerStateResetNotification:?];
  }

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    accessory = [resetCopy accessory];
    uniqueIdentifier = [accessory uniqueIdentifier];

    [delegate alarmAddOn:self resetAccesory:uniqueIdentifier];
  }
}

- (void)_reaperFired
{
  homekit = [(COMeshAlarmAddOn *)self homekit];
  currentAccessory = [homekit currentAccessory];
  if (currentAccessory)
  {
    v5 = [homekit homeForAccessory:currentAccessory];
    if (v5)
    {
      v6 = v5;
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults doubleForKey:@"ReapExpirationInterval"];
      v9 = v8;
      meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
      if (meshControllerQueue)
      {
        v12[1] = 3221225472;
        v11 = 5184000.0;
        v12[0] = MEMORY[0x277D85DD0];
        v12[2] = __32__COMeshAlarmAddOn__reaperFired__block_invoke;
        v12[3] = &unk_278E18000;
        if (v9 > 0.0)
        {
          v11 = v9;
        }

        v12[4] = self;
        v15 = v11;
        v13 = currentAccessory;
        v14 = v6;
        dispatch_async(meshControllerQueue, v12);
      }
    }
  }
}

void __32__COMeshAlarmAddOn__reaperFired__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*(a1 + 56)];
  [v2 reapNonRepeatingAlarmsOlderThanDate:v3 accessory:*(a1 + 40) home:*(a1 + 48)];
}

- (void)reapNonRepeatingAlarmsOlderThanDate:(id)date accessory:(id)accessory home:(id)home
{
  v45 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  accessoryCopy = accessory;
  homeCopy = home;
  if ([(COMeshAlarmAddOn *)self performsLocalActions])
  {
    v11 = arc4random();
    v12 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v44 = v11;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "(%u) Alarm reap started.", buf, 8u);
    }

    homekit = [(COMeshAlarmAddOn *)self homekit];
    v14 = &off_244448000;
    if (([homekit hasOptedToHH2] & 1) != 0 || (v15 = *MEMORY[0x277CCE8B0], objc_msgSend(accessoryCopy, "category"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "categoryType"), v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(v15) = objc_msgSend(v15, "isEqual:", v17), v17, v16, (v15 & 1) == 0))
    {
      v19 = objc_alloc_init(MEMORY[0x277D2C900]);
      alarmManager = [(COMeshAlarmAddOn *)self alarmManager];
      alarms = [alarmManager alarms];

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke;
      v39[3] = &unk_278E18AA8;
      v22 = v19;
      v40 = v22;
      selfCopy = self;
      v42 = accessoryCopy;
      v23 = [alarms addCompletionBlock:v39];

      v18 = v40;
    }

    else
    {
      v18 = [homekit mediaSystemForAccessory:accessoryCopy inHome:homeCopy];
      if (v18)
      {
        [homekit settingsForKeyPath:@"root.mobileTimer.alarms" onMediaObject:v18];
      }

      else
      {
        [homekit settingsForKeyPath:@"root.mobileTimer.alarms" onAccessory:accessoryCopy];
      }
      v25 = ;
      alarms = [v25 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = COAlarmSiriContextTargetReferenceForAccessory();
        v30 = MEMORY[0x277D2C900];
        [alarms co_rawAlarms];
        v27 = v31 = v11;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2;
        v36[3] = &unk_278E18CD8;
        v37 = v26;
        v18 = v18;
        v38 = v18;
        v29 = v26;
        v28 = [v27 na_map:v36];
        v22 = [v30 futureWithResult:v28];

        v14 = &off_244448000;
        v11 = v31;
      }

      else
      {
        v22 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
      }
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = *(v14 + 186);
    v32[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_3;
    v32[3] = &unk_278E18D98;
    v35 = v11;
    v33 = dateCopy;
    selfCopy2 = self;
    v24 = [v22 addSuccessBlock:v32];
  }
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = [*(a1 + 40) _filteredAlarmsList:v3 forAccessory:*(a1 + 48)];
  [v2 finishWithResult:v4];
}

id __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 co_setTargetReference:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v3 co_setIsMediaSystemOriginating];
  }

  return v3;
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_4;
  v18[3] = &unk_278E18D00;
  v19 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 indexesOfObjectsPassingTest:v18];
  v6 = [v4 objectsAtIndexes:v5];

  if ([v6 count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_267;
    v16[3] = &unk_278E18D50;
    v16[4] = *(a1 + 40);
    v17 = *(a1 + 48);
    v7 = [v6 na_map:v16];
    v8 = MEMORY[0x277D2C938];
    v9 = [*(a1 + 40) meshControllerQueue];
    v10 = [v8 schedulerWithDispatchQueue:v9];

    v11 = [MEMORY[0x277D2C900] combineAllFutures:v7 ignoringErrors:1 scheduler:v10];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_269;
    v14[3] = &__block_descriptor_36_e20_v24__0_8__NSError_16l;
    v15 = *(a1 + 48);
    v12 = [v11 addCompletionBlock:v14];
  }

  else
  {
    v7 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 67109120;
      v21 = v13;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "(%u) Alarm reap complete with no alarms.", buf, 8u);
    }
  }
}

BOOL __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastModifiedDate];
  if ([v3 isEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (([v3 repeats] & 1) == 0 && v4)
    {
      v6 = [v4 earlierDate:*(a1 + 32)];
      v5 = v4 == v6;
    }
  }

  return v5;
}

id __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_267(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) removeAlarm:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268;
  v8[3] = &unk_278E18D28;
  v10 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v8];

  return v4;
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) alarmID];
    v9[0] = 67109378;
    v9[1] = v7;
    v10 = 2112;
    v11 = v8;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "(%u) Reaped alarm: %@", v9, 0x12u);
  }
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_269(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "(%u) Alarm reap complete.", v4, 8u);
  }
}

- (void)director:(id)director membersChanged:(id)changed
{
  v59 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  members = [(COMeshAlarmAddOn *)self members];
  v7 = [members mutableCopy];

  [v7 minusSet:changedCopy];
  [(COMeshAlarmAddOn *)self setMembers:changedCopy];
  interests = [(COMeshAlarmAddOn *)self interests];
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
    interests2 = [(COMeshAlarmAddOn *)self interests];
    v18 = [interests2 mutableCopy];

    [v18 removeObjectsForKeys:v10];
    [(COMeshAlarmAddOn *)self setInterests:v18];
    v19 = COCoreLogForCategory(2);
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

        ourInterests = [(COMeshAlarmAddOn *)self ourInterests];
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
        ourInterests2 = [(COMeshAlarmAddOn *)self ourInterests];
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

  delegate = [(COMeshAlarmAddOn *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didChangeCompositionForAlarmAddOn:self];
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
      memento = [(COAlarmUpdateRequest *)targetIdentifier memento];
      uniqueIdentifier = [memento uniqueIdentifier];

      if (!uniqueIdentifier)
      {
        homekit = [(COMeshAlarmAddOn *)self homekit];
        currentAccessory = [homekit currentAccessory];
        uniqueIdentifier = [currentAccessory uniqueIdentifier];
      }

      alarms = [[COAlarmReadRequest alloc] initWithAccessoryUniqueIdentifier:uniqueIdentifier];
      objc_initWeak(&location, self);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_2;
      v35[3] = &unk_278E17380;
      v37 = callbackCopy;
      objc_copyWeak(&v38, &location);
      v36 = actionIdentifier;
      [(COMeshAlarmAddOn *)self handleAlarmReadRequest:alarms callback:v35];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [COAlarmUpdateRequest alloc];
        alarm = [actionCopy alarm];
        targetIdentifier = [(COAlarmRequest *)v24 initWithAlarm:alarm];

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_3;
        v32[3] = &unk_278E17358;
        v33 = actionIdentifier;
        v34 = callbackCopy;
        [(COMeshAlarmAddOn *)self handleAlarmUpdateRequest:targetIdentifier callback:v32];

        v18 = v33;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        targetIdentifier = [actionCopy targetIdentifier];
        uniqueIdentifier = [objc_alloc(MEMORY[0x277D296D0]) initWithIdentifier:targetIdentifier];
        alarms = [(COAlarmRequest *)[COAlarmDeleteRequest alloc] initWithAlarm:uniqueIdentifier];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_4;
        v29[3] = &unk_278E17358;
        v30 = actionIdentifier;
        v31 = callbackCopy;
        [(COMeshAlarmAddOn *)self handleAlarmDeleteRequest:alarms callback:v29];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          interests = [(COMeshAlarmAddOn *)self interests];
          targetIdentifier = [interests mutableCopy];

          uniqueIdentifier = [actionCopy targetIdentifiers];
          if ([uniqueIdentifier count])
          {
            [(COAlarmUpdateRequest *)targetIdentifier setObject:uniqueIdentifier forKey:fromCopy];
          }

          else
          {
            [(COAlarmUpdateRequest *)targetIdentifier removeObjectForKey:fromCopy];
          }

          [(COMeshAlarmAddOn *)self setInterests:targetIdentifier];
          v27 = [[COMTResult alloc] initWithActionIdentifier:actionIdentifier];
          (*(callbackCopy + 2))(callbackCopy, v27, 0);

          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        targetIdentifier = [(COMeshAlarmAddOn *)self delegate];
        uniqueIdentifier = [actionCopy reason];
        alarms = [actionCopy alarms];
        if ([uniqueIdentifier isEqual:*MEMORY[0x277D29590]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(COAlarmUpdateRequest *)targetIdentifier alarmAddOn:self didAddAlarms:alarms];
        }

        else if ([uniqueIdentifier isEqual:*MEMORY[0x277D295A8]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(COAlarmUpdateRequest *)targetIdentifier alarmAddOn:self didRemoveAlarms:alarms];
        }

        else if ([uniqueIdentifier isEqual:*MEMORY[0x277D295B0]] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(COAlarmUpdateRequest *)targetIdentifier alarmAddOn:self didUpdateAlarms:alarms];
        }

        v28 = [[COMTResult alloc] initWithActionIdentifier:actionIdentifier];
        (*(callbackCopy + 2))(callbackCopy, v28, 0);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v15 = [COAlarmCreateRequest alloc];
  alarm2 = [actionCopy alarm];
  targetIdentifier = [(COAlarmRequest *)v15 initWithAlarm:alarm2];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke;
  v40[3] = &unk_278E17358;
  v41 = actionIdentifier;
  v42 = callbackCopy;
  [(COMeshAlarmAddOn *)self handleAlarmCreateRequest:targetIdentifier callback:v40];

  v18 = v41;
LABEL_3:

LABEL_14:
LABEL_15:
}

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      v6 = [v9 alarms];
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8 = [[COMTAlarmReadResult alloc] initWithAlarms:v6 actionIdentifier:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __57__COMeshAlarmAddOn_director_performAction_from_callback___block_invoke_4(uint64_t a1, void *a2, void *a3)
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

- (void)didChangeNodesForMeshController:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p merge %p lost final nodes", v2, v3);
}

- (void)_continueMerge:withResponse:fromNode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p merge %p received last response", v2, v3);
}

- (void)_finishMerge:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_finishMerge:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __47__COMeshAlarmAddOn__reloadIndexWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__COMeshAlarmAddOn__alarmManagerAlarmFired___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 40) alarmID];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_filteredAlarmsList:forAccessory:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_171_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_176_cold_2()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__COMeshAlarmAddOn__alarmsForAccessory_allowLocalStorage_usingLeader_member_client___block_invoke_179_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_isAlarm:(void *)a1 targetingAccessoryIdentifiers:.cold.2(void *a1)
{
  v1 = [a1 alarmID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __43__COMeshAlarmAddOn_addAlarm_member_client___block_invoke_192_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__COMeshAlarmAddOn_updateAlarm_member_client___block_invoke_195_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__COMeshAlarmAddOn_removeAlarm_member_client___block_invoke_198_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __53__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_client___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__COMeshAlarmAddOn_dismissAlarmWithIdentifier_client___block_invoke_201_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)handleAlarmReadRequest:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 meshController];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)handleAlarmCreateRequest:callback:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmCreateRequest_callback___block_invoke_208_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleAlarmUpdateRequest:callback:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmUpdateRequest_callback___block_invoke_210_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmDeleteRequest_callback___block_invoke_211_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__COMeshAlarmAddOn_handleAlarmSnoozeRequest_callback___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p forwarding snooze of %@ to the mesh");
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(*a2 + 8) + 40) alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __55__COMeshAlarmAddOn_handleAlarmDismissRequest_callback___block_invoke_213_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __50__COMeshAlarmAddOn_handleAlarmSnoozeNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleAlarmManagerStateResetNotification:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)alarmsAsAccessory:(void *)a1 fromClient:withCallback:.cold.1(void *a1)
{
  v1 = [a1 meshController];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)alarmsForAccessories:fromClient:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  [v0 count];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)addAlarm:(NSObject *)a3 asAccessory:fromClient:withCallback:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 meshController];
  v6 = [a2 alarmID];
  v8 = 134218242;
  v9 = v5;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_13(&dword_244378000, a3, v7, "%p serving request to add alarm %@", &v8);
}

- (void)updateAlarm:(NSObject *)a3 asAccessory:fromClient:withCallback:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 meshController];
  v6 = [a2 alarmID];
  v8 = 134218242;
  v9 = v5;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_13(&dword_244378000, a3, v7, "%p serving request to update alarm %@", &v8);
}

- (void)removeAlarm:(NSObject *)a3 asAccessory:fromClient:withCallback:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 meshController];
  v6 = [a2 alarmID];
  v8 = 134218242;
  v9 = v5;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_13(&dword_244378000, a3, v7, "%p serving request to delete alarm %@", &v8);
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __70__COMeshAlarmAddOn_snoozeAlarmWithIdentifier_fromClient_withCallback___block_invoke_239_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  v4 = v0;
  OUTLINED_FUNCTION_13(&dword_244378000, v1, v2, "%p snoozed alarm %@", v3);
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  v3 = v0;
  _os_log_error_impl(&dword_244378000, v1, OS_LOG_TYPE_ERROR, "%p trying locally to dismiss alarm %@", v2, 0x16u);
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_243_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_244_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "%p locally dismissed alarm %@");
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 alarmID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __71__COMeshAlarmAddOn_dismissAlarmWithIdentifier_fromClient_withCallback___block_invoke_245_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_4();
  v4 = v0;
  OUTLINED_FUNCTION_13(&dword_244378000, v1, v2, "%p dismissed alarm %@", v3);
}

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p looking for non-ephemeral node...", v2, v3, v4, v5);
}

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p is HomePod.", v2, v3, v4, v5);
}

void __60__COMeshAlarmAddOn_canDispatchAsAccessory_asInstance_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_2(&dword_244378000, v0, v1, "%p looking for HomePod...", v2, v3, v4, v5);
}

void __58__COMeshAlarmAddOn_setInterests_asAccessory_withCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "%p cannot set interests, IDS identifier missing", v2, v3, v4, v5);
}

void __71__COMeshAlarmAddOn_reapNonRepeatingAlarmsOlderThanDate_accessory_home___block_invoke_2_268_cold_1()
{
  OUTLINED_FUNCTION_9();
  v6 = [*(v0 + 32) alarmID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

@end