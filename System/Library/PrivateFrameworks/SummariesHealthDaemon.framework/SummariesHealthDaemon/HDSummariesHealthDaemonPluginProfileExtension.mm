@interface HDSummariesHealthDaemonPluginProfileExtension
- (HDPrimaryProfile)profile;
- (HDSummariesHealthDaemonPluginProfileExtension)initWithProfile:(id)profile;
- (void)_handleDismissInstructionWithClient:(id)client;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
@end

@implementation HDSummariesHealthDaemonPluginProfileExtension

- (HDSummariesHealthDaemonPluginProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDSummariesHealthDaemonPluginProfileExtension;
  v5 = [(HDSummariesHealthDaemonPluginProfileExtension *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277D107B8]);
    v8 = HKCreateSerialDispatchQueue();
    v9 = [v7 initWithProfile:profileCopy clientIdentifier:@"SummariesHealthSharingNotificationSyncClientIdentifier" queue:v8];
    notificationSyncClient = v6->_notificationSyncClient;
    v6->_notificationSyncClient = v9;

    [(HDNotificationSyncClient *)v6->_notificationSyncClient setDelegate:v6];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    healthDaemon = [WeakRetained healthDaemon];
    [healthDaemon registerDaemonReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC300];
  v8 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKNotificationInstructionAction();
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_26BCB2000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", &v15, 0x16u);
  }

  if (action == 1)
  {
    [(HDSummariesHealthDaemonPluginProfileExtension *)self _handleDismissInstructionWithClient:clientCopy];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [(HDSummariesHealthDaemonPluginProfileExtension *)self notificationSyncClient:action didReceiveInstructionWithAction:v13];
    }
  }

  unitTest_didProcessNotificationInstruction = self->_unitTest_didProcessNotificationInstruction;
  if (unitTest_didProcessNotificationInstruction)
  {
    unitTest_didProcessNotificationInstruction[2]();
  }
}

- (void)_handleDismissInstructionWithClient:(id)client
{
  v31 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC300];
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_26BCB2000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instruction", buf, 0xCu);
  }

  v26 = 0;
  v7 = [clientCopy pendingNotificationDismissInstructionsWithError:&v26];
  v8 = v26;
  _HKInitializeLogging();
  v9 = *v5;
  v10 = *v5;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = v12;
      messageIdentifiers = [v7 messageIdentifiers];
      *buf = 138543618;
      selfCopy = v12;
      v29 = 2114;
      v30 = messageIdentifiers;
      _os_log_impl(&dword_26BCB2000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification dismiss instructions with identifiers: %{public}@", buf, 0x16u);
    }

    categoryIdentifiers = [v7 categoryIdentifiers];
    allObjects = [categoryIdentifiers allObjects];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];
    [notificationManager removeDeliveredNotificationsWithIdentifiers:allObjects];

    v25 = v8;
    LODWORD(notificationManager) = [clientCopy markPendingNotificationInstructionsAsProcessed:v7 error:&v25];
    v19 = v25;

    _HKInitializeLogging();
    v20 = *v5;
    v21 = *v5;
    if (notificationManager)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v20;
        v23 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v23;
        v29 = 2114;
        v30 = allObjects;
        v24 = v23;
        _os_log_impl(&dword_26BCB2000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed notifications: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(HDSummariesHealthDaemonPluginProfileExtension *)v20 _handleDismissInstructionWithClient:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDSummariesHealthDaemonPluginProfileExtension *)v9 _handleDismissInstructionWithClient:?];
    }

    v19 = v8;
  }
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)notificationSyncClient:(os_log_t)log didReceiveInstructionWithAction:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_26BCB2000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected notification instruction received: %ld", &v3, 0x16u);
}

- (void)_handleDismissInstructionWithClient:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_26BCB2000, v5, v6, "[%{public}@] Mark pending notification instruction as processed failed with error: [%{public}@]", v7, v8, v9, v10);
}

- (void)_handleDismissInstructionWithClient:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_26BCB2000, v5, v6, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v7, v8, v9, v10);
}

@end