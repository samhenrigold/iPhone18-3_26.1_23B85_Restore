@interface CDMonitorManager
+ (id)monitorManagerForEventStreams:(id)streams domain:(unint64_t)domain;
- (BOOL)_hasMonitorForStreamName:(id)name;
- (BOOL)hasMonitor:(id)monitor;
- (CDMonitorManager)initWithEventStreams:(id)streams domain:(unint64_t)domain;
- (id)_allMonitors;
- (id)_allStreamNames;
- (id)_currentEventForStreamName:(id)name;
- (id)_lastUpdateForStreamName:(id)name;
- (id)_monitorForStreamName:(id)name;
- (id)currentEvent;
- (id)currentEventForStream:(id)stream;
- (id)lastUpdate;
- (id)lastUpdateForStream:(id)stream;
- (void)_addMonitor:(id)monitor forStreamName:(id)name;
- (void)_removeMonitorForStreamName:(id)name;
- (void)_setHistoricalHandler:(id)handler forStreamName:(id)name;
- (void)_setInstantHandler:(id)handler forStreamName:(id)name;
- (void)_startMonitorForStreamName:(id)name;
- (void)_stopMonitorForStreamName:(id)name;
- (void)_updateForStreamName:(id)name;
- (void)addMonitor:(id)monitor;
- (void)deliverNotificationEvent:(id)event;
- (void)handleShutdownNotification;
- (void)populateCurrentValueForStreamName:(id)name;
- (void)removeMonitor:(id)monitor;
- (void)setHistoricalDeletingHandler:(id)handler;
- (void)setHistoricalHandler:(id)handler;
- (void)setHistoricalHandler:(id)handler forStream:(id)stream;
- (void)setInstantHandler:(id)handler;
- (void)setInstantHandler:(id)handler forStream:(id)stream;
- (void)setShutdownHandler:(id)handler;
- (void)start;
- (void)startMonitorForStream:(id)stream;
- (void)stop;
- (void)stopMonitorForStream:(id)stream;
- (void)update;
- (void)updateForStream:(id)stream;
@end

@implementation CDMonitorManager

- (id)_allMonitors
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_monitors allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (CDMonitorManager)initWithEventStreams:(id)streams domain:(unint64_t)domain
{
  v108 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  v99.receiver = self;
  v99.super_class = CDMonitorManager;
  observer = [(CDMonitorManager *)&v99 init];
  if (!observer)
  {
    goto LABEL_71;
  }

  context = objc_autoreleasePoolPush();
  if (!KnowledgeMonitorLibraryCore(0))
  {
    v8 = +[_CDLogging contextChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDMonitorManager initWithEventStreams:domain:];
    }

    goto LABEL_17;
  }

  *location = 0;
  if (!KnowledgeMonitorLibraryCore(location))
  {
    goto LABEL_72;
  }

  if (*location)
  {
    free(*location);
  }

  if (!UsageTrackingLibraryCore(0))
  {
    contextChannel = +[_CDLogging contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
    {
      [CDMonitorManager initWithEventStreams:domain:];
    }

    goto LABEL_15;
  }

  *location = 0;
  v5 = UsageTrackingLibraryCore(location);
  v6 = *location;
  if (v5)
  {
    self = 0x1E7366000;
    if (!*location)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_72:
    v6 = abort_report_np("%s", *location);
    __break(1u);
  }

  free(v6);
LABEL_9:
  contextChannel = [(NSMutableSet *)self[6]._shutdownHandlingMonitors contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

LABEL_15:

  v8 = +[_CDLogging contextChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

LABEL_17:

  v68 = _CDDomainAvailabilityDescription(domain);
  v9 = +[_CDLogging contextChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = *(observer + 9);
  *(observer + 9) = v10;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v66 = [MEMORY[0x1E695DFA8] set];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  allEventStreams = [streamsCopy allEventStreams];
  obj = [allEventStreams allValues];

  v13 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v13)
  {
    v73 = *v96;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v96 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v95 + 1) + 8 * i);
        eventStreamProperties = [v15 eventStreamProperties];
        name = [eventStreamProperties name];

        if (!name)
        {
          monitorClass = +[_CDLogging contextChannel];
          if (os_log_type_enabled(monitorClass, OS_LOG_TYPE_ERROR))
          {
            [(CDMonitorManager *)v105 initWithEventStreams:v15 domain:&v106, monitorClass];
          }

          goto LABEL_63;
        }

        lowercaseString = [name lowercaseString];
        v19 = [lowercaseString containsString:@"(internal)"];

        if (!v19 || +[_CDDeviceInfo isRunningOnInternalBuild])
        {
          eventStreamProperties2 = [v15 eventStreamProperties];
          isAvailable = [eventStreamProperties2 isAvailable];

          if (isAvailable)
          {
            eventStreamProperties3 = [v15 eventStreamProperties];
            v23 = ([eventStreamProperties3 domainAvailability] & domain) == 0;

            if (!v23)
            {
              eventStreamProperties4 = [v15 eventStreamProperties];
              monitorClass = [eventStreamProperties4 monitorClass];

              if (monitorClass)
              {
                v26 = NSClassFromString(&monitorClass->isa);
                v27 = v26;
                if (v26)
                {
                  v28 = objc_alloc_init(v26);
                  if (v28)
                  {
                    eventStreamProperties5 = [v15 eventStreamProperties];
                    isInstant = [eventStreamProperties5 isInstant];

                    eventStreamProperties6 = [v15 eventStreamProperties];
                    isHistorical = [eventStreamProperties6 isHistorical];

                    eventStreamProperties7 = [v15 eventStreamProperties];
                    setupOnDemand = [eventStreamProperties7 setupOnDemand];

                    eventStreamProperties8 = [v15 eventStreamProperties];
                    pollingPeriod = [eventStreamProperties8 pollingPeriod];

                    v36 = +[_CDLogging knowledgeChannel];
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
                      *location = 138544130;
                      *&location[4] = name;
                      v101 = 1024;
                      *v102 = isInstant;
                      *&v102[4] = 1024;
                      *&v102[6] = isHistorical;
                      v103 = 2048;
                      v104 = pollingPeriod;
                      _os_log_debug_impl(&dword_191750000, v36, OS_LOG_TYPE_DEBUG, "Monitor %{public}@ IsInstant=%d, IsHistorical=%d, PollingPeriod=%ld", location, 0x22u);
                    }

                    if (isInstant && [v28 conformsToProtocol:&unk_1F0624888])
                    {
                      v91[0] = MEMORY[0x1E69E9820];
                      v91[1] = 3221225472;
                      v91[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke;
                      v91[3] = &unk_1E7369FC8;
                      v92 = observer;
                      v93 = name;
                      v94 = v15;
                      [v28 setInstantHandler:v91];
                    }

                    if (isHistorical)
                    {
                      if ([v28 conformsToProtocol:&unk_1F06248E8])
                      {
                        v87[0] = MEMORY[0x1E69E9820];
                        v87[1] = 3221225472;
                        v87[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85;
                        v87[3] = &unk_1E7369FF0;
                        v65 = observer;
                        v88 = v65;
                        v37 = name;
                        v89 = v37;
                        v90 = v15;
                        [v28 setHistoricalHandler:v87];
                        if ((pollingPeriod - 1) <= 6)
                        {
                          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduetd.monitor.%@", v37];
                          objc_initWeak(location, v28);
                          v85[0] = MEMORY[0x1E69E9820];
                          v85[1] = 3221225472;
                          v85[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_92;
                          v85[3] = &unk_1E7367220;
                          objc_copyWeak(&v86, location);
                          v39 = [_CDPeriodicSchedulerJob jobWithPeriod:pollingPeriod schedulerJobName:v38 handler:v85];
                          v40 = +[_CDPeriodicScheduler sharedInstance];
                          [v40 registerJob:v39];

                          objc_destroyWeak(&v86);
                          objc_destroyWeak(location);
                        }

                        eventStreamProperties9 = [v15 eventStreamProperties];
                        shouldSaveCurrentEventOnShutdown = [eventStreamProperties9 shouldSaveCurrentEventOnShutdown];

                        if (shouldSaveCurrentEventOnShutdown)
                        {
                          v43 = v28;
                          [*(observer + 9) addObject:v43];
                          v80[0] = MEMORY[0x1E69E9820];
                          v80[1] = 3221225472;
                          v80[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2;
                          v80[3] = &unk_1E736A018;
                          v81 = v65;
                          v82 = v37;
                          v83 = v15;
                          v84 = v43;
                          v44 = v43;
                          [v44 setShutdownHandler:v80];
                        }
                      }

                      if ([v28 conformsToProtocol:&unk_1F0624948])
                      {
                        v76[0] = MEMORY[0x1E69E9820];
                        v76[1] = 3221225472;
                        v76[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101;
                        v76[3] = &unk_1E736A040;
                        v77 = observer;
                        v78 = name;
                        v79 = v15;
                        [v28 setHistoricalDeletingHandler:v76];
                      }
                    }

                    [dictionary setObject:v28 forKey:name];
                    if (setupOnDemand)
                    {
                      [v66 addObject:name];
                    }
                  }

                  else
                  {
                    v48 = +[_CDLogging contextChannel];
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v49 = NSStringFromClass(v27);
                      *location = 138543618;
                      *&location[4] = v49;
                      v101 = 2114;
                      *v102 = name;
                      _os_log_error_impl(&dword_191750000, v48, OS_LOG_TYPE_ERROR, "Unable to initialize monitor %{public}@ for streamName %{public}@", location, 0x16u);
                    }
                  }
                }

                else
                {
                  v28 = +[_CDLogging contextChannel];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *location = 138543618;
                    *&location[4] = monitorClass;
                    v101 = 2114;
                    *v102 = name;
                    _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "Unable to find monitor class %{public}@ for streamName %{public}@", location, 0x16u);
                  }
                }
              }

              else
              {
                v28 = +[_CDLogging contextChannel];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *location = 138543362;
                  *&location[4] = name;
                  _os_log_impl(&dword_191750000, v28, OS_LOG_TYPE_INFO, "No monitor for %{public}@", location, 0xCu);
                }
              }

              goto LABEL_63;
            }

            monitorClass = +[_CDLogging contextChannel];
            if (os_log_type_enabled(monitorClass, OS_LOG_TYPE_INFO))
            {
              *location = 138412546;
              *&location[4] = v68;
              v101 = 2112;
              *v102 = name;
              v45 = monitorClass;
              v46 = "Monitor is not supported in the %@ domain: %@ ";
              v47 = 22;
LABEL_54:
              _os_log_impl(&dword_191750000, v45, OS_LOG_TYPE_INFO, v46, location, v47);
            }
          }

          else
          {
            monitorClass = +[_CDLogging contextChannel];
            if (os_log_type_enabled(monitorClass, OS_LOG_TYPE_INFO))
            {
              *location = 138412290;
              *&location[4] = name;
              v45 = monitorClass;
              v46 = "Monitor is not supported on this platform: %@";
              v47 = 12;
              goto LABEL_54;
            }
          }

LABEL_63:
        }
      }

      v13 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v13);
  }

  objc_storeStrong(observer + 1, dictionary);
  objc_storeStrong(observer + 2, v66);
  v50 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v52 = *(observer + 7);
  *(observer + 7) = dictionary2;

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v54 = *(observer + 8);
  *(observer + 8) = dictionary3;

  v55 = dispatch_queue_create("com.apple.CDMonitorManager.workQueue", MEMORY[0x1E69E96A8]);
  v56 = *(observer + 10);
  *(observer + 10) = v55;

  v57 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *location = 0;
    _os_log_impl(&dword_191750000, v57, OS_LOG_TYPE_INFO, "Registering for device shutdown notification", location, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observer, _handleShutdownNotification, @"com.apple.springboard.deviceWillShutDown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  signal(15, 1);
  v59 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, MEMORY[0x1E69E96A0]);
  v60 = *(observer + 11);
  *(observer + 11) = v59;

  v61 = *(observer + 11);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_107;
  handler[3] = &unk_1E7367440;
  v75 = observer;
  dispatch_source_set_event_handler(v61, handler);
  dispatch_resume(*(observer + 11));

  objc_autoreleasePoolPop(context);
LABEL_71:

  return observer;
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  if (v4 || (v4 = MEMORY[0x193B00C50](*(a1[4] + 24))) != 0)
  {
    v5 = v4;
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_cold_1();
    }

    (v5)[2](v5, a1[6], v3);
  }
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  if (v4 || (v4 = MEMORY[0x193B00C50](*(a1[4] + 32))) != 0)
  {
    v5 = v4;
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85_cold_1();
    }

    (v5)[2](v5, a1[6], v3);
  }
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_92(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained update];

  objc_autoreleasePoolPop(v2);
}

uint64_t __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 48))
  {
    v1 = result;
    v2 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2_cold_1();
    }

    return (*(*(*(v1 + 32) + 48) + 16))();
  }

  return result;
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 40))
  {
    v3 = a2;
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101_cold_1();
    }

    (*(*(*(a1 + 32) + 40) + 16))();
  }
}

uint64_t __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_107(uint64_t a1)
{
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "Got a SIGTERM.", v4, 2u);
  }

  return [*(a1 + 32) handleShutdownNotification];
}

+ (id)monitorManagerForEventStreams:(id)streams domain:(unint64_t)domain
{
  streamsCopy = streams;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CDMonitorManager_monitorManagerForEventStreams_domain___block_invoke;
  v11[3] = &unk_1E7368B18;
  v12 = streamsCopy;
  domainCopy = domain;
  v6 = monitorManagerForEventStreams_domain__onceToken;
  v7 = streamsCopy;
  if (v6 != -1)
  {
    dispatch_once(&monitorManagerForEventStreams_domain__onceToken, v11);
  }

  v8 = monitorManagerForEventStreams_domain__sharedInstance;
  v9 = monitorManagerForEventStreams_domain__sharedInstance;

  return v8;
}

uint64_t __57__CDMonitorManager_monitorManagerForEventStreams_domain___block_invoke(uint64_t a1)
{
  v1 = [[CDMonitorManager alloc] initWithEventStreams:*(a1 + 32) domain:*(a1 + 40)];
  v2 = monitorManagerForEventStreams_domain__sharedInstance;
  monitorManagerForEventStreams_domain__sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)_monitorForStreamName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_monitors objectForKeyedSubscript:nameCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allStreamNames
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_monitors allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (void)_setInstantHandler:(id)handler forStreamName:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x193B00C50](handler);
  [(NSMutableDictionary *)self->_instantHandlerMap setObject:v7 forKeyedSubscript:nameCopy];
}

- (void)setInstantHandler:(id)handler forStream:(id)stream
{
  handlerCopy = handler;
  streamCopy = stream;
  v7 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    [(CDMonitorManager *)self _setInstantHandler:handlerCopy forStreamName:name];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setInstantHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalInstantHandler = self->_generalInstantHandler;
  self->_generalInstantHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)_setHistoricalHandler:(id)handler forStreamName:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x193B00C50](handler);
  [(NSMutableDictionary *)self->_historicalHandlerMap setObject:v7 forKeyedSubscript:nameCopy];
}

- (void)setHistoricalHandler:(id)handler forStream:(id)stream
{
  handlerCopy = handler;
  streamCopy = stream;
  v7 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    [(CDMonitorManager *)self _setHistoricalHandler:handlerCopy forStreamName:name];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setHistoricalHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalHistoricalHandler = self->_generalHistoricalHandler;
  self->_generalHistoricalHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)setHistoricalDeletingHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalHistoricalDeletingHandler = self->_generalHistoricalDeletingHandler;
  self->_generalHistoricalDeletingHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)setShutdownHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalShutdownHandler = self->_generalShutdownHandler;
  self->_generalShutdownHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)_startMonitorForStreamName:(id)name
{
  v4 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v5 = os_transaction_create();
  if (v4 && [v4 conformsToProtocol:&unk_1F0624888])
  {
    monitorWorkQueue = self->_monitorWorkQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__CDMonitorManager__startMonitorForStreamName___block_invoke;
    v9[3] = &unk_1E7367440;
    v10 = v4;
    v7 = v5;
    v8 = v9;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
    block[3] = &unk_1E7367818;
    v12 = v7;
    v13 = v8;
    dispatch_async(monitorWorkQueue, block);
  }
}

- (void)startMonitorForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  v8 = +[_CDLogging knowledgeChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (name)
  {
    if (v9)
    {
      [CDMonitorManager startMonitorForStream:];
    }

    [(CDMonitorManager *)self _startMonitorForStreamName:name];
  }

  else
  {
    if (v9)
    {
      [(CDMonitorManager *)v8 startMonitorForStream:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v4 = [_allStreamNames countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_lazyMonitorNames containsObject:v8]& 1) != 0)
        {
          v9 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v16 = v8;
            _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "------> Skipping start for OnDemand monitor : %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [(CDMonitorManager *)self _startMonitorForStreamName:v8];
        }
      }

      v5 = [_allStreamNames countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_stopMonitorForStreamName:(id)name
{
  v4 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:&unk_1F0624888])
  {
    monitorWorkQueue = self->_monitorWorkQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__CDMonitorManager__stopMonitorForStreamName___block_invoke;
    v11[3] = &unk_1E7367440;
    v12 = v5;
    v7 = v11;
    v8 = monitorWorkQueue;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
    block[3] = &unk_1E7367818;
    v14 = v9;
    v15 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }
}

- (void)stopMonitorForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  v8 = +[_CDLogging knowledgeChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (name)
  {
    if (v9)
    {
      [CDMonitorManager stopMonitorForStream:];
    }

    [(CDMonitorManager *)self _stopMonitorForStreamName:name];
  }

  else
  {
    if (v9)
    {
      [(CDMonitorManager *)v8 stopMonitorForStream:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)stop
{
  v18 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v4 = [_allStreamNames countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_lazyMonitorNames containsObject:v8]& 1) != 0)
        {
          v9 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v16 = v8;
            _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "------> Skipping stop for OnDemand monitor : %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [(CDMonitorManager *)self _stopMonitorForStreamName:v8];
        }
      }

      v5 = [_allStreamNames countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
}

- (void)populateCurrentValueForStreamName:(id)name
{
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  v5 = [(CDMonitorManager *)self _monitorForStreamName:nameCopy];
  v6 = v5;
  if (v5 && [v5 conformsToProtocol:&unk_1F0624888])
  {
    [v6 synchronouslyReflectCurrentValue];
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_currentEventForStreamName:(id)name
{
  v3 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F0624888])
  {
    currentEvent = [v4 currentEvent];
  }

  else
  {
    currentEvent = 0;
  }

  return currentEvent;
}

- (id)currentEventForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    v8 = [(CDMonitorManager *)self _currentEventForStreamName:name];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)currentEvent
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v6 = [_allStreamNames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CDMonitorManager *)self _currentEventForStreamName:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKey:v10];
        }
      }

      v7 = [_allStreamNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  objc_autoreleasePoolPop(v3);

  return v12;
}

- (void)_updateForStreamName:(id)name
{
  nameCopy = name;
  v5 = [(CDMonitorManager *)self _monitorForStreamName:nameCopy];
  v6 = v5;
  if (v5 && [v5 conformsToProtocol:&unk_1F06248E8])
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CDMonitorManager _updateForStreamName:];
    }

    [v6 update];
  }
}

- (void)updateForStream:(id)stream
{
  streamCopy = stream;
  v4 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    [(CDMonitorManager *)self _updateForStreamName:name];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)update
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v5 = [_allStreamNames countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_allStreamNames);
        }

        [(CDMonitorManager *)self _updateForStreamName:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [_allStreamNames countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_lastUpdateForStreamName:(id)name
{
  v3 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F06248E8])
  {
    lastUpdate = [v4 lastUpdate];
  }

  else
  {
    lastUpdate = 0;
  }

  return lastUpdate;
}

- (id)lastUpdateForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    v8 = [(CDMonitorManager *)self _lastUpdateForStreamName:name];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)lastUpdate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v6 = [_allStreamNames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CDMonitorManager *)self _lastUpdateForStreamName:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKey:v10];
        }
      }

      v7 = [_allStreamNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  objc_autoreleasePoolPop(v3);

  return v12;
}

- (void)deliverNotificationEvent:(id)event
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v16 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  if (eventCopy)
  {
    context = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(CDMonitorManager *)self _allMonitors];
    v6 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&unk_1F06249A8])
          {
            monitorWorkQueue = self->_monitorWorkQueue;
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __45__CDMonitorManager_deliverNotificationEvent___block_invoke;
            v18[3] = &unk_1E7367710;
            v18[4] = v10;
            v19 = eventCopy;
            v12 = v16;
            v13 = v18;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
            block[3] = &unk_1E7367818;
            v25 = v12;
            v26 = v13;
            v14 = v12;
            dispatch_async(monitorWorkQueue, block);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v7);
    }

    v5 = context;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleShutdownNotification
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_shutdownHandlingMonitors;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    v7 = MEMORY[0x1E69E9C10];
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        shutdownHandler = [*(*(&v13 + 1) + 8 * v8) shutdownHandler];
        if (shutdownHandler)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            *buf = v12;
            v18 = v11;
            _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Calling shutdown handler for monitor %@.", buf, 0xCu);
          }

          shutdownHandler[2](shutdownHandler);
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_addMonitor:(id)monitor forStreamName:(id)name
{
  monitorCopy = monitor;
  nameCopy = name;
  if (monitorCopy && nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_monitors setObject:monitorCopy forKeyedSubscript:nameCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)addMonitor:(id)monitor
{
  monitorCopy = monitor;
  v4 = objc_autoreleasePoolPush();
  eventStream = [objc_opt_class() eventStream];
  [(CDMonitorManager *)self _addMonitor:monitorCopy forStreamName:eventStream];

  objc_autoreleasePoolPop(v4);
}

- (void)_removeMonitorForStreamName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = nameCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_monitors removeObjectForKey:v6];
    objc_sync_exit(selfCopy);

    nameCopy = v6;
  }
}

- (void)removeMonitor:(id)monitor
{
  monitorCopy = monitor;
  v4 = objc_autoreleasePoolPush();
  eventStream = [objc_opt_class() eventStream];
  [(CDMonitorManager *)self _removeMonitorForStreamName:eventStream];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)_hasMonitorForStreamName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_monitors objectForKeyedSubscript:nameCopy];
    v7 = v6 != 0;

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = objc_autoreleasePoolPush();
  eventStream = [objc_opt_class() eventStream];
  LOBYTE(self) = [(CDMonitorManager *)self _hasMonitorForStreamName:eventStream];

  objc_autoreleasePoolPop(v5);
  return self;
}

- (void)initWithEventStreams:domain:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:(void *)a3 domain:(NSObject *)a4 .cold.6(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_191750000, a4, OS_LOG_TYPE_ERROR, "Stream missing name: %@", a1, 0xCu);
}

@end