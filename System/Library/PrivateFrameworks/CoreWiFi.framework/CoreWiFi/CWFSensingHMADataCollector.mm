@interface CWFSensingHMADataCollector
+ (id)createCWFSensingHMADataCollectorFor:(id)for withOptions:(id)options andDelegate:(id)delegate;
- (CWFSensingHMADataCollector)initWithAccessory:(id)accessory andOptions:(id)options andDelegate:(id)delegate;
- (id)currentRoomIdentifier;
- (id)getSensingParams;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)deregisterForPrimaryServiceNotificationWith:(id)with;
- (void)handleSensingResult:(id)result;
- (void)registerForPrimaryServiceNotificationWith:(id)with;
@end

@implementation CWFSensingHMADataCollector

+ (id)createCWFSensingHMADataCollectorFor:(id)for withOptions:(id)options andDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  forCopy = for;
  optionsCopy = options;
  delegateCopy = delegate;
  if (forCopy)
  {
    v10 = [[CWFSensingHMADataCollector alloc] initWithAccessory:forCopy andOptions:optionsCopy andDelegate:delegateCopy];
    if (v10)
    {
      goto LABEL_3;
    }

    v14 = CWFGetOSLog();
    if (v14)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136446722;
      *&v17[4] = "+[CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:withOptions:andDelegate:]";
      *&v17[12] = 2082;
      *&v17[14] = "CWFSensingHMADataCollector.m";
      *&v17[22] = 1024;
      LODWORD(v18) = 73;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create CWFSensingHMADataCollector", v17, 28, *v17, *&v17[8], v18);
    }
  }

  else
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136446722;
      *&v17[4] = "+[CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:withOptions:andDelegate:]";
      *&v17[12] = 2082;
      *&v17[14] = "CWFSensingHMADataCollector.m";
      *&v17[22] = 1024;
      LODWORD(v18) = 68;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] %{public}s (%{public}s:%u) null accessory", v17, 28, *v17, *&v17[8], v18);
    }
  }

  v10 = 0;
LABEL_3:

  return v10;
}

- (CWFSensingHMADataCollector)initWithAccessory:(id)accessory andOptions:(id)options andDelegate:(id)delegate
{
  v34 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  optionsCopy = options;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = CWFSensingHMADataCollector;
  v11 = [(CWFSensingHMADataCollector *)&v27 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  [(CWFSensingHMADataCollector *)v11 set_accessory:accessoryCopy];
  _accessory = [(CWFSensingHMADataCollector *)v12 _accessory];

  if (!_accessory)
  {

    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "[CWFSensingHMADataCollector initWithAccessory:andOptions:andDelegate:]";
      v30 = 2082;
      v31 = "CWFSensingHMADataCollector.m";
      v32 = 1024;
      v33 = 88;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] %{public}s (%{public}s:%u) NULL accessory", &v28, 28);
    }

    goto LABEL_25;
  }

  v14 = dispatch_queue_create("com.apple.wifi.CWFSensingHMADataCollector", 0);
  [(CWFSensingHMADataCollector *)v12 set_serviceQueue:v14];

  _serviceQueue = [(CWFSensingHMADataCollector *)v12 _serviceQueue];

  if (!_serviceQueue)
  {

    v22 = CWFGetOSLog();
    if (v22)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "[CWFSensingHMADataCollector initWithAccessory:andOptions:andDelegate:]";
      v30 = 2082;
      v31 = "CWFSensingHMADataCollector.m";
      v32 = 1024;
      v33 = 94;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create _serviceQueue", &v28, 28);
    }

    goto LABEL_25;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel_handleSensingResult_ name:@"SensingResult" object:0];

  [(CWFSensingHMADataCollector *)v12 set_delegate:delegateCopy];
  _delegate = [(CWFSensingHMADataCollector *)v12 _delegate];

  if (!_delegate)
  {

    v23 = CWFGetOSLog();
    if (v23)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446722;
      v29 = "[CWFSensingHMADataCollector initWithAccessory:andOptions:andDelegate:]";
      v30 = 2082;
      v31 = "CWFSensingHMADataCollector.m";
      v32 = 1024;
      v33 = 103;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] %{public}s (%{public}s:%u) NULL delegate", &v28, 28);
    }

LABEL_25:

    v12 = 0;
    goto LABEL_9;
  }

  if (optionsCopy)
  {
    [(CWFSensingHMADataCollector *)v12 set_sensingParams:optionsCopy];
  }

  else
  {
    getSensingParams = [(CWFSensingHMADataCollector *)v12 getSensingParams];
    [(CWFSensingHMADataCollector *)v12 set_sensingParams:getSensingParams];
  }

  [(CWFSensingHMADataCollector *)v12 set_serviceRegistrationError:0];
  [(CWFSensingHMADataCollector *)v12 set_attempt:0];
LABEL_9:

  return v12;
}

- (id)currentRoomIdentifier
{
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  room = [_accessory room];
  uniqueIdentifier = [room uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)getSensingParams
{
  v2 = objc_alloc_init(CWFSensingParameters);
  [(CWFSensingParameters *)v2 setSubmitMetric:1];
  [(CWFSensingParameters *)v2 setScheduleDailyAt:-2];
  [(CWFSensingParameters *)v2 setScheduleOnceAfter:0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters numberOfReports](v2, "numberOfReports")}];
  [dictionary setObject:v4 forKeyedSubscript:@"SENSING_PARAMS_NUMBER_OF_REPORTS"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFSensingParameters matchFrameType](v2, "matchFrameType")}];
  [dictionary setObject:v5 forKeyedSubscript:@"SENSING_PARAMS_MATCH_FRAME_TYPE"];

  matchMACAddresses = [(CWFSensingParameters *)v2 matchMACAddresses];
  [dictionary setObject:matchMACAddresses forKeyedSubscript:@"SENSING_PARAMS_MATCH_MAC_ADDRESS"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters timeout](v2, "timeout")}];
  [dictionary setObject:v7 forKeyedSubscript:@"SENSING_PARAMS_TIMEOUT"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFSensingParameters submitMetric](v2, "submitMetric")}];
  [dictionary setObject:v8 forKeyedSubscript:@"SENSING_PARAMS_SUBMIT_METRIC"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleDailyAt](v2, "scheduleDailyAt")}];
  [dictionary setObject:v9 forKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_DAILY_AT"];

  placeLabels = [(CWFSensingParameters *)v2 placeLabels];
  [dictionary setObject:placeLabels forKeyedSubscript:@"SENSING_PARAMS_PLACE_LABELS"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleOnceAfter](v2, "scheduleOnceAfter")}];
  [dictionary setObject:v11 forKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_ONCE_AFTER"];

  return dictionary;
}

- (void)registerForPrimaryServiceNotificationWith:(id)with
{
  v51 = *MEMORY[0x1E69E9840];
  withCopy = with;
  selfCopy = self;
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  [_accessory setDelegate:self];

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1E0BC2D90;
  v45 = sub_1E0BC6204;
  v46 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  _accessory2 = [(CWFSensingHMADataCollector *)self _accessory];
  obj = [_accessory2 services];

  v27 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v27)
  {
    v26 = *v38;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        if ([v6 isPrimaryService])
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          characteristics = [v6 characteristics];
          v8 = [characteristics countByEnumeratingWithState:&v33 objects:v49 count:16];
          if (v8)
          {
            v9 = *v34;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v34 != v9)
                {
                  objc_enumerationMutation(characteristics);
                }

                v11 = *(*(&v33 + 1) + 8 * j);
                properties = [v11 properties];
                v13 = off_1ED7E3808();
                if ([properties containsObject:v13])
                {
                  properties2 = [v11 properties];
                  v15 = off_1ED7E3810();
                  v16 = [properties2 containsObject:v15];

                  if (v16)
                  {
                    v17 = CWFGetOSLog();
                    if (v17)
                    {
                      v18 = CWFGetOSLog();
                    }

                    else
                    {
                      v18 = MEMORY[0x1E69E9C10];
                      v19 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = 138543362;
                      v48 = v11;
                      LODWORD(v23) = 12;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] Trying to register for service characteristic %{public}@", &v47, v23);
                    }

                    dispatch_group_enter(v42[5]);
                    v32[0] = MEMORY[0x1E69E9820];
                    v32[1] = 3221225472;
                    v32[2] = sub_1E0CD5F08;
                    v32[3] = &unk_1E86E8AD8;
                    v32[4] = selfCopy;
                    v32[5] = v11;
                    v32[6] = &v41;
                    [v11 enableNotification:1 completionHandler:v32];
                  }
                }

                else
                {
                }
              }

              v8 = [characteristics countByEnumeratingWithState:&v33 objects:v49 count:16];
            }

            while (v8);
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v27);
  }

  v20 = v42[5];
  _serviceQueue = [(CWFSensingHMADataCollector *)selfCopy _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD6048;
  block[3] = &unk_1E86E64C0;
  block[4] = selfCopy;
  v31 = withCopy;
  v22 = withCopy;
  dispatch_group_notify(v20, _serviceQueue, block);

  _Block_object_dispose(&v41, 8);
}

- (void)deregisterForPrimaryServiceNotificationWith:(id)with
{
  v44 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1E0BC2D90;
  v40 = sub_1E0BC6204;
  v41 = dispatch_group_create();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  obj = [_accessory services];

  v22 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v22)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        if ([v5 isPrimaryService])
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          characteristics = [v5 characteristics];
          v7 = [characteristics countByEnumeratingWithState:&v28 objects:v42 count:16];
          if (v7)
          {
            v8 = *v29;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v29 != v8)
                {
                  objc_enumerationMutation(characteristics);
                }

                v10 = *(*(&v28 + 1) + 8 * j);
                properties = [v10 properties];
                v12 = off_1ED7E3808();
                if ([properties containsObject:v12])
                {
                  properties2 = [v10 properties];
                  v14 = off_1ED7E3810();
                  v15 = [properties2 containsObject:v14];

                  if (v15)
                  {
                    dispatch_group_enter(v37[5]);
                    v27[0] = MEMORY[0x1E69E9820];
                    v27[1] = 3221225472;
                    v27[2] = sub_1E0CD65EC;
                    v27[3] = &unk_1E86E8AD8;
                    v27[4] = selfCopy;
                    v27[5] = v10;
                    v27[6] = &v36;
                    [v10 enableNotification:0 completionHandler:v27];
                  }
                }

                else
                {
                }
              }

              v7 = [characteristics countByEnumeratingWithState:&v28 objects:v42 count:16];
            }

            while (v7);
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v22);
  }

  v16 = v37[5];
  _serviceQueue = [(CWFSensingHMADataCollector *)selfCopy _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD672C;
  block[3] = &unk_1E86E64C0;
  block[4] = selfCopy;
  v26 = withCopy;
  v18 = withCopy;
  dispatch_group_notify(v16, _serviceQueue, block);

  _Block_object_dispose(&v36, 8);
}

- (void)handleSensingResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  userInfo = [resultCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"CWF_ACCESSORY_UUID"];
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  uniqueIdentifier = [_accessory uniqueIdentifier];
  v9 = [v6 isEqual:uniqueIdentifier];

  if (v9)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      userInfo2 = [resultCopy userInfo];
      v14 = [userInfo2 objectForKeyedSubscript:@"WiFiInterfaceReturn"];
      userInfo3 = [resultCopy userInfo];
      v16 = [userInfo3 objectForKeyedSubscript:@"SensingResult"];
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] Received sensing result error[%{public}@] %{public}@", &v17, 22);
    }
  }
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  v11 = characteristicCopy;
  if (accessoryCopy && serviceCopy && characteristicCopy)
  {
    _serviceQueue = [(CWFSensingHMADataCollector *)self _serviceQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CD6A70;
    v13[3] = &unk_1E86E7EA8;
    v14 = serviceCopy;
    v15 = v11;
    selfCopy = self;
    v17 = accessoryCopy;
    dispatch_async(_serviceQueue, v13);
  }
}

@end