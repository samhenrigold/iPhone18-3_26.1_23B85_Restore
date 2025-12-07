@interface WCComplicationManager
- (WCComplicationManager)init;
- (WCComplicationManagerDelegate)delegate;
- (void)xpcManager:(id)manager handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler;
- (void)xpcManager:(id)manager handlePingForExtensionBundleID:(id)d;
- (void)xpcManager:(id)manager isExtensionPrivileged:(id)privileged completionHandler:(id)handler;
- (void)xpcManager:(id)manager shouldWakeAppWithBundleID:(id)d completionHandler:(id)handler;
@end

@implementation WCComplicationManager

- (WCComplicationManager)init
{
  v7.receiver = self;
  v7.super_class = WCComplicationManager;
  v2 = [(WCComplicationManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.watchconnectivity.complication.delegate-queue", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v3;

    v5 = +[WCPrivateXPCManager sharedManager];
    [v5 setDelegate:v2];
  }

  return v2;
}

- (void)xpcManager:(id)manager handlePingForExtensionBundleID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = wc_log(dCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[WCComplicationManager xpcManager:handlePingForExtensionBundleID:]";
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v8, 0x16u);
  }

  delegate = [(WCComplicationManager *)self delegate];
  [delegate handlePingForExtensionBundleID:dCopy];
}

- (void)xpcManager:(id)manager isExtensionPrivileged:(id)privileged completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  privilegedCopy = privileged;
  handlerCopy = handler;
  v9 = wc_log(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[WCComplicationManager xpcManager:isExtensionPrivileged:completionHandler:]";
    v13 = 2114;
    v14 = privilegedCopy;
    _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v11, 0x16u);
  }

  delegate = [(WCComplicationManager *)self delegate];
  [delegate isExtensionPrivileged:privilegedCopy completionHandler:handlerCopy];
}

- (void)xpcManager:(id)manager handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = wc_log(handlerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[WCComplicationManager xpcManager:handlePairedSyncComplicationsStartedWithCompletionHandler:]";
    _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  delegate = [(WCComplicationManager *)self delegate];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__WCComplicationManager_xpcManager_handlePairedSyncComplicationsStartedWithCompletionHandler___block_invoke;
  v9[3] = &unk_278B7C3F8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [delegate handleDeviceHasBecomeActiveWithCompletionHandler:v9];
}

void __94__WCComplicationManager_xpcManager_handlePairedSyncComplicationsStartedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = wc_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSPrintF("%{error}", v3);
    *buf = 136446466;
    v7 = "[WCComplicationManager xpcManager:handlePairedSyncComplicationsStartedWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_23B2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)xpcManager:(id)manager shouldWakeAppWithBundleID:(id)d completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dCopy = d;
  v9 = wc_log(dCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v15 = "[WCComplicationManager xpcManager:shouldWakeAppWithBundleID:completionHandler:]";
    _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  delegate = [(WCComplicationManager *)self delegate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__WCComplicationManager_xpcManager_shouldWakeAppWithBundleID_completionHandler___block_invoke;
  v12[3] = &unk_278B7C420;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [delegate shouldWakeAppWithBundleID:dCopy completionHandler:v12];
}

void __80__WCComplicationManager_xpcManager_shouldWakeAppWithBundleID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wc_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSPrintF("%{error}", v4);
    *buf = 136446466;
    v8 = "[WCComplicationManager xpcManager:shouldWakeAppWithBundleID:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (WCComplicationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end