@interface MRAVClusterController
+ (id)sharedController;
- (MRAVClusterController)init;
- (NSString)clusterLeaderUID;
- (NSString)clusterUID;
- (unint64_t)clusterStatus;
- (unint64_t)onQueue_computeClusterStatus;
- (unsigned)clusterType;
- (void)deviceInfoDidChangeNotification:(id)notification;
- (void)getClusterLeaderEndpoint:(id)endpoint;
- (void)getClusterStatus:(id)status;
- (void)onQueue_notifyObserversWithClusterStatus:(unint64_t)status;
- (void)onQueue_notifyObserversWithClusterType:(unsigned int)type;
- (void)onQueue_setClusterStatus:(unint64_t)status;
- (void)onQueue_setClusterType:(unsigned int)type;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)updateClusterInformation;
@end

@implementation MRAVClusterController

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRAVClusterController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = _MRAVClusterControler_sharedController;

  return v2;
}

void __41__MRAVClusterController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MRAVClusterControler_sharedController;
  _MRAVClusterControler_sharedController = v1;
}

- (MRAVClusterController)init
{
  v25.receiver = self;
  v25.super_class = MRAVClusterController;
  v2 = [(MRAVClusterController *)&v25 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@-callback", v5];
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@-serial", v13];
    uTF8String2 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String2, v16);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v17;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    if (+[MRAVClusterController canBeClusterMember])
    {
      v21 = MRMediaRemoteCopyDeviceUID();
      localPairingIdentity = v2->_localPairingIdentity;
      v2->_localPairingIdentity = v21;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_deviceInfoDidChangeNotification_ name:@"kMRDeviceInfoDidChangeNotification" object:0];

    [(MRAVClusterController *)v2 updateClusterInformation];
  }

  return v2;
}

- (void)updateClusterInformation
{
  if (+[MRAVClusterController canBeClusterMember])
  {
    v2 = +[MROrigin localOrigin];
    v3 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v2];

    clusterID = [v3 clusterID];
    preferredClusterLeaderID = [v3 preferredClusterLeaderID];
    [v3 clusterType];
    v8 = clusterID;
    v6 = preferredClusterLeaderID;
    v7 = clusterID;
    msv_dispatch_sync_on_queue();
  }
}

- (unsigned)clusterType
{
  if (!+[MRAVClusterController canBeClusterMember])
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (unint64_t)clusterStatus
{
  if (!+[MRAVClusterController canBeClusterMember])
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MRAVClusterController_registerObserver___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MRAVClusterController_unregisterObserver___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(serialQueue, v7);
}

- (NSString)clusterLeaderUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MRAVClusterController_clusterLeaderUID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__MRAVClusterController_clusterLeaderUID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)clusterUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MRAVClusterController_clusterUID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__MRAVClusterController_clusterUID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)getClusterStatus:(id)status
{
  statusCopy = status;
  (*(status + 2))(statusCopy, [(MRAVClusterController *)self clusterStatus]);
}

- (void)getClusterLeaderEndpoint:(id)endpoint
{
  v35 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  if (+[MRAVClusterController canBeClusterMember]&& [(MRAVClusterController *)self clusterStatus]== 2)
  {
    date = [MEMORY[0x1E695DF00] date];
    v6 = dispatch_get_global_queue(0, 0);
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__22;
    v31 = __Block_byref_object_dispose__22;
    v32 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke;
    block[3] = &unk_1E769A2A0;
    block[4] = self;
    block[5] = &v27;
    dispatch_sync(serialQueue, block);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Discovering cluster leader with UID: %@", v28[5]];
    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"getClusterLeaderEndpoint", uUIDString];
    v12 = v11;
    if (v10)
    {
      [v11 appendFormat:@" for %@", v10];
    }

    v13 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v12;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v14 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v15 = v28[5];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke_32;
    v19[3] = &unk_1E769F448;
    v20 = @"getClusterLeaderEndpoint";
    v16 = uUIDString;
    v21 = v16;
    v17 = date;
    v22 = v17;
    v24 = endpointCopy;
    v25 = &v27;
    v18 = v10;
    v23 = v18;
    [(MRAVLightweightReconnaissanceSession *)v14 searchEndpointsForOutputDeviceUID:v15 timeout:@"Discover cluster leader endpoint" reason:v6 queue:v19 completion:5.0];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    (*(endpointCopy + 2))(endpointCopy, 0);
  }
}

void __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke_32(void *a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to discover cluster leader endpoint with UID: %@", *(*(a1[9] + 8) + 40)];
    v15 = a1[7];
    v16 = _MRLogForCategory(0xAuLL);
    v9 = v16;
    if (v6 || !v7)
    {
      if (v6)
      {
        v33 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (!v15)
        {
          if (!v33)
          {
            goto LABEL_37;
          }

LABEL_34:
          __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_cold_1(a1);
          goto LABEL_37;
        }

        if (!v33)
        {
          goto LABEL_37;
        }

        v34 = a1[4];
        v35 = a1[5];
        v36 = a1[7];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v53 = v34;
        v54 = 2114;
        v55 = v35;
        v56 = 2114;
        v57 = v6;
        v58 = 2114;
        v59 = v36;
        v60 = 2048;
        v61 = v37;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_32:

        goto LABEL_37;
      }

      v41 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        if (!v41)
        {
          goto LABEL_37;
        }

        v49 = a1[4];
        v50 = a1[5];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[6]];
        *buf = 138543874;
        v53 = v49;
        v54 = 2114;
        v55 = v50;
        v56 = 2048;
        v57 = v51;
        v23 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v24 = v9;
        v25 = 32;
        goto LABEL_31;
      }

      if (!v41)
      {
        goto LABEL_37;
      }

      v42 = a1[4];
      v43 = a1[5];
      v44 = a1[7];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[6]];
      *buf = 138544130;
      v53 = v42;
      v54 = 2114;
      v55 = v43;
      v56 = 2114;
      v57 = v44;
      v58 = 2048;
      v59 = v45;
      v23 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    else
    {
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (!v17)
        {
          goto LABEL_37;
        }

        v18 = a1[4];
        v19 = a1[5];
        v20 = a1[7];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v53 = v18;
        v54 = 2114;
        v55 = v19;
        v56 = 2112;
        v57 = v7;
        v58 = 2114;
        v59 = v20;
        v60 = 2048;
        v61 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v9;
        v25 = 52;
        goto LABEL_31;
      }

      if (!v17)
      {
        goto LABEL_37;
      }

      v46 = a1[4];
      v47 = a1[5];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[6]];
      *buf = 138544130;
      v53 = v46;
      v54 = 2114;
      v55 = v47;
      v56 = 2112;
      v57 = v7;
      v58 = 2048;
      v59 = v48;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    v24 = v9;
    v25 = 42;
LABEL_31:
    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    goto LABEL_32;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Discovered leader endpoint: %@", v5];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v26 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v26)
      {
        goto LABEL_37;
      }

      v27 = a1[4];
      v28 = a1[5];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[6]];
      *buf = 138544130;
      v53 = v27;
      v54 = 2114;
      v55 = v28;
      v56 = 2114;
      v57 = v7;
      v58 = 2048;
      v59 = v29;
      v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v31 = v9;
      v32 = 42;
    }

    else
    {
      if (!v26)
      {
        goto LABEL_37;
      }

      v38 = a1[4];
      v39 = a1[5];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[6]];
      *buf = 138543874;
      v53 = v38;
      v54 = 2114;
      v55 = v39;
      v56 = 2048;
      v57 = v40;
      v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v31 = v9;
      v32 = 32;
    }

    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_23;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v10)
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[6]];
    *buf = 138544386;
    v53 = v11;
    v54 = 2114;
    v55 = v12;
    v56 = 2114;
    v57 = v6;
    v58 = 2114;
    v59 = v7;
    v60 = 2048;
    v61 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_23:
  }

LABEL_37:

  (*(a1[8] + 16))();
}

- (void)deviceInfoDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = MRGetOriginFromUserInfo(userInfo);
  if ([v4 isLocal])
  {
    [(MRAVClusterController *)self updateClusterInformation];
  }
}

void __49__MRAVClusterController_updateClusterInformation__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isEqual:*(*(a1 + 40) + 40)];
  v3 = *(a1 + 40);
  v5 = !v2 || (v4 = [*(a1 + 48) isEqual:*(v3 + 48)], v3 = *(a1 + 40), !v4) || *(a1 + 56) != *(v3 + 64);
  objc_storeStrong((v3 + 40), *(a1 + 32));
  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 48));
  [*(a1 + 40) onQueue_setClusterStatus:{objc_msgSend(*(a1 + 40), "onQueue_computeClusterStatus")}];
  [*(a1 + 40) onQueue_setClusterType:*(a1 + 56)];
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 64) - 1;
      if (v7 > 2)
      {
        v8 = @"None";
      }

      else
      {
        v8 = off_1E769F490[v7];
      }

      v9 = *(a1 + 40);
      v11 = *(v9 + 40);
      v10 = *(v9 + 48);
      v12 = 138412802;
      v13 = v8;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "Cluster information updated: type=%@ | clusterUID=%{public}@ | leaderUID=%{public}@", &v12, 0x20u);
    }
  }
}

- (unint64_t)onQueue_computeClusterStatus
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_clusterUID)
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(self->_clusterLeaderUID))
  {
    return 1;
  }

  return 2;
}

- (void)onQueue_setClusterType:(unsigned int)type
{
  v3 = *&type;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_clusterType != v3)
  {
    self->_clusterType = v3;

    [(MRAVClusterController *)self onQueue_notifyObserversWithClusterType:v3];
  }
}

- (void)onQueue_setClusterStatus:(unint64_t)status
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_clusterStatus != status)
  {
    self->_clusterStatus = status;

    [(MRAVClusterController *)self onQueue_notifyObserversWithClusterStatus:status];
  }
}

- (void)onQueue_notifyObserversWithClusterStatus:(unint64_t)status
{
  dispatch_assert_queue_V2(self->_serialQueue);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRAVClusterController_onQueue_notifyObserversWithClusterStatus___block_invoke;
  block[3] = &unk_1E769F470;
  v9 = allObjects;
  selfCopy = self;
  statusCopy = status;
  v7 = allObjects;
  dispatch_async(callbackQueue, block);
}

void __66__MRAVClusterController_onQueue_notifyObserversWithClusterStatus___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 clusterController:*(a1 + 40) clusterStatusDidChange:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)onQueue_notifyObserversWithClusterType:(unsigned int)type
{
  dispatch_assert_queue_V2(self->_serialQueue);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRAVClusterController_onQueue_notifyObserversWithClusterType___block_invoke;
  block[3] = &unk_1E769BCF8;
  v9 = allObjects;
  selfCopy = self;
  typeCopy = type;
  v7 = allObjects;
  dispatch_async(callbackQueue, block);
}

void __64__MRAVClusterController_onQueue_notifyObserversWithClusterType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 clusterController:*(a1 + 40) clusterTypeDidChange:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end