@interface GCLegacyDeviceSession
@end

@implementation GCLegacyDeviceSession

void __40___GCLegacyDeviceSession_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  IsGameControllerDaemon = currentProcessIsGameControllerDaemon(a1, a2);
  v4 = IsGameControllerDaemon;
  v5 = _gc_log_session(IsGameControllerDaemon);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __40___GCLegacyDeviceSession_sharedInstance__block_invoke_cold_1(v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_DEFAULT, "Creating the shared game controller session...", v14, 2u);
    }

    v6 = dispatch_queue_create("GameController.LegacyHIDQueue", 0);
    v7 = [_GCLegacyDeviceSession alloc];
    v8 = [*(a1 + 32) defaultConfiguration];
    v9 = [(_GCLegacyDeviceSession *)v7 initWithConfiguration:v8 environment:0];
    v10 = SharedManager;
    SharedManager = v9;

    [SharedManager setTargetQueue:MEMORY[0x1E69E96A0]];
    [SharedManager setEventTargetQueue:v6];
    v11 = [SharedManager deviceProviderTypes];
    v15[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [v11 arrayByAddingObjectsFromArray:v12];
    [SharedManager setDeviceProviderTypes:v13];

    [SharedManager activateWithCompletionHandler:&__block_literal_global_4];
  }
}

void __40___GCLegacyDeviceSession_sharedInstance__block_invoke_100(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    __40___GCLegacyDeviceSession_sharedInstance__block_invoke_100_cold_1(v2);
  }
}

void __45___GCLegacyDeviceSession_becomeCurrentMouse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(_GCLegacyDeviceSession *)v2 _setCurrentMouse:?];
  }
}

void __40___GCLegacyDeviceSession_sharedInstance__block_invoke_100_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_session(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_fault_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_FAULT, "Failed to create the shared game controller session.  This is a #BUG! %{public}@", &v3, 0xCu);
  }
}

@end