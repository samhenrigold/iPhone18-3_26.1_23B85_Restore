@interface Daemon
@end

@implementation Daemon

void __Daemon_BYSetupAssistantNeedsToRun_block_invoke()
{
  v0 = +[BYManagedAppleIDBootstrap sharedManager];
  v1 = [v0 isLoginUser];

  if (v1)
  {
    v3 = _BYLaunchLogSubsystem(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __Daemon_BYSetupAssistantNeedsToRun_block_invoke_cold_1(v3);
    }
  }

  else
  {
    v4 = +[BYManagedAppleIDBootstrap sharedManager];
    [v4 ingestManagedBuddyData];

    Daemon_BYSetupAssistantNeedsToRun_needsToRun = Internal_BYSetupAssistantNeedsToRun();
    if (+[BYManagedAppleIDBootstrap isFirstTimeLogin])
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x3032000000;
      v7[3] = __Block_byref_object_copy__2;
      v7[4] = __Block_byref_object_dispose__2;
      v8 = os_transaction_create();
      v5 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __Daemon_BYSetupAssistantNeedsToRun_block_invoke_150;
      block[3] = &unk_1E7D02730;
      block[4] = v7;
      dispatch_async(v5, block);

      _Block_object_dispose(v7, 8);
    }
  }
}

void __Daemon_BYSetupAssistantNeedsToRun_block_invoke_150(uint64_t a1)
{
  v2 = +[BYSilentLoginUpgradeGuarantor sharedInstance];
  [v2 blockUntilSilentLoginUpgradeCompletesForNonLoginUser];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

@end