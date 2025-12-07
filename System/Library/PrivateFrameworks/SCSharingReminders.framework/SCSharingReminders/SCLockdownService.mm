@interface SCLockdownService
- (SCLockdownService)init;
- (void)fetchWifiSyncIdentifiersWithCompletion:(id)completion;
- (void)hostForIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SCLockdownService

- (SCLockdownService)init
{
  v6.receiver = self;
  v6.super_class = SCLockdownService;
  v2 = [(SCLockdownService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D03618]);
    [(SCLockdownService *)v2 setRemotePairingStore:v3];

    v4 = dispatch_queue_create("LockdownServiceQueue", 0);
    [(SCLockdownService *)v2 setWorkQueue:v4];
  }

  return v2;
}

- (void)fetchWifiSyncIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    remotePairingStore = [(SCLockdownService *)self remotePairingStore];
    workQueue = [(SCLockdownService *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke;
    v7[3] = &unk_279B399F0;
    v8 = completionCopy;
    [remotePairingStore fetchPairedDevicesOnQueue:workQueue completion:v7];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8]);
  }
}

void __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = SCLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke_cold_1(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        v22 = [v21 lockdownFrameworkKey];

        if (v22)
        {
          v23 = [v21 lockdownFrameworkKey];
          [v15 addObject:v23];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)hostForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  remotePairingStore = [(SCLockdownService *)self remotePairingStore];
  isWifiSyncEnabled = [remotePairingStore isWifiSyncEnabled];
  if (!identifierCopy || !isWifiSyncEnabled)
  {

    goto LABEL_6;
  }

  v10 = _os_feature_enabled_impl();

  if ((v10 & 1) == 0)
  {
LABEL_6:
    completionCopy[2](completionCopy, 0);
    goto LABEL_7;
  }

  remotePairingStore2 = [(SCLockdownService *)self remotePairingStore];
  workQueue = [(SCLockdownService *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SCLockdownService_hostForIdentifier_completion___block_invoke;
  v13[3] = &unk_279B39A18;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = completionCopy;
  [remotePairingStore2 fetchPairedDevicesOnQueue:workQueue completion:v13];

LABEL_7:
}

void __50__SCLockdownService_hostForIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = SCLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke_cold_1(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [*(a1 + 32) interestedNotifications];
  v16 = [v15 containsObject:*(a1 + 40)];

  if (v16)
  {
    v18 = lockdown_copy_wireless_connections_list();
    if (v18)
    {
      v19 = v18;
      v20 = CFArrayGetValueAtIndex(v18, 0);
      CFRelease(v19);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = v7;
      v21 = v7;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v39 + 1) + 8 * v25) lockdownFrameworkKey];
            v27 = [v20 isEqualToString:v26];

            if (v27)
            {
              (*(*(a1 + 48) + 16))();

              goto LABEL_22;
            }

            ++v25;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v29 = SCLogger(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262556000, v29, OS_LOG_TYPE_DEFAULT, "Found no wirelessly connected hosts", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
LABEL_22:

      v7 = v37;
    }
  }

  else
  {
    v30 = SCLogger(v17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __50__SCLockdownService_hostForIdentifier_completion___block_invoke_cold_2((a1 + 40), v30, v31, v32, v33, v34, v35, v36);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3(&dword_262556000, a2, a3, "Failed to fetch paired devices. Error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__SCLockdownService_hostForIdentifier_completion___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_3(&dword_262556000, a2, a3, "Returning null because notification: %@ was not recognized", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end