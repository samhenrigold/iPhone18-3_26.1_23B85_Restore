@interface GCControllerManagerAppClient
@end

@implementation GCControllerManagerAppClient

void __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  v5 = a2;
  v6 = [v4 registerServicesChangedObserver:v3 notifyExisting:1];
  v7 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
  [v7 addObserver:*(a1 + 32) notifyCurrent:1];

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke_2;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_1D2CD5000, "Connect To Game Controller Daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  SetupVirtualGameControllerIfForced(v8, v9);
  v10 = [MEMORY[0x1E695DFB0] null];
  [v5 succeedWithResult:v10];
}

uint64_t __50___GCControllerManagerAppClient_finalizeRecording__block_invoke(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __50___GCControllerManagerAppClient_finalizeRecording__block_invoke_cold_1(a2);
  }

  return [*(a1 + 32) invalidate];
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_cold_1(isInternalBuild);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  *(v10 + 120) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 144);
  *(v12 + 144) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 104);
  *(v14 + 104) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 96);
  *(v16 + 96) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 80);
  *(v18 + 80) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 88);
  *(v20 + 88) = 0;

  v22 = *(a1 + 32);
  v23 = *(v22 + 72);
  *(v22 + 72) = 0;
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136(uint64_t a1, uint64_t a2)
{
  isInternalBuild = gc_isInternalBuild(a1, a2);
  if (isInternalBuild)
  {
    __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136_cold_1(isInternalBuild);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  *(v10 + 120) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 144);
  *(v12 + 144) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 104);
  *(v14 + 104) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 96);
  *(v16 + 96) = 0;

  v18 = [*(*(a1 + 32) + 72) remoteProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_137;
  v19[3] = &unk_1E8418C28;
  v19[4] = *(a1 + 32);
  [v18 pingWithReply:v19];
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_137(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_2;
  block[3] = &unk_1E8418C28;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 96), a2);
    [*(a1 + 32) refreshControllers];
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 104), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_139_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 112), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_141_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 120), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_143_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_145(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 136), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_145_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 144), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_147_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_149(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 128), a2);
    [*(a1 + 32) updateEmulatedControllerEnabled];
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_149_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 152), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_151_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 160), a2);
  }

  else if (gc_isInternalBuild(v7, v8))
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_153_cold_1();
  }
}

void __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gc_isInternalBuild(v3, v4))
  {
    __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke_cold_1(v3);
  }

  if ([v3 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 valueForKey:@"GCEnableKeyboardMouseController"];
    v5 = [v7 intValue];
  }

  [*(*(a1 + 32) + 216) setEmulatedControllerMapping:v5];
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if (gc_isInternalBuild(v3, v4))
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_1(v5);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 152);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193;
    v11[3] = &unk_1E8419EA8;
    v11[4] = v6;
    v8 = [v7 onVideoRecordingStart:v11];
    isInternalBuild = gc_isInternalBuild(v8, v9);
    if (isInternalBuild)
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_2(isInternalBuild);
    }
  }
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193(uint64_t a1, void *a2)
{
  v3 = a2;
  isInternalBuild = gc_isInternalBuild(v3, v4);
  if (!v3)
  {
    if (isInternalBuild)
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_2(isInternalBuild);
    }

    v7 = [MEMORY[0x1E695DF00] date];
    v8 = *(a1 + 32);
    v6 = *(v8 + 208);
    *(v8 + 208) = v7;
    goto LABEL_8;
  }

  if (isInternalBuild)
  {
    v6 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_1(v3, v6);
    }

LABEL_8:
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5 || (isInternalBuild = gc_isInternalBuild(v6, v7), !isInternalBuild))
  {
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_8:
    v10 = -1;
    goto LABEL_9;
  }

  __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_1(isInternalBuild);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  [v8 UTF8String];
  v10 = sandbox_extension_consume();
  if (v10 == -1)
  {
    if (gc_isInternalBuild(-1, v11))
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_2();
    }

    goto LABEL_13;
  }

LABEL_9:
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = *(a1 + 48);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201;
  aBlock[3] = &unk_1E841AB88;
  v22 = v10;
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  v21 = v23;
  v20 = v14;
  v15 = _Block_copy(aBlock);
  if (*(a1 + 48) == 1)
  {
    v16 = GCLookupService();
    [v16 exportClipToURL:v12 duration:v15 completionHandler:15.0];
  }

  else
  {
    v16 = GCLookupService();
    [v16 stopRecordingWithOutputURL:v12 completionHandler:v15];
  }

  _Block_object_dispose(v23, 8);
LABEL_13:
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 64);
  if (v5 != -1)
  {
    v5 = sandbox_extension_release();
  }

  isInternalBuild = gc_isInternalBuild(v5, v3);
  if (!v4)
  {
    if (isInternalBuild)
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_2(a1);
    }

    v8 = *(*(a1 + 40) + 152);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202;
    v15[3] = &unk_1E841AB60;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v13 = v11;
    v14 = v10;
    v12 = *&v10.f64[0];
    v17.val[1] = v14;
    *&v17.val[0].f64[0] = v9;
    v17.val[0].f64[1] = *(a1 + 40);
    vst2q_f64(v16, v17);
    [v8 onVideoRecordingStopWithURL:v9 reply:{v15, v13}];

    v7 = *&v16[0];
    goto LABEL_10;
  }

  if (isInternalBuild)
  {
    v7 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_1();
    }

LABEL_10:
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202(uint64_t a1, void *a2)
{
  v3 = a2;
  isInternalBuild = gc_isInternalBuild(v3, v4);
  if (!v3)
  {
    if (isInternalBuild)
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_2(a1);
    }

    v7 = *(*(*(a1 + 56) + 8) + 24);
    v6 = +[GCAnalytics instance];
    v8 = currentProcessBundleIdentifier(v6);
    v9 = [*(a1 + 40) detailedProductCategory];
    if (v7 == 1)
    {
      [v6 sendRPKitInstantCaptureSavedEventForBundleID:v8 productCategory:v9];
    }

    else
    {
      [*(*(a1 + 48) + 208) timeIntervalSinceNow];
      LODWORD(v11) = llround(-v10);
      [v6 sendRPKitManualRecordingSavedEventForBundleID:v8 productCategory:v9 duration:v11];
    }

    goto LABEL_11;
  }

  if (isInternalBuild)
  {
    v6 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_1();
    }

LABEL_11:
  }

  v12 = *(a1 + 48);
  v13 = *(v12 + 208);
  *(v12 + 208) = 0;
}

void __47___GCControllerManagerAppClient_startBuffering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  isInternalBuild = gc_isInternalBuild(v3, v4);
  if (v3)
  {
    if (isInternalBuild)
    {
      __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_1(v3);
    }
  }

  else
  {
    if (isInternalBuild)
    {
      __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_2(isInternalBuild);
    }

    v6 = *(a1 + 32);
    if ((*(v6 + 202) & 1) == 0)
    {
      v7 = +[GCAnalytics instance];
      v8 = currentProcessBundleIdentifier(v7);
      [v7 sendRPKitInstantCaptureBufferStartedEventForBundleID:v8];

      v6 = *(a1 + 32);
    }

    *(v6 + 202) = 1;
  }

  *(*(a1 + 32) + 201) = 0;
}

void __46___GCControllerManagerAppClient_stopBuffering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3 && gc_isInternalBuild(v3, v4))
  {
    __46___GCControllerManagerAppClient_stopBuffering__block_invoke_cold_1(v5);
  }

  *(*(a1 + 32) + 202) = 0;
}

void __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if (gc_isInternalBuild(v3, v4))
    {
      __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v6 = +[GCAnalytics instance];
    v7 = currentProcessBundleIdentifier(v6);
    v8 = [*(*(*(a1 + 32) + 8) + 40) detailedProductCategory];
    [v6 sendRPKitScreenshotSavedEventForBundleID:v7 productCategory:v8];
  }
}

void __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2;
  v5[3] = &unk_1E8418C50;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [*(*(a1 + 40) + 64) member:v8];

        if (!v9)
        {
          if (gc_isInternalBuild(v10, v11))
          {
            __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2_cold_1();
          }

          [*(*(a1 + 40) + 64) addObject:v8];
          [*(a1 + 40) _onqueue_addPendingController:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_442;
  block[3] = &unk_1E8418C28;
  block[4] = v12;
  dispatch_async(v13, block);
}

void __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2;
  v5[3] = &unk_1E8418C50;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

uint64_t __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (gc_isInternalBuild(v3, v4))
        {
          __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2_cold_1();
        }

        [*(*(a1 + 40) + 56) removeObject:{v8, v10}];
        v3 = [*(*(a1 + 40) + 64) removeObject:v8];
        ++v7;
      }

      while (v5 != v7);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v3;
    }

    while (v3);
  }

  return [*(a1 + 40) _onqueue_refreshPublishedControllers];
}

uint64_t __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_2;
  v4[3] = &unk_1E841ABD8;
  v4[4] = v1;
  return [v2 fetchControllerDescriptionsWithReply:v4];
}

void __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3;
  v7[3] = &unk_1E8418C50;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [*(*(a1 + 40) + 64) copy];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v2 member:v8];

        if (!v9)
        {
          if (gc_isInternalBuild(v10, v11))
          {
            __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2_cold_1();
          }

          [*(*(a1 + 40) + 56) removeObject:v8];
          [*(*(a1 + 40) + 64) removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        v18 = [v17 identifier];
        v19 = [*(*(a1 + 40) + 64) member:v18];

        isInternalBuild = gc_isInternalBuild(v20, v21);
        if (v19)
        {
          if (isInternalBuild)
          {
            __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3_cold_2();
          }
        }

        else
        {
          if (isInternalBuild)
          {
            __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2_cold_1();
          }

          [*(*(a1 + 40) + 64) addObject:v18];
        }

        [*(a1 + 40) _onqueue_addPendingController:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  [*(a1 + 40) _onqueue_refreshPublishedControllers];
}

void __50___GCControllerManagerAppClient_finalizeRecording__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_139_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_141_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_143_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_145_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_147_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_149_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_151_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_153_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_ERROR, "onVideoRecordingStart has failed, reason: %@", &v2, 0xCu);
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __46___GCControllerManagerAppClient_stopBuffering__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v3, v4, "Publish controller: '%@'");
  }
}

void __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v3, v4, "Unpublish controller: '%@'");
  }
}

void __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_5();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v3, v4, "Update controller: '%@'");
  }
}

@end