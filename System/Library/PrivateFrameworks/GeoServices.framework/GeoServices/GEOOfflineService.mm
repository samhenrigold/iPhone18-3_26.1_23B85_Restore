@interface GEOOfflineService
+ (GEOOfflineService)shared;
+ (id)stateManagerClass;
- ($8ECB7A976587EA121CF1E7297CC7E155)state;
- (BOOL)isUsingOffline;
- (dispatch_queue_t)_setStateNeedsUpdate;
- (id)_mapViewToUse;
- (uint64_t)_stateIsolated;
- (void)_fetchCurrentState;
- (void)_goActiveOnQueue;
- (void)_startCheckingConnectivity;
- (void)_updateSubscribedRegions;
- (void)setStateAuto;
- (void)setStateNeedsUpdate;
- (void)startServiceIfEnabled;
@end

@implementation GEOOfflineService

+ (id)stateManagerClass
{
  objc_opt_self();
  v1 = _stateManagerClass;
  if (!_stateManagerClass)
  {
    objc_opt_self();
    v1 = objc_opt_class();
    _stateManagerClass = v1;
  }

  return v1;
}

+ (GEOOfflineService)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__GEOOfflineService_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = _sharedService;

  return v2;
}

void __27__GEOOfflineService_shared__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [GEOEntitlements currentProcessEntitlement:@"com.apple.geoservices.offline.cohort-id"];
  if (v2)
  {
    v3 = v2;
    goto LABEL_4;
  }

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v4 bundleIdentifier];

  if (v3)
  {
LABEL_4:
    if ([+[GEOOfflineService stateManagerClass](*(a1 + 32)) isCohortAllowed:v3])
    {
      v5 = [GEOOfflineService initWithSubscriptionManager:0 preferredAuditToken:?];
      v6 = _sharedService;
      _sharedService = v5;
    }

    else
    {
      v7 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = 138543362;
        v9 = v3;
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_FAULT, "Attempt to use offline service with non-allowlisted cohort ID: %{public}@", &v8, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v3 = GEOGetOfflineServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "Attempt to use offline service with no cohort ID specified", &v8, 2u);
  }

LABEL_9:
}

- (void)_fetchCurrentState
{
  if (result)
  {
    [(GEOOfflineService *)result _fetchCurrentState:?];
  }
}

- (void)setStateAuto
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  geo_isolate_sync_data();
  if (v6[3])
  {
    v3 = GEOGetOfflineServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = GEOOfflineStateAsString(0x101uLL);
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEFAULT, "Returning to: %{public}@", buf, 0xCu);
    }

    [GEOOfflineService _setState:0x101u ifStateIs:?];
    [(GEOOfflineService *)self setStateNeedsUpdate];
  }

  _Block_object_dispose(&v5, 8);
}

void __33__GEOOfflineService_setStateAuto__block_invoke(uint64_t a1)
{
  location[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    objc_initWeak(location, v2);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __33__GEOOfflineService_setStateAuto__block_invoke_2;
    v14[3] = &unk_1E7070E60;
    objc_copyWeak(&v15, location);
    v5 = [v14 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
    return;
  }

  v8 = v3;
  if (v3 >= 2u)
  {
    if (v3 != 2)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        return;
      }

      LODWORD(location[0]) = 67109120;
      HIDWORD(location[0]) = v8;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "Unreachable reached: invalid offline mode value %x";
LABEL_19:
      _os_log_fault_impl(&dword_18660C000, v12, OS_LOG_TYPE_FAULT, v13, location, 8u);
      return;
    }

    v9 = BYTE1(v3);
    if (BYTE1(v3) >= 2u)
    {
      if (BYTE1(v3) == 2)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        return;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        LODWORD(location[0]) = 67109120;
        HIDWORD(location[0]) = v9;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "Unreachable reached: invalid offline reason value %x";
        goto LABEL_19;
      }
    }
  }
}

- (void)startServiceIfEnabled
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__GEOOfflineService_startServiceIfEnabled__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_goActiveOnQueue
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 80));
    if (*(self + 8) != 2)
    {
      v2 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = "Shutdown";
        v5 = *(self + 8);
        v4 = *(self + 16);
        if (v5 == 1)
        {
          v3 = "Inactive";
        }

        *buf = 138412802;
        v22 = v4;
        v23 = 2082;
        if (v5 == 2)
        {
          v3 = "Active";
        }

        v24 = v3;
        v25 = 2082;
        v26 = "Inactive";
        _os_log_impl(&dword_18660C000, v2, OS_LOG_TYPE_DEFAULT, "Starting service with preferred audit token: %@. switching from %{public}s -> %{public}s", buf, 0x20u);
      }

      *(self + 8) = 1;
      objc_initWeak(buf, self);
      if (*(self + 40) == -1)
      {
        v6 = *(self + 80);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __37__GEOOfflineService__goActiveOnQueue__block_invoke;
        handler[3] = &unk_1E7070108;
        objc_copyWeak(&v20, buf);
        notify_register_dispatch("GEODaemonDidStartDarwinNotification", (self + 40), v6, handler);
        objc_destroyWeak(&v20);
      }

      [(GEOOfflineService *)self _switchToState:1 waitForReply:?];
      v7 = GEOMapDataSubscriptionManagerFullyDownloadedSubscriptionsDidChangeDarwinNotification;
      v8 = *(self + 80);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __37__GEOOfflineService__goActiveOnQueue__block_invoke_2;
      v17[3] = &unk_1E7070108;
      objc_copyWeak(&v18, buf);
      notify_register_dispatch(v7, (self + 44), v8, v17);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __37__GEOOfflineService__goActiveOnQueue__block_invoke_3;
      v15[3] = &unk_1E705ACA0;
      objc_copyWeak(&v16, buf);
      v10 = [defaultCenter addObserverForName:@"GEOOfflineAvailabilityChangedNotification" object:0 queue:0 usingBlock:v15];
      v11 = *(self + 48);
      *(self + 48) = v10;

      GEOConfigGetDouble(14, &GeoOfflineConfig_CohortStateTTL_Metadata);
      v12 = geo_dispatch_timer_create_on_qos();
      v13 = *(self + 96);
      *(self + 96) = v12;

      dispatch_activate(*(self + 96));
      [(GEOOfflineService *)self _updateSubscribedRegions];
      WeakRetained = objc_loadWeakRetained((self + 128));
      LODWORD(defaultCenter) = WeakRetained == 0;

      if (defaultCenter)
      {
        [(GEOOfflineService *)self _startCheckingConnectivity];
      }

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_updateSubscribedRegions
{
  if (self)
  {
    v2 = dispatch_group_create();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dispatch_group_enter(v2);
    v4 = *(self + 64);
    v5 = *(self + 80);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__GEOOfflineService__updateSubscribedRegions__block_invoke;
    v13[3] = &unk_1E706F430;
    v14 = v2;
    selfCopy = self;
    v6 = dictionary;
    v16 = v6;
    v7 = v2;
    [v4 fetchAllSubscriptionsWithCallbackQueue:v5 completionHandler:v13];
    v8 = *(self + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__GEOOfflineService__updateSubscribedRegions__block_invoke_127;
    block[3] = &unk_1E70713F8;
    v11 = v6;
    selfCopy2 = self;
    v9 = v6;
    dispatch_group_notify(v7, v8, block);
  }
}

void __37__GEOOfflineService__goActiveOnQueue__block_invoke_2_38()
{
  v0 = +[GEOUtilityService sharedService];
  [v0 sendHeartbeat];
}

- (void)_startCheckingConnectivity
{
  if (self)
  {
    dispatch_assert_queue_V2(self[10]);
    if (!self[13] && GEOConfigGetDouble(53, &GeoOfflineConfig_CheckConnectivityInterval_Metadata) != 0.0)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v4, &location);
      v2 = geo_dispatch_timer_create_on_qos();
      v3 = self[13];
      self[13] = v2;

      dispatch_activate(self[13]);
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __47__GEOOfflineService__startCheckingConnectivity__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = [WeakRetained state];
    v2 = v12;
    v4 = v3;
    if (v3 >= 2u)
    {
      if (v3 == 2)
      {
        v5 = HIBYTE(v3);
        if (HIBYTE(v3) >= 2u)
        {
          if (HIBYTE(v3) == 2)
          {
            goto LABEL_12;
          }

          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
          v2 = v12;
          if (v6)
          {
            *buf = 67109120;
            *&buf[4] = v5;
            _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline reason value %x", buf, 8u);
            v2 = v12;
          }
        }

        v7 = v2[20];
        v13 = @"message";
        *buf = @"offlinestate.checkConnectivity";
        v8 = MEMORY[0x1E695DF20];
        v9 = v7;
        v10 = [v8 dictionaryWithObjects:buf forKeys:&v13 count:1];
        [v9 sendDictionary:v10];
      }

      else
      {
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        v2 = v12;
        if (!v11)
        {
          goto LABEL_12;
        }

        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
      }

      v2 = v12;
    }
  }

LABEL_12:
}

- (dispatch_queue_t)_setStateNeedsUpdate
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(result[10]);
    if (!v1[11])
    {
      objc_initWeak(location, v1);
      v2 = [GEOCoalescingTimer alloc];
      Double = GEOConfigGetDouble(59, &GeoOfflineConfig_ServiceUpdateMaximumInterval_Metadata);
      v4 = v1[10];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__GEOOfflineService__setStateNeedsUpdate__block_invoke;
      v8[3] = &unk_1E7070E60;
      objc_copyWeak(&v9, location);
      v5 = [(GEOCoalescingTimer *)v2 initWithCoalescingInterval:v4 deadlineInterval:v8 queue:0.2 callback:Double];
      v6 = v1[11];
      v1[11] = v5;

      objc_destroyWeak(&v9);
      objc_destroyWeak(location);
    }

    v7 = GEOGetOfflineServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_DEBUG, "Pushing out state update timer", location, 2u);
    }

    return [v1[11] scheduleRun];
  }

  return result;
}

- ($8ECB7A976587EA121CF1E7297CC7E155)state
{
  if ([+[GEOOfflineService stateManagerClass](GEOOfflineService) isOfflineAvailable])
  {

    return [(GEOOfflineService *)self _stateIsolated];
  }

  else
  {
    return 513;
  }
}

void __41__GEOOfflineService__setStateNeedsUpdate__block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 10));
    v1 = [WeakRetained state];
    v2 = BYTE1(v1);
    if (BYTE1(v1) != 2)
    {
      v3 = v1;
      v52 = 0;
      v53 = &v52;
      v54 = 0x2020000000;
      v55 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__134;
      v50 = __Block_byref_object_dispose__135;
      v51 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x4010000000;
      v39 = &unk_1881FE68D;
      v40 = kGEOCoordinateRegionInvalid;
      v41 = unk_1880291A0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0x10000000000000;
      geo_isolate_sync_data();
      v4 = v53[3];
      if (v4)
      {
        if (v47[5])
        {
          if (v4 == 1)
          {
            v5 = 1;
          }

          else
          {
            v5 = 2;
          }

          if (v5 != *(v43 + 24))
          {
            v6 = GEOGetOfflineServiceLog();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
            {
              v7 = v47[5];
              v8 = GEOOfflineModeAsString(v5);
              v9 = GEOOfflineModeAsString(*(v43 + 24));
              *buf = 138543874;
              *&buf[4] = v7;
              *&buf[12] = 2114;
              *&buf[14] = v8;
              *&buf[22] = 2114;
              v57 = v9;
              _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_INFO, "Informing delegate %{public}@ of new suggestion: %{public}@ (was previously informed of %{public}@)", buf, 0x20u);
            }

            geo_isolate_sync_data();
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __42__GEOOfflineService__updateSuggestedState__block_invoke_2;
            v57 = &unk_1E705DE48;
            v58 = WeakRetained;
            v59 = &v46;
            v60 = v5 | 0x100;
            dispatch_async(MEMORY[0x1E69E96A0], buf);
          }

          goto LABEL_18;
        }

        if (fabs(v37[2].f64[1]) > 180.0 || fabs(v37[2].f64[0]) > 90.0 || (v10 = v37[3], v11.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(xmmword_187FBDB60, v10)), *&v10.f64[0]).u32[0], *&v10.f64[0] = vmovn_s64(vcgezq_f64(v10)), v11.i32[1] = vuzp1_s16(*&v10, *&v10).i32[1], (vminv_u16(v11) & 1) == 0))
        {
          v12 = GEOGetOfflineServiceLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18660C000, v12, OS_LOG_TYPE_INFO, "No delegate available and viewport is invalid, ignoring suggestion", buf, 2u);
          }

          goto LABEL_18;
        }

        v13 = GEOGetOfflineServiceLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v33[3];
          if (v14 > 2)
          {
            v15 = "invalid";
          }

          else
          {
            v15 = off_1E70584E8[v14];
          }

          v16 = v29[3];
          v17 = v37[3].f64[0];
          v18 = v37[3].f64[1];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&v37[2].f64[0], *&v37[2].f64[1]];
          v21 = [v19 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v20, *&v17, *&v18];

          *buf = 136446723;
          *&buf[4] = v15;
          *&buf[12] = 2048;
          *&buf[14] = v16;
          *&buf[22] = 2113;
          v57 = v21;
          _os_log_impl(&dword_18660C000, v13, OS_LOG_TYPE_INFO, "Updating suggestion with map view state %{public}s with priority %f from viewport: %{private}@", buf, 0x20u);
        }

        v22 = v53[3];
        if (!v22)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Should have been caught by the guard", buf, 2u);
          }

          goto LABEL_18;
        }

        if (v22 == 1)
        {
          v26 = 257;
          goto LABEL_33;
        }

        if (v22 == 2 && [+[GEOOfflineService stateManagerClass](GEOOfflineService) isOfflineAvailableLocally])
        {
          v23 = v37;
          v24 = v33[3];
          v25 = [*(WeakRetained + 9) allValues];
          LODWORD(v24) = [(GEOOfflineService *)WeakRetained _preferredStateForRegion:v24 inState:v25 withSubscriptions:v23[4], v23[5], v23[6], v23[7]];

          v26 = v24;
LABEL_33:
          if (v26 && (v26 & 0xFF00) != 0 && v26 != (v3 & 0xFFFF00FF | (v2 << 8)))
          {
            [GEOOfflineService _setState:v26 ifStateIs:?];
          }
        }
      }

LABEL_18:
      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v46, 8);

      _Block_object_dispose(&v52, 8);
    }
  }
}

- (uint64_t)_stateIsolated
{
  if (!self)
  {
    return 0;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2810000000;
  v6 = &unk_1881FE68D;
  v7 = 0;
  geo_isolate_sync_data();
  v1 = *(v4 + 8);
  _Block_object_dispose(&v3, 8);
  return v1;
}

void __33__GEOOfflineService_setStateAuto__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStateAuto];
}

- (void)setStateNeedsUpdate
{
  if (self)
  {
    v1 = *(self + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__GEOOfflineService_setStateNeedsUpdate__block_invoke;
    block[3] = &unk_1E7071900;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

void __45__GEOOfflineService__updateSubscribedRegions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOGetOfflineServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch subscriptions: %{public}@", buf, 0xCu);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (([v12 dataTypes] & 0x400) != 0)
        {
          dispatch_group_enter(*(a1 + 32));
          v13 = *(*(a1 + 40) + 64);
          v14 = [v12 identifier];
          v15 = *(*(a1 + 40) + 80);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __45__GEOOfflineService__updateSubscribedRegions__block_invoke_123;
          v17[3] = &unk_1E7058470;
          v17[4] = v12;
          v18 = *(a1 + 48);
          v19 = *(a1 + 32);
          [v13 fetchStateForSubscriptionWithIdentifier:v14 callbackQueue:v15 completionHandler:v17];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)isUsingOffline
{
  v7 = *MEMORY[0x1E69E9840];
  state = [(GEOOfflineService *)self state];
  v3 = state;
  if (state >= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", v6, 8u);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 4u >> (state & 7);
  }

  return v4 & 1;
}

- (id)_mapViewToUse
{
  WeakRetained = self;
  v31 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_38;
  }

  geo_assert_isolated();
  if ([WeakRetained[19] count] <= 1)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 18);
    goto LABEL_38;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = WeakRetained[19];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {

    v6 = 0;
    goto LABEL_36;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v27;
  v9 = 2.22507386e-308;
  do
  {
    v10 = 0;
    do
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v12 = [WeakRetained[19] objectForKey:{v11, v26}];
      v13 = v12;
      if (!v6)
      {
LABEL_24:
        if (v13)
        {
          v14 = v13[1];
        }

        else
        {
          v14 = 0.0;
        }

LABEL_26:
        v21 = v11;

        v22 = v13;
        v6 = v22;
        v7 = v21;
        v9 = v14;
        goto LABEL_27;
      }

      if (v12)
      {
        v14 = *(v12 + 8);
        if (v14 > v9)
        {
          goto LABEL_26;
        }

        v15 = *(v12 + 24);
        v16 = v6 + 3;
        v17 = v6[3];
        if (v15 < v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0.0;
        if (v9 < 0.0)
        {
          goto LABEL_26;
        }

        v16 = v6 + 3;
        v17 = v6[3];
        v15 = 0.0;
        if (v17 > 0.0)
        {
LABEL_12:
          v18 = -(v15 - v17);
          goto LABEL_16;
        }
      }

      v18 = v15 - v17;
LABEL_16:
      if (v18 >= GEOConfigGetDouble(69, &GeoOfflineConfig_MapViewUpdateMaxDeltaToUseSpan_Metadata))
      {
        if (v13)
        {
          v20 = v13[3];
        }

        else
        {
          v20 = 0.0;
        }

        if (v20 > *v16)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v13)
        {
          v19 = v13[6] * v13[7];
        }

        else
        {
          v19 = 0.0;
        }

        if (v19 < v6[6] * v6[7])
        {
          goto LABEL_24;
        }
      }

LABEL_27:

      ++v10;
    }

    while (v5 != v10);
    v23 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v5 = v23;
  }

  while (v23);

  if (v7)
  {
    WeakRetained = v7;
    v24 = WeakRetained;
    goto LABEL_37;
  }

LABEL_36:
  WeakRetained = objc_loadWeakRetained(WeakRetained + 18);
  v24 = 0;
LABEL_37:

LABEL_38:

  return WeakRetained;
}

@end