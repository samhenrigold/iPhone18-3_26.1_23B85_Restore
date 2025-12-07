@interface HMDWidgetTimelineRefresher
+ (id)fetchSpecificationsForWidgetKinds:(id)kinds;
+ (id)logCategory;
- (BOOL)_getRequestsFromMessage:(id)message outCharacteristicWriteValueByUUUIDs:(id *)ds outExecuteActionSetUUUIDs:(id *)iDs outExecuteTurnOffActionSetUUIDs:(id *)uIDs;
- (BOOL)_value:(id)_value isApproximatelyEqualToValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue;
- (BOOL)actionSetIsOn:(id)on;
- (BOOL)homeHasAnyResident:(uint64_t)resident;
- (HMDHomeManager)homeManager;
- (HMDWidgetAccessoryReachabilityMonitor)reachabilityMonitor;
- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager;
- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager queue:(id)queue dataSource:(id)source reachabilityUpdateDispatchDelayNs:(int64_t)ns forceUpdateTimelineDispatchDelayNs:(int64_t)delayNs;
- (NSUUID)messageTargetUUID;
- (_TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions)_swiftExtensions;
- (id)_firstErrorFromCharacteristicWriteResponsePayload:(id)payload;
- (id)_getPendingWriteValueForUUID:(id)d;
- (id)accessoriesMonitoredForReachability;
- (id)actionSetsByHome:(id)home;
- (id)actionSetsFromSPIClientIdentifiers:(void *)identifiers;
- (id)actionSetsMonitoredForWidgets;
- (id)cachedIsOnStateBySPIClientIdentifierForActionSets:(void *)sets;
- (id)characteristicsForMonitoredCharacteristics:(void *)characteristics;
- (id)characteristicsFromActionSets:(void *)sets;
- (id)characteristicsFromSPIClientIdentifiers:(void *)identifiers;
- (id)characteristicsMonitoredForWidgets;
- (id)createDataSource;
- (id)didExecuteFailBySPIClientIdentifierForActionSets:(void *)sets;
- (id)internalMonitorCharacteristicsForCurrentHome:(id)home activeAutoBahnWidgetKinds:(id)kinds;
- (id)modifiedCharacteristicsFromNotification:(id)notification;
- (id)monitorCharacteristicsForHome:(id)home fetchSpecifications:(id)specifications;
- (id)reachabilityByAccessorySPIClientIdentifierForCharacteristics:(id)characteristics;
- (id)thresholdForCharacteristic:(id)characteristic;
- (id)valueByCharacteristicSPIClientIdentifierForCharacteristics:(id)characteristics;
- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications assumingChangedCharacteristic:(id)characteristic;
- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications changedCharacteristics:(id)characteristics;
- (void)_clearCachedErrorForActionSet:(void *)set;
- (void)_refreshTimelineForWidgetKinds:(void *)kinds withReason:;
- (void)_removePendingRequestValueForUUID:(id)d messageIdentifier:(id)identifier;
- (void)_setCachedError:(void *)error forActionSet:;
- (void)_setPendingRequestValue:(id)value forUUID:(id)d messageIdentifier:(id)identifier;
- (void)accessoryReachabilityDidChange:(id)change;
- (void)cleanUpRemovedWidgetsFromWidgets:(void *)widgets completion:;
- (void)configure;
- (void)configureSwiftExtensions;
- (void)dealloc;
- (void)fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:(id)completion;
- (void)forceUpdateTimelineForWidgetKinds:(id)kinds;
- (void)handleAccessoryAddedNotification:(id)notification;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification;
- (void)handleAccessoryReachabilityChanged:(id)changed;
- (void)handleAccessoryRemovedNotification:(id)notification;
- (void)handleAutobahnAccessoryReachabilityChanged:(id)changed;
- (void)handleCurrentHomeChangeNotification:(id)notification;
- (void)handleCurrentOrPrimaryHomeChangedNotification:(id)notification;
- (void)handleFetchState:(id)state;
- (void)handleFetchStateForActionSets:(id)sets;
- (void)handleHomeAddedNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handleHomeSensingChangedNotification;
- (void)handleMonitorActionSetsForWidget:(id)widget;
- (void)handleMonitorCharacteristicsForWidget:(id)widget;
- (void)handleNotificationOfPossibleNewWidget:(id)widget;
- (void)handleNotifiedXPCClientsOfHomeConfigurationChangeNotification:(id)notification;
- (void)handlePerformRequests:(id)requests;
- (void)handleResidentDeviceAddedOrRemovedNotification:(id)notification;
- (void)handleResidentDeviceChangedNotification:(id)notification;
- (void)handleSelectedHomeChangedNotification;
- (void)handleTimerFiredForActionSet:(id)set;
- (void)initSwiftExtensions;
- (void)internalProcessChangedCharacteristics:(id)characteristics activeAutoBahnWidgetKinds:(id)kinds;
- (void)processCharacteristicsChangedNotification:(id)notification;
- (void)refreshTimelineForConfiguredWidgetsWithReason:(void *)reason;
- (void)refreshTimelineForWidgetKinds:(void *)kinds withReason:(int)reason shouldCoalesce:;
- (void)registerForDarwinNotifications;
- (void)registerForMessagesWithMessageDispatcher:(id)dispatcher;
- (void)setNotificationEnabled:(void *)enabled forCharacteristics:(void *)characteristics clientIdentifier:;
- (void)stopMonitoringOldCharacteristics;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
- (void)updateCachedIsOnStateForActionSets:(void *)sets;
- (void)updateMonitoredCharacteristicsAndRefreshWidgetTimelines;
- (void)updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:(int64_t)s afterChangesFromBlock:(id)block;
- (void)updateNotificationRegistrationWithPreviousCharacteristics:(void *)characteristics currentCharacteristics:(uint64_t)currentCharacteristics updateRequestQualityOfService:;
- (void)updateReachabilityMonitorWithPreviousAccessories:(id)accessories currentAccessories:(id)currentAccessories completion:(id)completion;
- (void)writeCharacteristicsWithWriteValueBySPIClientIdentifier:(id)identifier widgetKind:(id)kind message:(id)message completionGroup:(id)group completion:(id)completion;
@end

@implementation HMDWidgetTimelineRefresher

- (_TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions)_swiftExtensions
{
  selfCopy = self;
  swiftExtensions = [(HMDWidgetTimelineRefresher *)selfCopy swiftExtensions];
  sub_253CD0E18();
  swift_unknownObjectRelease();

  _s15SwiftExtensionsCMa_1();
  swift_dynamicCast();

  return v5;
}

- (void)initSwiftExtensions
{
  selfCopy = self;
  sub_253232620();
}

- (void)configureSwiftExtensions
{
  selfCopy = self;
  sub_2532327D4();
}

- (id)createDataSource
{
  v2 = [objc_allocWithZone(type metadata accessor for WidgetTimelineRefresherDataSource()) init];

  return v2;
}

- (HMDWidgetAccessoryReachabilityMonitor)reachabilityMonitor
{
  _swiftExtensions = [(HMDWidgetTimelineRefresher *)self _swiftExtensions];
  v3 = *(&_swiftExtensions->super.isa + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor);

  return v3;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)accessoryReachabilityDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count])
  {
    [(HMDWidgetTimelineRefresher *)self handleAutobahnAccessoryReachabilityChanged:changeCopy];
    [(HMDWidgetTimelineRefresher *)self handleAccessoryReachabilityChanged:changeCopy];
  }
}

- (NSUUID)messageTargetUUID
{
  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  messageTargetUUID = [homeManager messageTargetUUID];

  return messageTargetUUID;
}

- (void)handleTimerFiredForActionSet:(id)set
{
  v23 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = setCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Clearing cached error for action set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  uuid = [setCopy uuid];
  cachedActionSetExecuteErrorByUUID = [(HMDWidgetTimelineRefresher *)selfCopy cachedActionSetExecuteErrorByUUID];
  [cachedActionSetExecuteErrorByUUID removeObjectForKey:uuid];

  cachedActionSetExecuteErrorTimerContextByUUID = [(HMDWidgetTimelineRefresher *)selfCopy cachedActionSetExecuteErrorTimerContextByUUID];
  [cachedActionSetExecuteErrorTimerContextByUUID removeObjectForKey:uuid];

  v12 = [MEMORY[0x277CBEB58] set];
  monitoredActionSetsMapByWidget = [(HMDWidgetTimelineRefresher *)selfCopy monitoredActionSetsMapByWidget];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HMDWidgetTimelineRefresher_handleTimerFiredForActionSet___block_invoke;
  v16[3] = &unk_27972F368;
  v17 = v12;
  v18 = setCopy;
  v14 = setCopy;
  v15 = v12;
  [monitoredActionSetsMapByWidget enumerateKeysAndObjectsUsingBlock:v16];

  [(HMDWidgetTimelineRefresher *)selfCopy refreshTimelineForWidgetKinds:v15 withReason:@"Action Set Error Cleared" shouldCoalesce:1];
}

void __59__HMDWidgetTimelineRefresher_handleTimerFiredForActionSet___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [v7 kind];
  LOBYTE(v9) = [v9 containsObject:v10];

  if ((v9 & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v18 + 1) + 8 * i) isEqual:{*(a1 + 40), v18}])
          {
            v16 = *(a1 + 32);
            v17 = [v7 kind];
            [v16 addObject:v17];

            *a4 = 1;
            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)refreshTimelineForWidgetKinds:(void *)kinds withReason:(int)reason shouldCoalesce:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  kindsCopy = kinds;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    if ([v7 count])
    {
      if (!reason)
      {
        widgetRefreshCoalesceKinds = [self widgetRefreshCoalesceKinds];
        v24 = [v7 setByAddingObjectsFromSet:widgetRefreshCoalesceKinds];
        [(HMDWidgetTimelineRefresher *)self _refreshTimelineForWidgetKinds:v24 withReason:kindsCopy];
LABEL_11:

        goto LABEL_12;
      }

      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        allObjects = [v7 allObjects];
        v15 = [allObjects componentsJoinedByString:{@", "}];
        v25 = 138543874;
        v26 = v13;
        v27 = 2112;
        v28 = kindsCopy;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Coalescing and delaying widget refresh due to %@ for kinds: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      widgetRefreshCoalesceKinds2 = [selfCopy widgetRefreshCoalesceKinds];
      v17 = [widgetRefreshCoalesceKinds2 setByAddingObjectsFromSet:v7];
      [selfCopy setWidgetRefreshCoalesceKinds:v17];

      widgetRefreshCoalesceTimerContext = [selfCopy widgetRefreshCoalesceTimerContext];

      if (!widgetRefreshCoalesceTimerContext)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v22;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Starting coalescing timer", &v25, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [v20 setWidgetRefreshCoalesceReason:kindsCopy];
        widgetRefreshCoalesceKinds = [v20 timerManager];
        v24 = [widgetRefreshCoalesceKinds startTimerWithTimeInterval:@"AF927200-D9B8-4498-9175-6620DB053CC6" object:1.0];
        [v20 setWidgetRefreshCoalesceTimerContext:v24];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
}

- (void)_refreshTimelineForWidgetKinds:(void *)kinds withReason:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  kindsCopy = kinds;
  if (self)
  {
    widgetRefreshCoalesceTimerContext = [self widgetRefreshCoalesceTimerContext];

    if (widgetRefreshCoalesceTimerContext)
    {
      timerManager = [self timerManager];
      widgetRefreshCoalesceTimerContext2 = [self widgetRefreshCoalesceTimerContext];
      [timerManager cancelTimerForContext:widgetRefreshCoalesceTimerContext2];
    }

    [self setWidgetRefreshCoalesceReason:0];
    v10 = [MEMORY[0x277CBEB98] set];
    [self setWidgetRefreshCoalesceKinds:v10];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      allObjects = [v5 allObjects];
      v16 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v23 = v14;
      v24 = 2112;
      v25 = kindsCopy;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing widget due to %@ for kinds: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    workQueue = [selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDWidgetTimelineRefresher__refreshTimelineForWidgetKinds_withReason___block_invoke;
    block[3] = &unk_279734960;
    v19 = v5;
    v20 = selfCopy;
    v21 = kindsCopy;
    dispatch_async(workQueue, block);
  }
}

void __72__HMDWidgetTimelineRefresher__refreshTimelineForWidgetKinds_withReason___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v24;
    *&v3 = 138543874;
    v21 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [*(a1 + 40) timelineController];
        v9 = [v8 reloadTimelineWithExtensionBundleIdentifier:@"com.apple.Home.HomeWidget.Interactive" kind:v7 reason:*(a1 + 48)];

        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (v9)
        {
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v14 = HMFGetLogIdentifier();
          *buf = v21;
          v28 = v14;
          v29 = 2114;
          v30 = v7;
          v31 = 2112;
          v32 = v9;
          v15 = v13;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = "%{public}@Failed reload of timeline for '%{public}@': %@";
        }

        else
        {
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v14 = HMFGetLogIdentifier();
          v18 = *(a1 + 48);
          *buf = v21;
          v28 = v14;
          v29 = 2114;
          v30 = v7;
          v31 = 2114;
          v32 = v18;
          v15 = v13;
          v16 = OS_LOG_TYPE_DEFAULT;
          v17 = "%{public}@Successfully reloaded timeline for '%{public}@' due to %{public}@";
        }

        _os_log_impl(&dword_2531F8000, v15, v16, v17, buf, 0x20u);

LABEL_12:
        objc_autoreleasePoolPop(v10);
        v19 = [*(a1 + 40) logEventSubmitter];
        v20 = [[HMDWidgetTimelineRefresherLogEvent alloc] initWithKind:v7 reason:*(a1 + 48)];
        [v19 submitLogEvent:v20 error:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v4);
  }
}

- (void)timerManager:(id)manager didFireForTimerContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  widgetRefreshCoalesceTimerContext = [(HMDWidgetTimelineRefresher *)self widgetRefreshCoalesceTimerContext];

  if (widgetRefreshCoalesceTimerContext == contextCopy)
  {
    [(HMDWidgetTimelineRefresher *)self setWidgetRefreshCoalesceTimerContext:0];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Widget refresh coalescing timer fired.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    widgetRefreshCoalesceKinds = [(HMDWidgetTimelineRefresher *)selfCopy widgetRefreshCoalesceKinds];
    widgetRefreshCoalesceReason = [(HMDWidgetTimelineRefresher *)selfCopy widgetRefreshCoalesceReason];
    [(HMDWidgetTimelineRefresher *)selfCopy _refreshTimelineForWidgetKinds:widgetRefreshCoalesceKinds withReason:widgetRefreshCoalesceReason];
  }

  else
  {
    object = [contextCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = object;
    }

    else
    {
      v11 = 0;
    }

    widgetRefreshCoalesceKinds = v11;

    if (widgetRefreshCoalesceKinds)
    {
      [(HMDWidgetTimelineRefresher *)self handleTimerFiredForActionSet:widgetRefreshCoalesceKinds];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        object2 = [contextCopy object];
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = object2;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Timer manager fired with object that is unexpected: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      widgetRefreshCoalesceKinds = 0;
    }
  }
}

- (void)handleAutobahnAccessoryReachabilityChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v46 = [MEMORY[0x277CBEB58] set];
  v47 = [MEMORY[0x277CBEB58] set];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v68;
    v6 = 0x277CCA000;
    v48 = *v68;
    v49 = v2;
    do
    {
      v7 = 0;
      v50 = v4;
      do
      {
        if (*v68 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v67 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = [v8 home];
        LODWORD(v9) = [(HMDWidgetTimelineRefresher *)v9 homeHasAnyResident:v10];

        if (v9)
        {
          v11 = [*(a1 + 40) accessoryIsReachableByUUID];
          v12 = [v8 uuid];
          v13 = [v11 objectForKeyedSubscript:v12];

          v52 = v13;
          if (v13)
          {
            v14 = [v13 BOOLValue];
          }

          else
          {
            v14 = 1;
          }

          v15 = [*(a1 + 40) reachabilityMonitor];
          v16 = [v15 isAccessoryReachable:v8];

          v60 = v16;
          if (v14 != v16)
          {
            v51 = v7;
            v17 = objc_opt_class();
            v18 = [*(a1 + 40) activeAutoBahnWidgetKinds];
            v57 = [v17 fetchSpecificationsForWidgetKinds:v18];

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            obj = [*(a1 + 40) monitoredCharacteristics];
            v19 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v64;
              v22 = v46;
              if (!v60)
              {
                v22 = v47;
              }

              v55 = v22;
              v56 = *v64;
              do
              {
                v23 = 0;
                v58 = v20;
                do
                {
                  if (*v64 != v21)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = *(*(&v63 + 1) + 8 * v23);
                  v25 = [v24 accessory];
                  v26 = [v25 isEqual:v8];

                  if (v26)
                  {
                    v27 = v55;
                    v28 = [*(a1 + 40) widgetKindsToUpdateFromFetchSpecifications:v57 assumingChangedCharacteristic:v24];
                    [v27 unionSet:v28];

                    v29 = objc_autoreleasePoolPush();
                    v30 = *(a1 + 40);
                    v31 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      HMFGetLogIdentifier();
                      v32 = v53 = v29;
                      v33 = [v8 home];
                      [v33 name];
                      v54 = v27;
                      v35 = v34 = v8;
                      v36 = [v34 name];
                      HMFBooleanToString();
                      v38 = v37 = a1;
                      *buf = 138544130;
                      v72 = v32;
                      v73 = 2112;
                      v74 = v35;
                      v75 = 2112;
                      v76 = v36;
                      v77 = 2112;
                      v78 = v38;
                      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' reachability changed to %@.", buf, 0x2Au);

                      v8 = v34;
                      v27 = v54;

                      a1 = v37;
                      v6 = 0x277CCA000uLL;

                      v29 = v53;
                    }

                    objc_autoreleasePoolPop(v29);
                    v39 = [*(v6 + 2992) numberWithBool:v60];
                    v40 = [*(a1 + 40) accessoryIsReachableByUUID];
                    v41 = [v8 uuid];
                    [v40 setObject:v39 forKeyedSubscript:v41];

                    v21 = v56;
                    v20 = v58;
                  }

                  ++v23;
                }

                while (v20 != v23);
                v20 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
              }

              while (v20);
            }

            v5 = v48;
            v2 = v49;
            v4 = v50;
            v7 = v51;
          }
        }

        ++v7;
      }

      while (v7 != v4);
      v4 = [v2 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v4);
  }

  if ([v46 count])
  {
    v42 = dispatch_time(0, [*(a1 + 40) reachabilityUpdateDispatchDelayNs]);
    v43 = [*(a1 + 40) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke_339;
    block[3] = &unk_2797359B0;
    block[4] = *(a1 + 40);
    v62 = v46;
    dispatch_after(v42, v43, block);
  }

  v44 = v47;
  if ([v47 count])
  {
    v45 = [*(a1 + 40) forceUpdateAutobahnTimelineHandler];
    (v45)[2](v45, v47);

    v44 = v47;
  }
}

- (BOOL)homeHasAnyResident:(uint64_t)resident
{
  if (!resident)
  {
    return 0;
  }

  enabledResidents = [a2 enabledResidents];
  v3 = [enabledResidents count] != 0;

  return v3;
}

void __73__HMDWidgetTimelineRefresher_handleAutobahnAccessoryReachabilityChanged___block_invoke_339(uint64_t a1)
{
  v2 = [*(a1 + 32) forceUpdateAutobahnTimelineHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)handleNotificationOfPossibleNewWidget:(id)widget
{
  v23 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  name = [widgetCopy name];
  activeAutoBahnWidgetKinds = [(HMDWidgetTimelineRefresher *)self activeAutoBahnWidgetKinds];
  v7 = [activeAutoBahnWidgetKinds containsObject:name];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      object = [widgetCopy object];
      *buf = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = name;
      v21 = 2112;
      v22 = object;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Duplicate widget '%@' with payload '%@' ignored", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      object2 = [widgetCopy object];
      *buf = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = name;
      v21 = 2112;
      v22 = object2;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@New widget '%@' has been spotted, with payload '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HMDWidgetTimelineRefresher_handleNotificationOfPossibleNewWidget___block_invoke;
    v16[3] = &unk_279735D00;
    v16[4] = selfCopy;
    [(HMDWidgetTimelineRefresher *)selfCopy fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:v16];
  }
}

- (void)handleResidentDeviceAddedOrRemovedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    homeManager = [(HMDWidgetTimelineRefresher *)selfCopy homeManager];
    v14 = [homeManager _homeWithUUID:v8];
    name = [v14 name];
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = name;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Resident was added or removed for home %@, resetting all characteristic notifications", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
}

- (void)handleResidentDeviceChangedNotification:(id)notification
{
  v31 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    name = [v8 name];
    homeManager = [(HMDWidgetTimelineRefresher *)selfCopy homeManager];
    v19 = [homeManager _homeWithUUID:v12];
    [v19 name];
    v24 = notificationCopy;
    v20 = v12;
    v21 = v13;
    v23 = v22 = v8;
    *buf = 138543874;
    v26 = v16;
    v27 = 2112;
    v28 = name;
    v29 = 2112;
    v30 = v23;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Resident has changed to %@ for home %@, resetting all characteristic notifications", buf, 0x20u);

    v8 = v22;
    v13 = v21;
    v12 = v20;
    notificationCopy = v24;
  }

  objc_autoreleasePoolPop(v13);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
}

- (void)handleAccessoryRemovedNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = object;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    name = [v11 name];
    name2 = [v8 name];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' was removed, resetting all characteristic notifications", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
}

- (void)handleAccessoryAddedNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = object;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    name = [v11 name];
    name2 = [v8 name];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = name2;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory '%@:%@' was added, resetting all characteristic notifications", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Home '%@' was removed, resetting all characteristic notifications", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
}

- (void)handleHomeAddedNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Home '%@' was added, resetting all characteristic notifications", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
}

- (void)handleCurrentOrPrimaryHomeChangedNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:@"HMDNotificationCurrentHomeDidChange"];

  if (v6)
  {
    [(HMDWidgetTimelineRefresher *)self handleCurrentHomeChangeNotification:notificationCopy];
  }

  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  currentHomeUUID = [homeManager currentHomeUUID];
  if (currentHomeUUID)
  {
    primaryHomeUUID = currentHomeUUID;
  }

  else
  {
    primaryHomeUUID = [homeManager primaryHomeUUID];
    if (!primaryHomeUUID)
    {
      goto LABEL_13;
    }
  }

  currentHomeUUID2 = [(HMDWidgetTimelineRefresher *)self currentHomeUUID];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      currentHomeUUID3 = [(HMDWidgetTimelineRefresher *)selfCopy currentHomeUUID];

      if (currentHomeUUID3)
      {
        currentHomeUUID4 = [(HMDWidgetTimelineRefresher *)selfCopy currentHomeUUID];
        [currentHomeUUID4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v19 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      [primaryHomeUUID getUUIDBytes:buf];
      v18 = *buf;
      *buf = 138544386;
      *&buf[4] = v15;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v21 = 2096;
      v22 = &v19;
      v23 = 1040;
      v24 = 16;
      v25 = 2096;
      v26 = &v18;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Current home changed from %{uuid_t}.16P to %{uuid_t}.16P, resetting all characteristic notifications", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDWidgetTimelineRefresher *)selfCopy setCurrentHomeUUID:primaryHomeUUID];
    [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredCharacteristicsAndRefreshWidgetTimelines];
  }

LABEL_13:
}

- (BOOL)_value:(id)_value isApproximatelyEqualToValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue
{
  _valueCopy = _value;
  valueCopy = value;
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = minimumValueCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = maximumValueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v14)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_21;
  }

  v19 = _valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (!v21 || !v24)
  {

LABEL_21:
    v32 = [_valueCopy isEqual:valueCopy];
    goto LABEL_22;
  }

  [v21 floatValue];
  v26 = v25;
  [v24 floatValue];
  v28 = vabds_f32(v26, v27);
  [v17 floatValue];
  v30 = v29;
  [v14 floatValue];
  v32 = v28 <= ((v30 - v31) * 0.02);

LABEL_22:
  return v32;
}

- (BOOL)actionSetIsOn:(id)on
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [on actions];
  v24 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v24)
  {
    v23 = *v27;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }

        v7 = v6;

        if (v7)
        {
          characteristic = [v7 characteristic];
          value = [characteristic value];
          v25 = v7;
          targetValue = [v7 targetValue];
          metadata = [characteristic metadata];
          minimumValue = [metadata minimumValue];
          metadata2 = [characteristic metadata];
          maximumValue = [metadata2 maximumValue];
          selfCopy = self;
          v16 = [(HMDWidgetTimelineRefresher *)self _value:value isApproximatelyEqualToValue:targetValue forMinimumValue:minimumValue maximumValue:maximumValue];

          accessory = [characteristic accessory];
          if (!v16 || (-[HMDWidgetTimelineRefresher reachabilityMonitor](selfCopy, "reachabilityMonitor"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isAccessoryReachable:accessory], v18, (v19 & 1) == 0))
          {

            v20 = 0;
            goto LABEL_17;
          }

          self = selfCopy;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (id)thresholdForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  if (!service)
  {
    goto LABEL_16;
  }

  type = [characteristicCopy type];
  if (([type isEqualToString:*MEMORY[0x277CFE628]] & 1) == 0)
  {

    goto LABEL_9;
  }

  type2 = [service type];
  if (([type2 isEqualToString:*MEMORY[0x277CFE8F0]] & 1) == 0)
  {
    type3 = [service type];
    if ([type3 isEqualToString:*MEMORY[0x277CFE900]])
    {

      goto LABEL_6;
    }

    type4 = [service type];
    v14 = [type4 isEqualToString:*MEMORY[0x277CFE860]];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    type5 = [characteristicCopy type];
    if ([type5 isEqualToString:*MEMORY[0x277CFE618]])
    {
      type6 = [service type];
      if ([type6 isEqualToString:*MEMORY[0x277CFE8C0]])
      {
LABEL_13:

LABEL_14:
        v8 = &unk_286629650;
        goto LABEL_17;
      }

      type7 = [service type];
      if ([type7 isEqualToString:*MEMORY[0x277CFE900]])
      {

        goto LABEL_13;
      }

      type8 = [service type];
      v16 = [type8 isEqualToString:*MEMORY[0x277CFE868]];

      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

LABEL_6:

LABEL_7:
  v8 = &unk_28662BE98;
LABEL_17:

  return v8;
}

- (id)actionSetsByHome:(id)home
{
  v22 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = homeCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        home = [v10 home];
        if (home)
        {
          v12 = [strongToStrongObjectsMapTable objectForKey:home];

          if (!v12)
          {
            v13 = [MEMORY[0x277CBEB58] set];
            [strongToStrongObjectsMapTable setObject:v13 forKey:home];
          }

          v14 = [strongToStrongObjectsMapTable objectForKey:home];
          [v14 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = objc_msgSend_copy(strongToStrongObjectsMapTable);

  return v15;
}

- (void)updateReachabilityMonitorWithPreviousAccessories:(id)accessories currentAccessories:(id)currentAccessories completion:(id)completion
{
  completionCopy = completion;
  currentAccessoriesCopy = currentAccessories;
  accessoriesCopy = accessories;
  v13 = [accessoriesCopy na_setByRemovingObjectsFromSet:currentAccessoriesCopy];
  v11 = [currentAccessoriesCopy na_setByRemovingObjectsFromSet:accessoriesCopy];

  reachabilityMonitor = [(HMDWidgetTimelineRefresher *)self reachabilityMonitor];
  [reachabilityMonitor startMonitoringAccessories:v11 stopMonitoring:v13 completionHandler:completionCopy];
}

- (id)accessoriesMonitoredForReachability
{
  characteristicsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  v4 = [characteristicsMonitoredForWidgets na_map:&__block_literal_global_315];

  monitoredCharacteristics = [(HMDWidgetTimelineRefresher *)self monitoredCharacteristics];
  v6 = [monitoredCharacteristics na_map:&__block_literal_global_317_148351];

  v7 = [v4 setByAddingObjectsFromSet:v6];

  return v7;
}

- (id)characteristicsMonitoredForWidgets
{
  if (self)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    monitoredCharacteristicsMapByWidget = [self monitoredCharacteristicsMapByWidget];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke;
    v8[3] = &unk_27972F3D0;
    v8[4] = v2;
    [monitoredCharacteristicsMapByWidget enumerateKeysAndObjectsUsingBlock:v8];

    monitoredActionSetsMapByWidget = [self monitoredActionSetsMapByWidget];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_2;
    v7[3] = &unk_27972F368;
    v7[4] = self;
    v7[5] = v2;
    [monitoredActionSetsMapByWidget enumerateKeysAndObjectsUsingBlock:v7];

    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __65__HMDWidgetTimelineRefresher_accessoriesMonitoredForReachability__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 accessory];

  return v3;
}

void __64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) actionSetsByHome:?];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [v2 objectForKey:*(*(&v10 + 1) + 8 * v6)];
        v8 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v7];
        v9 = [v8 na_map:&__block_literal_global_312];

        [*(a1 + 40) unionSet:v9];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)characteristicsFromActionSets:(void *)sets
{
  if (sets)
  {
    var28[0] = MEMORY[0x277D85DD0];
    var28[1] = 3221225472;
    var28[2] = __60__HMDWidgetTimelineRefresher_characteristicsFromActionSets___block_invoke;
    var28[3] = &unk_27972F438;
    var28[4] = sets;
    sets = [a2 na_flatMap:var28];
    v2 = var28[6];
  }

  return sets;
}

HMDWidgetMonitoredCharacteristic *__64__HMDWidgetTimelineRefresher_characteristicsMonitoredForWidgets__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDWidgetMonitoredCharacteristic alloc] initWithCharacteristic:v2 reachabilityMonitored:0];

  return v3;
}

id __60__HMDWidgetTimelineRefresher_characteristicsFromActionSets___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = [a2 actions];
    v3 = [v2 na_map:&__block_literal_global_321];

    v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __59__HMDWidgetTimelineRefresher_characteristicsFromActionSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 characteristic];

  return v5;
}

- (void)updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:(int64_t)s afterChangesFromBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  characteristicsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  actionSetsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)self actionSetsMonitoredForWidgets];
  accessoriesMonitoredForReachability = [(HMDWidgetTimelineRefresher *)self accessoriesMonitoredForReachability];
  blockCopy[2](blockCopy);
  characteristicsMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)self characteristicsMonitoredForWidgets];
  actionSetsMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)self actionSetsMonitoredForWidgets];
  accessoriesMonitoredForReachability2 = [(HMDWidgetTimelineRefresher *)self accessoriesMonitoredForReachability];
  v23 = characteristicsMonitoredForWidgets;
  v20 = characteristicsMonitoredForWidgets2;
  [(HMDWidgetTimelineRefresher *)self updateNotificationRegistrationWithPreviousCharacteristics:characteristicsMonitoredForWidgets currentCharacteristics:characteristicsMonitoredForWidgets2 updateRequestQualityOfService:s];
  v21 = accessoriesMonitoredForReachability;
  [(HMDWidgetTimelineRefresher *)self updateReachabilityMonitorWithPreviousAccessories:accessoriesMonitoredForReachability currentAccessories:accessoriesMonitoredForReachability2 completion:&__block_literal_global_302];
  v22 = actionSetsMonitoredForWidgets;
  v13 = [actionSetsMonitoredForWidgets na_setByRemovingObjectsFromSet:actionSetsMonitoredForWidgets2];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        cachedIsOnStateByActionSet = [(HMDWidgetTimelineRefresher *)self cachedIsOnStateByActionSet];
        [cachedIsOnStateByActionSet removeObjectForKey:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (id)actionSetsMonitoredForWidgets
{
  if (self)
  {
    monitoredActionSetsMapByWidget = [self monitoredActionSetsMapByWidget];
    v2 = [monitoredActionSetsMapByWidget na_flatMap:&__block_literal_global_324];

    v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateNotificationRegistrationWithPreviousCharacteristics:(void *)characteristics currentCharacteristics:(uint64_t)currentCharacteristics updateRequestQualityOfService:
{
  v129 = *MEMORY[0x277D85DE8];
  v6 = a2;
  characteristicsCopy = characteristics;
  if (self)
  {
    v94 = characteristicsCopy;
    v8 = characteristicsCopy;
    v95 = v6;
    v9 = [v6 na_map:&__block_literal_global_305_148367];
    v97 = v8;
    v10 = [v8 na_map:&__block_literal_global_307_148368];
    v11 = [v9 na_setByRemovingObjectsFromSet:v10];
    v12 = [v10 na_setByRemovingObjectsFromSet:v9];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v112 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v113;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v113 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v112 + 1) + 8 * i);
          clientIdentifierForExplicitlyMonitoredCharacteristics = [self clientIdentifierForExplicitlyMonitoredCharacteristics];
          [v18 registerForAccessoryReachabilityNotifications:0 registrationIdentifier:clientIdentifierForExplicitlyMonitoredCharacteristics];
        }

        v15 = [v13 countByEnumeratingWithState:&v112 objects:buf count:16];
      }

      while (v15);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v108 objects:v124 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v109;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v109 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v108 + 1) + 8 * j);
          clientIdentifierForExplicitlyMonitoredCharacteristics2 = [self clientIdentifierForExplicitlyMonitoredCharacteristics];
          [v25 registerForAccessoryReachabilityNotifications:1 registrationIdentifier:clientIdentifierForExplicitlyMonitoredCharacteristics2];
        }

        v22 = [v20 countByEnumeratingWithState:&v108 objects:v124 count:16];
      }

      while (v22);
    }

    v6 = v95;
    v27 = [v95 na_map:&__block_literal_global_310];
    v28 = [v97 na_map:&__block_literal_global_310];
    v29 = [v27 na_setByRemovingObjectsFromSet:v28];
    v93 = v28;
    v30 = [v28 na_setByRemovingObjectsFromSet:v27];
    if ([v29 count] || objc_msgSend(v30, "count"))
    {
      v91 = v30;
      v92 = v27;
      if ([v29 count])
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v126 = v34;
          v127 = 2112;
          v128 = v29;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications and removing cached value for characteristics: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        clientIdentifierForExplicitlyMonitoredCharacteristics3 = [selfCopy clientIdentifierForExplicitlyMonitoredCharacteristics];
        [(HMDWidgetTimelineRefresher *)selfCopy setNotificationEnabled:v29 forCharacteristics:clientIdentifierForExplicitlyMonitoredCharacteristics3 clientIdentifier:?];

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v36 = v29;
        v37 = v29;
        v38 = [v37 countByEnumeratingWithState:&v104 objects:v117 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v105;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v105 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v104 + 1) + 8 * k);
              cachedValueByCharacteristic = [selfCopy cachedValueByCharacteristic];
              [cachedValueByCharacteristic removeObjectForKey:v42];
            }

            v39 = [v37 countByEnumeratingWithState:&v104 objects:v117 count:16];
          }

          while (v39);
        }

        v29 = v36;
        v30 = v91;
        v27 = v92;
      }

      if ([v30 count])
      {
        v90 = v29;
        v44 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v126 = v47;
          v127 = 2112;
          v128 = v30;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications and storing cached value for characteristics: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v48 = v30;
        v49 = [v48 countByEnumeratingWithState:&v100 objects:v116 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v101;
          do
          {
            for (m = 0; m != v50; ++m)
            {
              if (*v101 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v100 + 1) + 8 * m);
              cachedValueByCharacteristic2 = [selfCopy2 cachedValueByCharacteristic];
              value = [v53 value];
              [cachedValueByCharacteristic2 setObject:value forKey:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v100 objects:v116 count:16];
          }

          while (v50);
        }

        clientIdentifierForExplicitlyMonitoredCharacteristics4 = [selfCopy2 clientIdentifierForExplicitlyMonitoredCharacteristics];
        [(HMDWidgetTimelineRefresher *)selfCopy2 setNotificationEnabled:v48 forCharacteristics:clientIdentifierForExplicitlyMonitoredCharacteristics4 clientIdentifier:?];

        v57 = v48;
        v58 = objc_autoreleasePoolPush();
        v59 = selfCopy2;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543618;
          v126 = v61;
          v127 = 2112;
          v128 = v57;
          _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
        }

        v96 = v59;
        objc_autoreleasePoolPop(v58);
        strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v63 = v57;
        v64 = [v63 countByEnumeratingWithState:&v112 objects:buf count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v113;
          do
          {
            for (n = 0; n != v65; ++n)
            {
              if (*v113 != v66)
              {
                objc_enumerationMutation(v63);
              }

              v68 = *(*(&v112 + 1) + 8 * n);
              accessory = [v68 accessory];
              home = [accessory home];

              if (home)
              {
                v71 = [strongToStrongObjectsMapTable objectForKey:home];
                v72 = v71;
                if (v71)
                {
                  [v71 setByAddingObject:v68];
                }

                else
                {
                  [MEMORY[0x277CBEB98] setWithObject:v68];
                }
                v73 = ;
                [strongToStrongObjectsMapTable setObject:v73 forKey:home];
              }
            }

            v65 = [v63 countByEnumeratingWithState:&v112 objects:buf count:16];
          }

          while (v65);
        }

        v89 = v63;

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v74 = strongToStrongObjectsMapTable;
        v75 = [v74 countByEnumeratingWithState:&v108 objects:v124 count:16];
        v76 = v96;
        if (v75)
        {
          v77 = v75;
          v98 = *v109;
          do
          {
            for (ii = 0; ii != v77; ++ii)
            {
              if (*v109 != v98)
              {
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v108 + 1) + 8 * ii);
              v80 = [v74 objectForKey:v79];
              allObjects = [v80 allObjects];
              v82 = [allObjects na_map:&__block_literal_global_330];

              v83 = objc_autoreleasePoolPush();
              v84 = v76;
              v85 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
              {
                v86 = HMFGetLogIdentifier();
                v87 = [v82 count];
                *v118 = 138543874;
                v119 = v86;
                v120 = 2112;
                v121 = v79;
                v122 = 2048;
                v123 = v87;
                _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_INFO, "%{public}@Reading characteristic for each home: %@, count %lu", v118, 0x20u);

                v76 = v96;
              }

              objc_autoreleasePoolPop(v83);
              v88 = [v84 description];
              [v79 readCharacteristicValues:v82 source:1210 sourceForLogging:v88 qualityOfService:currentCharacteristics withCompletionHandler:0];
            }

            v77 = [v74 countByEnumeratingWithState:&v108 objects:v124 count:16];
          }

          while (v77);
        }

        v6 = v95;
        v30 = v91;
        v27 = v92;
        v29 = v90;
      }
    }

    characteristicsCopy = v94;
  }
}

- (void)setNotificationEnabled:(void *)enabled forCharacteristics:(void *)characteristics clientIdentifier:
{
  v50 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  characteristicsCopy = characteristics;
  v8 = characteristicsCopy;
  selfCopy = self;
  if (self)
  {
    v34 = characteristicsCopy;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = enabledCopy;
    obj = enabledCopy;
    v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          accessory = [v14 accessory];
          if (accessory)
          {
            v16 = [strongToStrongObjectsMapTable objectForKey:accessory];
            v17 = v16;
            if (v16)
            {
              [v16 setByAddingObject:v14];
            }

            else
            {
              [MEMORY[0x277CBEB98] setWithObject:v14];
            }
            v18 = ;
            [strongToStrongObjectsMapTable setObject:v18 forKey:accessory];

            service = [v14 service];
            if (service)
            {
              v20 = a2 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              v21 = [selfCopy thresholdForCharacteristic:v14];
              if (v21)
              {
                array = [strongToStrongObjectsMapTable2 objectForKey:accessory];
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                  [strongToStrongObjectsMapTable2 setObject:array forKey:accessory];
                }

                v23 = [[HMDCharacteristicNotificationChangeThreshold alloc] initWithCharacteristic:v14 threshold:v21];
                [array addObject:v23];
              }
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = strongToStrongObjectsMapTable;
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    v8 = v34;
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v40 + 1) + 8 * j);
          v30 = [v24 objectForKey:v29];
          v31 = [strongToStrongObjectsMapTable2 objectForKey:v29];
          v32 = objc_msgSend_copy(v31);

          allObjects = [v30 allObjects];
          [v29 setNotificationsEnabled:a2 forCharacteristics:allObjects notificationChangeThresholds:v32 clientIdentifier:v34];
        }

        v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v26);
    }

    enabledCopy = v35;
  }
}

id __101__HMDWidgetTimelineRefresher_updateMonitoredHomesWithPreviousCharacteristics_currentCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reachabilityMonitored])
  {
    v3 = [v2 characteristic];
    v4 = [v3 accessory];
    v5 = [v4 home];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __101__HMDWidgetTimelineRefresher_updateMonitoredHomesWithPreviousCharacteristics_currentCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reachabilityMonitored])
  {
    v3 = [v2 characteristic];
    v4 = [v3 accessory];
    v5 = [v4 home];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleSelectedHomeChangedNotification
{
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling selected home changed notification. Refreshing timeline for configured widgets", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDWidgetTimelineRefresher *)selfCopy refreshTimelineForConfiguredWidgetsWithReason:?];
}

- (void)refreshTimelineForConfiguredWidgetsWithReason:(void *)reason
{
  v3 = a2;
  if (reason)
  {
    widgetConfigurationReader = [reason widgetConfigurationReader];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke;
    v5[3] = &unk_279734D18;
    v5[4] = reason;
    v6 = v3;
    [widgetConfigurationReader fetchHomeWidgetsWithCompletion:v5];
  }
}

void __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke_2;
  v12[3] = &unk_279734870;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __76__HMDWidgetTimelineRefresher_refreshTimelineForConfiguredWidgetsWithReason___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [v2 na_map:&__block_literal_global_334_148376];
    v10 = [v3 setWithArray:v4];

    [(HMDWidgetTimelineRefresher *)*(a1 + 40) refreshTimelineForWidgetKinds:v10 withReason:*(a1 + 56) shouldCoalesce:0];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 48);
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch configured widgets to refresh with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)handleHomeSensingChangedNotification
{
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling home sensing changed notification. Refreshing timeline for configured widgets", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDWidgetTimelineRefresher *)selfCopy refreshTimelineForConfiguredWidgetsWithReason:?];
}

- (void)handleNotifiedXPCClientsOfHomeConfigurationChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HMDWidgetTimelineRefresher_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __92__HMDWidgetTimelineRefresher_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 32) homeManager];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = [v7 generationCounter];
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@. Generation counter: %lu. Refreshing timeline for configured widgets", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
}

- (void)handleCurrentHomeChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDWidgetTimelineRefresher_handleCurrentHomeChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __66__HMDWidgetTimelineRefresher_handleCurrentHomeChangeNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    *buf = 0;
    *&buf[8] = 0;
    v7 = [*(a1 + 40) userInfo];
    v8 = [v7 hmf_UUIDForKey:@"HMDPreviousHomeUUIDKey"];

    if (v8)
    {
      v9 = [*(a1 + 40) userInfo];
      v10 = [v9 hmf_UUIDForKey:@"HMDPreviousHomeUUIDKey"];
      [v10 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v16 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v11 = [*(a1 + 40) userInfo];
    v12 = [v11 hmf_UUIDForKey:@"HMDCurrentHomeUUIDKey"];

    if (v12)
    {
      v13 = [*(a1 + 40) userInfo];
      v14 = [v13 hmf_UUIDForKey:@"HMDCurrentHomeUUIDKey"];
      [v14 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v15 = *buf;
    *buf = 138544642;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    v18 = 1040;
    v19 = 16;
    v20 = 2096;
    v21 = &v16;
    v22 = 1040;
    v23 = 16;
    v24 = 2096;
    v25 = &v15;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@. Previous: %{uuid_t}.16P, Current %{uuid_t}.16P. Refreshing timeline for configured widgets", buf, 0x36u);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForConfiguredWidgetsWithReason:?];
}

- (void)handleAccessoryReachabilityChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(a1 + 40);
        v7 = *(*(&v25 + 1) + 8 * i);
        if (v6)
        {
          v8 = [v6 workQueue];
          dispatch_assert_queue_V2(v8);

          v9 = [MEMORY[0x277CBEB58] set];
          v10 = [v6 monitoredCharacteristicsMapByWidget];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke;
          v29[3] = &unk_27972F368;
          v11 = v7;
          v30 = v11;
          v12 = v9;
          v31 = v12;
          [v10 enumerateKeysAndObjectsUsingBlock:v29];

          v13 = [v6 monitoredActionSetsMapByWidget];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke_2;
          v34 = &unk_27972F2C8;
          v35 = v6;
          v36 = v11;
          v14 = v12;
          v37 = v14;
          [v13 enumerateKeysAndObjectsUsingBlock:buf];

          v15 = v37;
          v6 = v14;
        }

        [v2 unionSet:v6];
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling reachability change for relevant widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = *(a1 + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke_278;
    v23[3] = &unk_27972F318;
    v23[4] = v20;
    v23[5] = v2;
    v24 = *(a1 + 32);
    [(HMDWidgetTimelineRefresher *)v20 cleanUpRemovedWidgetsFromWidgets:v2 completion:v23];
  }
}

void __65__HMDWidgetTimelineRefresher_handleAccessoryReachabilityChanged___block_invoke_278(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  [a1[5] minusSet:v3];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [a1[6] count];
    v10 = a1[5];
    v18 = 138543874;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline due to %ld accessory reachability changes for configured widgets: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [a1[5] na_map:&__block_literal_global_281];
  if ([v11 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v11 allObjects];
      v17 = [v16 componentsJoinedByString:{@", "}];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling reachability changed. Refreshing timeline for widget kinds: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDWidgetTimelineRefresher *)a1[4] refreshTimelineForWidgetKinds:v11 withReason:@"Accessory Reachability Changed" shouldCoalesce:0];
  }
}

- (void)cleanUpRemovedWidgetsFromWidgets:(void *)widgets completion:
{
  v5 = a2;
  widgetsCopy = widgets;
  if (self)
  {
    widgetConfigurationReader = [self widgetConfigurationReader];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke;
    v8[3] = &unk_2797349D8;
    v8[4] = self;
    v10 = widgetsCopy;
    v9 = v5;
    [widgetConfigurationReader fetchHomeWidgetsWithCompletion:v8];
  }
}

void __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke_2;
  block[3] = &unk_279734668;
  v8 = a1[4];
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v16 = a1[6];
  v15 = a1[5];
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __74__HMDWidgetTimelineRefresher_cleanUpRemovedWidgetsFromWidgets_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = [MEMORY[0x277CBEB98] setWithArray:?];
    v4 = [v2 na_setByRemovingObjectsFromSet:v3];

    v5 = *(a1 + 40);
    v18 = v4;
    if (v5)
    {
      v6 = [v5 workQueue];
      dispatch_assert_queue_V2(v6);

      if ([v18 count])
      {
        v7 = objc_autoreleasePoolPush();
        v8 = v5;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing old widgets and updating monitored characteristics and action sets: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __51__HMDWidgetTimelineRefresher_handleRemovedWidgets___block_invoke;
        v20 = &unk_2797359B0;
        v21 = v8;
        v22 = v18;
        [v8 updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:33 afterChangesFromBlock:buf];
      }
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 48);
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch configured widgets with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 64);
    v17 = [MEMORY[0x277CBEB98] set];
    (*(v16 + 16))(v16, v17);
  }
}

void __51__HMDWidgetTimelineRefresher_handleRemovedWidgets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  v5 = [*(a1 + 40) allObjects];
  v3 = [*(a1 + 32) monitoredCharacteristicsMapByWidget];
  [v3 removeObjectsForKeys:v5];

  v4 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  [v4 removeObjectsForKeys:v5];
}

void __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) characteristic];
        v12 = [v11 accessory];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {
          [*(a1 + 40) addObject:v5];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __58__HMDWidgetTimelineRefresher_relevantWidgetsForAccessory___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) actionSetsByHome:a3];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v28 = 0u;
  v20 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v7 = *v26;
    v18 = *v26;
    v19 = v5;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [v6 objectForKey:*(*(&v25 + 1) + 8 * i)];
        v10 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v9];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v21 + 1) + 8 * j) accessory];
              v17 = [v16 isEqual:*(a1 + 40)];

              if (v17)
              {
                v5 = v19;
                [*(a1 + 48) addObject:v19];

                goto LABEL_18;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v18;
      }

      v5 = v19;
      v20 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

LABEL_18:
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [(HMDWidgetTimelineRefresher *)self modifiedCharacteristicsFromNotification:notificationCopy];
  if ([v5 count])
  {
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    block[5] = v5;
    v13 = notificationCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      userInfo = [notificationCopy userInfo];
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = userInfo;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Characteristics changed notification does not include modified characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v2 workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [v2 monitoredCharacteristicsMapByWidget];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke;
    v36 = &unk_27972F340;
    v37 = v2;
    v8 = v3;
    v38 = v8;
    v9 = v5;
    v39 = v9;
    v10 = v6;
    v40 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:buf];

    v11 = [v2 monitoredActionSetsMapByWidget];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke_2;
    v31[3] = &unk_27972F340;
    v31[4] = v2;
    v32 = v8;
    v12 = v9;
    v33 = v12;
    v34 = v10;
    v13 = v10;
    [v11 enumerateKeysAndObjectsUsingBlock:v31];

    v14 = v13;
    v15 = v34;
    v2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  v17 = [v2 count];
  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic change for relevant widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = *(a1 + 32);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_269;
    v26[3] = &unk_27972F2F0;
    v26[4] = v23;
    v27 = v16;
    v28 = v2;
    v24 = *(a1 + 48);
    v29 = *(a1 + 40);
    v30 = v24;
    [(HMDWidgetTimelineRefresher *)v23 cleanUpRemovedWidgetsFromWidgets:v2 completion:v26];
  }

  else
  {
    if (v21)
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Not handling characteristics changed notification because it is not relevant for current widgets", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_269(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CBEB58] set];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_2;
  v23[3] = &unk_279733D48;
  v6 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v7 = [v6 na_filter:v23];
  if ([v7 count])
  {
    v8 = [*(a1 + 32) monitoredCharacteristicsMapByWidget];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_3;
    v22[3] = &unk_27972F2C8;
    v22[4] = *(a1 + 32);
    v22[5] = v7;
    v22[6] = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v22];
  }

  v9 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_4;
  v21[3] = &unk_27972F2C8;
  v10 = *(a1 + 32);
  v21[4] = *(a1 + 48);
  v21[5] = v10;
  v21[6] = v5;
  [v9 enumerateKeysAndObjectsUsingBlock:v21];

  v11 = [v5 count];
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 64) name];
      *buf = 138544130;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling %{public}@ and refreshing timeline. Updated characteristics: %@, for widgets: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v18 = [v5 na_map:&__block_literal_global_274];
    [(HMDWidgetTimelineRefresher *)*(a1 + 32) refreshTimelineForWidgetKinds:v18 withReason:@"Characteristics changed" shouldCoalesce:0];
  }

  else
  {
    if (v15)
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 56);
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@No widgets need to be refreshed from this characteristics changed notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

uint64_t __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [*(a1 + 32) cachedValueByCharacteristic];
  v6 = [v5 objectForKey:v3];

  v7 = [*(a1 + 32) cachedValueByCharacteristic];
  v8 = v7;
  if (v4)
  {
    [v7 setObject:v4 forKey:v3];
  }

  else
  {
    [v7 removeObjectForKey:v3];
  }

  v9 = HMFEqualObjects();
  return v9 ^ 1u;
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsForMonitoredCharacteristics:a3];
  v6 = [v5 na_setByIntersectingWithSet:*(a1 + 40)];
  v7 = [v6 count];

  if (v7)
  {
    [*(a1 + 48) addObject:v8];
  }
}

void __80__HMDWidgetTimelineRefresher_handleAccessoryCharacteristicsChangedNotification___block_invoke_4(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([a1[4] containsObject:v7])
  {
    v20 = a4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [a1[5] cachedIsOnStateByActionSet];
          v16 = [v15 objectForKey:v14];

          v17 = [a1[5] actionSetIsOn:v14];
          if (!v16 || v17 != [v16 BOOLValue])
          {
            v18 = [a1[5] cachedIsOnStateByActionSet];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
            [v18 setObject:v19 forKey:v14];

            [a1[6] addObject:v7];
            *v20 = 1;

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (id)characteristicsForMonitoredCharacteristics:(void *)characteristics
{
  if (characteristics)
  {
    characteristics = [a2 na_map:&__block_literal_global_310];
    v2 = vars8;
  }

  return characteristics;
}

void __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsForMonitoredCharacteristics:a3];
  v6 = [v5 na_setByIntersectingWithSet:*(a1 + 40)];

  if ([v6 count])
  {
    [*(a1 + 48) addObject:v7];
    [*(a1 + 56) unionSet:v6];
  }
}

void __91__HMDWidgetTimelineRefresher_relevantWidgetsForCharacteristics_outRelevantCharacteristics___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) actionSetsByHome:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        v12 = [(HMDWidgetTimelineRefresher *)*(a1 + 32) characteristicsFromActionSets:v11];
        v13 = [v12 na_setByIntersectingWithSet:*(a1 + 40)];
        if (![v13 count])
        {

          goto LABEL_11;
        }

        [*(a1 + 48) addObject:v5];
        [*(a1 + 56) unionSet:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)modifiedCharacteristicsFromNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 hmf_arrayForKey:@"HMDModifiedPreviouslyNilValuedCharacteristicsKey"];

  if ([v5 count] || objc_msgSend(v7, "count"))
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v5, "count")}];
    if ([v5 count])
    {
      [v8 addObjectsFromArray:v5];
    }

    if ([v7 count])
    {
      [v8 addObjectsFromArray:v7];
    }

    v9 = objc_msgSend_copy(v8);
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

- (void)_removePendingRequestValueForUUID:(id)d messageIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  pendingRequestValueByUUID = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  v8 = [pendingRequestValueByUUID objectForKey:dCopy];

  v9 = [v8 objectForKey:identifierCopy];

  if (v9)
  {
    pendingRequestValueByUUID2 = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
    [pendingRequestValueByUUID2 removeObjectForKey:dCopy];
  }
}

- (void)_setPendingRequestValue:(id)value forUUID:(id)d messageIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15[0] = value;
  v8 = MEMORY[0x277CBEAC0];
  identifierCopy2 = identifier;
  dCopy = d;
  valueCopy = value;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:&identifierCopy count:1];

  pendingRequestValueByUUID = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  [pendingRequestValueByUUID setObject:v12 forKey:dCopy];
}

- (id)_getPendingWriteValueForUUID:(id)d
{
  dCopy = d;
  pendingRequestValueByUUID = [(HMDWidgetTimelineRefresher *)self pendingRequestValueByUUID];
  v6 = [pendingRequestValueByUUID objectForKey:dCopy];

  objectEnumerator = [v6 objectEnumerator];
  nextObject = [objectEnumerator nextObject];

  return nextObject;
}

- (id)_firstErrorFromCharacteristicWriteResponsePayload:(id)payload
{
  v76 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (payloadCopy)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v38 = payloadCopy;
    obj = payloadCopy;
    v5 = [obj countByEnumeratingWithState:&v57 objects:v75 count:16];
    if (v5)
    {
      v6 = *v58;
      v7 = *MEMORY[0x277CD2128];
      selfCopy = self;
      v32 = *v58;
      v44 = *MEMORY[0x277CD2128];
      do
      {
        v8 = 0;
        v31 = v5;
        do
        {
          if (*v58 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v57 + 1) + 8 * v8);
          v9 = [obj hmf_dictionaryForKey:v31];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v10 = v9;
          v35 = [v10 countByEnumeratingWithState:&v53 objects:v74 count:16];
          if (v35)
          {
            v11 = *v54;
            v33 = *v54;
            v34 = v8;
            v37 = v10;
            do
            {
              v12 = 0;
              do
              {
                if (*v54 != v11)
                {
                  objc_enumerationMutation(v10);
                }

                v36 = v12;
                v41 = *(*(&v53 + 1) + 8 * v12);
                v13 = [v10 hmf_dictionaryForKey:?];
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v14 = v13;
                v47 = [v14 countByEnumeratingWithState:&v49 objects:v73 count:16];
                if (v47)
                {
                  v15 = *v50;
                  v45 = *v50;
                  v46 = v14;
                  while (2)
                  {
                    for (i = 0; i != v47; ++i)
                    {
                      if (*v50 != v15)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v17 = *(*(&v49 + 1) + 8 * i);
                      v18 = [v14 hmf_dictionaryForKey:v17];
                      v19 = [v18 hmf_dataForKey:v7];
                      if (v19)
                      {
                        v20 = v19;
                        v21 = MEMORY[0x277CCAAC8];
                        v22 = objc_opt_class();
                        v48 = 0;
                        v23 = [v21 unarchivedObjectOfClass:v22 fromData:v20 error:&v48];
                        v24 = v48;
                        if (v24)
                        {
                          v25 = objc_autoreleasePoolPush();
                          selfCopy2 = self;
                          v27 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                          {
                            v28 = HMFGetLogIdentifier();
                            *buf = 138544642;
                            v62 = v28;
                            v63 = 2112;
                            v64 = v24;
                            v65 = 2112;
                            v66 = v40;
                            v67 = 2112;
                            v68 = v41;
                            v69 = 2112;
                            v70 = v17;
                            v71 = 2112;
                            v72 = obj;
                            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error deserializing NSError: %@, for accessoryUUID: %@, serviceID: %@, characteristicID: %@, in payload: %@", buf, 0x3Eu);

                            self = selfCopy;
                          }

                          objc_autoreleasePoolPop(v25);
                          v7 = v44;
                          v15 = v45;
                          v14 = v46;
                        }

                        else
                        {
                          v42 = v23;
                        }

                        if (!v24)
                        {

                          v29 = v42;
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                      }
                    }

                    v47 = [v14 countByEnumeratingWithState:&v49 objects:v73 count:16];
                    if (v47)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v12 = v36 + 1;
                v11 = v33;
                v8 = v34;
                v10 = v37;
              }

              while (v36 + 1 != v35);
              v35 = [v37 countByEnumeratingWithState:&v53 objects:v74 count:16];
            }

            while (v35);
          }

          ++v8;
          v6 = v32;
        }

        while (v8 != v31);
        v5 = [obj countByEnumeratingWithState:&v57 objects:v75 count:16];
        v6 = v32;
        v29 = 0;
      }

      while (v5);
    }

    else
    {
      v29 = 0;
    }

LABEL_35:

    payloadCopy = v38;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)writeCharacteristicsWithWriteValueBySPIClientIdentifier:(id)identifier widgetKind:(id)kind message:(id)message completionGroup:(id)group completion:(id)completion
{
  v109 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  kindCopy = kind;
  messageCopy = message;
  group = group;
  completionCopy = completion;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  homes = [homeManager homes];

  obj = homes;
  v61 = [homes countByEnumeratingWithState:&v83 objects:v101 count:16];
  if (v61)
  {
    v59 = *v84;
    *&v15 = 138544130;
    v54 = v15;
    v65 = messageCopy;
    do
    {
      v16 = 0;
      do
      {
        if (*v84 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v16;
        v17 = *(*(&v83 + 1) + 8 * v16);
        v18 = identifierCopy;
        v19 = v17;
        v63 = v19;
        if (self)
        {
          array = [MEMORY[0x277CBEB18] array];
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          hapAccessories = [v19 hapAccessories];
          v67 = [hapAccessories countByEnumeratingWithState:&v95 objects:buf count:16];
          if (v67)
          {
            v66 = *v96;
            do
            {
              v21 = 0;
              do
              {
                if (*v96 != v66)
                {
                  objc_enumerationMutation(hapAccessories);
                }

                v68 = v21;
                v22 = *(*(&v95 + 1) + 8 * v21);
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                v94 = 0u;
                services = [v22 services];
                v71 = [services countByEnumeratingWithState:&v91 objects:v103 count:16];
                if (v71)
                {
                  v70 = *v92;
                  do
                  {
                    v23 = 0;
                    do
                    {
                      if (*v92 != v70)
                      {
                        objc_enumerationMutation(services);
                      }

                      v72 = v23;
                      v24 = *(*(&v91 + 1) + 8 * v23);
                      v87 = 0u;
                      v88 = 0u;
                      v89 = 0u;
                      v90 = 0u;
                      characteristics = [v24 characteristics];
                      v26 = [characteristics countByEnumeratingWithState:&v87 objects:v102 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v88;
                        do
                        {
                          for (i = 0; i != v27; ++i)
                          {
                            if (*v88 != v28)
                            {
                              objc_enumerationMutation(characteristics);
                            }

                            v30 = *(*(&v87 + 1) + 8 * i);
                            spiClientIdentifier = [v30 spiClientIdentifier];
                            v32 = [v18 objectForKeyedSubscript:spiClientIdentifier];

                            if (v32)
                            {
                              v33 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v30 value:v32 authorizationData:0 type:0];
                              [array addObject:v33];
                            }
                          }

                          v27 = [characteristics countByEnumeratingWithState:&v87 objects:v102 count:16];
                        }

                        while (v27);
                      }

                      v23 = v72 + 1;
                    }

                    while (v72 + 1 != v71);
                    v71 = [services countByEnumeratingWithState:&v91 objects:v103 count:16];
                  }

                  while (v71);
                }

                v21 = v68 + 1;
              }

              while (v68 + 1 != v67);
              v67 = [hapAccessories countByEnumeratingWithState:&v95 objects:buf count:16];
            }

            while (v67);
          }

          messageCopy = v65;
          v19 = v63;
        }

        else
        {
          array = 0;
        }

        if ([array count])
        {
          v34 = objc_autoreleasePoolPush();
          selfCopy = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            identifier = [messageCopy identifier];

            if (identifier)
            {
              identifier2 = [messageCopy identifier];
              [identifier2 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v100 = *buf;
            *buf = v54;
            *&buf[4] = v37;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v105 = 2096;
            v106 = &v100;
            v107 = 2112;
            v108 = array;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Writing characteristics: %@", buf, 0x26u);
          }

          v40 = selfCopy;
          objc_autoreleasePoolPop(v34);
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v73 = array;
          v41 = [v73 countByEnumeratingWithState:&v79 objects:v99 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v80;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v80 != v43)
                {
                  objc_enumerationMutation(v73);
                }

                v45 = *(*(&v79 + 1) + 8 * j);
                value = [v45 value];
                characteristic = [v45 characteristic];
                spiClientIdentifier2 = [characteristic spiClientIdentifier];
                identifier3 = [v65 identifier];
                [(HMDWidgetTimelineRefresher *)v40 _setPendingRequestValue:value forUUID:spiClientIdentifier2 messageIdentifier:identifier3];
              }

              v42 = [v73 countByEnumeratingWithState:&v79 objects:v99 count:16];
            }

            while (v42);
          }

          dispatch_group_enter(group);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke;
          aBlock[3] = &unk_279734780;
          aBlock[4] = v40;
          v50 = v73;
          v75 = v50;
          messageCopy = v65;
          v51 = v65;
          v76 = v51;
          v77 = kindCopy;
          v78 = completionCopy;
          v52 = _Block_copy(aBlock);
          [v63 writeCharacteristicValues:v50 message:v51 withCompletionHandler:v52];
        }

        v16 = v62 + 1;
      }

      while (v62 + 1 != v61);
      v53 = [obj countByEnumeratingWithState:&v83 objects:v101 count:16];
      v61 = v53;
    }

    while (v53);
  }
}

void __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke_2;
  v8[3] = &unk_279734848;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  v11 = a1[6];
  v12 = v3;
  v13 = a1[7];
  v14 = a1[8];
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __132__HMDWidgetTimelineRefresher_writeCharacteristicsWithWriteValueBySPIClientIdentifier_widgetKind_message_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v28 + 1) + 8 * v6) characteristic];
        v9 = [v8 spiClientIdentifier];
        v10 = [*(a1 + 48) identifier];
        [v7 _removePendingRequestValueForUUID:v9 messageIdentifier:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 56);
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v17 = [*(a1 + 48) identifier];

      if (v17)
      {
        v18 = [*(a1 + 48) identifier];
        [v18 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v33 = *buf;
      v22 = *(a1 + 32);
      v23 = *(a1 + 56);
      *buf = 138544386;
      *&buf[4] = v16;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v35 = 2096;
      v36 = &v33;
      v37 = 2112;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to write characteristics: %@, with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v12);
    v24 = *(a1 + 40);
    v25 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
    [(HMDWidgetTimelineRefresher *)v24 refreshTimelineForWidgetKinds:v25 withReason:@"Characteristic Write Request Failed" shouldCoalesce:1];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v20 = [*(a1 + 48) identifier];

      if (v20)
      {
        v21 = [*(a1 + 48) identifier];
        [v21 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v32 = *buf;
      v26 = *(a1 + 32);
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v35 = 2096;
      v36 = &v32;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully wrote characteristics: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }

  return (*(*(a1 + 72) + 16))();
}

- (BOOL)_getRequestsFromMessage:(id)message outCharacteristicWriteValueByUUUIDs:(id *)ds outExecuteActionSetUUUIDs:(id *)iDs outExecuteTurnOffActionSetUUIDs:(id *)uIDs
{
  v95 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (!ds)
  {
    _HMFPreconditionFailure();
    goto LABEL_60;
  }

  if (!iDs)
  {
LABEL_60:
    _HMFPreconditionFailure();
LABEL_61:
    _HMFPreconditionFailure();
  }

  if (!uIDs)
  {
    goto LABEL_61;
  }

  v11 = messageCopy;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  selfCopy = self;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [v11 arrayForKey:*MEMORY[0x277CD1550]];
  v14 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v79;
    v17 = *MEMORY[0x277CD1548];
    v18 = *MEMORY[0x277CD14F0];
    v19 = *MEMORY[0x277CD1510];
    v20 = *MEMORY[0x277CD1518];
    v71 = v11;
    v73 = array;
    v74 = dictionary;
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v79 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v78 + 1) + 8 * v21);
      v77 = 0;
      v23 = [v22 hmf_integerForKey:v17 error:&v77];
      v24 = v77;
      if (v24)
      {
        v37 = v24;
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        v11 = v71;
        dictionary = v74;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier = [v71 identifier];

          if (identifier)
          {
            identifier2 = [v71 identifier];
            [identifier2 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v93 = *buf;
          messagePayload = [v71 messagePayload];
          *buf = 138544130;
          *&buf[4] = v41;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v84 = 2096;
          v85 = &v93;
          v86 = 2112;
          v87 = messagePayload;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] request type is not set in payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v38);
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v71 respondWithError:v25];
LABEL_56:
        v34 = array2;
        goto LABEL_57;
      }

      if (v23 == 2)
      {
        break;
      }

      if (v23 == 1)
      {
        v29 = [v22 hmf_UUIDForKey:v18];
        if (!v29)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = selfCopy;
          v46 = HMFGetOSLogHandle();
          v11 = v71;
          dictionary = v74;
          v34 = array2;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            identifier3 = [v71 identifier];

            if (identifier3)
            {
              identifier4 = [v71 identifier];
              [identifier4 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v91 = *buf;
            messagePayload2 = [v71 messagePayload];
            *buf = 138544130;
            *&buf[4] = v47;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v84 = 2096;
            v85 = &v91;
            v86 = 2112;
            v87 = messagePayload2;
            v62 = "%{public}@[%{uuid_t}.16P] execute request missing UUID: %@";
            goto LABEL_50;
          }

          goto LABEL_52;
        }

        v25 = v29;
        v30 = v73;
LABEL_22:
        [v30 addObject:v25];
        goto LABEL_23;
      }

      if (v23)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = selfCopy;
        v46 = HMFGetOSLogHandle();
        v11 = v71;
        dictionary = v74;
        v34 = array2;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier5 = [v71 identifier];

          if (identifier5)
          {
            identifier6 = [v71 identifier];
            [identifier6 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v82 = *buf;
          messagePayload2 = [v71 messagePayload];
          *buf = 138544386;
          *&buf[4] = v47;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v84 = 2096;
          v85 = &v82;
          v86 = 2048;
          v87 = v23;
          v88 = 2112;
          v89 = messagePayload2;
          v62 = "%{public}@[%{uuid_t}.16P] unknown request type (%ld) in payload: %@";
          v63 = v46;
          v64 = 48;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      v25 = [v22 hmf_UUIDForKey:v19];
      v26 = [v22 objectForKeyedSubscript:v20];
      v27 = v26;
      if (v25)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v54 = objc_autoreleasePoolPush();
        v55 = selfCopy;
        v56 = HMFGetOSLogHandle();
        v11 = v71;
        dictionary = v74;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier7 = [v71 identifier];

          if (identifier7)
          {
            identifier8 = [v71 identifier];
            [identifier8 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v92 = *buf;
          messagePayload3 = [v71 messagePayload];
          *buf = 138544130;
          *&buf[4] = v57;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v84 = 2096;
          v85 = &v92;
          v86 = 2112;
          v87 = messagePayload3;
          _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] characteristic write request missing UUID or write value: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v54);
        v66 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v71 respondWithError:v66];

        v37 = 0;
        goto LABEL_56;
      }

      [v74 setObject:v26 forKeyedSubscript:v25];

LABEL_23:
      if (v15 == ++v21)
      {
        v15 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
        v11 = v71;
        array = v73;
        dictionary = v74;
        if (v15)
        {
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    v31 = [v22 hmf_UUIDForKey:v18];
    if (!v31)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      v11 = v71;
      dictionary = v74;
      v34 = array2;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        identifier9 = [v71 identifier];

        if (identifier9)
        {
          identifier10 = [v71 identifier];
          [identifier10 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v90 = *buf;
        messagePayload2 = [v71 messagePayload];
        *buf = 138544130;
        *&buf[4] = v47;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        v84 = 2096;
        v85 = &v90;
        v86 = 2112;
        v87 = messagePayload2;
        v62 = "%{public}@[%{uuid_t}.16P] execute off request missing UUID: %@";
LABEL_50:
        v63 = v46;
        v64 = 38;
LABEL_51:
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, v62, buf, v64);
      }

LABEL_52:

      objc_autoreleasePoolPop(v44);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v11 respondWithError:v25];
      v37 = 0;
LABEL_57:

      v36 = 0;
      array = v73;
      goto LABEL_58;
    }

    v25 = v31;
    v30 = array2;
    goto LABEL_22;
  }

LABEL_25:

  v32 = dictionary;
  *dsCopy = dictionary;
  v33 = array;
  *iDsCopy = array;
  v34 = array2;
  v35 = array2;
  *uIDsCopy = array2;
  v36 = 1;
LABEL_58:

  return v36;
}

- (id)reachabilityByAccessorySPIClientIdentifierForCharacteristics:(id)characteristics
{
  v41 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v4 = [characteristicsCopy na_map:&__block_literal_global_239_148440];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v27)
  {
    v6 = *v29;
    v24 = *v29;
    selfCopy = self;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        reachabilityMonitor = [(HMDWidgetTimelineRefresher *)self reachabilityMonitor];
        v10 = [reachabilityMonitor isAccessoryReachable:v8];

        v11 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = dictionary;
          v15 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          spiClientIdentifier = [v8 spiClientIdentifier];

          if (spiClientIdentifier)
          {
            spiClientIdentifier2 = [v8 spiClientIdentifier];
            [spiClientIdentifier2 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v32 = *buf;
          name = [v8 name];
          v19 = HMFBooleanToString();
          *buf = 138544386;
          *&buf[4] = v15;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v34 = 2096;
          v35 = &v32;
          v36 = 2112;
          v37 = name;
          v38 = 2112;
          v39 = v19;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Accessory spiClientIdentifier %{uuid_t}.16P, Name: %@, isRemotelyReachable: %@", buf, 0x30u);

          dictionary = v14;
          v6 = v24;
          self = selfCopy;
        }

        objc_autoreleasePoolPop(v11);
        v20 = [MEMORY[0x277CCABB0] numberWithBool:v10];
        spiClientIdentifier3 = [v8 spiClientIdentifier];
        [dictionary setObject:v20 forKeyedSubscript:spiClientIdentifier3];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v27);
  }

  return dictionary;
}

- (id)valueByCharacteristicSPIClientIdentifierForCharacteristics:(id)characteristics
{
  v53 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = characteristicsCopy;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v52 count:16];
  if (v33)
  {
    v7 = *v35;
    *&v6 = 138545154;
    v24 = v6;
    selfCopy = self;
    v27 = dictionary;
    v25 = *v35;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        spiClientIdentifier = [v9 spiClientIdentifier];
        v11 = [(HMDWidgetTimelineRefresher *)self _getPendingWriteValueForUUID:spiClientIdentifier];

        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v32 = v12;
          v31 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          spiClientIdentifier2 = [v9 spiClientIdentifier];

          if (spiClientIdentifier2)
          {
            spiClientIdentifier3 = [v9 spiClientIdentifier];
            [spiClientIdentifier3 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v38 = *buf;
          instanceID = [v9 instanceID];
          type = [v9 type];
          v18 = HAPShortUUIDType();
          characteristicTypeDescription = [v9 characteristicTypeDescription];
          value = [v9 value];
          *buf = v24;
          *&buf[4] = v31;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v40 = 2096;
          v41 = &v38;
          v42 = 2112;
          v43 = instanceID;
          v44 = 2112;
          v45 = v18;
          v46 = 2112;
          v47 = characteristicTypeDescription;
          v48 = 2112;
          v49 = value;
          v50 = 2112;
          v51 = v11;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic spiClientIdentifier: %{uuid_t}.16P, IID: %@, Type/Desc: %@/%@, value: %@, pendingWriteValue: %@", buf, 0x4Eu);

          self = selfCopy;
          dictionary = v27;
          v7 = v25;
          v12 = v32;
        }

        objc_autoreleasePoolPop(v12);
        value2 = v11;
        if (!v11)
        {
          value2 = [v9 value];
          v29 = value2;
        }

        spiClientIdentifier4 = [v9 spiClientIdentifier];
        [dictionary setObject:value2 forKeyedSubscript:spiClientIdentifier4];

        if (!v11)
        {
        }
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v52 count:16];
    }

    while (v33);
  }

  return dictionary;
}

- (void)handleFetchStateForActionSets:(id)sets
{
  v40 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v5 = [setsCopy arrayForKey:*MEMORY[0x277CD14F8]];
  if (v5)
  {
    v6 = [(HMDWidgetTimelineRefresher *)self actionSetsFromSPIClientIdentifiers:v5];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier = [setsCopy identifier];

      if (identifier)
      {
        identifier2 = [setsCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v38 = *buf;
      *buf = 138544130;
      *&buf[4] = v10;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v38;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to fetch action sets for: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDWidgetTimelineRefresher *)selfCopy updateCachedIsOnStateForActionSets:v6];
    v36[0] = *MEMORY[0x277CD1508];
    v19 = [(HMDWidgetTimelineRefresher *)selfCopy cachedIsOnStateBySPIClientIdentifierForActionSets:v6];
    v37[0] = v19;
    v36[1] = *MEMORY[0x277CD1500];
    v20 = [(HMDWidgetTimelineRefresher *)selfCopy didExecuteFailBySPIClientIdentifierForActionSets:v6];
    v37[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      name = [setsCopy name];
      *buf = 0;
      *&buf[8] = 0;
      identifier3 = [setsCopy identifier];

      if (identifier3)
      {
        identifier4 = [setsCopy identifier];
        [identifier4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v30 = *buf;
      *buf = 138544386;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = name;
      *&buf[22] = 1040;
      *&buf[24] = 16;
      v32 = 2096;
      v33 = &v30;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v22);
    [setsCopy respondWithPayload:v21];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier5 = [setsCopy identifier];

      if (identifier5)
      {
        identifier6 = [setsCopy identifier];
        [identifier6 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v39 = *buf;
      messagePayload = [setsCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v16;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v39;
      v32 = 2112;
      v33 = messagePayload;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find action set UUIDs in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v13);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [setsCopy respondWithError:v6];
  }
}

- (id)actionSetsFromSPIClientIdentifiers:(void *)identifiers
{
  v3 = a2;
  if (identifiers)
  {
    homeManager = [identifiers homeManager];
    homes = [homeManager homes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke;
    v8[3] = &unk_27972F2A0;
    v9 = v3;
    v6 = [homes na_flatMap:v8];

    identifiers = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  return identifiers;
}

- (void)updateCachedIsOnStateForActionSets:(void *)sets
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (sets)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          cachedIsOnStateByActionSet = [sets cachedIsOnStateByActionSet];
          v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sets, "actionSetIsOn:", v9)}];
          [cachedIsOnStateByActionSet setObject:v11 forKey:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (id)cachedIsOnStateBySPIClientIdentifierForActionSets:(void *)sets
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = v3;
  if (sets)
  {
    v4 = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v4;
    v27 = [obj countByEnumeratingWithState:&v28 objects:v45 count:16];
    if (v27)
    {
      v26 = *v29;
      v24 = dictionary;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v28 + 1) + 8 * i);
          uuid = [v7 uuid];
          v9 = [sets _getPendingWriteValueForUUID:uuid];

          cachedIsOnStateByActionSet = [sets cachedIsOnStateByActionSet];
          v11 = [cachedIsOnStateByActionSet objectForKey:v7];

          v12 = objc_autoreleasePoolPush();
          setsCopy = sets;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            spiClientIdentifier = [v7 spiClientIdentifier];

            if (spiClientIdentifier)
            {
              spiClientIdentifier2 = [v7 spiClientIdentifier];
              [spiClientIdentifier2 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v33 = *buf;
            *buf = 0;
            *&buf[8] = 0;
            uuid2 = [v7 uuid];

            if (uuid2)
            {
              uuid3 = [v7 uuid];
              [uuid3 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v32 = *buf;
            *buf = 138544898;
            *&buf[4] = v15;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v35 = 2096;
            v36 = &v33;
            v37 = 1040;
            v38 = 16;
            v39 = 2096;
            v40 = &v32;
            v41 = 2112;
            v42 = v9;
            v43 = 2112;
            v44 = v11;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Action Set spiClientIdentifier: %{uuid_t}.16P, UUID: %{uuid_t}.16P, pendingState: %@, cachedState: %@", buf, 0x40u);

            dictionary = v24;
          }

          objc_autoreleasePoolPop(v12);
          if (v9)
          {
            v20 = v9;
          }

          else
          {
            v20 = v11;
          }

          spiClientIdentifier3 = [v7 spiClientIdentifier];
          [dictionary setObject:v20 forKeyedSubscript:spiClientIdentifier3];
        }

        v27 = [obj countByEnumeratingWithState:&v28 objects:v45 count:16];
      }

      while (v27);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)didExecuteFailBySPIClientIdentifierForActionSets:(void *)sets
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = v3;
  if (sets)
  {
    v4 = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          cachedActionSetExecuteErrorByUUID = [sets cachedActionSetExecuteErrorByUUID];
          uuid = [v11 uuid];
          v14 = [cachedActionSetExecuteErrorByUUID objectForKeyedSubscript:uuid];

          if (v14)
          {
            spiClientIdentifier = [v11 spiClientIdentifier];
            [dictionary setObject:&unk_286629620 forKeyedSubscript:spiClientIdentifier];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

id __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSets];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke_2;
  v6[3] = &unk_27972F278;
  v7 = *(a1 + 32);
  v4 = [v3 na_filter:v6];

  return v4;
}

uint64_t __65__HMDWidgetTimelineRefresher_actionSetsFromSPIClientIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 spiClientIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)handleMonitorActionSetsForWidget:(id)widget
{
  v63 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v5 = [widgetCopy stringForKey:*MEMORY[0x277CD1558]];
  if (v5)
  {
    v6 = [widgetCopy stringForKey:*MEMORY[0x277CD1560]];
    if (v6)
    {
      v7 = [widgetCopy arrayForKey:*MEMORY[0x277CD14F8]];
      if (v7)
      {
        v8 = [[HMDWidget alloc] initWithIdentifier:v5 kind:v6];
        v9 = [(HMDWidgetTimelineRefresher *)self actionSetsFromSPIClientIdentifiers:v7];
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v51 = v9;
          v13 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier = [widgetCopy identifier];

          if (identifier)
          {
            identifier2 = [widgetCopy identifier];
            [identifier2 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v56 = *buf;
          *buf = 138544130;
          *&buf[4] = v13;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v56;
          *&buf[28] = 2112;
          *&buf[30] = v8;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to update action sets for widget: %@", buf, 0x26u);

          v9 = v51;
        }

        objc_autoreleasePoolPop(v10);
        [widgetCopy qualityOfService];
        v35 = v9;
        v36 = v8;
        if (selfCopy)
        {
          workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
          dispatch_assert_queue_V2(workQueue);

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __96__HMDWidgetTimelineRefresher_updateMonitoredActionSets_forWidget_updateRequestQualityOfService___block_invoke;
          *&buf[24] = &unk_279734960;
          *&buf[32] = selfCopy;
          v61 = v35;
          v62 = v36;
          [(HMDWidgetTimelineRefresher *)selfCopy updateMonitoredScenesAccessoriesAndCharacteristicsWithQOS:33 afterChangesFromBlock:buf];
        }

        [(HMDWidgetTimelineRefresher *)selfCopy updateCachedIsOnStateForActionSets:v35];
        v54[0] = *MEMORY[0x277CD1508];
        v38 = [(HMDWidgetTimelineRefresher *)selfCopy cachedIsOnStateBySPIClientIdentifierForActionSets:v35];
        v55[0] = v38;
        v54[1] = *MEMORY[0x277CD1500];
        v39 = [(HMDWidgetTimelineRefresher *)selfCopy didExecuteFailBySPIClientIdentifierForActionSets:v35];
        v55[1] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

        v41 = objc_autoreleasePoolPush();
        v42 = selfCopy;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v50 = v41;
          v52 = v7;
          v49 = HMFGetLogIdentifier();
          name = [widgetCopy name];
          *buf = 0;
          *&buf[8] = 0;
          identifier3 = [widgetCopy identifier];

          if (identifier3)
          {
            identifier4 = [widgetCopy identifier];
            [identifier4 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v53 = *buf;
          *buf = 138544386;
          *&buf[4] = v49;
          *&buf[12] = 2112;
          *&buf[14] = name;
          *&buf[22] = 1040;
          *&buf[24] = 16;
          *&buf[28] = 2096;
          *&buf[30] = &v53;
          *&buf[38] = 2112;
          v61 = v40;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);

          v41 = v50;
          v7 = v52;
        }

        objc_autoreleasePoolPop(v41);
        [widgetCopy respondWithPayload:v40];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier5 = [widgetCopy identifier];

          if (identifier5)
          {
            identifier6 = [widgetCopy identifier];
            [identifier6 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v57 = *buf;
          messagePayload = [widgetCopy messagePayload];
          *buf = 138544130;
          *&buf[4] = v31;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v57;
          *&buf[28] = 2112;
          *&buf[30] = messagePayload;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find action set UUIDs in message payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v28);
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [widgetCopy respondWithError:v36];
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        identifier7 = [widgetCopy identifier];

        if (identifier7)
        {
          identifier8 = [widgetCopy identifier];
          [identifier8 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v58 = *buf;
        messagePayload2 = [widgetCopy messagePayload];
        *buf = 138544130;
        *&buf[4] = v25;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v58;
        *&buf[28] = 2112;
        *&buf[30] = messagePayload2;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v22);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [widgetCopy respondWithError:v7];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier9 = [widgetCopy identifier];

      if (identifier9)
      {
        identifier10 = [widgetCopy identifier];
        [identifier10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v59 = *buf;
      messagePayload3 = [widgetCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v59;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload3;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v16);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [widgetCopy respondWithError:v6];
  }
}

void __96__HMDWidgetTimelineRefresher_updateMonitoredActionSets_forWidget_updateRequestQualityOfService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = [*(a1 + 32) monitoredActionSetsMapByWidget];
  [v3 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)handlePerformRequests:(id)requests
{
  v175 = *MEMORY[0x277D85DE8];
  v137 = 0;
  v138 = 0;
  v136 = 0;
  requestsCopy = requests;
  v4 = [HMDWidgetTimelineRefresher _getRequestsFromMessage:"_getRequestsFromMessage:outCharacteristicWriteValueByUUUIDs:outExecuteActionSetUUUIDs:outExecuteTurnOffActionSetUUIDs:" outCharacteristicWriteValueByUUUIDs:? outExecuteActionSetUUUIDs:? outExecuteTurnOffActionSetUUIDs:?];
  v100 = 0;
  v101 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_110;
  }

  v98 = v5;
  v99 = [requestsCopy stringForKey:*MEMORY[0x277CD1560]];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (!v99)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *&buf[8] = 0;
      *buf = 0;
      identifier = [requestsCopy identifier];

      if (identifier)
      {
        identifier2 = [requestsCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v145 = *buf;
      messagePayload = [requestsCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v169 = 2096;
      v170 = &v145;
      v171 = 2112;
      v172 = messagePayload;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
    v105 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestsCopy respondWithError:v105];
    goto LABEL_109;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *&buf[8] = 0;
    *buf = 0;
    identifier3 = [requestsCopy identifier];

    if (identifier3)
    {
      identifier4 = [requestsCopy identifier];
      [identifier4 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v144 = *buf;
    *buf = 138544130;
    *&buf[4] = v9;
    *&buf[12] = 1040;
    *&buf[14] = 16;
    v169 = 2096;
    v170 = &v144;
    v171 = 2112;
    v172 = v99;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to perform requests for kind: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v6);
  v15 = dispatch_group_create();
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x3032000000;
  v134[3] = __Block_byref_object_copy__148459;
  v134[4] = __Block_byref_object_dispose__148460;
  v135 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x2020000000;
  v133 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke;
  aBlock[3] = &unk_27972F230;
  v16 = v15;
  v129 = v16;
  v130 = v134;
  v131 = v132;
  v17 = _Block_copy(aBlock);
  v18 = selfCopy;
  [(HMDWidgetTimelineRefresher *)selfCopy writeCharacteristicsWithWriteValueBySPIClientIdentifier:v100 widgetKind:v99 message:requestsCopy completionGroup:v16 completion:v17];
  v110 = v101;
  v116 = v99;
  v19 = requestsCopy;
  group = v16;
  v114 = v17;
  if (selfCopy)
  {
    v108 = [(HMDWidgetTimelineRefresher *)selfCopy actionSetsFromSPIClientIdentifiers:v110];
    if ([v108 count])
    {
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      obj = v108;
      v20 = [obj countByEnumeratingWithState:&v139 objects:buf count:16];
      if (v20)
      {
        v122 = *v140;
        v21 = *MEMORY[0x277CCF1A0];
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v140 != v122)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v139 + 1) + 8 * i);
            type = [v23 type];
            v25 = [type isEqualToString:v21];

            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy;
            v28 = HMFGetOSLogHandle();
            v29 = v28;
            if (v25)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v30 = HMFGetLogIdentifier();
                *v173 = 0;
                *&v173[8] = 0;
                identifier5 = [v19 identifier];

                if (identifier5)
                {
                  identifier6 = [v19 identifier];
                  [identifier6 getUUIDBytes:v173];
                }

                else
                {
                  *v173 = *MEMORY[0x277D0F960];
                }

                v160 = *v173;
                *v173 = 138544130;
                *&v173[4] = v30;
                *&v173[12] = 1040;
                *&v173[14] = 16;
                *&v173[18] = 2096;
                *&v173[20] = &v160;
                *&v173[28] = 2112;
                *&v173[30] = v23;
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] We can't execute trigger-owned action set: %@", v173, 0x26u);
              }

              objc_autoreleasePoolPop(v26);
            }

            else
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                *v173 = 0;
                *&v173[8] = 0;
                identifier7 = [v19 identifier];

                if (identifier7)
                {
                  identifier8 = [v19 identifier];
                  [identifier8 getUUIDBytes:v173];
                }

                else
                {
                  *v173 = *MEMORY[0x277D0F960];
                }

                v146 = *v173;
                *v173 = 138544130;
                *&v173[4] = v33;
                *&v173[12] = 1040;
                *&v173[14] = 16;
                *&v173[18] = 2096;
                *&v173[20] = &v146;
                *&v173[28] = 2112;
                *&v173[30] = v23;
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Executing action set: %@", v173, 0x26u);
              }

              objc_autoreleasePoolPop(v26);
              uuid = [v23 uuid];
              identifier9 = [v19 identifier];
              [(HMDWidgetTimelineRefresher *)v27 _setPendingRequestValue:&unk_286629620 forUUID:uuid messageIdentifier:identifier9];

              [(HMDWidgetTimelineRefresher *)v27 _clearCachedErrorForActionSet:v23];
              dispatch_group_enter(group);
              v38 = [v19 mutableCopy];
              v156[0] = MEMORY[0x277D85DD0];
              v156[1] = 3221225472;
              v156[2] = __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke;
              v156[3] = &unk_279734780;
              v156[4] = v27;
              v156[5] = v23;
              v157 = v19;
              v158 = v116;
              v159 = v114;
              [v38 setResponseHandler:v156];
              [v23 execute:v38];
            }
          }

          v20 = [obj countByEnumeratingWithState:&v139 objects:buf count:16];
        }

        while (v20);
      }
    }

    v18 = selfCopy;
  }

  v97 = v98;
  v103 = v116;
  v111 = v19;
  v105 = group;
  v104 = v114;
  if (!v18)
  {
    goto LABEL_105;
  }

  v96 = [(HMDWidgetTimelineRefresher *)selfCopy actionSetsFromSPIClientIdentifiers:v97];
  if (![v96 count])
  {
    goto LABEL_104;
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v106 = v96;
  v112 = [v106 countByEnumeratingWithState:&v160 objects:v156 count:16];
  if (!v112)
  {
    goto LABEL_103;
  }

  v107 = *MEMORY[0x277CCF1A0];
  v109 = *v161;
  v123 = *MEMORY[0x277CFE698];
  obja = *MEMORY[0x277CFE5B0];
  do
  {
    for (j = 0; j != v112; ++j)
    {
      if (*v161 != v109)
      {
        objc_enumerationMutation(v106);
      }

      v39 = *(*(&v160 + 1) + 8 * j);
      type2 = [v39 type];
      v41 = [type2 isEqualToString:v107];

      if (v41)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = selfCopy;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          identifier10 = [v111 identifier];

          if (identifier10)
          {
            identifier11 = [v111 identifier];
            [identifier11 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v155 = *buf;
          *buf = 138544130;
          *&buf[4] = v45;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v169 = 2096;
          v170 = &v155;
          v171 = 2112;
          v172 = v39;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] We can't execute trigger-owned action set: %@", buf, 0x26u);
        }

LABEL_80:

        objc_autoreleasePoolPop(v42);
        continue;
      }

      if (![(HMDWidgetTimelineRefresher *)selfCopy actionSetIsOn:v39])
      {
        v42 = objc_autoreleasePoolPush();
        v43 = selfCopy;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v76 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          identifier12 = [v111 identifier];

          if (identifier12)
          {
            identifier13 = [v111 identifier];
            [identifier13 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v154 = *buf;
          *buf = 138544130;
          *&buf[4] = v76;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v169 = 2096;
          v170 = &v154;
          v171 = 2112;
          v172 = v39;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Action set cannot be turned off because it's not active: %@", buf, 0x26u);
        }

        goto LABEL_80;
      }

      v113 = v39;
      groupa = [MEMORY[0x277CBEB18] array];
      v174 = 0u;
      memset(v173, 0, sizeof(v173));
      actions = [v113 actions];
      v49 = [actions countByEnumeratingWithState:v173 objects:buf count:16];
      if (!v49)
      {
        goto LABEL_70;
      }

      v50 = **&v173[16];
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (**&v173[16] != v50)
          {
            objc_enumerationMutation(actions);
          }

          v52 = *(*&v173[8] + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          v54 = v53;

          if (v54)
          {
            characteristic = [v54 characteristic];
            type3 = [characteristic type];
            if ([type3 isEqual:v123])
            {

LABEL_59:
              targetValue = [v54 targetValue];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = targetValue;
              }

              else
              {
                v60 = 0;
              }

              v61 = v60;

              bOOLValue = [v61 BOOLValue];
              if (bOOLValue)
              {
                v63 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristic value:&unk_286629638 authorizationData:0 type:0];
                [groupa addObject:v63];
              }

              else
              {
                v64 = objc_autoreleasePoolPush();
                v65 = selfCopy;
                v66 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  v67 = HMFGetLogIdentifier();
                  *v164 = 138543618;
                  v165 = v67;
                  v166 = 2112;
                  v167 = v54;
                  _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring characteristic write action for turning off because target value is NO: %@", v164, 0x16u);
                }

                objc_autoreleasePoolPop(v64);
              }
            }

            else
            {
              type4 = [characteristic type];
              v58 = [type4 isEqual:obja];

              if (v58)
              {
                goto LABEL_59;
              }
            }
          }
        }

        v49 = [actions countByEnumeratingWithState:v173 objects:buf count:16];
      }

      while (v49);
LABEL_70:

      if ([groupa count])
      {
        home = [v113 home];
        v69 = objc_autoreleasePoolPush();
        v70 = selfCopy;
        v71 = HMFGetOSLogHandle();
        v72 = v71;
        if (home)
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v73 = HMFGetLogIdentifier();
            *&buf[8] = 0;
            *buf = 0;
            identifier14 = [v111 identifier];

            if (identifier14)
            {
              identifier15 = [v111 identifier];
              [identifier15 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v151 = *buf;
            *buf = 138544130;
            *&buf[4] = v73;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v169 = 2096;
            v170 = &v151;
            v171 = 2112;
            v172 = v113;
            _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Executing turning off action set: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v69);
          uuid2 = [v113 uuid];
          identifier16 = [v111 identifier];
          [(HMDWidgetTimelineRefresher *)v70 _setPendingRequestValue:&unk_286629638 forUUID:uuid2 messageIdentifier:identifier16];

          [(HMDWidgetTimelineRefresher *)v70 _clearCachedErrorForActionSet:v113];
          dispatch_group_enter(v105);
          *&v139 = MEMORY[0x277D85DD0];
          *(&v139 + 1) = 3221225472;
          *&v140 = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke;
          *(&v140 + 1) = &unk_279732B10;
          *&v141 = v70;
          *(&v141 + 1) = v113;
          v90 = v111;
          *&v142 = v90;
          *(&v142 + 1) = v103;
          v143 = v104;
          v91 = _Block_copy(&v139);
          *&v146 = MEMORY[0x277D85DD0];
          *(&v146 + 1) = 3221225472;
          v147 = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_264;
          v148 = &unk_279732CF0;
          v149 = v70;
          v150 = v91;
          v92 = v91;
          v93 = _Block_copy(&v146);
          [home writeCharacteristicValues:groupa message:v90 withCompletionHandler:v93];
        }

        else
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v85 = HMFGetLogIdentifier();
            *&buf[8] = 0;
            *buf = 0;
            identifier17 = [v111 identifier];

            if (identifier17)
            {
              identifier18 = [v111 identifier];
              [identifier18 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v152 = *buf;
            *buf = 138544130;
            *&buf[4] = v85;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            v169 = 2096;
            v170 = &v152;
            v171 = 2112;
            v172 = v113;
            _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Home is nil for action set: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v69);
        }
      }

      else
      {
        v79 = objc_autoreleasePoolPush();
        v80 = selfCopy;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v82 = HMFGetLogIdentifier();
          *&buf[8] = 0;
          *buf = 0;
          identifier19 = [v111 identifier];

          if (identifier19)
          {
            identifier20 = [v111 identifier];
            [identifier20 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v153 = *buf;
          *buf = 138544130;
          *&buf[4] = v82;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          v169 = 2096;
          v170 = &v153;
          v171 = 2112;
          v172 = v113;
          _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Action set doesn't contain actions that can be turned off: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v79);
      }
    }

    v112 = [v106 countByEnumeratingWithState:&v160 objects:v156 count:16];
  }

  while (v112);
LABEL_103:

LABEL_104:
LABEL_105:

  workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke_2;
  block[3] = &unk_279731418;
  v126 = v134;
  block[4] = selfCopy;
  v125 = v111;
  v127 = v132;
  dispatch_group_notify(v105, workQueue, block);

  _Block_object_dispose(v132, 8);
  _Block_object_dispose(v134, 8);

LABEL_109:
  v5 = v98;
LABEL_110:
}

void __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v9 = a2;
  dispatch_group_leave(v3);
  v4 = *(a1[5] + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v8 = v9;
  if (v7)
  {
    v8 = v6;
  }

  objc_storeStrong(v5, v8);
  *(*(a1[6] + 8) + 24) = 1;
}

uint64_t __52__HMDWidgetTimelineRefresher_handlePerformRequests___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v6 = [*(a1 + 40) identifier];

      if (v6)
      {
        v7 = [*(a1 + 40) identifier];
        [v7 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v23 = *buf;
      v14 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      *&buf[4] = v5;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v25 = 2096;
      v26 = &v23;
      v27 = 2112;
      v28 = v14;
      v15 = "%{public}@[%{uuid_t}.16P] Failed with error: %@";
      v16 = v4;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 38;
LABEL_16:
      _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, v18);
LABEL_17:
    }
  }

  else
  {
    v8 = *(*(*(a1 + 56) + 8) + 24);
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v4 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v10 = [*(a1 + 40) identifier];

        if (v10)
        {
          v11 = [*(a1 + 40) identifier];
          [v11 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v21 = *buf;
        *buf = 138543874;
        *&buf[4] = v5;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        v25 = 2096;
        v26 = &v21;
        v15 = "%{public}@[%{uuid_t}.16P] Successfully completed requests";
        v16 = v4;
        v17 = OS_LOG_TYPE_INFO;
        v18 = 28;
        goto LABEL_16;
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v12 = [*(a1 + 40) identifier];

      if (v12)
      {
        v13 = [*(a1 + 40) identifier];
        [v13 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v22 = *buf;
      v20 = [*(a1 + 40) messagePayload];
      *buf = 138544130;
      *&buf[4] = v5;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v25 = 2096;
      v26 = &v22;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Did not execute any request from payload: %@", buf, 0x26u);

      goto LABEL_17;
    }
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) respondWithPayload:0 error:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)_clearCachedErrorForActionSet:(void *)set
{
  uuid = [a2 uuid];
  cachedActionSetExecuteErrorByUUID = [set cachedActionSetExecuteErrorByUUID];
  [cachedActionSetExecuteErrorByUUID removeObjectForKey:uuid];

  cachedActionSetExecuteErrorTimerContextByUUID = [set cachedActionSetExecuteErrorTimerContextByUUID];
  v5 = [cachedActionSetExecuteErrorTimerContextByUUID objectForKeyedSubscript:uuid];

  if (v5)
  {
    cachedActionSetExecuteErrorTimerContextByUUID2 = [set cachedActionSetExecuteErrorTimerContextByUUID];
    [cachedActionSetExecuteErrorTimerContextByUUID2 removeObjectForKey:uuid];

    timerManager = [set timerManager];
    [timerManager cancelTimerForContext:v5];
  }
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v7 = [*(a1 + 48) identifier];
  [v5 _removePendingRequestValueForUUID:v6 messageIdentifier:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v13 = [*(a1 + 48) identifier];

      if (v13)
      {
        v14 = [*(a1 + 48) identifier];
        [v14 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v23 = *buf;
      v18 = *(a1 + 40);
      *buf = 138544386;
      *&buf[4] = v12;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v25 = 2096;
      v26 = &v23;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to turn off action set: %@, with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDWidgetTimelineRefresher *)*(a1 + 32) _setCachedError:v3 forActionSet:*(a1 + 40)];
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 56)];
    [(HMDWidgetTimelineRefresher *)v19 refreshTimelineForWidgetKinds:v20 withReason:@"Turn Off Action Set Execution Failed" shouldCoalesce:1];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v16 = [*(a1 + 48) identifier];

      if (v16)
      {
        v17 = [*(a1 + 48) identifier];
        [v17 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v22 = *buf;
      v21 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v15;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v25 = 2096;
      v26 = &v22;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully turned off action set: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v8);
  }

  (*(*(a1 + 64) + 16))();
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_264(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2;
  v12[3] = &unk_279734578;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v16 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __127__HMDWidgetTimelineRefresher_executeActionSetsToTurnOffWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 56);

    v2(v3);
  }

  else
  {
    v4 = [*(a1 + 40) _firstErrorFromCharacteristicWriteResponsePayload:*(a1 + 48)];
    (*(v1 + 16))(v1, v4);
  }
}

- (void)_setCachedError:(void *)error forActionSet:
{
  if (self)
  {
    errorCopy = error;
    v6 = a2;
    uuid = [errorCopy uuid];
    cachedActionSetExecuteErrorByUUID = [self cachedActionSetExecuteErrorByUUID];
    [cachedActionSetExecuteErrorByUUID setObject:v6 forKeyedSubscript:uuid];

    timerManager = [self timerManager];
    v9 = [timerManager startTimerWithTimeInterval:errorCopy andReplaceObject:8.0];

    cachedActionSetExecuteErrorTimerContextByUUID = [self cachedActionSetExecuteErrorTimerContextByUUID];
    [cachedActionSetExecuteErrorTimerContextByUUID setObject:v9 forKeyedSubscript:uuid];
  }
}

void __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2;
  v6[3] = &unk_279734848;
  v7 = *(a1 + 2);
  v8 = a1[6];
  v9 = v3;
  v10 = a1[7];
  v11 = a1[8];
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __118__HMDWidgetTimelineRefresher_executeActionSetsWithSPIClientIdentifiers_widgetKind_message_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [*(a1 + 48) identifier];
  [v2 _removePendingRequestValueForUUID:v3 messageIdentifier:v4];

  v5 = *(a1 + 56);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v11 = [*(a1 + 48) identifier];

      if (v11)
      {
        v12 = [*(a1 + 48) identifier];
        [v12 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v23 = *buf;
      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      *buf = 138544386;
      *&buf[4] = v10;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v25 = 2096;
      v26 = &v23;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Failed to execute action set: %@, with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDWidgetTimelineRefresher *)*(a1 + 32) _setCachedError:*(a1 + 40) forActionSet:?];
    v18 = *(a1 + 32);
    v19 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
    [(HMDWidgetTimelineRefresher *)v18 refreshTimelineForWidgetKinds:v19 withReason:@"Action Set Execution Failed" shouldCoalesce:1];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v14 = [*(a1 + 48) identifier];

      if (v14)
      {
        v15 = [*(a1 + 48) identifier];
        [v15 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v22 = *buf;
      v20 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v25 = 2096;
      v26 = &v22;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Successfully executed action set: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
  }

  return (*(*(a1 + 72) + 16))();
}

- (void)handleFetchState:(id)state
{
  v35 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = *MEMORY[0x277CD1520];
  v6 = [stateCopy arrayForKey:*MEMORY[0x277CD1520]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier = [stateCopy identifier];

      if (identifier)
      {
        identifier2 = [stateCopy identifier];
        [identifier2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v34 = *buf;
      *buf = 138544130;
      *&buf[4] = v11;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v34;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to fetch state for: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [(HMDWidgetTimelineRefresher *)selfCopy characteristicsFromSPIClientIdentifiers:v6];
    v32 = v5;
    v17 = [(HMDWidgetTimelineRefresher *)selfCopy valueByCharacteristicSPIClientIdentifierForCharacteristics:v16];
    v33 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      name = [stateCopy name];
      *buf = 0;
      *&buf[8] = 0;
      identifier3 = [stateCopy identifier];

      if (identifier3)
      {
        identifier4 = [stateCopy identifier];
        [identifier4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v26 = *buf;
      *buf = 138544386;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = name;
      *&buf[22] = 1040;
      *&buf[24] = 16;
      v28 = 2096;
      v29 = &v26;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v19);
    [stateCopy respondWithPayload:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      messagePayload = [stateCopy messagePayload];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = messagePayload;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find characteristic UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [stateCopy respondWithError:v16];
  }
}

- (id)characteristicsFromSPIClientIdentifiers:(void *)identifiers
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (identifiers)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    homeManager = [identifiers homeManager];
    homes = [homeManager homes];

    v7 = [homes countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v57;
      v37 = homes;
      v32 = *v57;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v57 != v9)
          {
            objc_enumerationMutation(homes);
          }

          v11 = *(*(&v56 + 1) + 8 * i);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          accessories = [v11 accessories];
          v43 = [accessories countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v43)
          {
            v13 = *v53;
            v33 = i;
            v34 = v8;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v53 != v13)
                {
                  objc_enumerationMutation(accessories);
                }

                v15 = *(*(&v52 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = v15;
                }

                else
                {
                  v16 = 0;
                }

                v17 = v16;

                if (v17)
                {
                  v50 = 0u;
                  v51 = 0u;
                  v48 = 0u;
                  v49 = 0u;
                  services = [v15 services];
                  v38 = [services countByEnumeratingWithState:&v48 objects:v61 count:16];
                  if (v38)
                  {
                    v19 = *v49;
                    v41 = v17;
                    v42 = accessories;
                    v35 = *v49;
                    v36 = v13;
                    v40 = services;
                    do
                    {
                      v20 = 0;
                      do
                      {
                        if (*v49 != v19)
                        {
                          objc_enumerationMutation(services);
                        }

                        v39 = v20;
                        v21 = *(*(&v48 + 1) + 8 * v20);
                        v44 = 0u;
                        v45 = 0u;
                        v46 = 0u;
                        v47 = 0u;
                        characteristics = [v21 characteristics];
                        v23 = [characteristics countByEnumeratingWithState:&v44 objects:v60 count:16];
                        if (v23)
                        {
                          v24 = v23;
                          v25 = *v45;
                          while (2)
                          {
                            for (k = 0; k != v24; ++k)
                            {
                              if (*v45 != v25)
                              {
                                objc_enumerationMutation(characteristics);
                              }

                              v27 = *(*(&v44 + 1) + 8 * k);
                              spiClientIdentifier = [v27 spiClientIdentifier];
                              v29 = [v3 containsObject:spiClientIdentifier];

                              if (v29)
                              {
                                [v4 addObject:v27];
                                v30 = [v4 count];
                                if (v30 == [v3 count])
                                {

                                  homes = v37;
                                  goto LABEL_39;
                                }
                              }
                            }

                            v24 = [characteristics countByEnumeratingWithState:&v44 objects:v60 count:16];
                            if (v24)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v20 = v39 + 1;
                        v17 = v41;
                        accessories = v42;
                        v19 = v35;
                        v13 = v36;
                        services = v40;
                      }

                      while (v39 + 1 != v38);
                      v38 = [v40 countByEnumeratingWithState:&v48 objects:v61 count:16];
                    }

                    while (v38);
                  }
                }
              }

              homes = v37;
              v9 = v32;
              i = v33;
              v8 = v34;
              v43 = [accessories countByEnumeratingWithState:&v52 objects:v62 count:16];
            }

            while (v43);
          }
        }

        v8 = [homes countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v8);
    }

LABEL_39:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleMonitorCharacteristicsForWidget:(id)widget
{
  v117 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v5 = [widgetCopy stringForKey:*MEMORY[0x277CD1558]];
  if (v5)
  {
    v6 = [widgetCopy stringForKey:*MEMORY[0x277CD1560]];
    if (v6)
    {
      v7 = [widgetCopy arrayForKey:*MEMORY[0x277CD1520]];
      if (v7)
      {
        v8 = [widgetCopy numberForKey:*MEMORY[0x277CD1530]];
        if (v8)
        {
          v9 = [widgetCopy numberForKey:*MEMORY[0x277CD1540]];
          v86 = v9;
          if (v9)
          {
            v10 = v9;
            v87 = v8;
            v11 = [widgetCopy uuidForKey:*MEMORY[0x277CD1528]];
            v90 = v5;
            v12 = [[HMDWidget alloc] initWithIdentifier:v5 kind:v6];
            v13 = [(HMDWidgetTimelineRefresher *)self characteristicsFromSPIClientIdentifiers:v7];
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke;
            v102[3] = &unk_27972F1E0;
            v14 = v10;
            v103 = v14;
            v88 = [v13 na_map:v102];
            context = objc_autoreleasePoolPush();
            selfCopy = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v82 = v12;
              v17 = v11;
              v80 = HMFGetLogIdentifier();
              *buf = 0;
              *&buf[8] = 0;
              identifier = [widgetCopy identifier];

              if (identifier)
              {
                identifier2 = [widgetCopy identifier];
                [identifier2 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v105 = *buf;
              *buf = 0;
              *&buf[8] = 0;
              v11 = v17;
              if (v17)
              {
                [v17 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v104 = *buf;
              *buf = 138544898;
              v12 = v82;
              *&buf[4] = v80;
              *&buf[12] = 1040;
              *&buf[14] = 16;
              *&buf[18] = 2096;
              *&buf[20] = &v105;
              *&buf[28] = 2112;
              *&buf[30] = v82;
              *&buf[38] = 2112;
              v107 = v87;
              v108 = 1040;
              v109 = 16;
              v110 = 2096;
              v111 = &v104;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{uuid_t}.16P] Received message to update characteristics for widget: %@, generation counter: %@, current home: %{uuid_t}.16P", buf, 0x40u);
            }

            objc_autoreleasePoolPop(context);
            [v14 BOOLValue];
            qualityOfService = [widgetCopy qualityOfService];
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v78 = qualityOfService;
            v94 = __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke_228;
            v95 = &unk_27972F208;
            v96 = selfCopy;
            v97 = v87;
            v98 = v6;
            v99 = v11;
            v100 = v13;
            v101 = widgetCopy;
            v54 = v13;
            contexta = v11;
            v89 = v88;
            v55 = v12;
            v56 = v93;
            v57 = v56;
            v5 = v90;
            if (selfCopy)
            {
              v81 = v56;
              v83 = v54;
              workQueue = [(HMDWidgetTimelineRefresher *)selfCopy workQueue];
              dispatch_assert_queue_V2(workQueue);

              monitoredCharacteristicsMapByWidget = [(HMDWidgetTimelineRefresher *)selfCopy monitoredCharacteristicsMapByWidget];
              v60 = [monitoredCharacteristicsMapByWidget objectForKeyedSubscript:v55];
              v61 = v60;
              if (v60)
              {
                v62 = v60;
              }

              else
              {
                v62 = [MEMORY[0x277CBEB98] set];
              }

              v63 = v62;

              v79 = v63;
              LODWORD(v63) = [v89 isEqualToSet:v63];
              v64 = objc_autoreleasePoolPush();
              v65 = selfCopy;
              v66 = HMFGetOSLogHandle();
              v67 = os_log_type_enabled(v66, OS_LOG_TYPE_INFO);
              if (v63)
              {
                if (v67)
                {
                  v68 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v68;
                  *&buf[12] = 2112;
                  *&buf[14] = v55;
                  _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Monitored characteristics did not change for widget %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v64);
                v57 = v81;
                v94(v81);
              }

              else
              {
                if (v67)
                {
                  v69 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  *&buf[4] = v69;
                  *&buf[12] = 2112;
                  *&buf[14] = v55;
                  *&buf[22] = 2112;
                  *&buf[24] = v89;
                  _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Monitored characteristics changed for widget %@ to %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v64);
                characteristicsMonitoredForWidgets = [(HMDWidgetTimelineRefresher *)v65 characteristicsMonitoredForWidgets];
                accessoriesMonitoredForReachability = [(HMDWidgetTimelineRefresher *)v65 accessoriesMonitoredForReachability];
                monitoredCharacteristicsMapByWidget2 = [(HMDWidgetTimelineRefresher *)v65 monitoredCharacteristicsMapByWidget];
                [monitoredCharacteristicsMapByWidget2 setObject:v89 forKeyedSubscript:v55];

                characteristicsMonitoredForWidgets2 = [(HMDWidgetTimelineRefresher *)v65 characteristicsMonitoredForWidgets];
                accessoriesMonitoredForReachability2 = [(HMDWidgetTimelineRefresher *)v65 accessoriesMonitoredForReachability];
                [(HMDWidgetTimelineRefresher *)v65 updateNotificationRegistrationWithPreviousCharacteristics:characteristicsMonitoredForWidgets currentCharacteristics:characteristicsMonitoredForWidgets2 updateRequestQualityOfService:v78];
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke;
                *&buf[24] = &unk_279735738;
                *&buf[32] = v65;
                v107 = v81;
                [(HMDWidgetTimelineRefresher *)v65 updateReachabilityMonitorWithPreviousAccessories:accessoriesMonitoredForReachability currentAccessories:accessoriesMonitoredForReachability2 completion:buf];

                v57 = v81;
              }

              v5 = v90;

              v54 = v83;
            }

            v75 = v86;
            v8 = v87;
          }

          else
          {
            v45 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v92 = v5;
              v48 = HMFGetLogIdentifier();
              *buf = 0;
              *&buf[8] = 0;
              identifier3 = [widgetCopy identifier];

              if (identifier3)
              {
                identifier4 = [widgetCopy identifier];
                [identifier4 getUUIDBytes:buf];
              }

              else
              {
                *buf = *MEMORY[0x277D0F960];
              }

              v112 = *buf;
              messagePayload = [widgetCopy messagePayload];
              *buf = 138544130;
              *&buf[4] = v48;
              *&buf[12] = 1040;
              *&buf[14] = 16;
              *&buf[18] = 2096;
              *&buf[20] = &v112;
              *&buf[28] = 2112;
              *&buf[30] = messagePayload;
              _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find reachability registration value in message payload: %@", buf, 0x26u);

              v5 = v92;
            }

            objc_autoreleasePoolPop(v45);
            v55 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [widgetCopy respondWithError:v55];
            v75 = 0;
          }
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v91 = v5;
            v41 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            identifier5 = [widgetCopy identifier];

            if (identifier5)
            {
              identifier6 = [widgetCopy identifier];
              [identifier6 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v113 = *buf;
            messagePayload2 = [widgetCopy messagePayload];
            *buf = 138544130;
            *&buf[4] = v41;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = &v113;
            *&buf[28] = 2112;
            *&buf[30] = messagePayload2;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find generation counter in message payload: %@", buf, 0x26u);

            v5 = v91;
          }

          objc_autoreleasePoolPop(v38);
          v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [widgetCopy respondWithError:v75];
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          identifier7 = [widgetCopy identifier];

          if (identifier7)
          {
            identifier8 = [widgetCopy identifier];
            [identifier8 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v114 = *buf;
          messagePayload3 = [widgetCopy messagePayload];
          *buf = 138544130;
          *&buf[4] = v35;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v114;
          *&buf[28] = 2112;
          *&buf[30] = messagePayload3;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find characteristic UUIDs in message payload: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v32);
        v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [widgetCopy respondWithError:v8];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        identifier9 = [widgetCopy identifier];

        if (identifier9)
        {
          identifier10 = [widgetCopy identifier];
          [identifier10 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v115 = *buf;
        messagePayload4 = [widgetCopy messagePayload];
        *buf = 138544130;
        *&buf[4] = v29;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v115;
        *&buf[28] = 2112;
        *&buf[30] = messagePayload4;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget kind in message payload: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v26);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [widgetCopy respondWithError:v7];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      identifier11 = [widgetCopy identifier];

      if (identifier11)
      {
        identifier12 = [widgetCopy identifier];
        [identifier12 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v116 = *buf;
      messagePayload5 = [widgetCopy messagePayload];
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v116;
      *&buf[28] = 2112;
      *&buf[30] = messagePayload5;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%{uuid_t}.16P] Could not find widget identifier in message payload: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v20);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [widgetCopy respondWithError:v6];
  }
}

HMDWidgetMonitoredCharacteristic *__68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[HMDWidgetMonitoredCharacteristic initWithCharacteristic:reachabilityMonitored:]([HMDWidgetMonitoredCharacteristic alloc], "initWithCharacteristic:reachabilityMonitored:", v3, [*(a1 + 32) BOOLValue]);

  return v4;
}

void __68__HMDWidgetTimelineRefresher_handleMonitorCharacteristicsForWidget___block_invoke_228(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unsignedIntValue];
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v3;
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_FAULT, "%{public}@Generation counter is unexpectedly set to zero.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = [v2 homeManager];
  v10 = [v9 generationCounter];

  if (v10 <= v4)
  {
LABEL_10:
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    if (v16)
    {
      v18 = [v16 homeManager];
      v19 = [v18 currentHomeUUID];

      if ((HMFEqualObjects() & 1) == 0)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v16;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          if (v17)
          {
            [v17 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v41 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          if (v19)
          {
            [v19 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v40 = *buf;
          *buf = 138544386;
          *&buf[4] = v23;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v41;
          *&buf[28] = 1040;
          *&buf[30] = 16;
          *&buf[34] = 2096;
          *&buf[36] = &v40;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline because client's currentHome UUID is different. Client: %{uuid_t}.16P, homed: %{uuid_t}.16P", buf, 0x2Cu);
        }

        objc_autoreleasePoolPop(v20);
        v15 = @"Current home mismatch";
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = v2;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 2048;
    *&buf[24] = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing timeline because client's generation counter is older. Client: %lu, homed: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = @"Generation counter mismatch";
LABEL_23:
  v24 = *(a1 + 32);
  v25 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
  [(HMDWidgetTimelineRefresher *)v24 refreshTimelineForWidgetKinds:v25 withReason:v15 shouldCoalesce:1];

LABEL_24:
  v38[0] = *MEMORY[0x277CD1520];
  v26 = [*(a1 + 32) valueByCharacteristicSPIClientIdentifierForCharacteristics:*(a1 + 64)];
  v39[0] = v26;
  v38[1] = *MEMORY[0x277CD1540];
  v27 = [*(a1 + 32) reachabilityByAccessorySPIClientIdentifierForCharacteristics:*(a1 + 64)];
  v39[1] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v29 = objc_autoreleasePoolPush();
  v30 = *(a1 + 32);
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v33 = [*(a1 + 72) name];
    *buf = 0;
    *&buf[8] = 0;
    v34 = [*(a1 + 72) identifier];

    if (v34)
    {
      v35 = [*(a1 + 72) identifier];
      [v35 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v36 = *buf;
    *buf = 138544386;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    *&buf[22] = 1040;
    *&buf[24] = 16;
    *&buf[28] = 2096;
    *&buf[30] = &v36;
    *&buf[38] = 2112;
    *&buf[40] = v28;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@[%@] Responding to %{uuid_t}.16P with payload: %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v29);
  [*(a1 + 72) respondWithPayload:v28];
}

void __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__HMDWidgetTimelineRefresher_internalUpdateMonitoredCharacteristics_shouldMonitorReachability_forWidget_updateRequestQualityOfService_completion___block_invoke_2;
  block[3] = &unk_2797348C0;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Reloading widgets from Chronod", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  widgetConfigurationReader = [(HMDWidgetTimelineRefresher *)selfCopy widgetConfigurationReader];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke;
  v11[3] = &unk_279734A00;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  [widgetConfigurationReader fetchAutoBahnWidgetsWithCompletion:v11];
}

void __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke_2;
  block[3] = &unk_2797355D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __83__HMDWidgetTimelineRefresher_fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) na_map:&__block_literal_global_222];
  v4 = [v2 setWithArray:v3];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Active widgets are: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) setActiveAutoBahnWidgetKinds:v4];
  (*(*(a1 + 48) + 16))();
}

- (void)forceUpdateTimelineForWidgetKinds:(id)kinds
{
  kindsCopy = kinds;
  if ([kindsCopy count])
  {
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = kindsCopy;
    selfCopy = self;
    dispatch_async(workQueue, v6);
  }
}

void __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) widgetKindsToUpdate];
  LOBYTE(v2) = [v2 isSubsetOfSet:v3];

  if ((v2 & 1) == 0)
  {
    v4 = [*(a1 + 40) widgetKindsToUpdate];
    v5 = [v4 count];

    v6 = [*(a1 + 40) widgetKindsToUpdate];
    v7 = [v6 setByAddingObjectsFromSet:*(a1 + 32)];
    [*(a1 + 40) setWidgetKindsToUpdate:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) widgetKindsToUpdate];
      v13 = [v12 allObjects];
      v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_148507];
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@More kinds to reload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (!v5)
    {
      v16 = dispatch_time(0, [*(a1 + 40) forceUpdateTimelineDispatchDelayNs]);
      v17 = [*(a1 + 40) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke_215;
      block[3] = &unk_279735D00;
      block[4] = *(a1 + 40);
      dispatch_after(v16, v17, block);
    }
  }
}

void __64__HMDWidgetTimelineRefresher_forceUpdateTimelineForWidgetKinds___block_invoke_215(uint64_t a1)
{
  v1 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 32) widgetKindsToUpdate];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    v19 = v1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:@"com.apple.Home.HomeWidget" kind:v6];
        v8 = [v7 reloadTimelineWithReason:@"new data"];
        v9 = objc_autoreleasePoolPush();
        v10 = *(v1 + 32);
        v11 = HMFGetOSLogHandle();
        v12 = v11;
        if (v8)
        {
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v13 = HMFGetLogIdentifier();
          *buf = 138543874;
          v26 = v13;
          v27 = 2112;
          v28 = v6;
          v29 = 2112;
          v30 = v8;
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = "%{public}@Failed reload of timeline for '%@': %@";
          v17 = 32;
        }

        else
        {
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v13;
          v27 = 2112;
          v28 = v6;
          v14 = v12;
          v15 = OS_LOG_TYPE_DEFAULT;
          v16 = "%{public}@Successfully reloaded timeline for '%@'";
          v17 = 22;
        }

        _os_log_impl(&dword_2531F8000, v14, v15, v16, buf, v17);

        v1 = v19;
LABEL_12:

        objc_autoreleasePoolPop(v9);
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v3);
  }

  v18 = [MEMORY[0x277CBEB98] set];
  [*(v1 + 32) setWidgetKindsToUpdate:v18];
}

- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications assumingChangedCharacteristic:(id)characteristic
{
  v47 = *MEMORY[0x277D85DE8];
  specificationsCopy = specifications;
  characteristicCopy = characteristic;
  v31 = [MEMORY[0x277CBEB58] set];
  v33 = characteristicCopy;
  service = [characteristicCopy service];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = specificationsCopy;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v39;
    *&v9 = 138543618;
    v29 = v9;
    v32 = *v39;
    do
    {
      v12 = 0;
      v34 = v10;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        serviceTypes = [v13 serviceTypes];
        type = [service type];
        if (![serviceTypes containsObject:type])
        {

          goto LABEL_19;
        }

        associatedServiceTypes = [v13 associatedServiceTypes];
        hmf_isEmpty = [associatedServiceTypes hmf_isEmpty];
        if ((hmf_isEmpty & 1) == 0)
        {
          associatedServiceTypes2 = [v13 associatedServiceTypes];
          associatedServiceType = [service associatedServiceType];
          v37 = associatedServiceTypes2;
          if (![associatedServiceTypes2 containsObject:?])
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v19 = service;
        characteristicTypes = [v13 characteristicTypes];
        type2 = [v33 type];
        v22 = [characteristicTypes containsObject:type2];

        if ((hmf_isEmpty & 1) == 0)
        {
          service = v19;
          v11 = v32;
LABEL_15:
          v10 = v34;

          if ((v22 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_16:
          v23 = objc_autoreleasePoolPush();
          selfCopy = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            affectedWidgetKinds = [v13 affectedWidgetKinds];
            *buf = v29;
            v43 = v26;
            v44 = 2112;
            v45 = affectedWidgetKinds;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@...must reload widget kinds: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          serviceTypes = [v13 affectedWidgetKinds];
          [v31 unionSet:serviceTypes];
LABEL_19:

          goto LABEL_20;
        }

        service = v19;
        v11 = v32;
        v10 = v34;
        if (v22)
        {
          goto LABEL_16;
        }

LABEL_20:
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v10);
  }

  return v31;
}

- (id)widgetKindsToUpdateFromFetchSpecifications:(id)specifications changedCharacteristics:(id)characteristics
{
  v114 = *MEMORY[0x277D85DE8];
  specificationsCopy = specifications;
  characteristicsCopy = characteristics;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v100 = v10;
    v101 = 2082;
    v102 = "[HMDWidgetTimelineRefresher widgetKindsToUpdateFromFetchSpecifications:changedCharacteristics:]";
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@%{public}s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v74 = [MEMORY[0x277CBEB58] set];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = characteristicsCopy;
  v11 = [obj countByEnumeratingWithState:&v95 objects:v113 count:16];
  if (v11)
  {
    v13 = v11;
    v94 = *v96;
    *&v12 = 138544898;
    v65 = v12;
    v91 = selfCopy;
    do
    {
      v14 = 0;
      v92 = v13;
      do
      {
        if (*v96 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v95 + 1) + 8 * v14);
        accessory = [v15 accessory];
        home = [accessory home];
        v18 = [(HMDWidgetTimelineRefresher *)selfCopy homeHasAnyResident:home];

        if (v18)
        {
          characteristicsToPreviouslySeenValues = [(HMDWidgetTimelineRefresher *)selfCopy characteristicsToPreviouslySeenValues];
          serializedIdentifier = [v15 serializedIdentifier];
          v21 = [characteristicsToPreviouslySeenValues objectForKeyedSubscript:serializedIdentifier];

          value = [v15 value];
          LODWORD(serializedIdentifier) = HMFEqualObjects();

          if (serializedIdentifier)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = selfCopy;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v68 = HMFGetLogIdentifier();
              characteristicType = [v15 characteristicType];
              v26 = HAPShortUUIDType();
              [v15 characteristicTypeDescription];
              v27 = log = v21;
              accessory2 = [v15 accessory];
              home2 = [accessory2 home];
              name = [home2 name];
              [v15 accessory];
              v29 = contexta = v23;
              name2 = [v29 name];
              value2 = [v15 value];
              *buf = 138544642;
              v100 = v68;
              v101 = 2112;
              v102 = v26;
              v103 = 2112;
              v104 = v27;
              v105 = 2112;
              v106 = name;
              v107 = 2112;
              v108 = name2;
              v109 = 2112;
              v110 = value2;
              _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@...ignoring redundant characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

              v23 = contexta;
              v13 = v92;

              selfCopy = v91;
              v21 = log;
            }

            objc_autoreleasePoolPop(v23);
          }

          else
          {
            v42 = [(HMDWidgetTimelineRefresher *)selfCopy widgetKindsToUpdateFromFetchSpecifications:specificationsCopy assumingChangedCharacteristic:v15];
            [v74 unionSet:v42];
            v43 = [v42 count];
            context = objc_autoreleasePoolPush();
            v44 = selfCopy;
            v45 = HMFGetOSLogHandle();
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
            if (v43)
            {
              if (v46)
              {
                HMFGetLogIdentifier();
                v47 = v82 = v42;
                characteristicType2 = [v15 characteristicType];
                v48 = HAPShortUUIDType();
                [v15 characteristicTypeDescription];
                v49 = logb = v45;
                accessory3 = [v15 accessory];
                home3 = [accessory3 home];
                name3 = [home3 name];
                accessory4 = [v15 accessory];
                name4 = [accessory4 name];
                [v15 value];
                v53 = v52 = v21;
                *buf = v65;
                v100 = v47;
                v101 = 2112;
                v102 = v48;
                v103 = 2112;
                v104 = v49;
                v105 = 2112;
                v106 = name3;
                v107 = 2112;
                v108 = name4;
                v109 = 2112;
                v110 = v53;
                v111 = 2112;
                v112 = v52;
                _os_log_impl(&dword_2531F8000, logb, OS_LOG_TYPE_INFO, "%{public}@...updating characteristic [%@] (%@) from '%@:%@', value '%@' was '%@'", buf, 0x48u);

                v21 = v52;
                selfCopy = v91;

                v13 = v92;
                v45 = logb;

                v42 = v82;
              }

              objc_autoreleasePoolPop(context);
              value3 = [v15 value];
              characteristicsToPreviouslySeenValues2 = [(HMDWidgetTimelineRefresher *)v44 characteristicsToPreviouslySeenValues];
              serializedIdentifier2 = [v15 serializedIdentifier];
              [characteristicsToPreviouslySeenValues2 setObject:value3 forKeyedSubscript:serializedIdentifier2];
            }

            else
            {
              if (v46)
              {
                v83 = HMFGetLogIdentifier();
                characteristicType3 = [v15 characteristicType];
                v67 = HAPShortUUIDType();
                characteristicTypeDescription = [v15 characteristicTypeDescription];
                accessory5 = [v15 accessory];
                home4 = [accessory5 home];
                name5 = [home4 name];
                accessory6 = [v15 accessory];
                [accessory6 name];
                v60 = logc = v21;
                value4 = [v15 value];
                *buf = 138544642;
                v100 = v83;
                v101 = 2112;
                v102 = v67;
                v103 = 2112;
                v104 = characteristicTypeDescription;
                v62 = characteristicTypeDescription;
                v105 = 2112;
                v106 = name5;
                v63 = name5;
                v107 = 2112;
                v108 = v60;
                v109 = 2112;
                v110 = value4;
                _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@...ignoring irrelevant characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

                v21 = logc;
                v13 = v92;

                selfCopy = v91;
              }

              objc_autoreleasePoolPop(context);
            }
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            loga = [v15 characteristicType];
            v36 = HAPShortUUIDType();
            characteristicTypeDescription2 = [v15 characteristicTypeDescription];
            accessory7 = [v15 accessory];
            home5 = [accessory7 home];
            name6 = [home5 name];
            [v15 accessory];
            v39 = contextb = v32;
            name7 = [v39 name];
            value5 = [v15 value];
            *buf = 138544642;
            v100 = v35;
            v101 = 2112;
            v102 = v36;
            v103 = 2112;
            v104 = characteristicTypeDescription2;
            v105 = 2112;
            v106 = name6;
            v107 = 2112;
            v108 = name7;
            v109 = 2112;
            v110 = value5;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@...No resident. Ignoring characteristic [%@] (%@) from '%@:%@', value '%@'", buf, 0x3Eu);

            v32 = contextb;
            selfCopy = v91;

            v13 = v92;
          }

          objc_autoreleasePoolPop(v32);
        }

        ++v14;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v95 objects:v113 count:16];
    }

    while (v13);
  }

  return v74;
}

- (void)internalProcessChangedCharacteristics:(id)characteristics activeAutoBahnWidgetKinds:(id)kinds
{
  v19 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  kindsCopy = kinds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2080;
    v18 = "[HMDWidgetTimelineRefresher internalProcessChangedCharacteristics:activeAutoBahnWidgetKinds:]";
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@%s", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_opt_class() fetchSpecificationsForWidgetKinds:kindsCopy];
  v13 = [(HMDWidgetTimelineRefresher *)selfCopy widgetKindsToUpdateFromFetchSpecifications:v12 changedCharacteristics:characteristicsCopy];
  forceUpdateAutobahnTimelineHandler = [(HMDWidgetTimelineRefresher *)selfCopy forceUpdateAutobahnTimelineHandler];
  (forceUpdateAutobahnTimelineHandler)[2](forceUpdateAutobahnTimelineHandler, v13);
}

- (void)processCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  [(HMDWidgetTimelineRefresher *)self handleAccessoryCharacteristicsChangedNotification:notificationCopy];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDWidgetTimelineRefresher_processCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __72__HMDWidgetTimelineRefresher_processCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing characteristics changed notification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) modifiedCharacteristicsFromNotification:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = [v7 activeAutoBahnWidgetKinds];
  [v7 internalProcessChangedCharacteristics:v6 activeAutoBahnWidgetKinds:v8];
}

- (void)stopMonitoringOldCharacteristics
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  v43 = selfCopy;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    monitoredCharacteristics = [(HMDWidgetTimelineRefresher *)v43 monitoredCharacteristics];
    v8 = [monitoredCharacteristics count];
    v9 = &stru_286509E58;
    if (!v8)
    {
      v9 = @"none registered";
    }

    *buf = 138543618;
    v58 = v6;
    v59 = 2112;
    v60 = v9;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop monitoring previous accessories: %@", buf, 0x16u);

    selfCopy = v43;
  }

  objc_autoreleasePoolPop(v3);
  v46 = objc_opt_new();
  v10 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  monitoredCharacteristics2 = [(HMDWidgetTimelineRefresher *)selfCopy monitoredCharacteristics];
  v12 = [monitoredCharacteristics2 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(monitoredCharacteristics2);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        accessory = [v16 accessory];
        uuid = [accessory uuid];
        if (uuid)
        {
          [v46 setObject:accessory forKeyedSubscript:uuid];
          v19 = [v10 objectForKeyedSubscript:uuid];
          v20 = v19;
          if (v19)
          {
            [v19 setByAddingObject:v16];
          }

          else
          {
            [MEMORY[0x277CBEB98] setWithObject:v16];
          }
          v21 = ;
          [v10 setObject:v21 forKeyedSubscript:uuid];
        }
      }

      v13 = [monitoredCharacteristics2 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v13);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [v46 allKeys];
  v22 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  v24 = v43;
  if (v22)
  {
    v25 = v22;
    *&v23 = 138543618;
    v42 = v23;
    v26 = *v48;
    do
    {
      v27 = 0;
      v44 = v25;
      do
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v47 + 1) + 8 * v27);
        v29 = [v46 objectForKeyedSubscript:{v28, v42}];
        v30 = [v10 objectForKeyedSubscript:v28];
        v31 = v30;
        if (v29)
        {
          v32 = v30 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (!v32)
        {
          clientIdentifier = [(HMDWidgetTimelineRefresher *)v24 clientIdentifier];
          [(HMDWidgetTimelineRefresher *)v24 setNotificationEnabled:v31 forCharacteristics:clientIdentifier clientIdentifier:?];

          v34 = objc_autoreleasePoolPush();
          v35 = v24;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            [v29 shortDescription];
            v38 = v10;
            v40 = v39 = v26;
            *buf = v42;
            v58 = v37;
            v59 = 2112;
            v60 = v40;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@- stopped monitoring accessory: %@", buf, 0x16u);

            v26 = v39;
            v10 = v38;
            v25 = v44;

            v24 = v43;
          }

          objc_autoreleasePoolPop(v34);
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v25);
  }

  v41 = objc_opt_new();
  [(HMDWidgetTimelineRefresher *)v24 setMonitoredCharacteristics:v41];
}

- (id)monitorCharacteristicsForHome:(id)home fetchSpecifications:(id)specifications
{
  v127 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  specificationsCopy = specifications;
  array = [MEMORY[0x277CBEB18] array];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = specificationsCopy;
  v9 = [obj countByEnumeratingWithState:&v109 objects:v126 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v110;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v110 != v11)
        {
          objc_enumerationMutation(obj);
        }

        name = [*(*(&v109 + 1) + 8 * i) name];
        [array addObject:name];
      }

      v10 = [obj countByEnumeratingWithState:&v109 objects:v126 count:16];
    }

    while (v10);
  }

  v67 = array;

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    name2 = [homeCopy name];
    shortDescription = [homeCopy shortDescription];
    v20 = [array componentsJoinedByString:{@", "}];
    *buf = 138544130;
    v119 = v17;
    v120 = 2112;
    v121 = name2;
    v122 = 2112;
    v123 = shortDescription;
    v124 = 2112;
    v125 = v20;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@monitorCharacteristicsForHome: '%@' [%@], fetch specifications: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v71 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v66 = homeCopy;
  hapAccessories = [homeCopy hapAccessories];
  v72 = [hapAccessories countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v72)
  {
    v70 = *v106;
    v69 = selfCopy;
    do
    {
      v21 = 0;
      do
      {
        if (*v106 != v70)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v74 = v21;
        v77 = *(*(&v105 + 1) + 8 * v21);
        v22 = [MEMORY[0x277CBEB58] set];
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v75 = obj;
        v79 = [v75 countByEnumeratingWithState:&v101 objects:v116 count:16];
        if (v79)
        {
          v76 = *v102;
          do
          {
            v23 = 0;
            do
            {
              if (*v102 != v76)
              {
                objc_enumerationMutation(v75);
              }

              v81 = v23;
              v24 = *(*(&v101 + 1) + 8 * v23);
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              services = [v77 services];
              v26 = [services countByEnumeratingWithState:&v97 objects:v115 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v98;
                v83 = *v98;
                do
                {
                  v29 = 0;
                  v87 = v27;
                  do
                  {
                    if (*v98 != v28)
                    {
                      objc_enumerationMutation(services);
                    }

                    v30 = *(*(&v97 + 1) + 8 * v29);
                    serviceTypes = [v24 serviceTypes];
                    type = [v30 type];
                    if ([serviceTypes containsObject:type])
                    {
                      associatedServiceTypes = [v24 associatedServiceTypes];
                      if ([associatedServiceTypes hmf_isEmpty])
                      {
                      }

                      else
                      {
                        [v24 associatedServiceTypes];
                        v34 = v24;
                        v36 = v35 = services;
                        associatedServiceType = [v30 associatedServiceType];
                        v85 = [v36 containsObject:associatedServiceType];

                        v28 = v83;
                        services = v35;
                        v24 = v34;
                        v27 = v87;

                        if (!v85)
                        {
                          goto LABEL_41;
                        }
                      }

                      v95 = 0u;
                      v96 = 0u;
                      v93 = 0u;
                      v94 = 0u;
                      serviceTypes = [v24 characteristicTypes];
                      v38 = [serviceTypes countByEnumeratingWithState:&v93 objects:v114 count:16];
                      if (v38)
                      {
                        v39 = v38;
                        v40 = *v94;
                        do
                        {
                          for (j = 0; j != v39; ++j)
                          {
                            if (*v94 != v40)
                            {
                              objc_enumerationMutation(serviceTypes);
                            }

                            v42 = [v30 findCharacteristicWithType:*(*(&v93 + 1) + 8 * j)];
                            if (v42)
                            {
                              [v22 addObject:v42];
                            }
                          }

                          v39 = [serviceTypes countByEnumeratingWithState:&v93 objects:v114 count:16];
                        }

                        while (v39);
                        v28 = v83;
                        v27 = v87;
                      }
                    }

                    else
                    {
                    }

LABEL_41:
                    ++v29;
                  }

                  while (v29 != v27);
                  v27 = [services countByEnumeratingWithState:&v97 objects:v115 count:16];
                }

                while (v27);
              }

              v23 = v81 + 1;
            }

            while (v81 + 1 != v79);
            v79 = [v75 countByEnumeratingWithState:&v101 objects:v116 count:16];
          }

          while (v79);
        }

        if ([v22 count])
        {
          v43 = objc_autoreleasePoolPush();
          v88 = v69;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            home = [v77 home];
            name3 = [home name];
            name4 = [v77 name];
            *buf = 138543874;
            v119 = v45;
            v120 = 2112;
            v121 = name3;
            v122 = 2112;
            v123 = name4;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Monitoring accessory: '%@:%@'", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v43);
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v82 = v22;
          v49 = [v82 countByEnumeratingWithState:&v89 objects:v113 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v90;
            v78 = *v90;
            do
            {
              v52 = 0;
              v80 = v50;
              do
              {
                if (*v90 != v51)
                {
                  objc_enumerationMutation(v82);
                }

                v53 = *(*(&v89 + 1) + 8 * v52);
                v54 = objc_autoreleasePoolPush();
                v55 = v88;
                v56 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  v57 = HMFGetLogIdentifier();
                  service = [v53 service];
                  type2 = [service type];
                  v59 = HAPShortUUIDType();
                  characteristicType = [v53 characteristicType];
                  HAPShortUUIDType();
                  v61 = v86 = v54;
                  characteristicTypeDescription = [v53 characteristicTypeDescription];
                  *buf = 138544130;
                  v119 = v57;
                  v120 = 2112;
                  v121 = v59;
                  v122 = 2112;
                  v123 = v61;
                  v124 = 2112;
                  v125 = characteristicTypeDescription;
                  _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@+ monitoring service: '%@', characteristic: '[%@] (%@)'", buf, 0x2Au);

                  v51 = v78;
                  v50 = v80;

                  v54 = v86;
                }

                objc_autoreleasePoolPop(v54);
                ++v52;
              }

              while (v50 != v52);
              v50 = [v82 countByEnumeratingWithState:&v89 objects:v113 count:16];
            }

            while (v50);
          }

          clientIdentifier = [(HMDWidgetTimelineRefresher *)v88 clientIdentifier];
          [(HMDWidgetTimelineRefresher *)v88 setNotificationEnabled:v82 forCharacteristics:clientIdentifier clientIdentifier:?];
        }

        [v71 unionSet:v22];

        v21 = v74 + 1;
      }

      while (v74 + 1 != v72);
      v72 = [hapAccessories countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v72);
  }

  v64 = objc_msgSend_copy(v71);

  return v64;
}

- (id)internalMonitorCharacteristicsForCurrentHome:(id)home activeAutoBahnWidgetKinds:(id)kinds
{
  v40 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  kindsCopy = kinds;
  v8 = objc_opt_new();
  if (homeCopy)
  {
    v9 = [(HMDWidgetTimelineRefresher *)self homeHasAnyResident:homeCopy];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        shortDescription = [homeCopy shortDescription];
        *buf = 138543618;
        v37 = v14;
        v38 = 2112;
        v39 = shortDescription;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating monitored characteristics for current home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [objc_opt_class() fetchSpecificationsForWidgetKinds:kindsCopy];
      v17 = [(HMDWidgetTimelineRefresher *)selfCopy monitorCharacteristicsForHome:homeCopy fetchSpecifications:v16];
      [v8 unionSet:v17];
    }

    else
    {
      if (v13)
      {
        v18 = HMFGetLogIdentifier();
        shortDescription2 = [homeCopy shortDescription];
        *buf = 138543618;
        v37 = v18;
        v38 = 2112;
        v39 = shortDescription2;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Not updating monitored characteristics for current home: %@ because there is no resident", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.security.singleAccessory"])
  {
    v30 = kindsCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
    homes = [homeManager homes];

    v22 = [homes countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(homes);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          if ((HMFEqualObjects() & 1) == 0 && [(HMDWidgetTimelineRefresher *)self homeHasAnyResident:v26])
          {
            v27 = +[HMDWidgetFetchSpecification allOtherHomesSingleAccessorySecurityFetchSpecifications];
            v28 = [(HMDWidgetTimelineRefresher *)self monitorCharacteristicsForHome:v26 fetchSpecifications:v27];

            [v8 unionSet:v28];
          }
        }

        v23 = [homes countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
    }

    kindsCopy = v30;
  }

  return v8;
}

- (void)updateMonitoredCharacteristicsAndRefreshWidgetTimelines
{
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) monitoredCharacteristics];
  v3 = objc_msgSend_copy(v2);

  v4 = [*(a1 + 32) accessoriesMonitoredForReachability];
  [*(a1 + 32) stopMonitoringOldCharacteristics];
  v5 = *(a1 + 32);
  v6 = [v5 homeManager];
  v7 = [*(a1 + 32) currentHomeUUID];
  v8 = [v6 _homeWithUUID:v7];
  v9 = [*(a1 + 32) activeAutoBahnWidgetKinds];
  v10 = [v5 internalMonitorCharacteristicsForCurrentHome:v8 activeAutoBahnWidgetKinds:v9];
  [*(a1 + 32) setMonitoredCharacteristics:v10];

  v11 = [*(a1 + 32) accessoriesMonitoredForReachability];
  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_2;
  v14[3] = &unk_2797359B0;
  v14[4] = v12;
  v15 = v3;
  v13 = v3;
  [v12 updateReachabilityMonitorWithPreviousAccessories:v4 currentAccessories:v11 completion:v14];
}

void __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_3;
  v5[3] = &unk_2797359B0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __85__HMDWidgetTimelineRefresher_updateMonitoredCharacteristicsAndRefreshWidgetTimelines__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) monitoredCharacteristics];
  LOBYTE(v2) = [v2 isEqualToSet:v3];

  if ((v2 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Refreshing all Home widgets because of major changes / daemon restart", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 40) forceUpdateAutobahnTimelineHandler];
    v9 = [*(a1 + 40) activeAutoBahnWidgetKinds];
    (v8)[2](v8, v9);
  }
}

- (void)registerForDarwinNotifications
{
  v28 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  darwinNotificationProvider = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
  workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke;
  v19[3] = &unk_27972FE68;
  objc_copyWeak(&v20, &location);
  v5 = [darwinNotificationProvider notifyRegisterDispatch:"com.apple.Home.homeSensingChanged" outToken:&self->_homeSensingChangedNotificationToken queue:workQueue handler:v19];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v9;
      v24 = 2080;
      v25 = "com.apple.Home.homeSensingChanged";
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to register notification for %s with error: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v6);
  }

  darwinNotificationProvider2 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
  workQueue2 = [(HMDWidgetTimelineRefresher *)self workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke_202;
  v17[3] = &unk_27972FE68;
  objc_copyWeak(&v18, &location);
  v12 = [darwinNotificationProvider2 notifyRegisterDispatch:"com.apple.Home.selectedHomeChanged" outToken:&self->_selectedHomeChangedNotificationToken queue:workQueue2 handler:v17];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v16;
      v24 = 2080;
      v25 = "com.apple.Home.selectedHomeChanged";
      v26 = 1024;
      v27 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to register notification for %s with error: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleHomeSensingChangedNotification];
}

void __60__HMDWidgetTimelineRefresher_registerForDarwinNotifications__block_invoke_202(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSelectedHomeChangedNotification];
}

- (void)registerForMessagesWithMessageDispatcher:(id)dispatcher
{
  v7[1] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1580] receiver:self policies:v6 selector:sel_handleMonitorCharacteristicsForWidget_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1568] receiver:self policies:v6 selector:sel_handleFetchState_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1590] receiver:self policies:v6 selector:sel_handlePerformRequests_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1578] receiver:self policies:v6 selector:sel_handleMonitorActionSetsForWidget_];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CD1570] receiver:self policies:v6 selector:sel_handleFetchStateForActionSets_];
}

- (void)configure
{
  v42 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDWidgetTimelineRefresher *)self homeManager];
  if (homeManager)
  {
    [(HMDWidgetTimelineRefresher *)self configureSwiftExtensions];
    notificationCenter = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_processCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

    notificationCenter2 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleCurrentOrPrimaryHomeChangedNotification_ name:@"HMDNotificationCurrentHomeDidChange" object:homeManager];

    notificationCenter3 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleCurrentOrPrimaryHomeChangedNotification_ name:@"HMDNotificationPrimaryHomeDidChange" object:homeManager];

    notificationCenter4 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleHomeAddedNotification_ name:@"HMDHomeAddedNotification" object:homeManager];

    notificationCenter5 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter5 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

    notificationCenter6 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter6 addObserver:self selector:sel_handleAccessoryAddedNotification_ name:@"HMDNotificationHomeAddedAccessory" object:0];

    notificationCenter7 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter7 addObserver:self selector:sel_handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    notificationCenter8 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter8 addObserver:self selector:sel_handleResidentDeviceChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    notificationCenter9 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter9 addObserver:self selector:sel_handleResidentDeviceAddedOrRemovedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    notificationCenter10 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter10 addObserver:self selector:sel_handleResidentDeviceAddedOrRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

    notificationCenter11 = [(HMDWidgetTimelineRefresher *)self notificationCenter];
    [notificationCenter11 addObserver:self selector:sel_handleNotifiedXPCClientsOfHomeConfigurationChangeNotification_ name:@"HMDHomeManagerNotifiedXPCClientsOfHomeConfigurationChangeNotification" object:0];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = +[HMDWidgetFetchSpecification allHomeLockScreenWidgetKinds];
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
          [defaultCenter addObserver:self selector:sel_handleNotificationOfPossibleNewWidget_ name:v18 object:0 suspensionBehavior:4];
        }

        v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    messageDispatcher = [homeManager messageDispatcher];
    [(HMDWidgetTimelineRefresher *)self registerForMessagesWithMessageDispatcher:messageDispatcher];

    [(HMDWidgetTimelineRefresher *)self registerForDarwinNotifications];
    workQueue = [(HMDWidgetTimelineRefresher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);

    widgetRefreshDispatchTimer = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    v23 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(widgetRefreshDispatchTimer, v23, 0x68C61714000uLL, 0x8BB2C97000uLL);

    objc_initWeak(location, self);
    widgetRefreshDispatchTimer2 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke_2;
    handler[3] = &unk_279732FD8;
    objc_copyWeak(&v32, location);
    dispatch_source_set_event_handler(widgetRefreshDispatchTimer2, handler);

    widgetRefreshDispatchTimer3 = [(HMDWidgetTimelineRefresher *)self widgetRefreshDispatchTimer];
    dispatch_activate(widgetRefreshDispatchTimer3);

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v29;
      v40 = 2080;
      v41 = "[HMDWidgetTimelineRefresher configure]";
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil during %s, no widgets configured.", location, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }
}

void __39__HMDWidgetTimelineRefresher_configure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__HMDWidgetTimelineRefresher_configure__block_invoke_3;
  v2[3] = &unk_279735D00;
  v2[4] = WeakRetained;
  [WeakRetained fetchAndStoreActiveAutoBahnWidgetKindsWithCompletion:v2];
}

- (void)dealloc
{
  if (self->_homeSensingChangedNotificationToken != -1)
  {
    darwinNotificationProvider = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
    [darwinNotificationProvider notifyCancel:self->_homeSensingChangedNotificationToken];
  }

  if (self->_selectedHomeChangedNotificationToken != -1)
  {
    darwinNotificationProvider2 = [(HMDWidgetTimelineRefresher *)self darwinNotificationProvider];
    [darwinNotificationProvider2 notifyCancel:self->_selectedHomeChangedNotificationToken];
  }

  v5.receiver = self;
  v5.super_class = HMDWidgetTimelineRefresher;
  [(HMDWidgetTimelineRefresher *)&v5 dealloc];
}

- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager queue:(id)queue dataSource:(id)source reachabilityUpdateDispatchDelayNs:(int64_t)ns forceUpdateTimelineDispatchDelayNs:(int64_t)delayNs
{
  v90 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  queueCopy = queue;
  sourceCopy = source;
  v80.receiver = self;
  v80.super_class = HMDWidgetTimelineRefresher;
  v14 = [(HMDWidgetTimelineRefresher *)&v80 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, managerCopy);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_dataSource, source);
    v16 = [MEMORY[0x277CBEB98] set];
    widgetKindsToUpdate = v15->_widgetKindsToUpdate;
    v15->_widgetKindsToUpdate = v16;

    v18 = objc_opt_new();
    accessoryIsReachableByUUID = v15->_accessoryIsReachableByUUID;
    v15->_accessoryIsReachableByUUID = v18;

    v20 = [MEMORY[0x277CBEB98] set];
    monitoredCharacteristics = v15->_monitoredCharacteristics;
    v15->_monitoredCharacteristics = v20;

    v22 = [sourceCopy notificationCenterForTimelineRefresher:v15];
    notificationCenter = v15->_notificationCenter;
    v15->_notificationCenter = v22;

    v24 = [sourceCopy darwinNotificationProviderForTimelineRefresher:v15];
    darwinNotificationProvider = v15->_darwinNotificationProvider;
    v15->_darwinNotificationProvider = v24;

    v26 = [sourceCopy widgetConfigurationReaderForTimelineRefresher:v15];
    widgetConfigurationReader = v15->_widgetConfigurationReader;
    v15->_widgetConfigurationReader = v26;

    v28 = [sourceCopy widgetTimelineControllerForTimelineRefresher:v15];
    timelineController = v15->_timelineController;
    v15->_timelineController = v28;

    v30 = [sourceCopy logEventSubmitterForTimelineRefresher:v15];
    logEventSubmitter = v15->_logEventSubmitter;
    v15->_logEventSubmitter = v30;

    v32 = [sourceCopy timerManagerForTimelineRefresher:v15 options:0];
    timerManager = v15->_timerManager;
    v15->_timerManager = v32;

    [(HMFTimerManager *)v15->_timerManager setDelegate:v15];
    [(HMFTimerManager *)v15->_timerManager setDelegateQueue:v15->_workQueue];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDWidgetTimelineRefresher.Autobahn", @"com.apple.HomeKitDaemon"];
    clientIdentifier = v15->_clientIdentifier;
    v15->_clientIdentifier = v34;

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDWidgetTimelineRefresher", @"com.apple.HomeKitDaemon"];
    clientIdentifierForExplicitlyMonitoredCharacteristics = v15->_clientIdentifierForExplicitlyMonitoredCharacteristics;
    v15->_clientIdentifierForExplicitlyMonitoredCharacteristics = v36;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    monitoredCharacteristicsMapByWidget = v15->_monitoredCharacteristicsMapByWidget;
    v15->_monitoredCharacteristicsMapByWidget = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    monitoredActionSetsMapByWidget = v15->_monitoredActionSetsMapByWidget;
    v15->_monitoredActionSetsMapByWidget = dictionary2;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cachedValueByCharacteristic = v15->_cachedValueByCharacteristic;
    v15->_cachedValueByCharacteristic = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cachedIsOnStateByActionSet = v15->_cachedIsOnStateByActionSet;
    v15->_cachedIsOnStateByActionSet = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRequestValueByUUID = v15->_pendingRequestValueByUUID;
    v15->_pendingRequestValueByUUID = strongToStrongObjectsMapTable3;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    cachedActionSetExecuteErrorByUUID = v15->_cachedActionSetExecuteErrorByUUID;
    v15->_cachedActionSetExecuteErrorByUUID = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    cachedActionSetExecuteErrorTimerContextByUUID = v15->_cachedActionSetExecuteErrorTimerContextByUUID;
    v15->_cachedActionSetExecuteErrorTimerContextByUUID = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    characteristicsToPreviouslySeenValues = v15->_characteristicsToPreviouslySeenValues;
    v15->_characteristicsToPreviouslySeenValues = dictionary5;

    v54 = [MEMORY[0x277CBEB98] set];
    activeAutoBahnWidgetKinds = v15->_activeAutoBahnWidgetKinds;
    v15->_activeAutoBahnWidgetKinds = v54;

    v56 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15->_workQueue);
    widgetRefreshDispatchTimer = v15->_widgetRefreshDispatchTimer;
    v15->_widgetRefreshDispatchTimer = v56;

    v15->_homeSensingChangedNotificationToken = -1;
    v15->_selectedHomeChangedNotificationToken = -1;
    v15->_reachabilityUpdateDispatchDelayNs = ns;
    v15->_forceUpdateTimelineDispatchDelayNs = delayNs;
    v58 = [MEMORY[0x277CBEB98] set];
    widgetRefreshCoalesceKinds = v15->_widgetRefreshCoalesceKinds;
    v15->_widgetRefreshCoalesceKinds = v58;

    currentHomeUUID = [managerCopy currentHomeUUID];
    v61 = currentHomeUUID;
    if (currentHomeUUID)
    {
      v62 = 0;
      uUID = currentHomeUUID;
    }

    else
    {
      primaryHomeUUID = [managerCopy primaryHomeUUID];
      ns = primaryHomeUUID;
      if (primaryHomeUUID)
      {
        v62 = 0;
        uUID = primaryHomeUUID;
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        ns = 0;
        v62 = 1;
      }
    }

    objc_storeStrong(&v15->_currentHomeUUID, uUID);
    if (v62)
    {
    }

    if (!v61)
    {
    }

    v65 = objc_autoreleasePoolPush();
    v66 = v15;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      primaryHomeUUID2 = [managerCopy primaryHomeUUID];

      if (primaryHomeUUID2)
      {
        primaryHomeUUID3 = [managerCopy primaryHomeUUID];
        [primaryHomeUUID3 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v82 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      currentHomeUUID2 = [managerCopy currentHomeUUID];

      if (currentHomeUUID2)
      {
        currentHomeUUID3 = [managerCopy currentHomeUUID];
        [currentHomeUUID3 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v81 = *buf;
      *buf = 138544386;
      *&buf[4] = v68;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v84 = 2096;
      v85 = &v82;
      v86 = 1040;
      v87 = 16;
      v88 = 2096;
      v89 = &v81;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@primary home is %{uuid_t}.16P, current home is %{uuid_t}.16P", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v65);
    objc_initWeak(buf, v66);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__HMDWidgetTimelineRefresher_initWithHomeManager_queue_dataSource_reachabilityUpdateDispatchDelayNs_forceUpdateTimelineDispatchDelayNs___block_invoke;
    aBlock[3] = &unk_27972F178;
    objc_copyWeak(&v79, buf);
    v73 = _Block_copy(aBlock);
    forceUpdateAutobahnTimelineHandler = v66->_forceUpdateAutobahnTimelineHandler;
    v66->_forceUpdateAutobahnTimelineHandler = v73;

    [(HMDWidgetTimelineRefresher *)v66 initSwiftExtensions];
    v75 = v66;
    objc_destroyWeak(&v79);
    objc_destroyWeak(buf);
  }

  return v15;
}

void __136__HMDWidgetTimelineRefresher_initWithHomeManager_queue_dataSource_reachabilityUpdateDispatchDelayNs_forceUpdateTimelineDispatchDelayNs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained forceUpdateTimelineForWidgetKinds:v3];
}

- (HMDWidgetTimelineRefresher)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = HMDispatchQueueNameString();
  uTF8String = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(uTF8String, v7);
  createDataSource = [(HMDWidgetTimelineRefresher *)self createDataSource];
  v10 = [(HMDWidgetTimelineRefresher *)self initWithHomeManager:managerCopy queue:v8 dataSource:createDataSource reachabilityUpdateDispatchDelayNs:1000000000 forceUpdateTimelineDispatchDelayNs:333333333];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t133 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t133, &__block_literal_global_345_148580);
  }

  v3 = logCategory__hmf_once_v134;

  return v3;
}

uint64_t __41__HMDWidgetTimelineRefresher_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v134;
  logCategory__hmf_once_v134 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)fetchSpecificationsForWidgetKinds:(id)kinds
{
  kindsCopy = kinds;
  v4 = objc_opt_new();
  if ([kindsCopy containsObject:@"com.apple.Home.widget.summary.category"])
  {
    v5 = +[HMDWidgetFetchSpecification lightsFetchSpecifications];
    [v4 unionSet:v5];

    v6 = +[HMDWidgetFetchSpecification mainHomeSecurityFetchSpecifications];
    [v4 unionSet:v6];
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.lights.category"])
  {
    v7 = +[HMDWidgetFetchSpecification lightsFetchSpecifications];
    [v4 unionSet:v7];
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.security.category"])
  {
    v8 = +[HMDWidgetFetchSpecification mainHomeSecurityFetchSpecifications];
    [v4 unionSet:v8];
  }

  if ([kindsCopy containsObject:@"com.apple.Home.widget.security.singleAccessory"])
  {
    v9 = +[HMDWidgetFetchSpecification allOtherHomesSingleAccessorySecurityFetchSpecifications];
    [v4 unionSet:v9];
  }

  v10 = objc_msgSend_copy(v4);

  return v10;
}

@end