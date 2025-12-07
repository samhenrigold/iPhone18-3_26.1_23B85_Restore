@interface ASAgentPeriodicMaintenanceActivity
@end

@implementation ASAgentPeriodicMaintenanceActivity

void __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    should_defer = xpc_activity_should_defer(v3);
    if (should_defer)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(should_defer, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_INFO, "Periodic maintenance activity transitioned to state Run, but criteria are no longer satisfied. Deferring.", v10, 2u);
      }

      v7 = xpc_activity_set_state(v3, 3);
      if (!v7)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke_cold_1();
        }
      }
    }

    else
    {
      [*(a1 + 32) _activityDidTransitionToRunState:v3];
    }
  }
}

void __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = xpc_activity_set_state(*(a1 + 32), 5);
    if (!v3)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v3, v4);
      v3 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke_cold_3();
      }
    }

    v6 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v7 = "Periodic maintenance activity transitioned to state Done.";
      v8 = &v13;
LABEL_14:
      _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
    }
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke_cold_1();
    }

    v10 = xpc_activity_set_state(*(a1 + 32), 3);
    if (!v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v10, v11);
      v10 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke_cold_1();
      }
    }

    v6 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v10, v11);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Periodic maintenance activity transitioned to state Defer.";
      v8 = buf;
      goto LABEL_14;
    }
  }
}

void __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  [v2 reportPasswordAutoFillProviderTelemetry];

  v3 = dispatch_group_create();
  v4 = objc_alloc_init(ASCredentialSharingGroupsNotificationManager);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  dispatch_group_enter(v3);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_2;
  v21[3] = &unk_1E7AF7DD8;
  v23 = v24;
  v5 = v3;
  v22 = v5;
  v6 = [(ASCredentialSharingGroupsNotificationManager *)v4 notifyUserAboutSharedSavedAccountsInRecentlyDeleted:v21];
  v8 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_cold_1();
  }

  v9 = [MEMORY[0x1E69C8A38] sharedStore];
  [v9 _verifyGroupsInSync];

  v10 = [MEMORY[0x1E695E000] pm_defaults];
  v11 = [v10 safari_BOOLForKey:@"ShouldAttemptPasskeyAvailabilityManagerFetchingInAuthenticationServicesAgent" defaultValue:0];

  if (v11)
  {
    dispatch_group_enter(v5);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E69C8A38] sharedStore];
    v14 = [v13 savedAccounts];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_7;
    v19[3] = &unk_1E7AF7608;
    v20 = v5;
    [v12 performPasskeyAvailabilityCheckForDomainsInSavedAccounts:v14 completionHandler:v19];
  }

  v15 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke_2_9;
  block[3] = &unk_1E7AF7E00;
  v17 = *(a1 + 40);
  v18 = v24;
  dispatch_group_notify(v5, v15, block);

  _Block_object_dispose(v24, 8);
}

@end