@interface DRSTaskingEventPublisher
+ (BOOL)_isFirst;
- (DRSTaskingEventPublisher)initWithConfigStore:(id)store;
- (id)_activeConfigForTeamID:(id)d errorOut:(id *)out;
- (void)_addSubscriber:(unint64_t)subscriber descriptor:(id)descriptor isOldSubscriber:(BOOL)oldSubscriber;
- (void)_publishNotification:(id)notification config:(id)config;
- (void)_removeSubscriber:(unint64_t)subscriber;
- (void)publishConfigUpdateForTeamID:(id)d state:(unsigned __int8)state config:(id)config;
- (void)publishCurrentConfigForTeamID:(id)d;
@end

@implementation DRSTaskingEventPublisher

- (id)_activeConfigForTeamID:(id)d errorOut:(id *)out
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %u) AND (teamID == %@)", 2, dCopy];
  configStore = [(DRSTaskingEventPublisher *)self configStore];
  v9 = [configStore configMetadatasForPredicate:dCopy sortDescriptors:0 fetchLimit:0 errorOut:out];

  if (*out)
  {
    firstObject = DPLogHandle_ServiceEventPublisherError(v10);
    if (os_signpost_enabled(firstObject))
    {
      v12 = *out;
      *buf = 138543618;
      v33 = dCopy;
      v34 = 2114;
      v35 = v12;
      v13 = "ConfigMetadataForStateTeamFailed";
      v14 = "Could not fetch active configs metadatas for teamID %{public}@ due to error %{public}@";
LABEL_4:
      _os_signpost_emit_with_name_impl(&dword_232906000, firstObject, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, 0x16u);
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  if (v9 && [v9 count])
  {
    if ([v9 count] < 2)
    {
      firstObject = [v9 firstObject];
      config = [firstObject config];
      v15 = config;
      if (config)
      {
        v22 = config;
      }

      else
      {
        v23 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA450];
        v29 = @"Metadata with nil config";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *out = [v23 errorWithDomain:@"DRSTaskingEventPublisherError" code:0 userInfo:v24];

        v26 = DPLogHandle_ServiceEventPublisherError(v25);
        if (os_signpost_enabled(v26))
        {
          configUUID = [firstObject configUUID];
          *buf = 138543618;
          v33 = dCopy;
          v34 = 2114;
          v35 = configUUID;
          _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ActiveMetadataMissingConfig", "Metadata for teamID %{public}@ (%{public}@) missing config", buf, 0x16u);
        }
      }

      goto LABEL_6;
    }

    v16 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"More than 1 active config";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *out = [v16 errorWithDomain:@"DRSTaskingEventPublisherError" code:0 userInfo:v17];

    firstObject = DPLogHandle_ServiceEventPublisherError(v18);
    if (os_signpost_enabled(firstObject))
    {
      v19 = [v9 count];
      *buf = 134218242;
      v33 = v19;
      v34 = 2114;
      v35 = dCopy;
      v13 = "MultipleActiveConfigs";
      v14 = "Found %lu active configs for teamID %{public}@";
      goto LABEL_4;
    }

LABEL_5:
    v15 = 0;
LABEL_6:

    goto LABEL_13;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)_publishNotification:(id)notification config:(id)config
{
  v33 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  configCopy = config;
  v8 = xpc_dictionary_create(0, 0, 0);
  teamID = [notificationCopy teamID];
  xpc_dictionary_set_string(v8, "teamID", [teamID UTF8String]);

  if (!configCopy)
  {
    goto LABEL_4;
  }

  v26 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configCopy requiringSecureCoding:1 error:&v26];
  v12 = v26;
  publisher = v12;
  if (v11)
  {
    xpc_dictionary_set_data(v8, "configData", [v11 bytes], objc_msgSend(v11, "length"));

LABEL_4:
    v14 = DPLogHandle_ServiceEventPublisher(v10);
    if (os_signpost_enabled(v14))
    {
      token = [notificationCopy token];
      teamID2 = [notificationCopy teamID];
      configUUID = [configCopy configUUID];
      v18 = configUUID;
      v19 = @"(None)";
      *buf = 134349570;
      v28 = token;
      if (configUUID)
      {
        v19 = configUUID;
      }

      v29 = 2114;
      v30 = teamID2;
      v31 = 2114;
      v32 = v19;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigNotification", "Notifying subscription %{public}#llx with team ID %{public}@ of current config %{public}@", buf, 0x20u);
    }

    publisher = [(DRSTaskingEventPublisher *)self publisher];
    [notificationCopy token];
    xpc_event_publisher_fire();
    goto LABEL_14;
  }

  v20 = DPLogHandle_ServiceEventPublisherError(v12);
  if (os_signpost_enabled(v20))
  {
    configUUID2 = [configCopy configUUID];
    teamID3 = [configCopy teamID];
    localizedDescription = [publisher localizedDescription];
    v24 = localizedDescription;
    v25 = @"Unknown";
    *buf = 138543874;
    v28 = configUUID2;
    if (localizedDescription)
    {
      v25 = localizedDescription;
    }

    v29 = 2114;
    v30 = teamID3;
    v31 = 2114;
    v32 = v25;
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigSerializationFailed", "Could not serialize config %{public}@ with teamID %{public}@ due to error %{public}@", buf, 0x20u);
  }

LABEL_14:
}

- (void)publishConfigUpdateForTeamID:(id)d state:(unsigned __int8)state config:(id)config
{
  dCopy = d;
  configCopy = config;
  workQueue = [(DRSTaskingEventPublisher *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__DRSTaskingEventPublisher_publishConfigUpdateForTeamID_state_config___block_invoke;
  v13[3] = &unk_27899F7D0;
  stateCopy = state;
  v13[4] = self;
  v14 = dCopy;
  v15 = configCopy;
  v11 = configCopy;
  v12 = dCopy;
  dispatch_sync(workQueue, v13);
}

void __70__DRSTaskingEventPublisher_publishConfigUpdateForTeamID_state_config___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceEventPublisher(a1);
  if (os_signpost_enabled(v3))
  {
    v4 = DRConfigStringForState();
    *buf = 138543362;
    v19 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublishConfigUpdate", "Publishing new config state: %{public}@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(a1 + 32) subscribers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 teamID];
        v12 = [v11 isEqualToString:*(a1 + 40)];

        if (v12)
        {
          [*(a1 + 32) _publishNotification:v10 config:*(a1 + 48)];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)publishCurrentConfigForTeamID:(id)d
{
  dCopy = d;
  workQueue = [(DRSTaskingEventPublisher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__DRSTaskingEventPublisher_publishCurrentConfigForTeamID___block_invoke;
  v7[3] = &unk_27899F2E8;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_sync(workQueue, v7);
}

void __58__DRSTaskingEventPublisher_publishCurrentConfigForTeamID___block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceEventPublisher(a1);
  if (os_signpost_enabled(v3))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v36 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublishCurrentConfig", "Publishing current config for teamID: %{public}@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [*(a1 + 40) subscribers];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
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
        v12 = [v11 teamID];
        v13 = [v12 isEqualToString:*(a1 + 32)];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v29 = 0;
    v16 = [v14 _activeConfigForTeamID:v15 errorOut:&v29];
    v17 = v29;
    v18 = v17;
    if (v17)
    {
      v19 = DPLogHandle_ServiceEventPublisher(v17);
      if (os_signpost_enabled(v19))
      {
        v20 = *(a1 + 32);
        *buf = 138543618;
        v36 = v20;
        v37 = 2114;
        v38 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublishCurrentConfigError", "Error getting config for teamID: %{public}@: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v5;
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v26;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v26 != v23)
            {
              objc_enumerationMutation(v19);
            }

            [*(a1 + 40) _publishNotification:*(*(&v25 + 1) + 8 * j) config:{v16, v25}];
          }

          v22 = [v19 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v22);
      }
    }
  }
}

+ (BOOL)_isFirst
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DRSTaskingEventPublisher__isFirst__block_invoke;
  block[3] = &unk_27899EDD0;
  block[4] = &v5;
  if (_isFirst_onceToken != -1)
  {
    dispatch_once(&_isFirst_onceToken, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (DRSTaskingEventPublisher)initWithConfigStore:(id)store
{
  v34 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  _isFirst = [objc_opt_class() _isFirst];
  if (_isFirst)
  {
    v30.receiver = self;
    v30.super_class = DRSTaskingEventPublisher;
    v7 = [(DRSTaskingEventPublisher *)&v30 init];
    v8 = v7;
    if (v7)
    {
      v9 = dispatch_queue_create("DRSTaskingEventPublisher work queue", 0);
      workQueue = v8->_workQueue;
      v8->_workQueue = v9;

      v11 = [MEMORY[0x277CBEB58] set];
      subscribers = v8->_subscribers;
      v8->_subscribers = v11;

      objc_storeStrong(&v8->_configStore, store);
      v13 = dispatch_semaphore_create(0);
      workQueue = [(DRSTaskingEventPublisher *)v8 workQueue];
      v15 = xpc_event_publisher_create();
      publisher = v8->_publisher;
      v8->_publisher = v15;

      objc_initWeak(&location, v8);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v32 = 0x2020000000;
      v33 = 1;
      publisher = [(DRSTaskingEventPublisher *)v8 publisher];
      v26 = MEMORY[0x277D85DD0];
      v27 = v13;
      objc_copyWeak(&v28, &location);
      xpc_event_publisher_set_handler();

      v18 = [(DRSTaskingEventPublisher *)v8 publisher:v26];
      xpc_event_publisher_set_error_handler();

      publisher2 = [(DRSTaskingEventPublisher *)v8 publisher];
      xpc_event_publisher_activate();

      dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
      objc_destroyWeak(&v28);

      _Block_object_dispose(&buf, 8);
      objc_destroyWeak(&location);
    }

    v20 = DPLogHandle_ServiceEventPublisher(v7);
    if (os_signpost_enabled(v20))
    {
      subscribers = [(DRSTaskingEventPublisher *)v8 subscribers];
      v22 = [subscribers count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublisherInitialized", "Publisher initialization completed (%lu subscribers)", &buf, 0xCu);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v24 = DPLogHandle_ServiceEventPublisher(_isFirst);
    if (os_signpost_enabled(v24))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ThereCanBeOnlyOnePublisher", "Only one publisher can be instantiated in a given process lifetime", &buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

void __48__DRSTaskingEventPublisher_initWithConfigStore___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    if (a2 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _removeSubscriber:a3];
    }

    else if (a2 == 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v10 = MEMORY[0x238389FD0](v7);
    v11 = DPLogHandle_ServiceEventPublisher(v10);
    if (os_signpost_enabled(v11))
    {
      v13 = 136446210;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewSubscriptionDescriptor", "Descriptor: %{public}s", &v13, 0xCu);
    }

    if (v10)
    {
      free(v10);
    }

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 _addSubscriber:a3 descriptor:v8 isOldSubscriber:*(*(*(a1 + 40) + 8) + 24)];
  }
}

void __48__DRSTaskingEventPublisher_initWithConfigStore___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_ServiceEventPublisherError(a1);
  if (os_signpost_enabled(v2))
  {
    v6 = 136446210;
    v7 = xpc_strerror();
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PublisherError", "Publisher error: %{public}s. Crashing.", &v6, 0xCu);
  }

  v4 = DPLogHandle_ServiceEventPublisherError(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = xpc_strerror();
    v6 = 136446210;
    v7 = v5;
    _os_log_fault_impl(&dword_232906000, v4, OS_LOG_TYPE_FAULT, "FATAL ERROR: Tasking event publisher encountered unrecoverable error:%{public}s", &v6, 0xCu);
  }

  exit(1);
}

- (void)_addSubscriber:(unint64_t)subscriber descriptor:(id)descriptor isOldSubscriber:(BOOL)oldSubscriber
{
  oldSubscriberCopy = oldSubscriber;
  v30 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(descriptor, "teamID");
  if (string)
  {
    v9 = string;
    v10 = [DRSTaskingEventSubscriber alloc];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    v12 = [(DRSTaskingEventSubscriber *)v10 initWithTeamID:v11 token:subscriber];

    subscribers = [(DRSTaskingEventPublisher *)self subscribers];
    LODWORD(v10) = [subscribers containsObject:v12];

    if (v10)
    {
      v15 = DPLogHandle_ServiceEventPublisherError(v14);
      if (os_signpost_enabled(v15))
      {
        teamID = [v12 teamID];
        *buf = 138543618;
        v27 = teamID;
        v28 = 2048;
        token = [v12 token];
        v17 = "DuplicateSubscribers";
        v18 = "Tried to add duplicate subscribers: TeamID: %{public}@ token: %#llx";
LABEL_10:
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v17, v18, buf, 0x16u);
      }
    }

    else
    {
      subscribers2 = [(DRSTaskingEventPublisher *)self subscribers];
      [subscribers2 addObject:v12];

      v15 = DPLogHandle_ServiceEventPublisher(v20);
      v21 = os_signpost_enabled(v15);
      if (!oldSubscriberCopy)
      {
        if (v21)
        {
          teamID2 = [v12 teamID];
          *buf = 138543618;
          v27 = teamID2;
          v28 = 2048;
          token = [v12 token];
          _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedNewSubscriber", "Added subscriber: TeamID: %{public}@ token: %#llx", buf, 0x16u);
        }

        teamID3 = [v12 teamID];
        v25 = 0;
        v15 = [(DRSTaskingEventPublisher *)self _activeConfigForTeamID:teamID3 errorOut:&v25];
        v24 = v25;

        if (!v24)
        {
          [(DRSTaskingEventPublisher *)self _publishNotification:v12 config:v15];
        }

        goto LABEL_15;
      }

      if (v21)
      {
        teamID = [v12 teamID];
        *buf = 138543618;
        v27 = teamID;
        v28 = 2048;
        token = [v12 token];
        v17 = "InitializedOldSubscriber";
        v18 = "Added pre-existing subscriber: TeamID: %{public}@ token: %#llx. No need to broadcast config";
        goto LABEL_10;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v12 = DPLogHandle_ServiceEventPublisherError(0);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidTaskingEventDescriptor", "Missing 'teamID' key", buf, 2u);
  }

LABEL_16:
}

- (void)_removeSubscriber:(unint64_t)subscriber
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subscribers = [(DRSTaskingEventPublisher *)self subscribers];
  v6 = [subscribers countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(subscribers);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([v10 token] == subscriber)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [subscribers countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_12;
    }

    subscribers2 = [(DRSTaskingEventPublisher *)self subscribers];
    [subscribers2 removeObject:v12];
  }

  else
  {
LABEL_9:

LABEL_12:
    v12 = DPLogHandle_ServiceEventPublisherError(v11);
    if (os_signpost_enabled(v12))
    {
      *buf = 134349056;
      subscriberCopy = subscriber;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscriberRemovalFailure", "Failed to find a subscriber for token: %{public}#llx", buf, 0xCu);
    }
  }
}

@end