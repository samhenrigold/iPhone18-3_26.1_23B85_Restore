@interface EKNotificationMonitor
@end

@implementation EKNotificationMonitor

void __35___EKNotificationMonitor_logHandle__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = ekSubSystem;
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  v4 = v7;
  v5 = os_log_create(v2, [v7 UTF8String]);
  v6 = logHandle_logHandle;
  logHandle_logHandle = v5;
}

EKEventStore *__71___EKNotificationMonitor__initWithOptions_eventStore_eventStoreGetter___block_invoke()
{
  v0 = objc_alloc_init(EKEventStore);

  return v0;
}

void __31___EKNotificationMonitor_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _eventStoreChanged];
}

uint64_t __30___EKNotificationMonitor_stop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___EKNotificationMonitor_stop__block_invoke_2;
  block[3] = &unk_1E77FD418;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);

  return [*(a1 + 32) _killTimer];
}

uint64_t __30___EKNotificationMonitor_stop__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = *(a1 + 32);

  return [v4 _killSyncTimer:0];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke(uint64_t a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _eventStore];
  if (![v2 isDataProtected])
  {
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    *buf = 0;
    v101 = buf;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy__13;
    v104 = __Block_byref_object_dispose__13;
    v105 = 0;
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_50;
    block[3] = &unk_1E77FD728;
    block[4] = v4;
    block[5] = &v106;
    block[6] = buf;
    dispatch_sync(v5, block);
    if (*(v107 + 24) != 1)
    {
LABEL_85:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v106, 8);
      goto LABEL_86;
    }

    v6 = *(a1 + 32);
    v62 = v6[92];
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__13;
    v97 = __Block_byref_object_dispose__13;
    v98 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__13;
    v91 = __Block_byref_object_dispose__13;
    v92 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    if ([v6 isMonitoringOnlyNotificationCount])
    {
      v7 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 0;
        _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEFAULT, "Notification monitor wants to reload notification count. Will fetch notification count from the event store as a result", v116, 2u);
      }

      v8 = [*(a1 + 32) _eventStore];
      v9 = [v8 eventNotificationCountExcludingUncheckedCalendars:*(*(a1 + 32) + 101) expanded:*(*(a1 + 32) + 100)];
      v80[3] = v9;
      v10 = [*(a1 + 32) notificationQueue];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_51;
      v78[3] = &unk_1E77FE850;
      v78[4] = *(a1 + 32);
      v78[5] = &v83;
      v78[6] = &v79;
      dispatch_sync(v10, v78);
    }

    else
    {
      v11 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 0;
        _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "Notification monitor wants to reload notifications. Will fetch notification references from the event store as a result.", v116, 2u);
      }

      v12 = *(a1 + 32);
      v13 = v12[93];
      if (v12[93])
      {
        v14 = &v77;
      }

      else
      {
        v14 = 0;
      }

      if (v13 == 1)
      {
        v77 = 0;
      }

      v15 = [v12 _fetchEventNotificationReferencesFromEventStore:v2 earliestExpiringNotification:v14];
      if (v13)
      {
        v8 = v77;
      }

      else
      {
        v8 = 0;
      }

      v16 = v88[5];
      v88[5] = v15;

      v17 = *(a1 + 32);
      if (v17[93] == 1)
      {
        [v17 _updateTimerFireDate:v8];
      }

      v18 = [v88[5] count];
      v80[3] = v18;
      v19 = [*(a1 + 32) notificationQueue];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_53;
      v76[3] = &unk_1E77FE850;
      v76[4] = *(a1 + 32);
      v76[5] = &v93;
      v76[6] = &v87;
      dispatch_sync(v19, v76);

      v20 = [v94[5] count];
      v84[3] = v20;
    }

    v21 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v80[3]];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v84[3]];
      *v116 = 138543618;
      v117 = v22;
      v118 = 2114;
      v119 = v23;
      _os_log_impl(&dword_1A805E000, v21, OS_LOG_TYPE_DEFAULT, "Current notification count: %{public}@. Last event notification count: %{public}@.", v116, 0x16u);
    }

    v24 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      if (v62)
      {
        v25 = @"YES";
      }

      *v116 = 138543362;
      v117 = v25;
      _os_log_impl(&dword_1A805E000, v24, OS_LOG_TYPE_DEFAULT, "Is initial check: %{public}@.", v116, 0xCu);
    }

    if (v80[3] != v84[3])
    {
      v26 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v80[3]];
        *v116 = 138543362;
        v117 = v27;
        _os_log_impl(&dword_1A805E000, v26, OS_LOG_TYPE_DEFAULT, "Count changed to %{public}@ events, Notifying.", v116, 0xCu);
      }

      if (+[EKFeatureSet areApplicationBadgesSupported])
      {
        v28 = [*(a1 + 32) effectiveCallbackQueue];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_61;
        v75[3] = &unk_1E77FD418;
        v75[4] = *(a1 + 32);
        dispatch_async(v28, v75);
      }

      else
      {
        v29 = [objc_opt_class() logHandle];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v116 = 0;
          _os_log_impl(&dword_1A805E000, v29, OS_LOG_TYPE_DEFAULT, "Application badges are not supported on this platform. Will not notify.", v116, 2u);
        }
      }
    }

    *(*(a1 + 32) + 92) = 0;
    v30 = [*(a1 + 32) isMonitoringOnlyNotificationCount];
    v31 = v62;
    if ((v30 | v62))
    {
LABEL_82:
      if (v31)
      {
        v61 = [*(a1 + 32) effectiveCallbackQueue];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_68;
        v63[3] = &unk_1E77FD418;
        v63[4] = *(a1 + 32);
        dispatch_async(v61, v63);
      }

      _Block_object_dispose(&v79, 8);
      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(&v87, 8);

      _Block_object_dispose(&v93, 8);
      goto LABEL_85;
    }

    v32 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *v116 = 0;
      _os_log_impl(&dword_1A805E000, v32, OS_LOG_TYPE_INFO, "Checking for notification change notification.", v116, 2u);
    }

    if (v84[3] == v80[3])
    {
      v33 = 1;
    }

    else
    {
      v34 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v80[3]];
        *v116 = 138543362;
        v117 = v35;
        _os_log_impl(&dword_1A805E000, v34, OS_LOG_TYPE_INFO, "Count changed to %{public}@ events. Setting notification to EKNotificationChangeTypeUnknown", v116, 0xCu);
      }

      v33 = 0;
      if (!*(v101 + 5))
      {
        goto LABEL_74;
      }
    }

    v36 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *v116 = 0;
      _os_log_impl(&dword_1A805E000, v36, OS_LOG_TYPE_INFO, "Changes detected. Checking changes in notifications.", v116, 2u);
    }

    v37 = objc_alloc(MEMORY[0x1E695DFA8]);
    v38 = [v37 initWithCapacity:v84[3]];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v39 = v94[5];
    v40 = [v39 countByEnumeratingWithState:&v71 objects:v115 count:16];
    if (v40)
    {
      v41 = *v72;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v72 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = [*(*(&v71 + 1) + 8 * i) objectID];
          [v38 addObject:v43];
        }

        v40 = [v39 countByEnumeratingWithState:&v71 objects:v115 count:16];
      }

      while (v40);
    }

    if (*(v101 + 5))
    {
      v44 = objc_alloc(MEMORY[0x1E695DFA8]);
      v45 = [v44 initWithCapacity:v80[3]];
    }

    else
    {
      v45 = 0;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = v88[5];
    v47 = [v46 countByEnumeratingWithState:&v67 objects:v114 count:16];
    if (v47)
    {
      v48 = *v68;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v68 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = [*(*(&v67 + 1) + 8 * j) objectID];
          [v45 addObject:v50];
          if (![v38 containsObject:v50])
          {
            v33 = 0;
          }
        }

        v47 = [v46 countByEnumeratingWithState:&v67 objects:v114 count:16];
      }

      while (v47);
    }

    if (*(v101 + 5))
    {
      v51 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v101 + 5), "count")}];
        *v116 = 138543362;
        v117 = v52;
        _os_log_impl(&dword_1A805E000, v51, OS_LOG_TYPE_INFO, "Updating changeIDs. Current size at %{public}@", v116, 0xCu);
      }

      [*(a1 + 32) _addRemovedOrAddedObjectIDsTo:*(v101 + 5) oldNotifications:v38 newNotifications:v45];
      v113[0] = *(v101 + 5);
      v112[0] = @"EKNotificationChangedNotificationsKey";
      v112[1] = @"EKNotificationChangedChangeTypeKey";
      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
      v113[1] = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];

      v55 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v101 + 5), "count")}];
        *v116 = 138543362;
        v117 = v56;
        _os_log_impl(&dword_1A805E000, v55, OS_LOG_TYPE_INFO, "Updated changeIDs. Current size at %{public}@", v116, 0xCu);
      }

      if (v54)
      {
        goto LABEL_75;
      }
    }

    else
    {
    }

LABEL_74:
    v110 = @"EKNotificationChangedChangeTypeKey";
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
    v111 = v57;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];

LABEL_75:
    v58 = *(v101 + 5);
    if (v58 && ![v58 count])
    {
      v60 = [objc_opt_class() logHandle];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 0;
        _os_log_impl(&dword_1A805E000, v60, OS_LOG_TYPE_DEFAULT, "ChangIDs is empty. Skipping notification changed notification.", v116, 2u);
      }
    }

    else
    {
      v59 = [*(a1 + 32) effectiveCallbackQueue];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_64;
      v64[3] = &unk_1E77FD4B8;
      v64[4] = *(a1 + 32);
      v66 = buf;
      v65 = v54;
      dispatch_async(v59, v64);
    }

    v31 = v62;
    goto LABEL_82;
  }

  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Data protection is on. Unable to check for updates.", buf, 2u);
  }

  [*(a1 + 32) _killTimer];
LABEL_86:
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_50(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (!*(v3 + 40))
  {
    *(v3 + 88) = 0;
LABEL_7:
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_11;
  }

  v4 = *(v3 + 88);
  v5 = [objc_opt_class() logHandle];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 >= 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Sync running, but we've been explicitly told to ignore that and refresh anyway.", buf, 2u);
    }

    --*(a1[4] + 88);
    goto LABEL_7;
  }

  if (v6)
  {
    *v11 = 0;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Sync running. Waiting for it to finish before checking for updates.", v11, 2u);
  }

  *(a1[4] + 48) = 1;
LABEL_11:
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v7 = a1[4];
    if (*(v7 + 97) == 1)
    {
      if (*(v7 + 72) == 1)
      {
        objc_storeStrong((*(a1[6] + 8) + 40), *(v7 + 80));
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = a1[4];
        v10 = *(v9 + 80);
        *(v9 + 80) = v8;
      }

      else
      {
        [*(v7 + 80) removeAllObjects];
        *(a1[4] + 72) = 1;
      }
    }
  }
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_51(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(a1[5] + 8) + 24) = *(a1[4] + 104);
  *(a1[4] + 104) = *(*(a1[6] + 8) + 24);
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1[4] + 104)];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Set notification count to %{public}@.", &v5, 0xCu);
  }
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_53(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 112));
  objc_storeStrong((a1[4] + 112), *(*(a1[6] + 8) + 40));
  v2 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1[4] + 112);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_DEFAULT, "Set notification references to %@.", &v4, 0xCu);
  }
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_61(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Posting notification count changed notification.", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"EKNotificationCountChangedNotification" object:*(a1 + 32) userInfo:0];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_64(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1[6] + 8) + 40);
    if (v4)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    }

    else
    {
      v5 = @"nil";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Posting notification changed notification because changeIDs count is %{public}@", &v7, 0xCu);
    if (v4)
    {
    }
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"EKNotificationsChangedNotification" object:a1[4] userInfo:a1[5]];
}

void __53___EKNotificationMonitor_attemptReloadSynchronously___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Initial check. Sending notification.", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"EKNotificationsLoadedNotification" object:*(a1 + 32) userInfo:0];
}

uint64_t __61___EKNotificationMonitor__notificationCountChangedExternally__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 40) || (++*(v1 + 88), *(*(result + 32) + 48) == 1))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __54___EKNotificationMonitor_blacklistedNotificationQueue__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = _blacklistedNotifications;
  _blacklistedNotifications = v2;

  v4 = dispatch_queue_create("blacklistedNotificationQueue", 0);
  v5 = blacklistedNotificationQueue__blacklistedNotificationQueue;
  blacklistedNotificationQueue__blacklistedNotificationQueue = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

uint64_t __43___EKNotificationMonitor_blacklistedRowIDs__block_invoke(uint64_t a1)
{
  v2 = [_blacklistedNotifications copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __43___EKNotificationMonitor_blacklistedRowIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "rowID")}];
  [v2 addObject:v3];
}

uint64_t __103___EKNotificationMonitor__fetchEventNotificationReferencesFromEventStore_earliestExpiringNotification___block_invoke(uint64_t a1)
{
  v2 = [_blacklistedNotifications copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __103___EKNotificationMonitor__fetchEventNotificationReferencesFromEventStore_earliestExpiringNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void *__38___EKNotificationMonitor__syncDidEnd___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 48))
    {
      v4 = @"pending";
    }

    else
    {
      v4 = @"no pending";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "Sync done, %@ changes.", &v7, 0xCu);
  }

  result = [*(a1 + 32) _killSyncTimer:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = *(v11 + 128);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke_2;
  v15[3] = &unk_1E77FD750;
  v15[4] = v11;
  v16 = v10;
  v18 = a6;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  dispatch_sync(v12, v15);
}

void __50___EKNotificationMonitor_trackChangesInEventStore__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1 && (*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v3 = *(v2 + 80);
      v5 = [EKObjectID EKObjectIDsFromData:?];
      [v3 addObjectsFromArray:v5];
    }

    else
    {
      *(v2 + 72) = 0;
      v4 = *(*(a1 + 32) + 80);

      [v4 removeAllObjects];
    }
  }
}

@end