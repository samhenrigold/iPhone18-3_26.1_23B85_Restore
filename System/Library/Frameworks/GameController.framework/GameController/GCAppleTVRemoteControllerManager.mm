@interface GCAppleTVRemoteControllerManager
@end

@implementation GCAppleTVRemoteControllerManager

void __77___GCAppleTVRemoteControllerManager_activateWithSession_environment_options___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 64) registerServicesChangedObserver:*(a1 + 32) notifyExisting:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [*(*(a1 + 32) + 64) services];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _onqueue_HIDServiceAdded:*(*(&v21 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(*(a1 + 32) + 72);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __77___GCAppleTVRemoteControllerManager_activateWithSession_environment_options___block_invoke_2;
  v18 = &unk_1E841B3A8;
  objc_copyWeak(&v19, &location);
  v10 = [v9 observeHIDEvents:&v15];
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = v10;

  v13 = [_GCCurrentApplicationForegroundMonitor sharedInstance:v15];
  [v13 addObserver:*(a1 + 32) notifyCurrent:1];

  v14 = [MEMORY[0x1E695DFB0] null];
  [v3 succeedWithResult:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __77___GCAppleTVRemoteControllerManager_activateWithSession_environment_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleHIDEvent:a2];
}

@end