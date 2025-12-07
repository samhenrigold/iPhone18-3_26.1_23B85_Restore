@interface _DKSyncRapportContextStorage
+ (id)sharedInstance;
- (void)fetchContextValuesFromPeer:(id)peer forKeyPaths:(id)paths highPriority:(BOOL)priority completion:(id)completion;
- (void)handleFetchContextValuesWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleFetchContextValuesWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleSendContextValuesWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleSendContextValuesWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleSubscribeToContextValueChangeNotificationsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleUnsubscribeToContextValueChangeNotificationsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)registerRequestIDsWithClient:(id)client;
- (void)sendContextValuesToPeer:(id)peer registrationIdentifier:(id)identifier archivedObjects:(id)objects highPriority:(BOOL)priority completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)subscribeToContextValueChangeNotificationsFromPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate highPriority:(BOOL)priority completion:(id)completion;
- (void)unsubscribeFromContextValueChangeNotificationsFromPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate highPriority:(BOOL)priority completion:(id)completion;
@end

@implementation _DKSyncRapportContextStorage

+ (id)sharedInstance
{
  if (sharedInstance_initialized_363 != -1)
  {
    +[_DKSyncRapportContextStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_364;

  return v3;
}

- (void)registerRequestIDsWithClient:(id)client
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke;
  v8[3] = &unk_1E736AC88;
  v8[4] = self;
  clientCopy = client;
  [clientCopy registerRequestID:@"com.apple.coreduet.fetch-context-values" options:0 handler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke_2;
  v7[3] = &unk_1E736AC88;
  v7[4] = self;
  [clientCopy registerRequestID:@"com.apple.coreduet.send-context-values" options:0 handler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke_3;
  v6[3] = &unk_1E736AC88;
  v6[4] = self;
  [clientCopy registerRequestID:@"com.apple.coreduet.subscribe-to-context-value-changes" options:0 handler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke_4;
  v5[3] = &unk_1E736AC88;
  v5[4] = self;
  [clientCopy registerRequestID:@"com.apple.coreduet.unsubscribe-to-context-value-changes" options:0 handler:v5];
}

- (void)handleFetchContextValuesWithRequest:(void *)request options:(void *)options responseHandler:
{
  v30[15] = *MEMORY[0x1E69E9840];
  v28 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (self)
  {
    v8 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v8);

    date = [MEMORY[0x1E695DF00] date];
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v12 = [v28 objectForKeyedSubscript:@"keyPaths"];
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      _CDPrettyPrintCollection(v12, 0, 0, 0);
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v14 = self[2];
    v26 = v14 == 0;
    if (v14)
    {
      v15 = [v14 remoteContextStorage:self archivedObjectsForKeyPaths:v12];
      v16 = 0;
    }

    else
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
      }

      v16 = +[_DKSyncErrors internalFailure];
      v15 = 0;
    }

    myDeviceID = [self myDeviceID];
    v19 = myDeviceID;
    v20 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v20 = myDeviceID;
    }

    v21 = v20;

    v29[0] = @"server";
    v29[1] = @"results";
    v22 = MEMORY[0x1E695E0F8];
    if (v15)
    {
      v22 = v15;
    }

    v30[0] = v21;
    v30[1] = v22;
    v29[2] = @"version";
    v30[2] = @"3.0";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v24 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    optionsCopy[2](optionsCopy, v23, 0, v16);
    if (date)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], date, date2, v26);
    }
  }
}

- (void)handleSendContextValuesWithRequest:(void *)request options:(void *)options responseHandler:
{
  v43[12] = *MEMORY[0x1E69E9840];
  v36 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (!self)
  {
    goto LABEL_34;
  }

  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  date = [MEMORY[0x1E695DF00] date];
  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
  }

  if (!self[2])
  {
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }

    v18 = +[_DKSyncErrors internalFailure];
    v20 = 1;
    goto LABEL_27;
  }

  v10 = [v36 objectForKeyedSubscript:@"client"];
  v33 = [v36 objectForKeyedSubscript:@"id"];
  v11 = [v36 objectForKeyedSubscript:@"objects"];
  v12 = +[_DKSyncPeerStatusTracker sharedInstance];
  v13 = [v12 existingPeerWithSourceDeviceID:v10];
  v14 = [requestCopy objectForKeyedSubscript:@"senderIDS"];
  if (v13)
  {
    idsDeviceIdentifier = [v13 idsDeviceIdentifier];
    v16 = [idsDeviceIdentifier isEqualToString:v14];

    if (v16)
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v30 = [objc_opt_class() description];
        allKeys = [v11 allKeys];
        _CDPrettyPrintCollection(allKeys, 0, 0, 0);
        *buf = 138543618;
        v39 = v30;
        v32 = v40 = 2112;
        v41 = v32;
        _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Received sent context values with key paths '%@'", buf, 0x16u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 0;
        [self[2] remoteContextStorage:self registrationIdentifier:v33 setArchivedObjects:v11 peer:v13];
      }

      else
      {
        v22 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          objc_opt_class();
          [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
        }

        v18 = +[_DKSyncErrors invalidRequest];
      }

      v20 = [v11 count] == 0;

      goto LABEL_26;
    }

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }
  }

  else
  {
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }
  }

  +[_DKSyncErrors invalidRequest];
  v18 = v20 = 1;
LABEL_26:

LABEL_27:
  myDeviceID = [self myDeviceID];
  v24 = myDeviceID;
  v25 = &stru_1F05B9908;
  if (myDeviceID)
  {
    v25 = myDeviceID;
  }

  v26 = v25;

  v42[0] = @"server";
  v42[1] = @"version";
  v43[0] = v26;
  v43[1] = @"3.0";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v28 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
  }

  optionsCopy[2](optionsCopy, v27, 0, v18);
  if (date)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], date, date2, v20);
  }

LABEL_34:
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:(void *)request options:(void *)options responseHandler:
{
  v58 = *MEMORY[0x1E69E9840];
  v44 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (!self)
  {
    goto LABEL_31;
  }

  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  date = [MEMORY[0x1E695DF00] date];
  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  if (!self[2])
  {
    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    v20 = +[_DKSyncErrors internalFailure];
    v19 = 1;
    goto LABEL_24;
  }

  v10 = [v44 objectForKeyedSubscript:@"client"];
  v11 = [v44 objectForKeyedSubscript:@"id"];
  v12 = [v44 objectForKeyedSubscript:@"predicate"];
  v13 = +[_DKSyncPeerStatusTracker sharedInstance];
  v14 = [v13 existingPeerWithSourceDeviceID:v10];
  v15 = [requestCopy objectForKeyedSubscript:@"senderIDS"];
  if (!v14)
  {
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    goto LABEL_21;
  }

  idsDeviceIdentifier = [v14 idsDeviceIdentifier];
  v17 = [idsDeviceIdentifier isEqualToString:v15];

  if ((v17 & 1) == 0)
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }

LABEL_21:
    v20 = +[_DKSyncErrors invalidRequest];
    v14 = 0;
    goto LABEL_22;
  }

  if ([v11 length] && v12)
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v40 = [objc_opt_class() description];
      v31 = [v14 me];
      v32 = @"pseudo ";
      if (!v31)
      {
        v32 = &stru_1F05B9908;
      }

      v38 = v32;
      identifier = [v14 identifier];
      model = [v14 model];
      if (model)
      {
        v37 = MEMORY[0x1E696AEC0];
        model2 = [v14 model];
        v33 = [v37 stringWithFormat:@" (%@)", model2];
        v36 = model2;
      }

      else
      {
        v33 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v49 = v40;
      v50 = 2112;
      v51 = v11;
      v52 = 2114;
      v53 = v38;
      v54 = 2114;
      v55 = identifier;
      v56 = 2114;
      v57 = v33;
      v35 = v33;
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Received subscribe to context value changes request for '%@' from %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model)
      {
      }
    }

    [self[2] remoteContextStorage:self subscribeToChangesWithPeer:v14 registrationIdentifier:v11 predicate:v12];
    v19 = 0;
    v20 = 0;
    goto LABEL_23;
  }

  v30 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v20 = +[_DKSyncErrors invalidRequest];
LABEL_22:
  v19 = 1;
LABEL_23:

LABEL_24:
  myDeviceID = [self myDeviceID];
  v24 = myDeviceID;
  v25 = &stru_1F05B9908;
  if (myDeviceID)
  {
    v25 = myDeviceID;
  }

  v26 = v25;

  v46[0] = @"server";
  v46[1] = @"version";
  v47[0] = v26;
  v47[1] = @"3.0";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v28 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  optionsCopy[2](optionsCopy, v27, 0, v20);
  if (date)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], date, date2, v19);
  }

LABEL_31:
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:(void *)request options:(void *)options responseHandler:
{
  v58 = *MEMORY[0x1E69E9840];
  v44 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (!self)
  {
    goto LABEL_31;
  }

  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  date = [MEMORY[0x1E695DF00] date];
  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  if (!self[2])
  {
    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    v20 = +[_DKSyncErrors internalFailure];
    v19 = 1;
    goto LABEL_24;
  }

  v10 = [v44 objectForKeyedSubscript:@"client"];
  v11 = [v44 objectForKeyedSubscript:@"id"];
  v12 = [v44 objectForKeyedSubscript:@"predicate"];
  v13 = +[_DKSyncPeerStatusTracker sharedInstance];
  v14 = [v13 existingPeerWithSourceDeviceID:v10];
  v15 = [requestCopy objectForKeyedSubscript:@"senderIDS"];
  if (!v14)
  {
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    goto LABEL_21;
  }

  idsDeviceIdentifier = [v14 idsDeviceIdentifier];
  v17 = [idsDeviceIdentifier isEqualToString:v15];

  if ((v17 & 1) == 0)
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }

LABEL_21:
    v20 = +[_DKSyncErrors invalidRequest];
    v14 = 0;
    goto LABEL_22;
  }

  if ([v11 length] && v12)
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v40 = [objc_opt_class() description];
      v31 = [v14 me];
      v32 = @"pseudo ";
      if (!v31)
      {
        v32 = &stru_1F05B9908;
      }

      v38 = v32;
      identifier = [v14 identifier];
      model = [v14 model];
      if (model)
      {
        v37 = MEMORY[0x1E696AEC0];
        model2 = [v14 model];
        v33 = [v37 stringWithFormat:@" (%@)", model2];
        v36 = model2;
      }

      else
      {
        v33 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v49 = v40;
      v50 = 2112;
      v51 = v11;
      v52 = 2114;
      v53 = v38;
      v54 = 2114;
      v55 = identifier;
      v56 = 2114;
      v57 = v33;
      v35 = v33;
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Received unsubscribe to context value changes request for '%@' from %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model)
      {
      }
    }

    [self[2] remoteContextStorage:self unsubscribeFromChangesWithPeer:v14 registrationIdentifier:v11 predicate:v12];
    v19 = 0;
    v20 = 0;
    goto LABEL_23;
  }

  v30 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v20 = +[_DKSyncErrors invalidRequest];
LABEL_22:
  v19 = 1;
LABEL_23:

LABEL_24:
  myDeviceID = [self myDeviceID];
  v24 = myDeviceID;
  v25 = &stru_1F05B9908;
  if (myDeviceID)
  {
    v25 = myDeviceID;
  }

  v26 = v25;

  v46[0] = @"server";
  v46[1] = @"version";
  v47[0] = v26;
  v47[1] = @"3.0";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v28 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  optionsCopy[2](optionsCopy, v27, 0, v20);
  if (date)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], date, date2, v19);
  }

LABEL_31:
}

- (void)fetchContextValuesFromPeer:(id)peer forKeyPaths:(id)paths highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v51[3] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  pathsCopy = paths;
  completionCopy = completion;
  v13 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v13);

  myDeviceID = [(_DKSyncRapportStorage *)self myDeviceID];
  if (-[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([peerCopy idsDeviceIdentifier], (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, v17 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", peerCopy), v16, v17))
  {
    date = [MEMORY[0x1E695DF00] date];
    v19 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v20 = myDeviceID;
    }

    else
    {
      v20 = &stru_1F05B9908;
    }

    v50[0] = @"client";
    v50[1] = @"keyPaths";
    v21 = MEMORY[0x1E695E0F0];
    if (pathsCopy)
    {
      v21 = pathsCopy;
    }

    v51[0] = v20;
    v51[1] = v21;
    v50[2] = @"version";
    v51[2] = @"3.0";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v23 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v33 = [objc_opt_class() description];
      v26 = [peerCopy me];
      v27 = @"pseudo ";
      if (!v26)
      {
        v27 = &stru_1F05B9908;
      }

      v30 = v27;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v28 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v19 = [v28 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544386;
      v41 = v33;
      v42 = 2114;
      v43 = v30;
      v44 = 2114;
      v45 = identifier;
      v46 = 2114;
      v47 = v19;
      v48 = 2112;
      v49 = v22;
      _os_log_debug_impl(&dword_191750000, v23, OS_LOG_TYPE_DEBUG, "%{public}@: Sending fetch context values request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __95___DKSyncRapportContextStorage_fetchContextValuesFromPeer_forKeyPaths_highPriority_completion___block_invoke;
    v36[3] = &unk_1E736AD00;
    v36[4] = self;
    v37 = peerCopy;
    v38 = date;
    v39 = completionCopy;
    v24 = completionCopy;
    v25 = date;
    [(_DKSyncRapportStorage *)self sendRequestID:@"com.apple.coreduet.fetch-context-values" request:v22 peer:v37 highPriority:priorityCopy options:0 responseHandler:v36];
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __95___DKSyncRapportContextStorage_fetchContextValuesFromPeer_forKeyPaths_highPriority_completion___block_invoke_2;
    v34[3] = &unk_1E7367508;
    v35 = completionCopy;
    v22 = completionCopy;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v34];
    v25 = v35;
  }
}

- (void)handleFetchContextValuesWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  if (!self)
  {
    goto LABEL_22;
  }

  model2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(model2);

  v18 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleFetchContextValuesWithResponse:options:error:peer:plStartDate:completion:];
  }

  if (optionsCopy)
  {
    if ([optionsCopy code] == -6714 && (objc_msgSend(optionsCopy, "domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v19, v20))
    {
      v21 = +[_DKSyncPeerStatusTracker sharedInstance];
      [v21 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), errorCopy}];

      v22 = 0;
      v23 = 1;
      if (!peerCopy)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = [self transformResponseError:optionsCopy];

      v22 = 0;
      v23 = 1;
      optionsCopy = v24;
      if (!peerCopy)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  v25 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v34 = [objc_opt_class() description];
    if ([errorCopy me])
    {
      v29 = @"pseudo ";
    }

    else
    {
      v29 = &stru_1F05B9908;
    }

    identifier = [errorCopy identifier];
    model = [errorCopy model];
    if (model)
    {
      v32 = MEMORY[0x1E696AEC0];
      model2 = [errorCopy model];
      v31 = [v32 stringWithFormat:@" (%@)", model2];
    }

    else
    {
      v31 = &stru_1F05B9908;
    }

    *buf = 138544386;
    v38 = v34;
    v39 = 2114;
    v40 = v29;
    v41 = 2114;
    v42 = identifier;
    v43 = 2114;
    v44 = v31;
    v45 = 2112;
    v46 = v13;
    _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch context values response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
    if (model)
    {
    }
  }

  v26 = [v13 objectForKeyedSubscript:@"results"];
  v22 = v26;
  if (v26)
  {
    optionsCopy = 0;
    v23 = [v26 count] == 0;
    if (!peerCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  +[_DKSyncErrors invalidResponse];
  v23 = 1;
  optionsCopy = v22 = 0;
  if (peerCopy)
  {
LABEL_16:
    date = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], peerCopy, date, v23);
  }

LABEL_17:
  if (dateCopy)
  {
    v28 = dateCopy[2];
    if (optionsCopy)
    {
      v28(dateCopy, 0, optionsCopy);
    }

    else
    {
      v28(dateCopy, v22, 0);
    }
  }

LABEL_22:
}

- (void)sendContextValuesToPeer:(id)peer registrationIdentifier:(id)identifier archivedObjects:(id)objects highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v54[4] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  identifierCopy = identifier;
  objectsCopy = objects;
  completionCopy = completion;
  v16 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v16);

  myDeviceID = [(_DKSyncRapportStorage *)self myDeviceID];
  if (identifierCopy && [objectsCopy count] && -[_DKSyncRapportStorage isAvailable](self, "isAvailable") && (objc_msgSend(peerCopy, "idsDeviceIdentifier"), (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v19 = v18, v20 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", peerCopy), v19, v20))
  {
    date = [MEMORY[0x1E695DF00] date];
    v22 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v22 = myDeviceID;
    }

    v53[0] = @"client";
    v53[1] = @"id";
    v54[0] = v22;
    v54[1] = identifierCopy;
    v53[2] = @"objects";
    v53[3] = @"version";
    v54[2] = objectsCopy;
    v54[3] = @"3.0";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:4];
    v24 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v33 = date;
      v36 = v23;
      v35 = [objc_opt_class() description];
      v26 = [peerCopy me];
      v27 = @"pseudo ";
      v28 = &stru_1F05B9908;
      if (!v26)
      {
        v27 = &stru_1F05B9908;
      }

      v32 = v27;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v30 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v28 = [v30 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544386;
      v44 = v35;
      v45 = 2114;
      v46 = v32;
      v47 = 2114;
      v48 = identifier;
      v49 = 2114;
      v50 = v28;
      v51 = 2112;
      v52 = v36;
      _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Sending send context values to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }

      v23 = v36;
      date = v33;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __119___DKSyncRapportContextStorage_sendContextValuesToPeer_registrationIdentifier_archivedObjects_highPriority_completion___block_invoke;
    v39[3] = &unk_1E736AD00;
    v39[4] = self;
    v40 = peerCopy;
    v41 = date;
    v42 = completionCopy;
    v25 = date;
    [(_DKSyncRapportStorage *)self sendRequestID:@"com.apple.coreduet.send-context-values" request:v23 peer:v40 highPriority:priorityCopy options:0 responseHandler:v39];
  }

  else if ([objectsCopy count])
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __119___DKSyncRapportContextStorage_sendContextValuesToPeer_registrationIdentifier_archivedObjects_highPriority_completion___block_invoke_2;
    v37[3] = &unk_1E7367508;
    v38 = completionCopy;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v37];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)handleSendContextValuesWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  if (self)
  {
    v20 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v20);

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (optionsCopy)
    {
      if (-[NSObject code](optionsCopy, "code") == -6714 && (-[NSObject domain](optionsCopy, "domain"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]], v22, v23))
      {
        v24 = +[_DKSyncPeerStatusTracker sharedInstance];
        -[NSObject removeActiveTransports:fromPeer:](v24, "removeActiveTransports:fromPeer:", [self transportType], errorCopy);
      }

      else
      {
        [self transformResponseError:optionsCopy];
        optionsCopy = v24 = optionsCopy;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v33 = [objc_opt_class() description];
        v27 = [errorCopy me];
        v28 = &stru_1F05B9908;
        if (v27)
        {
          v28 = @"pseudo ";
        }

        v31 = v28;
        identifier = [errorCopy identifier];
        model = [errorCopy model];
        if (model)
        {
          v30 = MEMORY[0x1E696AEC0];
          model2 = [errorCopy model];
          v29 = [v30 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v29 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v36 = v33;
        v37 = 2114;
        v38 = v31;
        v39 = 2114;
        v40 = identifier;
        v41 = 2114;
        v42 = v29;
        v43 = 2112;
        v44 = v14;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received sent context values response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model)
        {
        }
      }

      optionsCopy = 0;
    }

    if (peerCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], peerCopy, date, 1);
    }

    if (dateCopy)
    {
      v26 = dateCopy[2];
      if (optionsCopy)
      {
        v26(dateCopy, optionsCopy);
      }

      else
      {
        v26(dateCopy, 0);
        optionsCopy = 0;
      }
    }
  }
}

- (void)subscribeToContextValueChangeNotificationsFromPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v56[4] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  identifierCopy = identifier;
  predicateCopy = predicate;
  completionCopy = completion;
  v16 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v16);

  myDeviceID = [(_DKSyncRapportStorage *)self myDeviceID];
  v18 = [identifierCopy length];
  if (predicateCopy && v18 && -[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([peerCopy idsDeviceIdentifier], (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19, v21 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", peerCopy), v20, v21))
  {
    date = [MEMORY[0x1E695DF00] date];
    v23 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v23 = myDeviceID;
    }

    v55[0] = @"client";
    v55[1] = @"id";
    v56[0] = v23;
    v56[1] = identifierCopy;
    v55[2] = @"predicate";
    v55[3] = @"version";
    v56[2] = predicateCopy;
    v56[3] = @"3.0";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];
    v25 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v35 = date;
      v38 = v24;
      v37 = [objc_opt_class() description];
      v28 = [peerCopy me];
      v29 = @"pseudo ";
      v30 = &stru_1F05B9908;
      if (!v28)
      {
        v29 = &stru_1F05B9908;
      }

      v34 = v29;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v32 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v30 = [v32 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544386;
      v46 = v37;
      v47 = 2114;
      v48 = v34;
      v49 = 2114;
      v50 = identifier;
      v51 = 2114;
      v52 = v30;
      v53 = 2112;
      v54 = v38;
      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Sending subscribe to context value changes request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }

      v24 = v38;
      date = v35;
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __140___DKSyncRapportContextStorage_subscribeToContextValueChangeNotificationsFromPeer_registrationIdentifier_predicate_highPriority_completion___block_invoke;
    v41[3] = &unk_1E736AD00;
    v41[4] = self;
    v42 = peerCopy;
    v43 = date;
    v44 = completionCopy;
    v26 = date;
    [(_DKSyncRapportStorage *)self sendRequestID:@"com.apple.coreduet.subscribe-to-context-value-changes" request:v24 peer:v42 highPriority:priorityCopy options:0 responseHandler:v41];
  }

  else if ([identifierCopy length])
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __140___DKSyncRapportContextStorage_subscribeToContextValueChangeNotificationsFromPeer_registrationIdentifier_predicate_highPriority_completion___block_invoke_2;
    v39[3] = &unk_1E7367508;
    v40 = completionCopy;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v39];
  }

  else
  {
    v27 = +[_DKSyncErrors internalFailure];
    (*(completionCopy + 2))(completionCopy, v27);
  }
}

- (void)handleSubscribeToContextValueChangeNotificationsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  if (self)
  {
    v20 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v20);

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (optionsCopy)
    {
      if (-[NSObject code](optionsCopy, "code") == -6714 && (-[NSObject domain](optionsCopy, "domain"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]], v22, v23))
      {
        v24 = +[_DKSyncPeerStatusTracker sharedInstance];
        -[NSObject removeActiveTransports:fromPeer:](v24, "removeActiveTransports:fromPeer:", [self transportType], errorCopy);
      }

      else
      {
        [self transformResponseError:optionsCopy];
        optionsCopy = v24 = optionsCopy;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v33 = [objc_opt_class() description];
        v27 = [errorCopy me];
        v28 = &stru_1F05B9908;
        if (v27)
        {
          v28 = @"pseudo ";
        }

        v31 = v28;
        identifier = [errorCopy identifier];
        model = [errorCopy model];
        if (model)
        {
          v30 = MEMORY[0x1E696AEC0];
          model2 = [errorCopy model];
          v29 = [v30 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v29 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v36 = v33;
        v37 = 2114;
        v38 = v31;
        v39 = 2114;
        v40 = identifier;
        v41 = 2114;
        v42 = v29;
        v43 = 2112;
        v44 = v14;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received subscribe to context value changes response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model)
        {
        }
      }

      optionsCopy = 0;
    }

    if (peerCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], peerCopy, date, 1);
    }

    if (dateCopy)
    {
      v26 = dateCopy[2];
      if (optionsCopy)
      {
        v26(dateCopy, optionsCopy);
      }

      else
      {
        v26(dateCopy, 0);
        optionsCopy = 0;
      }
    }
  }
}

- (void)unsubscribeFromContextValueChangeNotificationsFromPeer:(id)peer registrationIdentifier:(id)identifier predicate:(id)predicate highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v56[4] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  identifierCopy = identifier;
  predicateCopy = predicate;
  completionCopy = completion;
  v16 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v16);

  myDeviceID = [(_DKSyncRapportStorage *)self myDeviceID];
  v18 = [identifierCopy length];
  if (predicateCopy && v18 && -[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([peerCopy idsDeviceIdentifier], (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19, v21 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", peerCopy), v20, v21))
  {
    date = [MEMORY[0x1E695DF00] date];
    v23 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v23 = myDeviceID;
    }

    v55[0] = @"client";
    v55[1] = @"id";
    v56[0] = v23;
    v56[1] = identifierCopy;
    v55[2] = @"predicate";
    v55[3] = @"version";
    v56[2] = predicateCopy;
    v56[3] = @"3.0";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];
    v25 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v35 = date;
      v38 = v24;
      v37 = [objc_opt_class() description];
      v28 = [peerCopy me];
      v29 = @"pseudo ";
      v30 = &stru_1F05B9908;
      if (!v28)
      {
        v29 = &stru_1F05B9908;
      }

      v34 = v29;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v32 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v30 = [v32 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544386;
      v46 = v37;
      v47 = 2114;
      v48 = v34;
      v49 = 2114;
      v50 = identifier;
      v51 = 2114;
      v52 = v30;
      v53 = 2112;
      v54 = v38;
      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Sending unsubscribe to context value changes request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }

      v24 = v38;
      date = v35;
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __144___DKSyncRapportContextStorage_unsubscribeFromContextValueChangeNotificationsFromPeer_registrationIdentifier_predicate_highPriority_completion___block_invoke;
    v41[3] = &unk_1E736AD00;
    v41[4] = self;
    v42 = peerCopy;
    v43 = date;
    v44 = completionCopy;
    v26 = date;
    [(_DKSyncRapportStorage *)self sendRequestID:@"com.apple.coreduet.unsubscribe-to-context-value-changes" request:v24 peer:v42 highPriority:priorityCopy options:0 responseHandler:v41];
  }

  else if ([identifierCopy length])
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __144___DKSyncRapportContextStorage_unsubscribeFromContextValueChangeNotificationsFromPeer_registrationIdentifier_predicate_highPriority_completion___block_invoke_2;
    v39[3] = &unk_1E7367508;
    v40 = completionCopy;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v39];
  }

  else
  {
    v27 = +[_DKSyncErrors internalFailure];
    (*(completionCopy + 2))(completionCopy, v27);
  }
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  if (self)
  {
    v20 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v20);

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (optionsCopy)
    {
      if (-[NSObject code](optionsCopy, "code") == -6714 && (-[NSObject domain](optionsCopy, "domain"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]], v22, v23))
      {
        v24 = +[_DKSyncPeerStatusTracker sharedInstance];
        -[NSObject removeActiveTransports:fromPeer:](v24, "removeActiveTransports:fromPeer:", [self transportType], errorCopy);
      }

      else
      {
        [self transformResponseError:optionsCopy];
        optionsCopy = v24 = optionsCopy;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v33 = [objc_opt_class() description];
        v27 = [errorCopy me];
        v28 = &stru_1F05B9908;
        if (v27)
        {
          v28 = @"pseudo ";
        }

        v31 = v28;
        identifier = [errorCopy identifier];
        model = [errorCopy model];
        if (model)
        {
          v30 = MEMORY[0x1E696AEC0];
          model2 = [errorCopy model];
          v29 = [v30 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v29 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v36 = v33;
        v37 = 2114;
        v38 = v31;
        v39 = 2114;
        v40 = identifier;
        v41 = 2114;
        v42 = v29;
        v43 = 2112;
        v44 = v14;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received unsubscribe to context value changes response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model)
        {
        }
      }

      optionsCopy = 0;
    }

    if (peerCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], peerCopy, date, 1);
    }

    if (dateCopy)
    {
      v26 = dateCopy[2];
      if (optionsCopy)
      {
        v26(dateCopy, optionsCopy);
      }

      else
      {
        v26(dateCopy, 0);
        optionsCopy = 0;
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v5);

  delegate = self->_delegate;
  self->_delegate = delegateCopy;
  v7 = delegateCopy;

  deviceUUID = [(_DKSyncRemoteContextStorageDelegate *)self->_delegate deviceUUID];

  uUIDString = [deviceUUID UUIDString];

  [(_DKSyncRapportStorage *)self setDeviceID:uUIDString];
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch context values request", v5);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch context values request: %@", v4, v5);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_0_36(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch context values request for key paths '%@'", v5, v6);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to fetch context values, missing delegate", v5);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch context values response: %@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling sent context values", v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received sent context values: %@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Invalid request, client attempting to masquerade as client %{public}@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to receive sent context values, invalid object class: %{public}@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to receive sent context values, unknown peer source device id: %{public}@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to receive sent context values, missing delegate", v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.7()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with sent context values response: %@", v4, v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling subscribe to context value changes request", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received subscribe to context value changes request: %@", v4, v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to subscribe to context value changes, missing registration identifier", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to subscribe to context value changes, unknown peer source device id: %{public}@", v4, v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to subscribe to context value changes, missing delegate", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.7()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with subscribe to context value changes response: %@", v4, v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling unsubscribe to context value changes request", v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received unsubscribe to context value changes request: %@", v4, v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to unsubscribe to context value changes, missing delegate", v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.7()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with unsubscribe to context value changes response: %@", v4, v5);
}

- (void)handleFetchContextValuesWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch context values response", v5);
}

- (void)handleSendContextValuesWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling sent context values response", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling subscribe to context value changes response", v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling unsubscribe to context value changes response", v5);
}

@end