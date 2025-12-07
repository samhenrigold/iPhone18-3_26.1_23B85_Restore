@interface _DKSyncRapportCommonStorage
+ (_DKSyncRapportCommonStorage)sharedInstance;
- (BOOL)isTransportActiveForPeer:(id)peer;
- (_DKSyncRapportCommonStorage)init;
- (id)clientForPeer:(uint64_t)peer;
- (id)deviceForPeer:;
- (id)myDeviceID;
- (id)transformCaughtObject:(id)object existingError:(id)error;
- (id)transformResponseError:(id)error;
- (uint64_t)_additionalFlagsForInternal;
- (void)cancelOutstandingOperations;
- (void)dealloc;
- (void)fetchSourceDeviceIDFromPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion;
- (void)handleActivateCompanionLinkClient:(void *)client forPeer:(void *)peer error:;
- (void)handleActivateWithError:(uint64_t)error;
- (void)handleAvailabilityFailureWithPeer:(id)peer completion:(id)completion;
- (void)handleBeaconWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleDeviceChanged:(int)changed changes:;
- (void)handleDeviceFound:(void *)found;
- (void)handleDeviceLost:(void *)lost;
- (void)handleFetchSourceDeviceIDWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleFetchSourceDeviceIDWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleInvalidation;
- (void)handshakeWithDuetSyncPeer:(id)peer orError:(id)error;
- (void)myDeviceID;
- (void)registerRequestIDsWithClient:(uint64_t)client;
- (void)removeClient:(uint64_t)client forPeer:(uint64_t)peer retiring:(uint64_t)retiring;
- (void)sendRequestID:(id)d request:(id)request peer:(id)peer highPriority:(BOOL)priority options:(id)options responseHandler:(id)handler;
- (void)sendRequestID:(void *)d request:(void *)request peer:(void *)peer client:(void *)client options:(void *)options responseHandler:;
- (void)start;
- (void)startRapport;
@end

@implementation _DKSyncRapportCommonStorage

- (uint64_t)_additionalFlagsForInternal
{
  if (result)
  {
    OUTLINED_FUNCTION_0_1();
    v3 = 3221225472;
    v4 = __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke;
    v5 = &unk_1E7367440;
    v6 = v1;
    if (qword_1EADBD670 != -1)
    {
      dispatch_once(&qword_1EADBD670, block);
    }

    return _MergedGlobals_6;
  }

  return result;
}

- (id)myDeviceID
{
  v3 = self->_deviceID;
  if (!v3)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(_DKSyncRapportCommonStorage *)self myDeviceID];
    }

    [(RPCompanionLinkClient *)self->_client invalidate];
    client = self->_client;
    self->_client = 0;

    [(_DKSyncRapportCommonStorage *)self setIsAvailable:0];
    v6 = +[_CDObservationCenter sharedInstance];
    [v6 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:self];
  }

  return v3;
}

+ (_DKSyncRapportCommonStorage)sharedInstance
{
  if (sharedInstance_initialized_6 != -1)
  {
    +[_DKSyncRapportCommonStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

- (_DKSyncRapportCommonStorage)init
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _DKSyncRapportCommonStorage;
  v2 = [(_DKSyncRapportCommonStorage *)&v12 init];
  if (v2)
  {
    v13 = *MEMORY[0x1E69C6BD0];
    v14[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    failIfAsleepOption = v2->_failIfAsleepOption;
    v2->_failIfAsleepOption = v3;

    v5 = [_DKEventTypeResultStatsCounter counterInCollection:@"rapport_message_sent_with_fail_if_asleep" withEventName:@"option" eventType:&unk_1F05EF728 eventTypePossibleValues:?];
    failIfAsleepStats = v2->_failIfAsleepStats;
    v2->_failIfAsleepStats = v5;

    v7 = objc_opt_new();
    companionLinkClients = v2->_companionLinkClients;
    v2->_companionLinkClients = v7;

    v2->_retryTimeout = 8.0;
    v9 = objc_opt_new();
    peerSourceDeviceIDsWithCompletedHandshakes = v2->_peerSourceDeviceIDsWithCompletedHandshakes;
    v2->_peerSourceDeviceIDsWithCompletedHandshakes = v9;
  }

  return v2;
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_client invalidate];
  [_DKSyncRapportCommonStorage removeAllClientsWithRetiring:];
  v3.receiver = self;
  v3.super_class = _DKSyncRapportCommonStorage;
  [(_DKSyncRapportCommonStorage *)&v3 dealloc];
}

- (void)start
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  if (!self->_client && !self->_running)
  {

    [(_DKSyncRapportCommonStorage *)self startRapport];
  }
}

- (void)cancelOutstandingOperations
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);
}

- (void)handleInvalidation
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)handleDeviceFound:(void *)found
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (found)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    idsDeviceIdentifier = [(__CFString *)v5 idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v20 = [objc_opt_class() description];
        idsDeviceIdentifier2 = [(__CFString *)v5 idsDeviceIdentifier];
        identifier = [(__CFString *)v5 identifier];
        *buf = 138543874;
        v50 = v20;
        v51 = 2114;
        v52 = idsDeviceIdentifier2;
        v53 = 2114;
        v54 = identifier;
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Found device %{public}@ with companion link identifier %{public}@", buf, 0x20u);
      }

      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v22 = [objc_opt_class() description];
        idsDeviceIdentifier3 = [(__CFString *)v5 idsDeviceIdentifier];
        *buf = 138543874;
        v50 = v22;
        v51 = 2114;
        v52 = idsDeviceIdentifier3;
        v53 = 2112;
        v54 = v5;
        _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Device %{public}@ is %@", buf, 0x20u);
      }

      v10 = +[_DKSyncPeerStatusTracker sharedInstance];
      idsDeviceIdentifier4 = [(__CFString *)v5 idsDeviceIdentifier];
      v12 = [v10 peerWithIDSDeviceIdentifier:idsDeviceIdentifier4];

      name = [(__CFString *)v5 name];
      [v12 setName:name];

      model = [(__CFString *)v5 model];
      [v12 setModel:model];

      [v12 setCompanion:{(-[__CFString statusFlags](v5, "statusFlags") >> 6) & 1}];
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v46 = [objc_opt_class() description];
        idsDeviceIdentifier5 = [(__CFString *)v5 idsDeviceIdentifier];
        v24 = [v12 me];
        v25 = &stru_1F05B9908;
        if (v24)
        {
          v25 = @"pseudo ";
        }

        v41 = v25;
        identifier2 = [v12 identifier];
        model2 = [v12 model];
        if (model2)
        {
          v34 = MEMORY[0x1E696AEC0];
          model3 = [v12 model];
          identifier = [v34 stringWithFormat:@" (%@)", model3];
        }

        else
        {
          identifier = &stru_1F05B9908;
        }

        *buf = 138544386;
        v50 = v46;
        v51 = 2114;
        v52 = idsDeviceIdentifier5;
        v53 = 2114;
        v54 = v41;
        v55 = 2114;
        v56 = identifier2;
        v57 = 2114;
        v58 = identifier;
        _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model2)
        {
        }
      }

      if (([(__CFString *)v5 statusFlags]& 0x100) != 0)
      {
        v18 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v48 = [objc_opt_class() description];
          if ([v12 me])
          {
            v31 = @"pseudo ";
          }

          else
          {
            v31 = &stru_1F05B9908;
          }

          identifier3 = [v12 identifier];
          model4 = [v12 model];
          if (model4)
          {
            v38 = MEMORY[0x1E696AEC0];
            identifier = [v12 model];
            v33 = [v38 stringWithFormat:@" (%@)", identifier];
          }

          else
          {
            v33 = &stru_1F05B9908;
          }

          *buf = 138544130;
          v50 = v48;
          v51 = 2114;
          v52 = v31;
          v53 = 2114;
          v54 = identifier3;
          v55 = 2114;
          v56 = v33;
          _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Activating %{public}@peer %{public}@%{public}@ recognizes sync protocol", buf, 0x2Au);
          if (model4)
          {
          }
        }

        [found handshakeWithDuetSyncPeer:v12 orError:0];
      }

      else
      {
        v16 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v47 = [objc_opt_class() description];
          v28 = [v12 me];
          v29 = &stru_1F05B9908;
          if (v28)
          {
            v29 = @"pseudo ";
          }

          v40 = v29;
          identifier4 = [v12 identifier];
          model5 = [v12 model];
          if (model5)
          {
            v35 = MEMORY[0x1E696AEC0];
            model6 = [v12 model];
            v42 = [v35 stringWithFormat:@" (%@)", model6];
          }

          else
          {
            v42 = &stru_1F05B9908;
          }

          model7 = [(__CFString *)v5 model];
          name2 = [(__CFString *)v5 name];
          *buf = 138544642;
          v50 = v47;
          v51 = 2114;
          v52 = v40;
          v53 = 2114;
          v54 = identifier4;
          v55 = 2114;
          v56 = v42;
          v57 = 2114;
          v58 = model7;
          v59 = 2112;
          v60 = name2;
          _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ does not currently recognize sync protocol: %{public}@ (%@)", buf, 0x3Eu);

          if (model5)
          {
          }
        }

        [v10 removeActiveTransports:objc_msgSend(found fromPeer:{"transportType"), v12}];
      }

      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceFound:];
      }

      [v10 debugLogPeers];
    }

    else
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceFound:];
      }
    }
  }
}

- (void)handleDeviceChanged:(int)changed changes:
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (self)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    idsDeviceIdentifier = [(__CFString *)v8 idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v39 = [objc_opt_class() description];
        idsDeviceIdentifier2 = [(__CFString *)v8 idsDeviceIdentifier];
        identifier = [(__CFString *)v8 identifier];
        *buf = 138544130;
        *&buf[4] = v39;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier2;
        *&buf[22] = 2112;
        v78 = identifier;
        *v79 = 1024;
        *&v79[2] = changed;
        _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ with companion link identifier %@ and changes %x", buf, 0x26u);
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v41 = [objc_opt_class() description];
        idsDeviceIdentifier3 = [(__CFString *)v8 idsDeviceIdentifier];
        *buf = 138543874;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier3;
        *&buf[22] = 2112;
        v78 = v8;
        _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ is %@", buf, 0x20u);
      }

      v13 = +[_DKSyncPeerStatusTracker sharedInstance];
      idsDeviceIdentifier4 = [(__CFString *)v8 idsDeviceIdentifier];
      v15 = [v13 peerWithIDSDeviceIdentifier:idsDeviceIdentifier4];

      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        model3 = [objc_opt_class() description];
        idsDeviceIdentifier5 = [(__CFString *)v8 idsDeviceIdentifier];
        v43 = [v15 me];
        v44 = &stru_1F05B9908;
        if (v43)
        {
          v44 = @"pseudo ";
        }

        *&v59 = v44;
        *(&v59 + 1) = [v15 identifier];
        model = [v15 model];
        if (model)
        {
          v48 = MEMORY[0x1E696AEC0];
          model2 = [v15 model];
          v55 = model2;
          identifier = [v48 stringWithFormat:@" (%@)"];
        }

        else
        {
          identifier = &stru_1F05B9908;
        }

        *buf = 138544386;
        *&buf[4] = model3;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier5;
        *&buf[22] = 2114;
        v78 = v59;
        *v79 = 2114;
        *&v79[2] = *(&v59 + 1);
        *&v79[10] = 2114;
        *&v79[12] = identifier;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model)
        {
        }
      }

      v17 = [v13 activeTransportsForPeer:v15];
      if (([(__CFString *)v8 statusFlags]& 0x100) != 0)
      {
        v20 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          idsDeviceIdentifier5 = [objc_opt_class() description];
          v45 = [v15 me];
          v46 = &stru_1F05B9908;
          if (v45)
          {
            v46 = @"pseudo ";
          }

          *&v59 = v46;
          *(&v59 + 1) = [v15 identifier];
          model3 = [v15 model];
          if (model3)
          {
            v53 = MEMORY[0x1E696AEC0];
            model = [v15 model];
            v55 = model;
            v47 = [v53 stringWithFormat:@" (%@)"];
          }

          else
          {
            v47 = &stru_1F05B9908;
          }

          *buf = 138544130;
          *&buf[4] = idsDeviceIdentifier5;
          *&buf[12] = 2114;
          *&buf[14] = v59;
          *&buf[22] = 2114;
          v78 = *(&v59 + 1);
          *v79 = 2114;
          *&v79[2] = v47;
          _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Activating %{public}@peer %{public}@%{public}@ now recognizes sync protocol", buf, 0x2Au);
          if (model3)
          {
          }
        }

        if (([self transportType] & v17) == 0)
        {
          [self handshakeWithDuetSyncPeer:v15 orError:0];
        }
      }

      else if (([self transportType] & v17) != 0)
      {
        [v13 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), v15}];
        v18 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          model3 = [objc_opt_class() description];
          v49 = [v15 me];
          v50 = &stru_1F05B9908;
          if (v49)
          {
            v50 = @"pseudo ";
          }

          *(&v59 + 1) = v50;
          idsDeviceIdentifier5 = [v15 identifier];
          model4 = [v15 model];
          if (model4)
          {
            v54 = MEMORY[0x1E696AEC0];
            identifier = [v15 model];
            v55 = identifier;
            v52 = [v54 stringWithFormat:@" (%@)"];
          }

          else
          {
            v52 = &stru_1F05B9908;
          }

          *buf = 138544130;
          *&buf[4] = model3;
          *&buf[12] = 2114;
          *&buf[14] = *(&v59 + 1);
          *&buf[22] = 2114;
          v78 = idsDeviceIdentifier5;
          *v79 = 2114;
          *&v79[2] = v52;
          _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ no longer recognizes sync protocol", buf, 0x2Au);
          if (model4)
          {
          }
        }
      }

      v21 = [_DKSyncRapportCommonStorage deviceForPeer:];
      v22 = v21 == 0;

      if (v22)
      {
        v33 = [(_DKSyncRapportCommonStorage *)self clientForPeer:v15, v23, v24, v25, v26, v27, v28, v55, v57, v59, idsDeviceIdentifier5, SWORD2(idsDeviceIdentifier5), SHIWORD(idsDeviceIdentifier5), model3, v66, v69, v71, v73, v75, *buf, *&buf[8], *&buf[16], v78, *v79, *&v79[8], *&v79[16], v80, v81, v82];
        if (v33)
        {
          [(_DKSyncRapportCommonStorage *)self removeClient:v33 forPeer:v15 retiring:0, v29, v30, v31, v32, v56, v58, v60, v61, v63, v65, v67, v68, v70, v72, v74, v76, *buf, *&buf[8], *&buf[16], v78, *v79, *&v79[8], *&v79[16], v80, v81, v82];
        }

        [v13 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), v15}];
      }

      if ((changed & 2) != 0)
      {
        v34 = [(__CFString *)v8 statusFlags]& 0x40;
        if ([v15 isCompanion] != v34 >> 6)
        {
          if (v34)
          {
            v35 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              [objc_opt_class() description];
              objc_claimAutoreleasedReturnValue();
              [(__CFString *)v8 idsDeviceIdentifier];
              objc_claimAutoreleasedReturnValue();
              [_DKSyncRapportCommonStorage handleDeviceChanged:changes:];
            }
          }

          else
          {
            v35 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              [objc_opt_class() description];
              objc_claimAutoreleasedReturnValue();
              [(__CFString *)v8 idsDeviceIdentifier];
              objc_claimAutoreleasedReturnValue();
              [_DKSyncRapportCommonStorage handleDeviceChanged:changes:];
            }
          }

          v36 = [v13 activeTransportsForPeer:v15];
          v37 = [self transportType] & v36;
          if (v37)
          {
            [v13 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), v15}];
          }

          [v15 setCompanion:v34 != 0];
          if (v37)
          {
            [v13 addActiveTransports:objc_msgSend(self toPeer:{"transportType"), v15}];
          }
        }
      }

      v38 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceFound:];
      }

      [v13 debugLogPeers];
    }

    else
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceChanged:changes:];
      }
    }
  }
}

- (void)handleDeviceLost:(void *)lost
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (lost)
  {
    v5 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v5);

    idsDeviceIdentifier = [v4 idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v28 = [objc_opt_class() description];
        idsDeviceIdentifier2 = [v4 idsDeviceIdentifier];
        identifier = [v4 identifier];
        *buf = 138543874;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier2;
        *&buf[22] = 2112;
        v57 = identifier;
        _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ with companion link identifier %@", buf, 0x20u);
      }

      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v31 = [objc_opt_class() description];
        idsDeviceIdentifier3 = [v4 idsDeviceIdentifier];
        *buf = 138543874;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier3;
        *&buf[22] = 2112;
        v57 = v4;
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ is %@", buf, 0x20u);
      }

      v9 = +[_DKSyncPeerStatusTracker sharedInstance];
      idsDeviceIdentifier4 = [v4 idsDeviceIdentifier];
      v11 = [v9 peerWithIDSDeviceIdentifier:idsDeviceIdentifier4];

      v22 = [(_DKSyncRapportCommonStorage *)lost clientForPeer:v11, v12, v13, v14, v15, v16, v17, v38, v40, v42, v47, SWORD2(v47), SHIWORD(v47), v50, v53, *buf, *&buf[8], *&buf[16], v57, *v58, *&v58[8], *&v58[16], v59, v60, v61, v62, v63, v64, v65];
      if (v22)
      {
        [(_DKSyncRapportCommonStorage *)lost removeClient:v22 forPeer:v11 retiring:0, v18, v19, v20, v21, v39, v41, v43, v45, v48, v51, v54, v55, *buf, *&buf[8], *&buf[16], v57, *v58, *&v58[8], *&v58[16], v59, v60, v61, v62, v63, v64, v65];
      }

      v23 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v52 = [objc_opt_class() description];
        idsDeviceIdentifier5 = [v4 idsDeviceIdentifier];
        v33 = [v11 me];
        v34 = &stru_1F05B9908;
        if (v33)
        {
          v34 = @"pseudo ";
        }

        v44 = v34;
        identifier2 = [v11 identifier];
        model = [v11 model];
        if (model)
        {
          v37 = MEMORY[0x1E696AEC0];
          model2 = [v11 model];
          v36 = [v37 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v36 = &stru_1F05B9908;
        }

        *buf = 138544386;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier5;
        *&buf[22] = 2114;
        v57 = v44;
        *v58 = 2114;
        *&v58[2] = identifier2;
        *&v58[10] = 2114;
        *&v58[12] = v36;
        _os_log_debug_impl(&dword_191750000, v23, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model)
        {
        }
      }

      v24 = [_DKSyncRapportCommonStorage deviceForPeer:];
      v25 = v24 == 0;

      if (v25)
      {
        [v9 removeActiveTransports:objc_msgSend(lost fromPeer:{"transportType"), v11}];
        v26 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          [_DKSyncRapportCommonStorage handleDeviceFound:];
        }

        [v9 debugLogPeers];
      }
    }

    else
    {
      v27 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceLost:];
      }
    }
  }
}

- (void)handleActivateWithError:(uint64_t)error
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleActivateWithError:];
    }

    if (v3)
    {
      v6 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_opt_class() description];
        domain = [v3 domain];
        *buf = 138544130;
        v17 = v13;
        v18 = 2114;
        v19 = domain;
        v20 = 2048;
        code = [v3 code];
        v22 = 2112;
        v23 = v3;
        _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to start Rapport: %{public}@:%lld (%@)", buf, 0x2Au);
      }

      *(error + 8) = 0;
      [*(error + 40) invalidate];
      v7 = *(error + 40);
      *(error + 40) = 0;

      [error setIsAvailable:0];
      v8 = +[_CDObservationCenter sharedInstance];
      [v8 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:error];
    }

    else
    {
      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleActivateWithError:];
      }

      v10 = *(error + 40);
      v11 = *MEMORY[0x1E69C6C08];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke;
      v15[3] = &unk_1E73675F8;
      v15[4] = error;
      [v10 registerProfileID:v11 completion:v15];
      *(error + 8) = 1;
      [error setIsAvailable:1];
      v12 = +[_CDObservationCenter sharedInstance];
      [v12 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:error];
      *(error + 72) = 0x4020000000000000;
    }
  }
}

- (void)handleBeaconWithRequest:(void *)request options:(void *)options responseHandler:
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (self)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
    }

    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
    }

    v12 = objc_opt_new();
    myDeviceID = [self myDeviceID];
    if (myDeviceID)
    {
      v14 = [v7 objectForKeyedSubscript:@"peer"];
      if (v14)
      {
        v15 = +[_DKSyncPeerStatusTracker sharedInstance];
        v16 = [v15 peerWithIDSDeviceIdentifier:v14];
        v17 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v34 = [objc_opt_class() description];
          v23 = [v16 me];
          v24 = &stru_1F05B9908;
          if (v23)
          {
            v24 = @"pseudo ";
          }

          v31 = v24;
          identifier = [v16 identifier];
          model = [v16 model];
          if (model)
          {
            v30 = MEMORY[0x1E696AEC0];
            model2 = [v16 model];
            v26 = v30;
            v29 = model2;
            v25 = [v26 stringWithFormat:@" (%@)", model2];
          }

          else
          {
            v25 = &stru_1F05B9908;
          }

          v27 = v31;
          v32 = v25;
          *buf = 138544130;
          v40 = v34;
          v41 = 2114;
          v42 = v27;
          v43 = 2114;
          v44 = identifier;
          v45 = 2114;
          v46 = v25;
          _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Received beacon request from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
          if (model)
          {
          }
        }

        if (v16)
        {
          [self handshakeWithDuetSyncPeer:v16 orError:0];
          v18 = 0;
        }

        else
        {
          v20 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [objc_opt_class() description];
            objc_claimAutoreleasedReturnValue();
            [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
          }

          v18 = +[_DKSyncErrors internalFailure];
        }
      }

      else
      {
        v18 = +[_DKSyncErrors invalidRequest];
      }
    }

    else
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
      }

      +[_DKSyncErrors internalFailure];
      v18 = myDeviceID = &stru_1F05B9908;
    }

    v37[0] = @"server";
    v37[1] = @"results";
    v38[0] = myDeviceID;
    v38[1] = v12;
    v37[2] = @"version";
    v38[2] = @"3.0";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
    }

    optionsCopy[2](optionsCopy, v21, 0, v18);
  }
}

- (void)handleFetchSourceDeviceIDWithRequest:(void *)request options:(void *)options responseHandler:
{
  v28[7] = *MEMORY[0x1E69E9840];
  v7 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (self)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    date = [MEMORY[0x1E695DF00] date];
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
    }

    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
    }

    myDeviceID = [self myDeviceID];
    v14 = myDeviceID;
    if (myDeviceID)
    {
      v15 = 0;
      v27 = @"deviceID";
      v28[0] = myDeviceID;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v17 = v14;
    }

    else
    {
      v18 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
      }

      v19 = +[_DKSyncErrors internalFailure];
      v17 = &stru_1F05B9908;
      v16 = 0;
      v15 = v19;
    }

    v25[0] = @"server";
    v25[1] = @"result";
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = &stru_1F05B9908;
    }

    v26[0] = v17;
    v26[1] = v20;
    v25[2] = @"version";
    v26[2] = @"3.0";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
    }

    optionsCopy[2](optionsCopy, v21, 0, v15);
    if (date)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], date, date2, 0);
    }
  }
}

- (void)handshakeWithDuetSyncPeer:(id)peer orError:(id)error
{
  v64 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  errorCopy = error;
  v8 = +[_DKSyncPeerStatusTracker sharedInstance];
  if (!errorCopy)
  {
    sourceDeviceID = [peerCopy sourceDeviceID];
    if (sourceDeviceID)
    {
      v25 = sourceDeviceID;
      version = [peerCopy version];
      if (version)
      {
        v27 = version;
        peerSourceDeviceIDsWithCompletedHandshakes = self->_peerSourceDeviceIDsWithCompletedHandshakes;
        sourceDeviceID2 = [peerCopy sourceDeviceID];
        LODWORD(peerSourceDeviceIDsWithCompletedHandshakes) = [(NSMutableSet *)peerSourceDeviceIDsWithCompletedHandshakes containsObject:sourceDeviceID2];

        if (peerSourceDeviceIDsWithCompletedHandshakes)
        {
          [v8 addActiveTransports:-[_DKSyncRapportCommonStorage transportType](self toPeer:{"transportType"), peerCopy}];
          date = [MEMORY[0x1E695DF00] date];
          [v8 setLastSeenDate:date onPeer:peerCopy];

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    date2 = [MEMORY[0x1E695DF00] date];
    v32 = MEMORY[0x1E696AEC0];
    identifier = [peerCopy identifier];
    v18 = [v32 stringWithFormat:@"handshake:%@", identifier];

    v34 = +[_DKThrottledActivity standardInstance];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke;
    v46[3] = &unk_1E736A018;
    v46[4] = self;
    v47 = peerCopy;
    v48 = date2;
    v49 = v8;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_156;
    v44[3] = &unk_1E736ACD8;
    v44[4] = self;
    v45 = v47;
    v35 = date2;
    [v34 performNoMoreOftenInMinutesThan:v18 name:v46 activityBlock:v44 throttleBlock:1.0];

LABEL_21:
    goto LABEL_22;
  }

  if ([errorCopy code] != -6714 || (objc_msgSend(errorCopy, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v9, !v10))
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_opt_class() description];
      v20 = &stru_1F05B9908;
      if ([peerCopy me])
      {
        v21 = @"pseudo ";
      }

      else
      {
        v21 = &stru_1F05B9908;
      }

      identifier2 = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v38 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v20 = [v38 stringWithFormat:@" (%@)", model2];
      }

      domain = [errorCopy domain];
      *buf = 138544898;
      v51 = v19;
      v52 = 2114;
      v53 = v21;
      v54 = 2114;
      v55 = identifier2;
      v56 = 2114;
      v57 = v20;
      v58 = 2114;
      v59 = domain;
      v60 = 2048;
      code = [errorCopy code];
      v62 = 2112;
      v63 = errorCopy;
      _os_log_error_impl(&dword_191750000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed while handshaking with %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (model)
      {
      }
    }

    goto LABEL_21;
  }

  v11 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v43 = [objc_opt_class() description];
    v12 = [peerCopy me];
    v13 = &stru_1F05B9908;
    v14 = @"pseudo ";
    if (!v12)
    {
      v14 = &stru_1F05B9908;
    }

    v41 = v14;
    identifier3 = [peerCopy identifier];
    model3 = [peerCopy model];
    if (model3)
    {
      v17 = MEMORY[0x1E696AEC0];
      model4 = [peerCopy model];
      v13 = [v17 stringWithFormat:@" (%@)", model4];
    }

    model5 = [peerCopy model];
    name = [peerCopy name];
    *buf = 138544642;
    v51 = v43;
    v52 = 2114;
    v53 = v41;
    v54 = 2114;
    v55 = identifier3;
    v56 = 2114;
    v57 = v13;
    v58 = 2114;
    v59 = model5;
    v60 = 2112;
    code = name;
    _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ failed to recognize sync protocol beacon: %{public}@ (%@)", buf, 0x3Eu);

    if (model3)
    {
    }
  }

  [v8 removeActiveTransports:-[_DKSyncRapportCommonStorage transportType](self fromPeer:{"transportType"), peerCopy}];
LABEL_22:
}

- (void)handleActivateCompanionLinkClient:(void *)client forPeer:(void *)peer error:
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a2;
  clientCopy = client;
  peerCopy = peer;
  if (self)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v36 = [objc_opt_class() description];
      v19 = [clientCopy me];
      v20 = &stru_1F05B9908;
      if (v19)
      {
        v20 = @"pseudo ";
      }

      identifier2 = v20;
      identifier = [clientCopy identifier];
      model = [clientCopy model];
      if (model)
      {
        v27 = MEMORY[0x1E696AEC0];
        model2 = [clientCopy model];
        v31 = model2;
        v22 = [v27 stringWithFormat:@" (%@)"];
      }

      else
      {
        v22 = &stru_1F05B9908;
      }

      *buf = 138544130;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = identifier2;
      *&buf[22] = 2114;
      v38 = identifier;
      *v39 = 2114;
      *&v39[2] = v22;
      _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Handling client activate of %{public}@peer %{public}@%{public}@", buf, 0x2Au);
      if (model)
      {
      }
    }

    if (peerCopy)
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v36 = [objc_opt_class() description];
        v23 = [clientCopy me];
        v24 = &stru_1F05B9908;
        if (v23)
        {
          v24 = @"pseudo ";
        }

        v34 = v24;
        identifier2 = [clientCopy identifier];
        model3 = [clientCopy model];
        if (model3)
        {
          v28 = MEMORY[0x1E696AEC0];
          identifier = [clientCopy model];
          v31 = identifier;
          v26 = [v28 stringWithFormat:@" (%@)"];
        }

        else
        {
          v26 = &stru_1F05B9908;
        }

        domain = [peerCopy domain];
        code = [peerCopy code];
        v33 = identifier;
        *buf = 138544898;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2114;
        v38 = identifier2;
        *v39 = 2114;
        *&v39[2] = v26;
        *&v39[10] = 2114;
        *&v39[12] = domain;
        *&v39[20] = 2048;
        *&v39[22] = code;
        *&v39[30] = 2112;
        v40 = peerCopy;
        _os_log_error_impl(&dword_191750000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed client activate of %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model3)
        {
        }
      }

      [(_DKSyncRapportCommonStorage *)self removeClient:v9 forPeer:clientCopy retiring:0, v15, v16, v17, v18, v31, v32, v33, v34, identifier2, v36, *buf, *&buf[8], *&buf[16], v38, *v39, *&v39[8], *&v39[16], *&v39[24], v40, v41, v42, v43, v44, v45, v46, v47];
    }
  }
}

- (id)transformResponseError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = *MEMORY[0x1E69C6BC8];
  if ([domain isEqualToString:*MEMORY[0x1E69C6BC8]])
  {
    code = [errorCopy code];

    if (code == -71156)
    {
      v8 = +[_DKSyncErrors temporaryFailure];

      goto LABEL_12;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v6])
  {
    code2 = [errorCopy code];

    v8 = errorCopy;
    if (code2 != -6722)
    {
      goto LABEL_12;
    }

    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_DKSyncRapportCommonStorage *)self transformResponseError:v11];
    }
  }

  else
  {
  }

  v8 = errorCopy;
LABEL_12:

  return v8;
}

- (id)transformCaughtObject:(id)object existingError:(id)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    v8 = errorCopy;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = +[_DKSyncErrors internalFailure];
    domain = [v12 domain];
    v14 = +[_DKSyncErrors internalFailure];
    code = [v14 code];
    v32 = *MEMORY[0x1E696A578];
    reason = [objectCopy reason];
    v17 = reason;
    v18 = @"Exception Caught";
    if (reason)
    {
      v18 = reason;
    }

    v33[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v9 = [v11 errorWithDomain:domain code:code userInfo:v19];
  }

  else
  {
    v20 = objc_opt_respondsToSelector();
    v21 = MEMORY[0x1E696ABC0];
    v12 = +[_DKSyncErrors internalFailure];
    domain = [v12 domain];
    v22 = +[_DKSyncErrors internalFailure];
    code2 = [v22 code];
    if (v20)
    {
      v30 = *MEMORY[0x1E696A578];
      v24 = [objectCopy description];
      v25 = v24;
      v26 = @"Object Caught";
      if (v24)
      {
        v26 = v24;
      }

      v31 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v9 = [v21 errorWithDomain:domain code:code2 userInfo:v27];
    }

    else
    {
      v28 = *MEMORY[0x1E696A578];
      v29 = @"Object Caught";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v9 = [v21 errorWithDomain:domain code:code2 userInfo:v25];
    }
  }

LABEL_6:

  return v9;
}

- (void)fetchSourceDeviceIDFromPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v45[2] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  completionCopy = completion;
  v10 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v10);

  myDeviceID = [(_DKSyncRapportCommonStorage *)self myDeviceID];
  if (-[_DKSyncRapportCommonStorage isAvailable](self, "isAvailable") && ([peerCopy idsDeviceIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    date = [MEMORY[0x1E695DF00] date];
    v14 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v15 = myDeviceID;
    }

    else
    {
      v15 = &stru_1F05B9908;
    }

    v44[0] = @"client";
    v44[1] = @"version";
    v45[0] = v15;
    v45[1] = @"3.0";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v17 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v27 = [objc_opt_class() description];
      v20 = [peerCopy me];
      v21 = @"pseudo ";
      if (!v20)
      {
        v21 = &stru_1F05B9908;
      }

      v25 = v21;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v23 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v14 = [v23 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544386;
      v35 = v27;
      v36 = 2114;
      v37 = v25;
      v38 = 2114;
      v39 = identifier;
      v40 = 2114;
      v41 = v14;
      v42 = 2112;
      v43 = v16;
      _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Sending source device id request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __83___DKSyncRapportCommonStorage_fetchSourceDeviceIDFromPeer_highPriority_completion___block_invoke;
    v30[3] = &unk_1E736AD00;
    v30[4] = self;
    v31 = peerCopy;
    v32 = date;
    v33 = completionCopy;
    v18 = completionCopy;
    v19 = date;
    [(_DKSyncRapportCommonStorage *)self sendRequestID:@"com.apple.coreduet.fetch-source-device-id" request:v16 peer:v31 highPriority:priorityCopy options:0 responseHandler:v30];
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __83___DKSyncRapportCommonStorage_fetchSourceDeviceIDFromPeer_highPriority_completion___block_invoke_2;
    v28[3] = &unk_1E7367508;
    v29 = completionCopy;
    v16 = completionCopy;
    [(_DKSyncRapportCommonStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v28];
    v19 = v29;
  }
}

- (void)handleFetchSourceDeviceIDWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v60 = *MEMORY[0x1E69E9840];
  v13 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  if (self)
  {
    v17 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v17);

    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (optionsCopy)
    {
      if ([optionsCopy code] == -6714 && (objc_msgSend(optionsCopy, "domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v19, v20))
      {
        v21 = +[_DKSyncPeerStatusTracker sharedInstance];
        [v21 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), errorCopy}];
        v22 = 0;
        v23 = 0;
      }

      else
      {
        [self transformResponseError:optionsCopy];
        v22 = 0;
        v23 = 0;
        optionsCopy = v21 = optionsCopy;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v46 = [objc_opt_class() description];
        if ([errorCopy me])
        {
          v30 = @"pseudo ";
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        identifier = [errorCopy identifier];
        model = [errorCopy model];
        if (model)
        {
          v34 = MEMORY[0x1E696AEC0];
          error = [errorCopy model];
          error = [v34 stringWithFormat:@" (%@)", error];
        }

        else
        {
          error = &stru_1F05B9908;
        }

        *buf = 138544386;
        v51 = v46;
        v52 = 2114;
        v53 = v30;
        v54 = 2114;
        v55 = identifier;
        v56 = 2114;
        v57 = error;
        v58 = 2112;
        v59 = v13;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch source device id response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model)
        {
        }
      }

      v21 = [(__CFString *)v13 objectForKeyedSubscript:@"result"];
      v22 = [(__CFString *)v13 objectForKeyedSubscript:@"version"];
      if ([v22 length])
      {
        [v22 doubleValue];
        if (v25 <= 0.0)
        {

          v22 = 0;
        }
      }

      v26 = [v21 objectForKeyedSubscript:@"deviceID"];
      if (v26 && (v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v26]) != 0)
      {
        v27 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v45 = [objc_opt_class() description];
          uUIDString = [v23 UUIDString];
          v35 = [errorCopy me];
          v36 = &stru_1F05B9908;
          if (v35)
          {
            v36 = @"pseudo ";
          }

          v42 = v36;
          identifier2 = [errorCopy identifier];
          model2 = [errorCopy model];
          if (model2)
          {
            v41 = MEMORY[0x1E696AEC0];
            model3 = [errorCopy model];
            v37 = [v41 stringWithFormat:@" (%@)", model3];
            v40 = model3;
          }

          else
          {
            v37 = &stru_1F05B9908;
          }

          *buf = 138544386;
          v51 = v45;
          v52 = 2114;
          v53 = uUIDString;
          v54 = 2114;
          v55 = v42;
          v56 = 2114;
          v57 = identifier2;
          v58 = 2114;
          v59 = v37;
          v39 = v37;
          _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched source device id %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x34u);
          if (model2)
          {
          }
        }

        optionsCopy = 0;
      }

      else
      {
        optionsCopy = +[_DKSyncErrors invalidResponse];
        v23 = 0;
      }
    }

    if (peerCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], peerCopy, date, 0);
    }

    if (dateCopy)
    {
      v29 = dateCopy[2];
      if (optionsCopy)
      {
        v29(dateCopy, 0, 0, optionsCopy);
      }

      else
      {
        v29(dateCopy, v23, v22, 0);
      }
    }
  }
}

- (BOOL)isTransportActiveForPeer:(id)peer
{
  peerCopy = peer;
  v5 = +[_DKSyncPeerStatusTracker sharedInstance];
  v6 = [v5 activeTransportsForPeer:peerCopy];

  LOBYTE(self) = ([(_DKSyncRapportCommonStorage *)self transportType]& v6) != 0;
  return self;
}

- (void)startRapport
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = [objc_opt_class() description];
      *buf = 138543362;
      v24 = v6;
      _os_log_debug_impl(&dword_191750000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: Starting Rapport", buf, 0xCu);
    }

    v3 = 0x1E7366000;
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if (*(self + 32))
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C6B70]);
      if (v5)
      {
        v7 = +[_DKSyncSerializer underlyingQueue];
        [v5 setDispatchQueue:v7];

        [v5 setControlFlags:[v5 controlFlags]| 2];
        [v5 controlFlags];
        v8 = OUTLINED_FUNCTION_29_3();
        [v5 setControlFlags:v7 | [(_DKSyncRapportCommonStorage *)v8 _additionalFlagsForInternal]| 0x400000];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke;
        v22[3] = &unk_1E7367440;
        v22[4] = self;
        [v5 setInvalidationHandler:v22];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_2;
        v21[3] = &unk_1E736AC38;
        v21[4] = self;
        [v5 setDeviceFoundHandler:v21];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_3;
        v20[3] = &unk_1E736AC60;
        v20[4] = self;
        [v5 setDeviceChangedHandler:v20];
        OUTLINED_FUNCTION_2_4();
        v16 = 3221225472;
        v17 = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_4;
        v18 = &unk_1E736AC38;
        selfCopy = self;
        [v5 setDeviceLostHandler:v15];
        [(_DKSyncRapportCommonStorage *)self registerRequestIDsWithClient:v5];
        objc_storeStrong((self + 40), v5);
        OUTLINED_FUNCTION_0_1();
        v11 = 3221225472;
        v12 = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_5;
        v13 = &unk_1E73675F8;
        selfCopy2 = self;
        [v5 activateWithCompletion:v10];
        goto LABEL_9;
      }

      v3 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      name = [objc_opt_class() description];
      *buf = 138543362;
      v24 = name;
      _os_log_error_impl(&dword_191750000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to start Rapport, could not instantiate client", buf, 0xCu);
    }

    else
    {
      v5 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      name = [OUTLINED_FUNCTION_29_3() name];
      *buf = 138543618;
      v24 = 0x1E7366000uLL;
      v25 = 2114;
      v26 = name;
      _os_log_fault_impl(&dword_191750000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Warning, attempting to start transport %{public}@ with no device ID", buf, 0x16u);
    }

LABEL_7:
LABEL_9:
  }
}

- (void)registerRequestIDsWithClient:(uint64_t)client
{
  if (client)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60___DKSyncRapportCommonStorage_registerRequestIDsWithClient___block_invoke;
    v5[3] = &unk_1E736AC88;
    v5[4] = client;
    v3 = a2;
    [v3 registerRequestID:@"com.apple.coreduet.beacon" options:0 handler:v5];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60___DKSyncRapportCommonStorage_registerRequestIDsWithClient___block_invoke_2;
    v4[3] = &unk_1E736AC88;
    v4[4] = client;
    [v3 registerRequestID:@"com.apple.coreduet.fetch-source-device-id" options:0 handler:v4];
  }
}

- (id)deviceForPeer:
{
  OUTLINED_FUNCTION_38_1();
  v1 = v0;
  v3 = v2;
  if (v1)
  {
    activeDevices = [*(v1 + 40) activeDevices];
    OUTLINED_FUNCTION_36();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(activeDevices);
          }

          v9 = *(8 * i);
          idsDeviceIdentifier = [v3 idsDeviceIdentifier];
          idsDeviceIdentifier2 = [v9 idsDeviceIdentifier];
          v12 = [idsDeviceIdentifier isEqualToString:idsDeviceIdentifier2];

          if (v12)
          {
            v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_36();
        v6 = [activeDevices countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  OUTLINED_FUNCTION_37_1();

  return v13;
}

- (id)clientForPeer:(uint64_t)peer
{
  OUTLINED_FUNCTION_70_0();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  a18 = *MEMORY[0x1E69E9840];
  v36 = v35;
  v37 = v36;
  if (v34)
  {
    idsDeviceIdentifier = [v36 idsDeviceIdentifier];
    if (idsDeviceIdentifier)
    {
      [v37 idsDeviceIdentifier];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4_17() objectForKeyedSubscript:?];
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v39 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v43 = [objc_opt_class() description];
        v44 = &stru_1F05B9908;
        if ([v37 me])
        {
          v45 = @"pseudo ";
        }

        else
        {
          v45 = &stru_1F05B9908;
        }

        identifier = [v37 identifier];
        model = [v37 model];
        if (model)
        {
          v48 = MEMORY[0x1E696AEC0];
          model2 = [v37 model];
          v44 = [v48 stringWithFormat:@" (%@)"];
        }

        LODWORD(buf) = 138544130;
        *(&buf + 4) = v43;
        WORD6(buf) = 2114;
        *(&buf + 14) = v45;
        a14 = 2114;
        a15 = identifier;
        LOWORD(a16) = 2114;
        *(&a16 + 2) = v44;
        _os_log_error_impl(&dword_191750000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get client for %{public}@peer %{public}@%{public}@ missing idsDeviceIdentifier", &buf, 0x2Au);
        if (model)
        {
        }
      }
    }
  }

  OUTLINED_FUNCTION_72_0();

  return v40;
}

- (void)removeClient:(uint64_t)client forPeer:(uint64_t)peer retiring:(uint64_t)retiring
{
  OUTLINED_FUNCTION_70_0();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  a18 = *MEMORY[0x1E69E9840];
  v41 = v40;
  v42 = v37;
  if (v39)
  {
    v43 = +[_CDLogging syncChannel];
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
    if (v35)
    {
      if (v44)
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_28_4() me];
        v45 = &stru_1F05B9908;
        OUTLINED_FUNCTION_22_7();
        [v42 identifier];
        objc_claimAutoreleasedReturnValue();
        model = [OUTLINED_FUNCTION_34_0() model];
        if (model)
        {
          v48 = MEMORY[0x1E696AEC0];
          [v42 model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_9();
          v45 = [v48 stringWithFormat:@" (%@)"];
        }

        OUTLINED_FUNCTION_3_21();
        v50 = "%{public}@: Retiring client for %{public}@peer %{public}@%{public}@";
LABEL_15:
        OUTLINED_FUNCTION_31_1(&dword_191750000, v43, v49, v50, &a11);
        if (model)
        {
        }
      }
    }

    else if (v44)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_28_4() me];
      v45 = &stru_1F05B9908;
      OUTLINED_FUNCTION_22_7();
      [v42 identifier];
      objc_claimAutoreleasedReturnValue();
      model = [OUTLINED_FUNCTION_34_0() model];
      if (model)
      {
        v51 = MEMORY[0x1E696AEC0];
        [v42 model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_21_9();
        v45 = [v51 stringWithFormat:@" (%@)"];
      }

      OUTLINED_FUNCTION_3_21();
      v50 = "%{public}@: Removing client for %{public}@peer %{public}@%{public}@";
      goto LABEL_15;
    }

    idsDeviceIdentifier = [v42 idsDeviceIdentifier];
    [*(v39 + 48) setObject:0 forKeyedSubscript:idsDeviceIdentifier];
    [v41 invalidate];
  }

  OUTLINED_FUNCTION_72_0();
}

- (void)sendRequestID:(id)d request:(id)request peer:(id)peer highPriority:(BOOL)priority options:(id)options responseHandler:(id)handler
{
  v96 = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  peerCopy = peer;
  optionsCopy = options;
  handlerCopy = handler;
  v19 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v19);

  v26 = [(_DKSyncRapportCommonStorage *)self clientForPeer:peerCopy, v20, v21, v22, v23, v24, v25, v67, v69, v71, v74, SWORD2(v74), SHIWORD(v74), v76, v80, v81, v82, selfCopy, v84, v85, v86, v87, v88, v89, v90, buf, v92, *(&v92 + 1), v93];
  if (v26)
  {
    v32 = v26;
    v33 = [_DKSyncRapportCommonStorage deviceForPeer:];
    [v32 setDestinationDevice:v33];

    destinationDevice = [v32 destinationDevice];

    if (destinationDevice)
    {
      [(_DKSyncRapportCommonStorage *)self sendRequestID:dCopy request:requestCopy peer:peerCopy client:v32 options:optionsCopy responseHandler:handlerCopy];
      goto LABEL_7;
    }

    v35 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      v77 = [objc_opt_class() description];
      v36 = [peerCopy me];
      v37 = &stru_1F05B9908;
      v38 = @"pseudo ";
      if (!v36)
      {
        v38 = &stru_1F05B9908;
      }

      model5 = v38;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v51 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v68 = model2;
        v37 = [v51 stringWithFormat:@" (%@)"];
      }

      LODWORD(buf) = 138544130;
      OUTLINED_FUNCTION_10_11();
      *(&v92 + 6) = model5;
      HIWORD(v92) = v52;
      v93 = identifier;
      v94 = v52;
      v95 = v37;
      _os_log_fault_impl(&dword_191750000, v35, OS_LOG_TYPE_FAULT, "%{public}@: Device disappeared for %{public}@peer %{public}@%{public}@", &buf, 0x2Au);
      if (model)
      {
      }
    }

    [(_DKSyncRapportCommonStorage *)self removeClient:v32 forPeer:peerCopy retiring:0, v53, v54, v55, v56, v68, v70, model2, model5, identifier, v77, v80, *(&v80 + 1), v81, v82, selfCopy, v84, v85, v86, v87, v88, v89, v90, buf, v92, *(&v92 + 1), v93];
    if (handlerCopy)
    {
      v50 = +[_DKSyncErrors internalFailure];
      goto LABEL_35;
    }
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x1E69C6B70]);
    if (!v27)
    {
      v28 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v78 = [objc_opt_class() description];
        v43 = &stru_1F05B9908;
        if ([peerCopy me])
        {
          v44 = @"pseudo ";
        }

        else
        {
          v44 = &stru_1F05B9908;
        }

        identifier2 = [peerCopy identifier];
        model3 = [peerCopy model];
        if (model3)
        {
          v47 = MEMORY[0x1E696AEC0];
          identifier = [peerCopy model];
          v43 = [v47 stringWithFormat:@" (%@)", identifier];
        }

        LODWORD(buf) = 138544130;
        OUTLINED_FUNCTION_10_11();
        *(&v92 + 6) = v44;
        HIWORD(v92) = v48;
        v93 = identifier2;
        v94 = v48;
        v95 = v43;
        _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create client for %{public}@peer %{public}@%{public}@", &buf, 0x2Au);
        if (model3)
        {
        }
      }

      if (handlerCopy)
      {
        v29 = +[_DKSyncErrors internalFailure];
        v30 = OUTLINED_FUNCTION_30_2();
        v31(v30);
      }

      v32 = 0;
      goto LABEL_7;
    }

    v32 = v27;
    v40 = +[_DKSyncSerializer underlyingQueue];
    [v32 setDispatchQueue:v40];

    [v32 setControlFlags:{objc_msgSend(v32, "controlFlags") | -[_DKSyncRapportCommonStorage _additionalFlagsForInternal](self) | 0x400000}];
    v41 = [_DKSyncRapportCommonStorage deviceForPeer:];
    [v32 setDestinationDevice:v41];

    destinationDevice2 = [v32 destinationDevice];

    if (destinationDevice2)
    {
      OUTLINED_FUNCTION_2_4();
      *(&v80 + 1) = 3221225472;
      v81 = __95___DKSyncRapportCommonStorage_sendRequestID_request_peer_highPriority_options_responseHandler___block_invoke;
      v82 = &unk_1E736AD28;
      selfCopy = self;
      v32 = v32;
      v84 = v32;
      v85 = peerCopy;
      v86 = optionsCopy;
      LOBYTE(v90) = priority;
      v87 = dCopy;
      v88 = requestCopy;
      v89 = handlerCopy;
      [v32 activateWithCompletion:&v80];

      goto LABEL_7;
    }

    v49 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v79 = [objc_opt_class() description];
      v60 = &stru_1F05B9908;
      [peerCopy me];
      identifier3 = [peerCopy identifier];
      model4 = [peerCopy model];
      if (model4)
      {
        v63 = MEMORY[0x1E696AEC0];
        model5 = [peerCopy model];
        v60 = [v63 stringWithFormat:@" (%@)", model5];
      }

      LODWORD(buf) = 138544130;
      OUTLINED_FUNCTION_10_11();
      *(&v92 + 6) = v64;
      HIWORD(v92) = v65;
      v93 = identifier3;
      v94 = v65;
      v95 = v60;
      OUTLINED_FUNCTION_31_1(&dword_191750000, v49, v66, "%{public}@: Unable to determine device for %{public}@peer %{public}@%{public}@", &buf);
      if (model4)
      {
      }
    }

    [v32 invalidate];
    if (handlerCopy)
    {
      v50 = +[_DKSyncErrors temporaryFailure];
LABEL_35:
      v57 = v50;
      v58 = OUTLINED_FUNCTION_30_2();
      v59(v58);
    }
  }

LABEL_7:
}

- (void)sendRequestID:(void *)d request:(void *)request peer:(void *)peer client:(void *)client options:(void *)options responseHandler:
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = a2;
  dCopy = d;
  requestCopy = request;
  peerCopy = peer;
  clientCopy = client;
  optionsCopy = options;
  if (self)
  {
    v49 = requestCopy;
    v18 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v18);

    v19 = [clientCopy objectForKey:*MEMORY[0x1E69C6BD0]];

    v20 = @"enabled";
    if (!v19)
    {
      v20 = @"disabled";
    }

    v21 = v20;
    v22 = *MEMORY[0x1E69C6BB0];
    if (clientCopy)
    {
      v23 = [clientCopy mutableCopy];
    }

    else
    {
      v23 = objc_opt_new();
    }

    v24 = v23;
    [v23 setObject:&unk_1F05EEFB8 forKeyedSubscript:*MEMORY[0x1E69C6C00]];
    v25 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v39 = dCopy;
      v47 = [objc_opt_class() description];
      v28 = [requestCopy me];
      v29 = @"pseudo ";
      if (!v28)
      {
        v29 = &stru_1F05B9908;
      }

      v42 = v29;
      identifier = [requestCopy identifier];
      model = [requestCopy model];
      if (model)
      {
        v34 = MEMORY[0x1E696AEC0];
        model2 = [requestCopy model];
        [v34 stringWithFormat:@" (%@)", model2];
        objc_claimAutoreleasedReturnValue();
      }

      *buf = 138544642;
      OUTLINED_FUNCTION_10_11();
      v56 = v50;
      v57 = v35;
      dCopy = v39;
      v58 = v42;
      v59 = v35;
      v60 = identifier;
      v61 = v35;
      model4 = v36;
      v62 = v36;
      v63 = 2112;
      v64 = v39;
      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Starting to send request %{public}@ to %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
      if (model)
      {
      }
    }

    ++*(self + 56);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __89___DKSyncRapportCommonStorage_sendRequestID_request_peer_client_options_responseHandler___block_invoke;
    v51[3] = &unk_1E736AD50;
    v51[4] = self;
    v26 = v21;
    v52 = v26;
    v54 = optionsCopy;
    v53 = peerCopy;
    [v53 sendRequestID:v50 request:dCopy destinationID:v22 options:v24 responseHandler:v51];
    v27 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v48 = [objc_opt_class() description];
      v30 = [requestCopy me];
      v31 = &stru_1F05B9908;
      if (v30)
      {
        v31 = @"pseudo ";
      }

      v44 = v31;
      identifier2 = [requestCopy identifier];
      model3 = [requestCopy model];
      if (model3)
      {
        v40 = MEMORY[0x1E696AEC0];
        model4 = [requestCopy model];
        v33 = [v40 stringWithFormat:@" (%@)", model4];
      }

      else
      {
        v33 = &stru_1F05B9908;
      }

      *buf = 138544386;
      OUTLINED_FUNCTION_10_11();
      v56 = v50;
      v57 = v37;
      v58 = v44;
      v59 = v37;
      v60 = identifier2;
      v61 = v37;
      v62 = v33;
      _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: Done sending request %{public}@ to %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model3)
      {
      }
    }

    requestCopy = v49;
  }
}

- (void)handleAvailabilityFailureWithPeer:(id)peer completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  completionCopy = completion;
  v8 = +[_DKSyncErrors internalFailure];
  if (![(_DKSyncRapportCommonStorage *)self isAvailable])
  {
    v9 = +[_DKSyncErrors temporaryFailure];

    v8 = v9;
  }

  idsDeviceIdentifier = [peerCopy idsDeviceIdentifier];

  v11 = 0x1E7366000uLL;
  v12 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
  if (!idsDeviceIdentifier)
  {
    model4 = +[_DKSyncErrors temporaryFailure];

    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [objc_opt_class() description];
      v15 = &stru_1F05B9908;
      [peerCopy me];
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v18 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v15 = [v18 stringWithFormat:@" (%@)", model2];
      }

      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v19, v20, v21, v22, v23, 0x2Au);
      if (model)
      {
      }

      v12 = "uesWithRequest:options:responseHandler:]";
      v11 = 0x1E7366000uLL;
    }

    v24 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [objc_opt_class() description];
      v26 = [peerCopy debugDescription];
      *buf = *(v12 + 346);
      selfCopy = v25;
      v51 = 2112;
      v52 = v26;
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v27, v28, v29, v30, v31, 0x16u);
    }

    v8 = model4;
  }

  v32 = [_DKSyncRapportCommonStorage deviceForPeer:];

  if (!v32)
  {
    v33 = +[_DKSyncErrors temporaryFailure];

    v34 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v36 = [objc_opt_class() description];
      v37 = &stru_1F05B9908;
      [peerCopy me];
      identifier2 = [peerCopy identifier];
      model3 = [peerCopy model];
      if (model3)
      {
        v41 = MEMORY[0x1E696AEC0];
        model4 = [peerCopy model];
        v37 = [v41 stringWithFormat:@" (%@)", model4];
      }

      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v42, v43, v44, v45, v46, 0x2Au);
      if (model3)
      {
      }

      v12 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
      v11 = 0x1E7366000;
    }

    syncChannel = [*(v11 + 648) syncChannel];
    if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v40 = [OUTLINED_FUNCTION_29_3() debugDescription];
      *buf = *(v12 + 346);
      selfCopy = self;
      v51 = 2112;
      v52 = v40;
      _os_log_debug_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Peer: %@", buf, 0x16u);
    }

    v8 = v33;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

- (void)handleDeviceFound:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: peers now...", v5);
}

- (void)handleDeviceFound:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Ignoring device found with no idsDeviceIdentifier: %@", v4, v5);
}

- (void)handleDeviceChanged:changes:.cold.1()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_51(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Device %{public}@ is no longer paired companion", v5, v6);
}

- (void)handleDeviceChanged:changes:.cold.2()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_51(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Device %{public}@ is now paired companion", v5, v6);
}

- (void)handleDeviceChanged:changes:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Ignoring device changed with no idsDeviceIdentifier: %@", v4, v5);
}

- (void)handleDeviceLost:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Ignoring device lost with no idsDeviceIdentifier: %@", v4, v5);
}

- (void)handleActivateWithError:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling activate", v5);
}

- (void)handleActivateWithError:.cold.2()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Started Rapport", v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling beacon request", v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received beacon request: %@", v4, v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to instantiate peer with ids device identifier %@", v4, v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to beacon, missing source device id or delegate", v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with beacon response: %@", v4, v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch source device id request", v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch source device id request: %@", v4, v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to start, missing source device id or delegate", v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch source device id response: %@", v4, v5);
}

- (void)transformResponseError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)myDeviceID
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() description];
  name = [self name];
  name2 = [self name];
  OUTLINED_FUNCTION_27_4();
  v10 = v7;
  v11 = v8;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "%{public}@: Illegal state, transport %{public}@ running with no device ID, turning off transport %{public}@", v9, 0x20u);
}

- (void)handleFetchSourceDeviceIDWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch source device id response", v5);
}

@end