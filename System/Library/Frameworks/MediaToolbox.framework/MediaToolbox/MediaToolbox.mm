uint64_t FigMediaServerStart()
{
  FigWatchdogStart();
  v0 = FigWatchdogBeginVitalWork();
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      FigMediaServerStart_cold_1(v1);
    }
  }

  GSInitialize();
  FigServer_InitializeWithEnvironment();
  fpServer_CreateRPCTimeoutThread();
  getpid();
  proc_disable_cpumon();
  FigKTraceInit();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  signal(30, 1);
  signal(31, 1);
  FigNote_OneTimeInitializationForMediaServerd();
  FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd();
  FigSandboxRegistrationServerStart();
  feServer_LoadCelestial();
  FigShared_OneTimeInitialization();
  out_token = 0;
  v3 = notify_register_dispatch("com.apple.language.changed", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_14);
  MEMORY[0x19A8D2860](v3);
  feServer_startCTTelephonyCenterOnADispatchQueue_sAnythingButARunLoop = dispatch_queue_create("com.apple.mediaserverd.coretelephony.notarunloop", 0);
  v4 = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 4);
  if (v4)
  {
    v5 = dlsym(v4, "CTTelephonyCenterSetDefaultDispatchQueue");
    if (v5)
    {
      v5(feServer_startCTTelephonyCenterOnADispatchQueue_sAnythingButARunLoop);
    }
  }

  v6 = FigOSTransactionCreate();
  FigControlCommandsStartServer();
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPECryptorServer"))
  {
    FigCPECryptorStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    ShouldStartSubServer = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPEServer");
    if (ShouldStartSubServer)
    {
      FigCPEServerStart(ShouldStartSubServer);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartContentKeySessionServer"))
  {
    FigContentKeyBossStartServer();
    FigContentKeySessionStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCustomURLLoaderServer"))
  {
    FigCustomURLLoaderServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartByteStreamServer");
    if (v9)
    {
      FigByteStreamServerStart(v9, v10);
    }
  }

  v11 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartFormatReaderServer");
  if (v11)
  {
    FigFormatReaderServerStart(v11);
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleGeneratorServer"))
  {
    FigSampleGeneratorServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetServer"))
  {
    FigAssetServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAudioDeviceClockServer"))
  {
    FigAudioDeviceClockServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v12 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMutableCompositionServer");
    if (v12)
    {
      FigMutableCompositionServerStart(v12);
    }
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMutableMovieServer"))
  {
    ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
    if (!ShouldConnectToMediaparserdForFileParsing)
    {
      FigMutableMovieServerStart(ShouldConnectToMediaparserdForFileParsing);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v14 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetImageGeneratorServer");
    if (v14)
    {
      FigAssetImageGeneratorServerStart(v14);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v15 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMTAudioProcessingTapServer");
    if (v15)
    {
      MTAudioProcessingTapServerStart(v15, v16, v17, v18, v19, v20);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v21 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"VideoCompositorServer");
    if (v21)
    {
      FigVideoCompositorServerStart(v21);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartPlayerServer"))
  {
    FigPlayerServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"PreloadPhotoJPEG"))
  {
    CMPhotoJPEGPreload();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRecorderServer"))
  {
    FigStartCaptureServers();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAVConferenceServer"))
  {
    v22 = dlopen("/System/Library/PrivateFrameworks/GameKitServices.framework/GameKitServices", 4);
    if (v22)
    {
      v23 = dlsym(v22, "AVConferenceServerStart");
      if (v23)
      {
        v23(v23);
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v24 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoQueueServer");
    if (v24)
    {
      FigVideoQueueServerStart(v24);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMonitoringNetworkActivity"))
  {
    FigStartMonitoringNetworkActivity();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSystemControllerServer"))
    {
      FigSystemControllerStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointServer"))
    {
      FigEndpointStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointRemoteControlSessionServer"))
    {
      FigEndpointRemoteControlSessionStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointStreamServer"))
    {
      FigEndpointStreamStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAirPlayServicesServer"))
    {
      v25 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
      if (v25)
      {
        v26 = dlsym(v25, "AirPlayReceiverServicesServerStart");
        if (v26)
        {
          v26(v26);
        }
      }
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSTSServer"))
    {
      FigSTSServerStart();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRouteDiscovererServer"))
    {
      FigRouteDiscovererStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRoutingContextServer"))
    {
      FigRoutingContextStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVolumeControllerServer"))
    {
      FigVolumeControllerStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointUIAgentServer"))
    {
      FigEndpointUIAgentStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRoutingSessionManagerServer"))
    {
      FigRoutingSessionManagerStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAirPlayAlwaysOnModules"))
    {
      v27 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
      if (v27)
      {
        v28 = dlsym(v27, "AirPlayStartAlwaysOnModules");
        if (v28)
        {
          v28(v28);
        }
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRemakerServer"))
  {
    FigRemakerServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartNeroidServer"))
  {
    FigNeroidStartServer();
  }

  FigAudioSessionInitializeVTFigAudioSession();
  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartDecompressionServer") && !VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode())
  {
    VTDecompressionSessionServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCompressionServer") && !VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
  {
    VTCompressionSessionServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v29 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetDownloaderServer");
    if (v29)
    {
      FigAssetDownloaderStartServer(v29);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v30 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetCacheInspectorServer");
    if (v30)
    {
      FigAssetCacheInspectorStartServer(v30);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v31 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferAudioRendererServer");
    if (v31)
    {
      FigSampleBufferAudioRendererServerStart(v31);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v32 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferRenderSynchronizerServer");
    if (v32)
    {
      FigSampleBufferRenderSynchronizerServerStart(v32);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoTargetServer"))
  {
    FigVideoTargetStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v33 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVisualContextServer");
    if (v33)
    {
      FigVisualContextServerStart(v33);
    }
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVisionHWAccelerationServer"))
  {
    v34 = dlopen("/System/Library/PrivateFrameworks/VisionHWAccelerationServices.framework/VisionHWAccelerationServices", 4);
    if (v34)
    {
      v35 = dlsym(v34, "VisionHWAccelerationServicesStart");
      if (v35)
      {
        v35(v35);
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVirtualCaptureCardServer"))
  {
    FigVirtualCaptureCardServerStart();
  }

  if (ModelSpecificPropertyList)
  {
    CFRelease(ModelSpecificPropertyList);
  }

  if (v6)
  {
    os_release(v6);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v36 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
    if (v36)
    {
      v37 = dlsym(v36, "SidePlayManagerStart");
      if (v37)
      {
        v37(v37);
      }
    }
  }

  FigWatchdogCompleteVitalWork();
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

void CentralOneTimeSetup()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [MEMORY[0x1E696AF00] detachNewThreadSelector:sel_invokeThread_ toTarget:objc_opt_class() withObject:0];
}

void FigRemakerServerStart()
{
  qword_1ED4CAEF8 = FigReentrantMutexCreate();
  gRemakerFamilyServerState_4 = dispatch_queue_create("com.apple.coremedia.remakerserver.notificationQueue", 0);
  if (qword_1ED4CAEF8)
  {
    if (FigServer_IsMediaparserd())
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 1, HandleRemakerFamilyMessageWithReply);
    }

    else
    {
      FigServer_IsMediaplaybackd();
      FigXPCServerStart();
    }
  }

  else
  {
    FigRemakerServerStart_cold_1(&v1);
  }
}

uint64_t RegisterFigPlayerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t playerasync_SetProperty(const void *a1, const void *a2, uint64_t a3)
{
  v18 = 0;
  cf = 0;
  v17 = 0;
  v16 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  v6 = FPSupport_HandlePlayerSetPropertyAndCopyModification(a1, a2, a3, 0, playerasync_handleSetProperty, &v17, &cf, &v18);
  if (v6)
  {
LABEL_18:
    v14 = v6;
    v13 = 0;
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_11:
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = playerasync_createCommand(a1, 3, 0, &v16);
  if (!v7)
  {
    v8 = cf;
    if (cf)
    {
      v8 = CFRetain(cf);
    }

    v9 = v16;
    v16[4] = v8;
    v10 = v18;
    if (v18)
    {
      v10 = CFRetain(v18);
    }

    v9[5] = v10;
    v11 = OUTLINED_FUNCTION_298();
    playerasync_runAsynchronousCommand(v11, v12);
    goto LABEL_11;
  }

  v14 = v7;
  v13 = v16;
LABEL_12:
  fpa_releaseCommand(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

uint64_t playerasync_createCommand(const void *a1, int a2, const void *a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F2040C1459ED2uLL);
  if (v8)
  {
    v9 = v8;
    v8[6] = a2;
    if (a1)
    {
      v10 = CFRetain(a1);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 1) = v10;
    if (a3)
    {
      v11 = CFRetain(a3);
    }

    else
    {
      v11 = 0;
    }

    result = 0;
    *(v9 + 2) = v11;
    *a4 = v9;
  }

  else
  {
    playerasync_createCommand_cold_1(&v13);
    return v13;
  }

  return result;
}

void fpa_releaseCommand(void *a1)
{
  if (a1)
  {
    switch(*(a1 + 12))
    {
      case 1:
        goto LABEL_5;
      case 2:
      case 3:
      case 4:
      case 0x19:
      case 0x1A:
      case 0x1B:
      case 0x23:
        v2 = a1[4];
        if (v2)
        {
          CFRelease(v2);
        }

LABEL_5:
        v3 = a1[5];
        if (v3)
        {
          goto LABEL_6;
        }

        break;
      case 6:
      case 0x12:
      case 0x13:
      case 0x15:
      case 0x21:
      case 0x2B:
      case 0x30:
        v3 = a1[4];
        if (!v3)
        {
          break;
        }

        goto LABEL_6;
      case 0x10:
        v6 = a1[4];
        if (!v6)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      case 0x11:
        v3 = a1[8];
        if (!v3)
        {
          break;
        }

        goto LABEL_6;
      case 0x20:
      case 0x29:
        v6 = a1[5];
        if (v6)
        {
LABEL_18:
          CFRelease(v6);
        }

LABEL_19:
        v3 = a1[6];
        if (!v3)
        {
          break;
        }

        goto LABEL_6;
      case 0x2F:
        v3 = a1[7];
        if (!v3)
        {
          break;
        }

LABEL_6:
        CFRelease(v3);
        break;
      default:
        break;
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigPlayerSetConnectionActive(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

uint64_t playerfig_SetConnectionActive(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(DerivedStorage + 64) && !*(DerivedStorage + 65);
  }

  return playerfig_updatePlayerActiveState(a1, v6);
}

const void *playerfig_disturbPlayQueue(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Count = CFArrayGetCount(*(DerivedStorage + 528));
  v4 = Count;
  v5 = *(DerivedStorage + 536);
  if (v5)
  {
    v12.location = 0;
    v12.length = Count;
    v6 = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v12, v5) + 1;
  }

  else
  {
    v6 = Count;
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), i);
      v9 = CMBaseObjectGetDerivedStorage();
      itemfig_antiprepare(ValueAtIndex);
      ++*(v9 + 1768);
    }
  }

  if (v4 < 1)
  {
    result = 0;
  }

  else
  {
    result = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  }

  *(DerivedStorage + 536) = result;
  *(DerivedStorage + 544) = 0;
  return result;
}

void playerasync_CopyProperty(const void *a1, const void *a2, const void *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 4294954516;
    v14 = 3290;
    goto LABEL_5;
  }

  v10 = DerivedStorage;
  *a4 = 0;
  if (!*DerivedStorage)
  {
    if (!a2)
    {
      emitter = fig_log_get_emitter();
      v12 = v4;
      v13 = 4294954516;
      v14 = 3297;
      goto LABEL_5;
    }

    if (CFEqual(a2, @"UserVolume"))
    {
      FigSimpleMutexLock();
      v15 = *(v10 + 11);
      if (v15)
      {
        *a4 = v15;
        CFRetain(*(v10 + 11));
LABEL_17:
        FigSimpleMutexUnlock();
        v17 = 0;
LABEL_40:
        fpa_releaseCommand(v17);
        return;
      }

      FigSimpleMutexUnlock();
LABEL_19:
      if (playerasync_createCommand(a1, 2, 0, &v21))
      {
        v17 = v21;
      }

      else
      {
        v18 = CFRetain(a2);
        v17 = v21;
        v21[4] = v18;
        if (a3)
        {
          v19 = CFRetain(a3);
        }

        else
        {
          v19 = 0;
        }

        v17[5] = v19;
        v17[6] = a4;
        if (CFEqual(a2, @"IsValid"))
        {
          FigSimpleMutexLock();
          while (!*(v10 + 2) && !v10[2])
          {
            FigConditionVariableWaitRelative();
          }

          FigSimpleMutexUnlock();
          playerasync_runImmediateCommand(a1, v17, 0);
        }

        else
        {
          playerasync_runSynchronousCommand(a1, v17);
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(a2, @"LastSentSubtitleSample"))
    {
      FigSimpleMutexLock();
      v16 = *(v10 + 12);
      if (v16)
      {
        v16 = CFRetain(v16);
      }

      *a4 = v16;
      goto LABEL_17;
    }

    if (CFEqual(a2, @"Status"))
    {
      FigSimpleMutexLock();
      if (*(v10 + 2) || v10[2])
      {
        *a4 = FigCFNumberCreateSInt32();
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      if (!CFEqual(a2, @"Topology"))
      {
        if (FigCFEqual())
        {
          v17 = 0;
          goto LABEL_40;
        }

        if (FigCFEqual())
        {
          v20 = *(v10 + 20);
          if (v20)
          {
            v20 = CFRetain(v20);
          }

          v17 = 0;
          *a4 = v20;
          goto LABEL_40;
        }

        goto LABEL_19;
      }

      if (*(v10 + 2))
      {
        goto LABEL_19;
      }

      FPSupport_CreatePlayerTopology(*MEMORY[0x1E695E480], @"Async", 0, a4);
    }

    v17 = 0;
    goto LABEL_40;
  }

  emitter = fig_log_get_emitter();
  v12 = v4;
  v13 = 4294954511;
  v14 = 3294;
LABEL_5:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v13, "<<<< Async >>>>", v14, v12);
}

void playerfig_updateVideoLayerSize(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 536);
  v31 = 0;
  v6 = FigUseVideoReceiverForCALayer();
  if (v6)
  {
    playerfig_updateVideoLayerSize_cold_1(v6, v7, v8, v9, v10, v11, v12, v13, *&v26.a, SLODWORD(v26.b), SHIDWORD(v26.b), SLODWORD(v26.c));
    return;
  }

  if (v5)
  {
    if (!*(CMBaseObjectGetDerivedStorage() + 1240))
    {
      return;
    }

    v14 = objc_autoreleasePoolPush();
    if (*(DerivedStorage + 208) && *(DerivedStorage + 216))
    {
      v30 = 0;
      v15 = *(MEMORY[0x1E695EFD0] + 16);
      *&v29.a = *MEMORY[0x1E695EFD0];
      *&v29.c = v15;
      *&v29.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (!a2)
      {
        if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v31))
        {
LABEL_28:
          v19 = v31;
          goto LABEL_13;
        }

        LODWORD(a2) = v31;
      }

      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      v17.n128_u64[0] = 0;
      if (v16)
      {
        v16(v5, &v30 + 4, &v30, v17, 0.0);
        v18 = *(&v30 + 1);
        v17.n128_u32[0] = v30;
      }

      else
      {
        v18 = 0.0;
      }

      if (*(DerivedStorage + 76))
      {
        FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(a2, *(DerivedStorage + 208), 0.0, 0.0, v18, v17.n128_f32[0]);
        v18 = *(&v30 + 1);
        v17.n128_u32[0] = v30;
      }

      v20 = v18 * 0.5;
      v21 = v17.n128_f32[0] * 0.5;
      if (FPSupport_ShouldApplyVideoTrackMatrix(a1, v5))
      {
        v28 = 0;
        VideoMatrixRotationAngleAndFlips = itemfig_getVideoMatrixRotationAngleAndFlips(v5, &v28 + 1, &v28);
        CGAffineTransformMakeRotation(&t1, VideoMatrixRotationAngleAndFlips * 3.14159265 / 180.0);
        v23 = -1.0;
        if (v28)
        {
          v24 = -1.0;
        }

        else
        {
          v24 = 1.0;
        }

        if (!HIBYTE(v28))
        {
          v23 = 1.0;
        }

        CGAffineTransformMakeScale(&v26, v24, v23);
        CGAffineTransformConcat(&v29, &t1, &v26);
      }

      v25 = *(DerivedStorage + 216);
      t1 = v29;
      FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(a2, 1, &t1, v25, v20, v21);
      goto LABEL_28;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
  }

  v19 = 0;
LABEL_13:
  FigDeferredTransactionCommit(v19, 0);
  if (v31)
  {
    CFRelease(v31);
  }

  objc_autoreleasePoolPop(v14);
}

void playerfig_applyEQPreset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v3 = qword_1EAF16A08;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 4294954511, "<<<< FigFilePlayer >>>>", 48574, v1);
  }

  else if (*(DerivedStorage + 584) || *(DerivedStorage + 664))
  {
    valuePtr = *(DerivedStorage + 80);
    if (*(DerivedStorage + 536))
    {
      v4 = *(CMBaseObjectGetDerivedStorage() + 976);
      if (v4)
      {
        valuePtr = v4;
      }
    }

    v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    fp_setPropertyOnAllAudioRenderPipelines();
    CFRelease(v5);
  }
}

uint64_t playerfig_doesAnyWorkingOrLameDuckItemHaveVideo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 536) || (v19.length = CFArrayGetCount(*(DerivedStorage + 528)), v19.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v19, *(DerivedStorage + 536)), FirstIndexOfValue < 0))
  {
    v5 = 0;
  }

  else
  {
    v3 = FirstIndexOfValue;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v4);
      v7 = CMBaseObjectGetDerivedStorage();
      if (*(v7 + 1040))
      {
        break;
      }

      v8 = v7;
      v9 = *(v7 + 1088);
      if (v9)
      {
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            v18 = 0;
            v17 = 0;
            FigCFArrayGetInt32AtIndex();
            itemfig_getTrackStorage(ValueAtIndex, v18, &v17);
            if (v17)
            {
              if (*(v17 + 4) == 1986618469)
              {
                v13 = *(v17 + 216);
                if (v13)
                {
                  if (CFArrayGetCount(v13) >= 1)
                  {
                    break;
                  }
                }
              }
            }

            if (v11 == ++v12)
            {
              goto LABEL_13;
            }
          }

          v5 = 1;
        }
      }

LABEL_13:
      v14 = *(v8 + 864);
      if (v14)
      {
        if (CFArrayGetCount(v14) > 0)
        {
          break;
        }
      }

      if (v4++ == v3)
      {
        goto LABEL_21;
      }
    }

    v5 = 1;
  }

LABEL_21:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t RegisterFigPlaybackItemType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigRemote_SerializeCookiesForURL(const __CFURL *a1, uint64_t a2)
{
  theArray = 0;
  v4 = FigCFHTTPIsHTTPBasedURL(a1);
  if (!v4)
  {
    return 0;
  }

  v6 = FigURLStorageSessionCopyGlobalSession(v4, v5);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7 || (v7(v6, a1, &theArray), !theArray))
  {
    v10 = 0;
    goto LABEL_8;
  }

  Count = CFArrayGetCount(theArray);
  v9 = theArray;
  if (Count < 1)
  {
    v10 = 0;
    if (!theArray)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v10 = MEMORY[0x19A8D2A70](theArray, *MEMORY[0x1E695E480], a2);
  v9 = theArray;
  if (theArray)
  {
LABEL_12:
    CFRelease(v9);
  }

LABEL_8:
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

uint64_t itemasync_SetProperty(const void *a1, const void *a2, uint64_t a3)
{
  v21 = 0;
  v19 = 0;
  cf = 0;
  v18 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v15 = v17;
    v14 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6 || *CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_23;
  }

  v7 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, itemasync_handleSetProperty, &v18, &cf, &v19);
  if (v7)
  {
LABEL_23:
    v15 = v7;
    v14 = 0;
    goto LABEL_14;
  }

  if (v18)
  {
LABEL_13:
    v14 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v8 = playerasync_createCommand(v6, 26, a1, &v21);
  if (!v8)
  {
    v9 = cf;
    if (cf)
    {
      v9 = CFRetain(cf);
    }

    v10 = v21;
    v21[4] = v9;
    v11 = v19;
    if (v19)
    {
      v11 = CFRetain(v19);
    }

    v10[5] = v11;
    v12 = OUTLINED_FUNCTION_298();
    playerasync_runAsynchronousCommand(v12, v13);
    goto LABEL_13;
  }

  v15 = v8;
  v14 = v21;
LABEL_14:
  fpa_releaseCommand(v14);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

void playercentral_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v7 = 0;
  }

  cf = 0;
  if (*(DerivedStorage + 8))
  {
    v8 = qword_1EAF16FB8;
    v9 = v3;
    v10 = 4294954511;
    v11 = 3130;
LABEL_6:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< CENTRAL >>>>", v11, v9);
    return;
  }

  v12 = *(DerivedStorage + 16);
  if (!v12)
  {
    v8 = qword_1EAF16FB8;
    v9 = v3;
    v10 = 4294954516;
    v11 = 3136;
    goto LABEL_6;
  }

  if (v7)
  {
    if (*(v7 + 16))
    {
      v8 = qword_1EAF16FB8;
      v9 = v3;
      v10 = 4294954511;
      v11 = 3142;
      goto LABEL_6;
    }

    if (a3)
    {
      v13 = *(v7 + 8);
      goto LABEL_18;
    }

LABEL_23:
    v8 = qword_1EAF16FB8;
    v9 = v3;
    v10 = 4294954516;
    v11 = 3148;
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  v13 = 0;
LABEL_18:
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v14)
  {
    v14(v12, v13, &cf);
    if (cf)
    {
      v15 = FigCFWeakReferenceTableCopyValue();
      CFRelease(cf);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
}

void playerfig_CopyPlayQueueItem(uint64_t a1, const void *a2, const void **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    v9 = qword_1EAF16A08;
    v10 = v3;
    v11 = 4294954516;
    v12 = 16429;
    goto LABEL_5;
  }

  v8 = DerivedStorage;
  *a3 = 0;
  if (!*DerivedStorage)
  {
    if (a2)
    {
      v13 = CMBaseObjectGetDerivedStorage();
      if (*v13)
      {
        v9 = qword_1EAF16A08;
        v10 = v3;
        v11 = 4294954511;
        v12 = 16440;
        goto LABEL_5;
      }

      v17 = v13;
      if (*(v13 + 8) != a1)
      {
        v9 = qword_1EAF16A08;
        v10 = v3;
        v11 = 4294954516;
        v12 = 16443;
        goto LABEL_5;
      }

      FigSimpleMutexLock();
      if (!*(v17 + 1))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
LABEL_24:
        FigSimpleMutexUnlock();
        return;
      }

      v18 = *(v8 + 66);
      v28.length = CFArrayGetCount(v18);
      v28.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v18, v28, a2);
      if (FirstIndexOfValue == -1)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
        ValueAtIndex = *a3;
        if (*a3)
        {
LABEL_14:
          CFRetain(ValueAtIndex);
        }

LABEL_22:
        if (dword_1EAF16A10 >= 5)
        {
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_24;
      }

      v20 = FirstIndexOfValue + 1;
      if (FirstIndexOfValue + 1 < CFArrayGetCount(*(v8 + 66)))
      {
        v14 = *(v8 + 66);
        v15 = v20;
LABEL_13:
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
        *a3 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    else
    {
      FigSimpleMutexLock();
      if (CFArrayGetCount(*(v8 + 66)) >= 1)
      {
        v14 = *(v8 + 66);
        v15 = 0;
        goto LABEL_13;
      }
    }

    *a3 = 0;
    goto LABEL_22;
  }

  v9 = qword_1EAF16A08;
  v10 = v3;
  v11 = 4294954511;
  v12 = 16434;
LABEL_5:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< FigFilePlayer >>>>", v12, v10);
}

void itemasync_SetCurrentTime(const void *a1, __int128 *a2, int a3)
{
  v13 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4541, v3);
  }

  else
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTime_cold_1(&v14);
        v11 = 0;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v9, a1);
        v10 = playerasync_createCommand(v9, 30, a1, &v13);
        v11 = v13;
        if (!v10)
        {
          v12 = *a2;
          *(v13 + 6) = *(a2 + 2);
          *(v11 + 2) = v12;
          *(v11 + 14) = a3;
          playerasync_runAsynchronousCommand(v9, v11);
          v11 = 0;
        }
      }

      fpa_releaseCommand(v11);
      CFRelease(v9);
    }

    else
    {
      itemasync_SetCurrentTime_cold_2();
    }
  }
}

uint64_t itemfig_SetCurrentTimeWithRange(const void *a1, __int128 *a2, __int16 a3, __int128 *a4, __int128 *a5)
{
  v9 = *a2;
  v8 = *a4;
  v6 = *a5;
  v7 = *(a5 + 2);
  return itemfig_setCurrentTimeWithRangeAndIDGuts(a1, &v9, a3, &v8, &v6, 0, 0, 0);
}

uint64_t itemfig_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    itemfig_GetCurrentTime_cold_1(&v13);
    return v13;
  }

  if (!a2)
  {
    itemfig_GetCurrentTime_cold_4(&v13);
    return v13;
  }

  v4 = DerivedStorage;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    itemfig_GetCurrentTime_cold_3(&v13);
    return v13;
  }

  v6 = v5;
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemfig_GetCurrentTime_cold_2(&v13);
    v11 = v13;
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  v7 = *(v4 + 44);
  if (v7)
  {
    FigPlaybackBossGetTime(v7, &v13);
    *a2 = v13;
    v8 = v14;
LABEL_10:
    *(a2 + 16) = v8;
    goto LABEL_11;
  }

  if ((*(v4 + 9) & 0x1D) != 1)
  {
    v10 = MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    v8 = *(v10 + 16);
    goto LABEL_10;
  }

  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 5);
  *a2 = v9;
LABEL_11:
  FigSimpleMutexUnlock();
  v11 = 0;
LABEL_12:
  CFRelease(v6);
  return v11;
}

uint64_t FigTimebaseSynchronizeToMoment(OpaqueCMTimebase *a1, OpaqueCMTimebase *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v3 = *(a3 + 4);
  v5[0] = 120;
  v5[1] = v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *(a3 + 56);
  v11 = *(a3 + 64);
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v12 = *MEMORY[0x1E6960C70];
  v15 = v13;
  v14 = v12;
  return figtimebase_synchronizeToMomentInternal(a1, a2, v5);
}

void itemasync_reflectSubItemNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (CFEqual(a3, @"ItemWasRemovedFromPlayQueue"))
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"AsRequested");
      if (v8 && *MEMORY[0x1E695E4D0] != Value)
      {
        goto LABEL_7;
      }
    }

    else if (v8)
    {
LABEL_7:
      playerasync_removeItemFromPlayQueueWithoutInformingSubPlayer(v8, a2);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v8)
  {

    CFRelease(v8);
  }
}

void itemasync_MakeReadyForInspection(const void *a1, const void *a2, uint64_t a3)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4810, v3);
  }

  else
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_MakeReadyForInspection_cold_1(&v13);
        v11 = 0;
      }

      else if (playerasync_createCommand(v9, 33, a1, &v12))
      {
        v11 = v12;
      }

      else
      {
        if (a2)
        {
          v10 = CFRetain(a2);
        }

        else
        {
          v10 = 0;
        }

        v11 = v12;
        *(v12 + 32) = v10;
        v11[5] = a3;
        playerasync_runSynchronousCommand(v9, v11);
      }

      fpa_releaseCommand(v11);
      CFRelease(v9);
    }

    else
    {
      itemasync_MakeReadyForInspection_cold_2();
    }
  }
}

uint64_t itemcentral_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_MakeReadyForInspection(&v11);
    return v11;
  }

  else
  {
    v7 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v8 = *(v7 + 8);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v9)
      {

        return v9(v8, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_MakeReadyForInspection(&v12);
      return v12;
    }
  }
}

void itemfig_makeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *value, CFTypeRef a17, uint64_t a18, CFTypeRef a19, uint64_t a20, uint64_t a21, CFTypeRef cf2, int a23, __int16 a24, char a25, os_log_type_t type, int a27, __int16 a28, char a29, char a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_564();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v72 = DerivedStorage;
    if (!DerivedStorage[1282])
    {
      DerivedStorage[1282] = 1;
      itemfig_retrieveAssetBasicsIfReady();
      if (v85)
      {
        goto LABEL_41;
      }
    }

    v73 = MEMORY[0x1E695E480];
    if (!v72[1240])
    {
      if (!v72[1280])
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          goto LABEL_2;
        }

        v74 = Mutable;
        CFArrayAppendValue(Mutable, @"assetProperty_ContentByteStream");
        CFArrayAppendValue(v74, @"assetProperty_FormatReader");
        CFArrayAppendValue(v74, @"assetProperty_Tracks");
        CFArrayAppendValue(v74, @"MediaSelectionArray");
        if (!v66)
        {
          goto LABEL_33;
        }

        goto LABEL_10;
      }

      if (itemfig_assureBasicsReadyUsingAsset(v68))
      {
LABEL_41:
        OUTLINED_FUNCTION_463();
        return;
      }
    }

    v74 = 0;
    if (!v66)
    {
      goto LABEL_33;
    }

LABEL_10:
    Count = CFArrayGetCount(v66);
    if (Count)
    {
      v76 = Count;
      if (!v74)
      {
        v74 = CFArrayCreateMutable(*v73, 0, MEMORY[0x1E695E9C0]);
        if (!v74)
        {
          goto LABEL_2;
        }
      }

      if (v76 >= 1)
      {
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v66, 0);
          if (CFEqual(ValueAtIndex, @"Lyrics"))
          {
            v78 = v74;
            v79 = @"Lyrics";
          }

          else if (CFEqual(ValueAtIndex, @"AccurateDuration"))
          {
            v78 = v74;
            v79 = @"Duration";
          }

          else if (CFEqual(ValueAtIndex, @"InitialSamples"))
          {
            v78 = v74;
            v79 = @"assetProperty_InitialSamples";
          }

          else if (CFEqual(ValueAtIndex, @"iTunesGaplessInfo"))
          {
            v78 = v74;
            v79 = @"iTunesGaplessInfo";
          }

          else
          {
            if (!CFEqual(ValueAtIndex, @"CPEProtector"))
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_16();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              goto LABEL_25;
            }

            CFArrayAppendValue(v74, @"assetProperty_ProtectedStatus");
            v78 = v74;
            v79 = @"assetProperty_CPEProtector";
          }

          CFArrayAppendValue(v78, v79);
LABEL_25:
          OUTLINED_FUNCTION_220_0();
        }

        while (!v80);
      }

      if (!CFArrayGetCount(v74))
      {
        CFRelease(v74);
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v74)
    {
LABEL_39:
      if (v64)
      {
        *v64 = 1;
      }

      goto LABEL_41;
    }

LABEL_34:
    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v82 = OUTLINED_FUNCTION_298();
      v84 = v83(v82);
      if (v64)
      {
        if (!v84)
        {
          *v64 = 1;
        }
      }
    }

    CFRelease(v74);
    goto LABEL_41;
  }

LABEL_2:
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_463();

  FigSignalErrorAtGM(v70);
}

size_t FigReadCacheAddOneFile(uint64_t a1, const void *a2)
{
  v3 = a1;
  if (gFigReadCache && *gFigReadCache || (result = OUTLINED_FUNCTION_2_52(a1), !result))
  {
    v5 = OUTLINED_FUNCTION_1_52();
    v5[4] = (v3 << 31 >> 31) & 5;
    *(v5 + 3) = CFRetain(a2);
    IssueFigReadCacheRequest(v5);
    return 0;
  }

  return result;
}

size_t FigReadCacheInitialize(uint64_t a1, int a2, unsigned int a3)
{
  LODWORD(v4) = a2;
  MEMORY[0x19A8D3660](&sSetupFigReadCacheStructureOnce, SetupFigReadCacheStructure);
  if (!gFigReadCache)
  {
    return 4294967188;
  }

  FigSimpleMutexLock();
  if (*gFigReadCache)
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
    allocator = v5;
    if (ModelSpecificPropertyList)
    {
      v7 = ModelSpecificPropertyList;
      value.version = 0;
      valuePtr = 0;
      if (CFDictionaryGetValueIfPresent(ModelSpecificPropertyList, @"ReadCacheNumberOfBlocks", &value))
      {
        v8 = CFGetTypeID(value.version);
        if (v8 == CFNumberGetTypeID())
        {
          CFNumberGetValue(value.version, kCFNumberSInt64Type, &valuePtr);
          if ((valuePtr - 2) < 0xFFFFFFFE)
          {
            LODWORD(v4) = valuePtr;
          }
        }
      }

      if (CFDictionaryGetValueIfPresent(v7, @"ReadCacheBlockSize", &value))
      {
        v9 = CFGetTypeID(value.version);
        if (v9 == CFNumberGetTypeID())
        {
          CFNumberGetValue(value.version, kCFNumberSInt64Type, &valuePtr);
          if ((valuePtr - 0x20000) < 0xFFFE0000)
          {
            a3 = valuePtr;
          }
        }
      }

      CFRelease(v7);
    }

    LOBYTE(value.version) = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"read_cache_num_entries", @"com.apple.coremedia", &value);
    if ((AppIntegerValue - 2) >= 0xFFFFFFFE || LOBYTE(value.version) == 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = AppIntegerValue;
    }

    v12 = CFPreferencesGetAppIntegerValue(@"read_cache_block_size", @"com.apple.coremedia", &value);
    if ((v12 - 0x20000) >= 0xFFFE0000 || LOBYTE(value.version) == 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = v12;
    }

    if (v14 <= 0x20000)
    {
      v15 = 0x20000;
    }

    else
    {
      v15 = v14;
    }

    *(gFigReadCache + 16) = FigSemaphoreCreate();
    *(gFigReadCache + 32) = FigSimpleMutexCreate();
    v16 = FigSimpleMutexCreate();
    v17 = MEMORY[0x1E69E9A60];
    *(gFigReadCache + 184) = v16;
    v18 = *v17;
    value.version = 0;
    value.info = v15;
    memset(&value.retain, 0, 40);
    value.deallocate = PurgeableVMAllocatorDeallocateCallBack;
    value.preferredSize = 0;
    v19 = CFAllocatorCreate(0, &value);
    v20 = gFigReadCache;
    *(gFigReadCache + 168) = v19;
    *(v20 + 104) = v15;
    *(v20 + 108) = v4;
    v21 = malloc_type_calloc(v4, 0x68uLL, 0x1030040915FFAA9uLL);
    *(gFigReadCache + 112) = v21;
    if (v21)
    {
      if (v4)
      {
        v22 = 0;
        v23 = 104 * v4;
        while (1)
        {
          vm_allocate(v18, (*(gFigReadCache + 112) + v22 + 40), *(gFigReadCache + 104), 1593835523);
          v24 = *(gFigReadCache + 112) + v22;
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = CMBlockBufferCreateWithMemoryBlock(0, v25, *(gFigReadCache + 104), *(gFigReadCache + 168), 0, 0, *(gFigReadCache + 104), 0, (v24 + 48));
          }

          else
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, allocator, LODWORD(value.version));
          }

          v4 = v26;
          if (v26)
          {
            break;
          }

          v27 = *(gFigReadCache + 112) + v22;
          *(v27 + 72) = -1;
          MoveToVGroup(v27, 4u, 0);
          v22 += 104;
          if (v23 == v22)
          {
            v4 = 0;
            break;
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, allocator, LODWORD(value.version));
      v4 = v28;
    }

    Mutable = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69631E8], *MEMORY[0x1E695E4C0]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69631F0], @"com.apple.coremedia.readcache");
    FigThreadCreate();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    *gFigReadCache = 1;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void *SetupFigReadCacheStructure()
{
  result = malloc_type_calloc(1uLL, 0x138uLL, 0x106004043265632uLL);
  if (result)
  {
    v1 = result;
    result[1] = FigSimpleMutexCreate();
    result = FigReadWriteLockCreate();
    v1[11] = result;
    gFigReadCache = v1;
  }

  return result;
}

BOOL MoveToVGroup(uint64_t a1, unsigned int a2, int a3)
{
  v20 = 0;
  if (*(a1 + 72) == a2)
  {
    v4 = 1;
    return !MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], *(a1 + 40), v4, &v20) && v20 == 2;
  }

  v6 = a2;
  FigSimpleMutexLock();
  v7 = *(a1 + 72);
  if (v7 != -1)
  {
    v8 = gFigReadCache + 24 * v7;
    v9 = (v8 + 192);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    if (v10)
    {
      v9 = (v10 + 88);
    }

    *v9 = v11;
    v12 = (v11 + 80);
    if (!v11)
    {
      v12 = (v8 + 200);
    }

    *v12 = v10;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    --*(v8 + 208);
  }

  v13 = gFigReadCache + 24 * v6 + 192;
  if (a3 == 1)
  {
    v14 = *v13;
    if (*v13)
    {
      *(v14 + 80) = a1;
      *(a1 + 88) = v14;
    }

    else
    {
      *(gFigReadCache + 24 * v6 + 200) = a1;
    }

    v15 = v13;
  }

  else
  {
    v15 = (gFigReadCache + 24 * v6 + 200);
    v16 = *v15;
    if (*v15)
    {
      *(v16 + 88) = a1;
      *(a1 + 80) = v16;
    }

    else
    {
      *v13 = a1;
    }
  }

  *v15 = a1;
  ++*(v13 + 16);
  *(a1 + 72) = v6;
  FigSimpleMutexUnlock();
  if (v6 > 1)
  {
    if (v6 == 4)
    {
      v17 = 33;
    }

    else if (v6 == 3)
    {
      v17 = 513;
    }

    else
    {
      v17 = 1025;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    v17 = 1537;
LABEL_25:
    v6 = v17 | ((a3 != 1) << 6);
  }

  v4 = 0;
  v20 = v6;
  return !MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], *(a1 + 40), v4, &v20) && v20 == 2;
}

uint64_t IssueFigReadCacheRequest(void *a1)
{
  FigSimpleMutexLock();
  v2 = gFigReadCache;
  v3 = *(gFigReadCache + 48);
  if (v3)
  {
    *(v3 + 8) = a1;
    *a1 = v3;
  }

  else
  {
    *(gFigReadCache + 40) = a1;
  }

  *(v2 + 48) = a1;
  ++*(v2 + 56);
  FigSimpleMutexUnlock();

  return FigSemaphoreSignal();
}

uint64_t FigCachedFileByteStreamCreate(const void *a1, uint64_t a2, CFAllocatorRef Default, void *a4)
{
  v18 = 0;
  if (!a1 || !a4)
  {
    FigCachedFileByteStreamCreate_cold_2(&v19);
    return v19;
  }

  CacheNewRequestCompletion = FigReadCacheNewRequestCompletion();
  if (!CacheNewRequestCompletion)
  {
    FigCachedFileByteStreamCreate_cold_1(&v19);
    return v19;
  }

  v8 = CacheNewRequestCompletion;
  v19 = 0;
  FigReadCacheAddOneFileAndCopyContainer(1, a1, CacheNewRequestCompletion, &v18);
  if (v18)
  {
    number = 0;
    MEMORY[0x19A8D3660](&FigCachedFileByteStreamGetClassID_sRegisterFigCachedFileByteStreamClassOnce, RegisterFigCachedFileByteStreamClass);
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      v14 = v9;
      FigReadCacheDisposeRequestCompletion(v8);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!Default)
      {
        Default = CFAllocatorGetDefault();
      }

      *DerivedStorage = Default;
      *DerivedStorage = CFRetain(Default);
      *(DerivedStorage + 32) = v8;
      ByteStream = FigReadCacheContainerGetByteStream(v18);
      *(DerivedStorage + 8) = ByteStream;
      *(DerivedStorage + 8) = CFRetain(ByteStream);
      *(DerivedStorage + 24) = v18;
      *(DerivedStorage + 16) = CFRetain(a1);
      *(DerivedStorage + 112) = FigSimpleMutexCreate();
      *(DerivedStorage + 120) = 0;
      FigByteStreamStatsSetupWorker();
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13 && !v13(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number))
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, (DerivedStorage + 40));
        CFRelease(number);
      }

      v14 = 0;
      *a4 = v19;
    }
  }

  else
  {
    FigReadCacheDisposeRequestCompletion(v8);
    v15 = CMByteStreamCreateForFileURL();
    v14 = 0;
    if (v15)
    {
      return v15;
    }
  }

  return v14;
}

void *FigReadCacheNewRequestCompletion()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v0)
  {
    *v0 = FigSimpleMutexCreate();
    v0[1] = FigSemaphoreCreate();
  }

  return v0;
}

void playerasync_SetRate(void *a1, float a2)
{
  v6 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4232, v2);
  }

  else
  {
    playerasync_SetRate_cold_1(a1, &v6, &v7, a2);
  }
}

void itemasync_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954516;
    v10 = 4619;
    goto LABEL_5;
  }

  v5 = DerivedStorage;
  v6 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v6 + 16);
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954511;
    v10 = 4623;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< Async >>>>", v10, v8);
    return;
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11)
  {
    v12 = v11;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_GetCurrentTime_cold_1(&v15);
    }

    else
    {
      FigSimpleMutexLock();
      v13 = *(v5 + 2);
      if (v13)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v14)
        {
          v14(v13, a2);
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v12);
  }

  else
  {
    itemasync_GetCurrentTime_cold_2(&v16);
  }
}

void FigReadCacheThread()
{
  while (1)
  {
    v0 = gFigReadCache;
    if (!*(gFigReadCache + 40))
    {
      v43 = 0;
      goto LABEL_102;
    }

    v1 = FigSimpleMutexTryLock();
    v0 = gFigReadCache;
    if (!v1)
    {
      v43 = 0;
      v44 = 0;
      if (gFigReadCache)
      {
        goto LABEL_102;
      }

      goto LABEL_135;
    }

    *(gFigReadCache + 64) = *(gFigReadCache + 40);
    *(v0 + 80) = *(v0 + 56);
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    FigSimpleMutexUnlock();
    v0 = gFigReadCache;
    v2 = *(gFigReadCache + 64);
    do
    {
      v3 = (v0 + 64);
      v4 = *v2;
      v5 = *(v2 + 1);
      if (*v2)
      {
        v3 = (*v2 + 8);
      }

      *v3 = v5;
      v6 = (v0 + 72);
      if (v5)
      {
        v6 = v5;
      }

      *v6 = v4;
      *v2 = 0;
      *(v2 + 1) = 0;
      --*(v0 + 80);
      v7 = v2[4];
      if (v7 <= 4)
      {
        if (v7 > 1)
        {
          if (v7 != 2)
          {
            if (v7 == 3)
            {
              v24 = 0;
              while (1)
              {
                v25 = *(v2 + 3);
                v26 = *(gFigReadCache + 104);
                if ((*(v25 + 48) + (v26 - 1)) / v26 <= *(gFigReadCache + 304))
                {
                  v32 = *(v2 + 4);
                }

                else
                {
                  ScanForUnreferencedDataReadyEntries();
                  ScanForAbandonedEntries();
                  v27 = *(*(v2 + 4) + 24);
                  if (!v27)
                  {
                    v27 = *(gFigReadCache + 108) >> 2;
                  }

                  FigReadWriteLockLockForWrite();
                  if (v27 > *(gFigReadCache + 304))
                  {
                    v28 = FreeEntriesInGroup(3u, *(gFigReadCache + 144), v27);
                    if (v28)
                    {
                      v29 = FreeEntriesInGroup(2u, *(gFigReadCache + 144), v28);
                      if (v29)
                      {
                        v30 = FreeEntriesInGroup(1u, *(gFigReadCache + 144), v29);
                        if (v30)
                        {
                          if (!*(gFigReadCache + 304))
                          {
                            v33 = FreeEntriesInGroup(3u, 0, v30);
                            if (v33)
                            {
                              v34 = FreeEntriesInGroup(2u, 0, v33);
                              if (v34)
                              {
                                FreeEntriesInGroup(1u, 0, v34);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  FigReadWriteLockUnlockForWrite();
                  v31 = *(gFigReadCache + 304);
                  v32 = *(v2 + 4);
                  if (!*(v32 + 24))
                  {
                    v24 = v31 != 0;
                  }

                  if (!v31)
                  {
LABEL_68:
                    FigSemaphoreSignal();
                    if (v24)
                    {
                      v35 = gFigReadCache;
                      if (*(gFigReadCache + 304))
                      {
                        v36 = *(gFigReadCache + 144);
                        if (!v36)
                        {
                          goto LABEL_84;
                        }

                        v37 = *(v36 + 136);
                        if (!v37)
                        {
                          goto LABEL_84;
                        }

                        v38 = 0;
                        do
                        {
                          v35 = gFigReadCache;
                          v39 = *(gFigReadCache + 304);
                          if (v39)
                          {
                            v40 = v38 == 0;
                          }

                          else
                          {
                            v40 = 0;
                          }

                          if (!v40)
                          {
                            goto LABEL_83;
                          }

                          FigSimpleMutexLock();
                          if (CFGetRetainCount(v37) < 2)
                          {
                            v38 = 0;
                          }

                          else
                          {
                            v38 = PopulateCacheContainer(v37, 0) ^ 1;
                          }

                          FigSimpleMutexUnlock();
                          v37 = v37[17];
                        }

                        while (v37);
                        v35 = gFigReadCache;
                        v39 = *(gFigReadCache + 304);
LABEL_83:
                        if (v39)
                        {
LABEL_84:
                          *(v35 + 157) = 1;
                        }
                      }
                    }

                    goto LABEL_92;
                  }

                  v26 = *(gFigReadCache + 104);
                  v25 = *(v2 + 3);
                }

                if (!PopulateCacheContainer(v25, *(v32 + 8) / v26 * v26) || FillFromCacheContainer(*(v2 + 3), *(v2 + 4)) || !*(*(v2 + 4) + 16))
                {
                  goto LABEL_68;
                }
              }
            }

            v8 = *(v2 + 3);
            if (v8)
            {
              CFRelease(*(v2 + 3));
              --*(gFigReadCache + 160);
              if (CFGetRetainCount(v8) <= 1)
              {
                FigSimpleMutexLock();
                v9 = *(v8 + 104);
                if (v9)
                {
                  do
                  {
                    v10 = *(v9 + 64);
                    if (*v9 == 1)
                    {
                      v11 = *(v9 + 56);
                      v12 = (v11 + 64);
                      if (!v11)
                      {
                        v12 = (v8 + 104);
                      }

                      *v12 = v10;
                      v13 = (v10 + 56);
                      if (!v10)
                      {
                        v13 = (v8 + 112);
                      }

                      *v13 = v11;
                      *(v9 + 56) = 0;
                      *(v9 + 64) = 0;
                      --*(v8 + 120);
                      MoveToVGroup(v9, 4u, 1);
                      RecycleCacheEntry(v9);
                    }

                    v9 = v10;
                  }

                  while (v10);
                }

                if (*(gFigReadCache + 304))
                {
                  *(gFigReadCache + 157) = 1;
                }

                v14 = *(v8 + 88);
                if (v14)
                {
                  CFRelease(v14);
                  *(v8 + 88) = 0;
                }

                FigSimpleMutexUnlock();
                if (!*(v8 + 120))
                {
                  DeleteCacheContainer(v8);
                }
              }
            }

LABEL_88:
            free(v2);
            goto LABEL_92;
          }

          v62 = 0;
          memset(v61, 0, sizeof(v61));
          if (!FigFileGetFileInfo())
          {
            FindFileInCacheAndCopyContainer(*(v2 + 3), v61, v2 + 7);
          }

LABEL_91:
          FigSemaphoreSignal();
          goto LABEL_92;
        }

        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_92;
          }

          Count = CFArrayGetCount(*(v2 + 3));
          if (Count >= 1)
          {
            v17 = Count;
            for (i = 0; i != v17; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 3), i);
              LoadOneFile(ValueAtIndex, 0);
            }
          }

          goto LABEL_87;
        }

        v22 = *(v2 + 3);
        v23 = 0;
LABEL_86:
        LoadOneFile(v22, v23);
LABEL_87:
        CFRelease(*(v2 + 3));
        goto LABEL_88;
      }

      if (v7 < 7)
      {
        if (v7 == 5)
        {
          v22 = *(v2 + 3);
          v23 = 1;
          goto LABEL_86;
        }

        v20 = *(v2 + 3);
        v21 = 0;
        goto LABEL_45;
      }

      if (v7 <= 7)
      {
        v20 = *(v2 + 3);
        v21 = 1;
LABEL_45:
        LoadOneByteStreamForOpenFile(v20, v21);
        goto LABEL_87;
      }

      switch(v7)
      {
        case 8:
          v15 = *(gFigReadCache + 120);
          if (v15)
          {
            while (!*(v15 + 96) || *(v15 + 88) != *(v2 + 4))
            {
              v15 = *(v15 + 136);
              if (!v15)
              {
                goto LABEL_91;
              }
            }

            *(v2 + 7) = CFRetain(v15);
            ++*(gFigReadCache + 160);
          }

          goto LABEL_91;
        case 9:
          v41 = v2;
          v42 = 0;
          break;
        case 10:
          v41 = v2;
          v42 = 1;
          break;
        default:
          goto LABEL_92;
      }

      HandleAddOneFileAndCopyContainer(v41, v42);
LABEL_92:
      v0 = gFigReadCache;
      v2 = *(gFigReadCache + 64);
    }

    while (v2);
    v43 = 1;
LABEL_102:
    if (*(v0 + 156))
    {
      *(v0 + 156) = 1;
      v45 = *(v0 + 120);
      if (!v45)
      {
        goto LABEL_113;
      }

      do
      {
        v46 = *(v45 + 136);
        FigSimpleMutexLock();
        v47 = *(v45 + 104);
        *(v45 + 152) = 0;
        if (v47)
        {
          while (*v47 != 2)
          {
            v49 = *(v47 + 56);
            v48 = *(v47 + 64);
            v50 = (v49 + 64);
            if (!v49)
            {
              v50 = (v45 + 104);
            }

            *v50 = v48;
            v51 = (v48 + 56);
            if (!v48)
            {
              v51 = (v45 + 112);
            }

            *v51 = v49;
            *(v47 + 56) = 0;
            *(v47 + 64) = 0;
            --*(v45 + 120);
            v47 = v48;
            if (!v48)
            {
              goto LABEL_111;
            }
          }

          goto LABEL_121;
        }

LABEL_111:
        FigSimpleMutexUnlock();
        DeleteCacheContainer(v45);
        v45 = v46;
      }

      while (v46);
      v0 = gFigReadCache;
LABEL_113:
      if (*(v0 + 108))
      {
        v52 = 0;
        v53 = 48;
        do
        {
          v54 = *(*(v0 + 112) + v53);
          if (v54)
          {
            CFRelease(v54);
            v0 = gFigReadCache;
          }

          ++v52;
          v53 += 104;
        }

        while (v52 < *(v0 + 108));
      }

      v55 = *(v0 + 168);
      if (v55)
      {
        CFRelease(v55);
        v0 = gFigReadCache;
      }

      free(*(v0 + 112));
      free(gFigReadCache);
      gFigReadCache = 0;
LABEL_121:
      v44 = 1;
    }

    else if (*(v0 + 152) && (v56 = *(v0 + 120)) != 0)
    {
      v44 = 0;
      do
      {
        for (j = *(v56 + 104); j; j = *(j + 64))
        {
          if (*j == 1)
          {
            FigSimpleMutexLock();
            if (*j == 1)
            {
              ReadDataForCacheEntry(v56, j);
              v44 = 1;
            }

            FigSimpleMutexUnlock();
            v0 = gFigReadCache;
          }

          if (*(v0 + 40))
          {
            break;
          }
        }

        v56 = *(v56 + 136);
      }

      while (v56);
    }

    else
    {
      v44 = 0;
    }

LABEL_135:
    if (!(v44 | v43))
    {
      ScanForUnreferencedDataReadyEntries();
      ScanForAbandonedEntries();
      v58 = gFigReadCache;
      if (!*(gFigReadCache + 176) && *(gFigReadCache + 164) >= 1)
      {
        v59 = *(gFigReadCache + 120);
        if (v59)
        {
          do
          {
            FigSimpleMutexLock();
            if (v59[18] && CFGetRetainCount(v59) <= 1)
            {
              v60 = v59[18];
              if (v60)
              {
                os_release(v60);
                v59[18] = 0;
              }

              --*(gFigReadCache + 164);
            }

            FigSimpleMutexUnlock();
            v59 = v59[17];
          }

          while (v59);
          v58 = gFigReadCache;
        }
      }

      if (*(v58 + 156) || !*(v58 + 157))
      {
        FigSemaphoreWaitRelative();
      }

      else
      {
        *(v58 + 157) = 0;
      }
    }
  }
}

uint64_t LoadOneFile(const void *a1, uint64_t a2)
{
  v2 = a2;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = FigFileGetFileInfo();
  if (!result)
  {
    result = FindFileInCacheAndCopyContainer(a1, v5, 0);
    if (!result)
    {
      return CreateAndLoadNewContainerInCacheAndReturnContainer(a1, 0, v5, v2, 0);
    }
  }

  return result;
}

uint64_t RegisterFigReadCacheContainerType()
{
  result = _CFRuntimeRegisterClass();
  sFigReadCacheContainerID = result;
  return result;
}

double FRCContainerInit(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AssureContainerFileIsOpen(uint64_t a1)
{
  if (*(a1 + 96))
  {
    if (!*(a1 + 88))
    {
      AssureContainerFileIsOpen_cold_1(&v3);
      return v3;
    }

    return 0;
  }

  if (!*(a1 + 144))
  {
    *(a1 + 144) = FigOSTransactionCreate();
    ++*(gFigReadCache + 164);
  }

  if (*(a1 + 88))
  {
    return 0;
  }

  FigGetDefaultManagedFilePool();

  return FigManagedFilePoolCreateByteStreamForFile();
}

uint64_t PopulateCacheContainer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 153);
  if (!v2)
  {
    v5 = (a1 + 104);
    v6 = *(a1 + 104);
    while (1)
    {
      if (v6)
      {
        while (1)
        {
          v7 = v6[3];
          if (a2 == v7)
          {
            break;
          }

          v8 = a2 >= v7;
          if (a2 >= v7)
          {
            v6 = v6[8];
            if (v6)
            {
              continue;
            }
          }

          goto LABEL_10;
        }

        v12 = *(gFigReadCache + 104);
        v10 = *(a1 + 48);
      }

      else
      {
        v8 = 1;
LABEL_10:
        v9 = *(gFigReadCache + 288);
        if (!v9)
        {
          return v2;
        }

        MoveToVGroup(*(gFigReadCache + 288), 0, 0);
        FigAtomicIncrement32();
        *v9 = 1;
        v10 = *(a1 + 48);
        v11 = v10 - a2;
        v12 = *(gFigReadCache + 104);
        if (v10 - a2 >= v12)
        {
          v11 = *(gFigReadCache + 104);
        }

        *(v9 + 24) = a2;
        *(v9 + 32) = v11 + a2;
        *(v9 + 8) = a1;
        *(v9 + 16) = 0;
        if (v8)
        {
          v13 = *(a1 + 112);
          if (v13)
          {
            *(v13 + 64) = v9;
            *(v9 + 56) = v13;
          }

          else
          {
            *v5 = v9;
          }

          *(a1 + 112) = v9;
        }

        else
        {
          v14 = v6[7];
          v15 = v5;
          if (v14)
          {
            *(v9 + 56) = v14;
            v15 = (v6[7] + 64);
          }

          *(v9 + 64) = v6;
          *v15 = v9;
          v6[7] = v9;
        }

        ++*(a1 + 120);
        v2 = 1;
      }

      a2 += v12;
      if (a2 >= v10)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t ReadDataForCacheEntry(uint64_t a1, uint64_t a2)
{
  result = AssureContainerFileIsOpen(a1);
  if (!result)
  {
    if (*(a2 + 72))
    {
      MoveToVGroup(a2, 0, 0);
    }

    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    v7 = *(a1 + 88);
    v8 = *(a2 + 40);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v10 = v6 - v5;
      v12 = 0;
      result = v9(v7, v10, v5, v8, &v12);
      if (result)
      {
        v11 = 0;
      }

      else
      {
        v11 = v12 == v10;
      }

      if (v11)
      {
        *a2 = 3;
        FigAtomicDecrement32();
        return 0;
      }
    }

    else
    {
      result = 4294954514;
    }

    *a2 = 4;
  }

  return result;
}

uint64_t FigReadCacheContainerGetByteStream(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t FigCachedFileByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E6960DB8]))
  {
    goto LABEL_2;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960E08]))
  {
    StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF90]))
  {
LABEL_2:
    v8 = MEMORY[0x1E695E4D0];
LABEL_3:
    StatsDictionary = CFRetain(*v8);
LABEL_6:
    *a4 = StatsDictionary;
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FFA8]))
  {
    v8 = MEMORY[0x1E695E4C0];
    goto LABEL_3;
  }

  v11 = *(DerivedStorage + 8);

  return CMByteStreamCopyProperty(v11, a2, a3, a4);
}

double IsReferenceMovie(uint64_t a1, BOOL *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    OUTLINED_FUNCTION_0_15();
    if (!FigAtomStreamInitWithByteStream())
    {
      v5 = FigAtomStreamPositionViaAtomPath();
      if (a2)
      {
        *a2 = v5 == 0;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954805, "<<<< RefMovieParsing >>>>", 455, v2);
  }

  return result;
}

uint64_t FigCachedFileByteStreamRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 0)
  {
    FigCachedFileByteStreamRead_cold_2(&v17);
    return v17;
  }

  if (!a4)
  {
    FigCachedFileByteStreamRead_cold_1(&v17);
    return v17;
  }

  v10 = DerivedStorage;
  if (*(DerivedStorage + 120))
  {
    v17 = 0;
    v11 = *(DerivedStorage + 40);
    if (a2 && v11 <= a3)
    {
      v12 = 4294954423;
      if (!a5)
      {
        return v12;
      }
    }

    else
    {
      if (a3 + a2 <= v11)
      {
        v16 = a2;
      }

      else
      {
        v16 = v11 - a3;
      }

      FigGetUpTimeNanoseconds();
      v12 = FigReadCacheContainerReadBytes(*(v10 + 24), a3, (v16 + a3), *(v10 + 32), a4, &v17);
      FigGetUpTimeNanoseconds();
      FigByteStreamStatsLogOneRead();
      if (!a5)
      {
        return v12;
      }
    }

    *a5 = v17;
    return v12;
  }

  v13 = *(DerivedStorage + 8);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  return v14(v13, a2, a3, a4, a5);
}

uint64_t ReadBBufOrCopyBytes(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3, void *a4, CMBlockBufferRef *a5, uint64_t a6, void *a7)
{
  BlockBuffer_0 = 4294955046;
  if (!a1 || !gFigReadCache || *(gFigReadCache + 156) || !*(a1 + 152))
  {
    return BlockBuffer_0;
  }

  v27 = 0;
  *theBuffer = 0u;
  v26 = 0u;
  v24 = 0;
  v11 = *(a1 + 48);
  if (v11 <= a2)
  {
    return 4294954423;
  }

  if (a2 == a3)
  {
    return 4294954424;
  }

  if (v11 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(a1 + 48);
  }

  v17 = v16 - a2;
  theBuffer[1] = a2;
  v26 = (v16 - a2);
  LOBYTE(v27) = 1;
  v28 = a6;
  v29 = 0;
  BlockBuffer_0 = FillFromCacheContainer(a1, theBuffer);
  v18 = v26;
  if (!*(a1 + 153) && v26)
  {
    IssueCacheMissRequest(a1, a4, theBuffer);
    v18 = v26;
  }

  if (v18)
  {
    targetBBuf = 0;
    FigSimpleMutexLock();
    IsOpen = AssureContainerFileIsOpen(a1);
    if (IsOpen)
    {
      BlockBuffer_0 = IsOpen;
      goto LABEL_19;
    }

    v20 = *(a1 + 88);
    v21 = v16 - v26;
    if (a6)
    {
      BlockBuffer_0 = CMByteStreamRead_0(v20, v26, v21, a6 + v29, &v24);
      if (!BlockBuffer_0)
      {
        *&v26 = v26 - v24;
        v29 += v24;
      }

      goto LABEL_19;
    }

    BlockBuffer_0 = CMByteStreamReadAndCreateBlockBuffer_0(v20, v26, v21, &targetBBuf, &v24);
    if (BlockBuffer_0 || !v24)
    {
      if (theBuffer[0])
      {
        CFRelease(theBuffer[0]);
      }

      theBuffer[0] = 0;
      goto LABEL_19;
    }

    if (theBuffer[0])
    {
      CMBlockBufferAppendBufferReference(theBuffer[0], targetBBuf, 0, 0, 0);
      if (targetBBuf)
      {
        CFRelease(targetBBuf);
      }
    }

    else
    {
      theBuffer[0] = targetBBuf;
    }

    BlockBuffer_0 = 0;
LABEL_46:
    *&v26 = v26 - v24;
    goto LABEL_19;
  }

  if (v27)
  {
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  BlockBuffer_0 = AssureContainerFileIsOpen(a1);
  if (!BlockBuffer_0)
  {
    if (a6)
    {
      v22 = CMByteStreamRead_0(*(a1 + 88), v16 - a2, a2, a6, &v24);
    }

    else
    {
      if (theBuffer[0])
      {
        CFRelease(theBuffer[0]);
      }

      theBuffer[0] = 0;
      v22 = CMByteStreamReadAndCreateBlockBuffer_0(*(a1 + 88), v16 - a2, a2, theBuffer, &v24);
    }

    BlockBuffer_0 = v22;
    if (!v22)
    {
      goto LABEL_46;
    }
  }

LABEL_19:
  FigSimpleMutexUnlock();
LABEL_21:
  if (a5)
  {
    *a5 = theBuffer[0];
  }

  if (a7)
  {
    *a7 = v17 - v26;
  }

  return BlockBuffer_0;
}

uint64_t FillFromCacheContainer(void *a1, uint64_t a2)
{
  FigReadWriteLockLockForRead();
  FigSimpleMutexLock();
  v4 = a1[13];
  if (v4)
  {
    DataForCacheEntry = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      if (!v6)
      {
        goto LABEL_36;
      }

      v7 = *(a2 + 8);
      v8 = *(v4 + 24);
      v9 = v7 - v8;
      if (v7 >= v8)
      {
        v10 = *(v4 + 32);
        v11 = v10 > v7;
        v12 = v10 - v7;
        if (v11)
        {
          break;
        }
      }

      if (v7 <= v8)
      {
        *(a2 + 24) = v8 / *(gFigReadCache + 104) - v7 / *(gFigReadCache + 104);
        goto LABEL_36;
      }

LABEL_31:
      v4 = *(v4 + 64);
      if (!v4)
      {
        goto LABEL_36;
      }
    }

    if (v6 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v6;
    }

    *(v4 + 16) = FigGetUpTimeNanoseconds();
    if (!*(a2 + 40))
    {
      if (*a2)
      {
        appended = CMBlockBufferAppendBufferReference(*a2, *(v4 + 48), v9, v13, 0);
      }

      else
      {
        *(gFigReadCache + 144) = a1;
        appended = CMBlockBufferCreateWithBufferReference(0, *(v4 + 48), v9, v13, 0, a2);
      }

      DataForCacheEntry = appended;
      if (appended)
      {
        goto LABEL_36;
      }
    }

    if (!*(v4 + 96))
    {
      *(v4 + 96) = 1;
      FigAtomicIncrement32();
    }

    if (*(v4 + 72))
    {
      v15 = MoveToVGroup(v4, 0, 0);
      v16 = *v4;
      if (*v4 != 3 || !v15)
      {
        goto LABEL_24;
      }

      *v4 = 1;
      FigAtomicIncrement32();
    }

    v16 = *v4;
LABEL_24:
    if (v16 != 3)
    {
      FigSimpleMutexLock();
      if (*v4 != 3)
      {
        DataForCacheEntry = ReadDataForCacheEntry(a1, v4);
        if (DataForCacheEntry)
        {
          *(a2 + 32) = 0;
        }
      }

      FigSimpleMutexUnlock();
    }

    v17 = *(a2 + 40);
    if (v17 && *(a2 + 32))
    {
      CMBlockBufferCopyDataBytes(*(v4 + 48), v9, v13, (v17 + *(a2 + 48)));
      *(a2 + 48) += v13;
    }

    v6 = *(a2 + 16) - v13;
    *(a2 + 8) += v13;
    *(a2 + 16) = v6;
    goto LABEL_31;
  }

  DataForCacheEntry = 0;
LABEL_36:
  FigSimpleMutexUnlock();
  FigReadWriteLockUnlockForRead();
  return DataForCacheEntry;
}

uint64_t playerfig_prepareWorkingItem2(const char *a1, const __CFDictionary *a2, void *a3)
{
  v1012 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = DerivedStorage;
  HIDWORD(v995) = 2;
  *v935 = *MEMORY[0x1E6960CC0];
  *theArray = *MEMORY[0x1E6960CC0];
  v16 = *(MEMORY[0x1E6960CC0] + 16);
  v993 = v16;
  v994 = 0;
  v17 = &unk_1EAF16000;
  v976 = a1;
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = OUTLINED_FUNCTION_28_0(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v886, v901, v916, v935[0], v935[1], v962, a1, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
    v17 = cf;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v18 = cf;
    }

    else
    {
      v18 = cf & 0xFFFFFFFE;
    }

    if (v18)
    {
      if (a1)
      {
        v17 = CMBaseObjectGetDerivedStorage() + 972;
      }

      else
      {
        v17 = "";
      }

      v19 = *(v15 + 536);
      if (v19)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v999 = 136316162;
      OUTLINED_FUNCTION_22_0();
      v1000 = v17;
      *v1001 = v20;
      *&v1001[2] = v19;
      a1 = v21;
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, type[0], v28);
      OUTLINED_FUNCTION_225_0();
    }

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_210_0(v29, v30, v31, v32, v33);
  }

  v34 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v35 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v35 = "";
    }

    strncpy(&__dst, v35, 8uLL);
    os_log_and_send_and_compose_flags_and_os_log_type = __dst.value;
    if (*(v15 + 536))
    {
      v36 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v36 = "";
    }

    strncpy(&__dst, v36, 8uLL);
    kdebug_trace();
  }

  if (!*(v15 + 536))
  {
    OUTLINED_FUNCTION_256_0();
    v46 = 0;
    v47 = 1;
    goto LABEL_115;
  }

  if (!*(v15 + 60))
  {
    OUTLINED_FUNCTION_54_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v48 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    if (OUTLINED_FUNCTION_109_0(v48))
    {
      *v999 = 136315394;
      *&v999[4] = "playerfig_prepareWorkingItem2";
      *&v999[12] = 2048;
      *&v999[14] = a1;
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, v54, type[0], v55);
    }

    OUTLINED_FUNCTION_109();
    v47 = 1;
    OUTLINED_FUNCTION_524(v93, 0, 1, v94, v95);
    OUTLINED_FUNCTION_256_0();
    v46 = 0;
    goto LABEL_114;
  }

  if (a3)
  {
LABEL_27:
    FigSimpleMutexLock();
    os_log_and_send_and_compose_flags_and_os_log_type = *(v15 + 536);
    v37 = CMBaseObjectGetDerivedStorage();
    HIDWORD(v901) = os_log_and_send_and_compose_flags_and_os_log_type == 0;
    if (os_log_and_send_and_compose_flags_and_os_log_type)
    {
      CFRetain(os_log_and_send_and_compose_flags_and_os_log_type);
    }

    v887 = a3;
    if (*(v37 + 1632) == 0.0)
    {
      *(v37 + 1632) = CFAbsoluteTimeGetCurrent();
    }

    if (*(v37 + 1976) == 0.0)
    {
      *(v37 + 1976) = CFAbsoluteTimeGetCurrent();
      *(v37 + 2224) = CFAbsoluteTimeGetCurrent();
      v38 = CMBaseObjectGetDerivedStorage();
      v39 = *(v38 + 1976);
      if (v39 != 0.0)
      {
        v40 = v38;
        v41 = v17;
        v42 = *(v38 + 1968);
        FigSimpleMutexLock();
        v43 = *(v40 + 1952);
        if (v43)
        {
          v44 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v44)
          {
            v44(v43, @"playerStats", 0x1F0B66558, ((v39 - v42) * 1000.0), 0);
          }
        }

        FigSimpleMutexUnlock();
        v17 = v41;
      }
    }

    if (!a2)
    {
      v45 = a3;
      goto LABEL_69;
    }

    HIBYTE(v998) = 0;
    __dst = **&MEMORY[0x1E6960C70];
    v56 = CMBaseObjectGetDerivedStorage();
    *type = 0;
    cf = 0;
    if (!*(v56 + 1036))
    {
      goto LABEL_54;
    }

    v64 = v56;
    v65 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v65 || v65(os_log_and_send_and_compose_flags_and_os_log_type, &__dst))
    {
      goto LABEL_54;
    }

    if ((__dst.flags & 1) == 0)
    {
      *&__dst.value = *v935;
      __dst.epoch = v16;
    }

    v66 = *(v64 + 1008);
    v67 = *(v64 + 1036);
    v68 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v68 || v68(v66, v67, &cf, 0))
    {
      goto LABEL_54;
    }

    v69 = *MEMORY[0x1E695E480];
    FigTrackReaderGetFigBaseObject();
    v71 = v70;
    v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v72)
    {
      v72(v71, @"SecondaryEditCursorService", v69, type);
      if (*type)
      {
        v293 = OUTLINED_FUNCTION_255_0(*type, v73, v74, v75, v76, v77, v78, v79, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, a3, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, SWORD2(v998), SBYTE6(v998), SHIBYTE(v998), *v999, *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, *&__dst.value, __dst.epoch);
        v83 = HIBYTE(v998);
        v247 = *type;
        if (v293 | HIBYTE(v998))
        {
          v45 = v887;
          goto LABEL_196;
        }

        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }
      }
    }

    FigTrackReaderGetFigBaseObject();
    v81 = v80;
    v82 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v82)
    {
      v82(v81, @"EditCursorService", v69, type);
    }

    if (!*type)
    {
LABEL_54:
      v83 = 0;
      v45 = v887;
LABEL_55:
      v84 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v83)
      {
        if (dword_1EAF16A10 < 2)
        {
          a2 = 0;
        }

        else
        {
          v85 = OUTLINED_FUNCTION_28_0(v84, v57, v58, v59, v60, v61, v62, v63, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_428_0(v85, v86, v87, v88, v89, v90, v91, v92, valueb, v679, v694, v709, v724, v739, v754, v769, v784, v799, v814, v829, v844, v859, v873, v888, v902, v917, v936, v949, v963, v977, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (v17)
          {
            if (v976)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v999 = 136316162;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_45_0();
            _os_log_send_and_compose_impl(v96, v97, v98, v99, v100, v101, a2, v102);
            OUTLINED_FUNCTION_223_0();
          }

          v17 = v45;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_454(v103, v104, v105, v106, v107);
          a2 = 0;
          v45 = v887;
        }
      }

LABEL_69:
      OUTLINED_FUNCTION_110();
      v112 = itemfig_rebuildRenderPipelinesAndBossGuts(v108, v109, v110, a2, v111, v45, 0, 0);
      if (v112)
      {
        v46 = v112;
        if (dword_1EAF16A10)
        {
          v120 = v112;
          v121 = OUTLINED_FUNCTION_28_0(v112, v113, v114, v115, v116, v117, v118, v119, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_110_0(v121, v122, v123, v124, v125, v126, v127, v128, valuec, v680, v695, v710, v725, v740, v755, v770, v785, v800, v815, v830, v845, v860, v874, v889, v903, v918, v937, v950, v964, v978, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (!v17)
          {
LABEL_93:
            v17 = v45;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_454(v165, v166, v167, v168, v169);
            a2 = 0;
            v47 = BYTE4(v901);
LABEL_94:
            v46 = v120;
            goto LABEL_95;
          }

          if (v976)
          {
            v129 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v129 = "";
          }

          if (!os_log_and_send_and_compose_flags_and_os_log_type)
          {
LABEL_77:
            *v999 = 136316418;
            OUTLINED_FUNCTION_22_0();
            v1000 = v129;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_86_0();
            *(v130 + 255) = v120;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v131, v132, v133, v134, v135, v136, a2, v137);
            OUTLINED_FUNCTION_223_0();
            goto LABEL_93;
          }

LABEL_76:
          CMBaseObjectGetDerivedStorage();
          goto LABEL_77;
        }

        goto LABEL_86;
      }

      itemfig_assureContentProtectionReadyForInspection(os_log_and_send_and_compose_flags_and_os_log_type);
      v138 = *(v37 + 1200);
      if (v138)
      {
        v139 = *(v15 + 888);
        VTable = CMBaseObjectGetVTable();
        v143 = *(VTable + 8);
        v142 = VTable + 8;
        v144 = *(v143 + 56);
        if (v144)
        {
          v142 = v144(v138, @"DisplayList", v139);
          v46 = v142;
          v145 = v976;
          if (!v142)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_186();
            v146 = FigNotificationCenterAddWeakListener();
            if (v146)
            {
              v46 = v146;
              if (dword_1EAF16A10)
              {
                v120 = v146;
                v148 = OUTLINED_FUNCTION_28_0(v146, v147, v114, v115, v116, v117, v118, v119, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
                OUTLINED_FUNCTION_110_0(v148, v149, v150, v151, v152, v153, v154, v155, valued, v681, v696, v711, v726, v741, v756, v771, v786, v801, v816, v831, v846, v861, v875, v890, v904, v919, v938, v951, v965, v979, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
                OUTLINED_FUNCTION_70();
                if (v17)
                {
                  if (v976)
                  {
                    v156 = (CMBaseObjectGetDerivedStorage() + 972);
                  }

                  else
                  {
                    v156 = "";
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  *v999 = 136316418;
                  OUTLINED_FUNCTION_22_0();
                  v1000 = v156;
                  OUTLINED_FUNCTION_3_0();
                  OUTLINED_FUNCTION_86_0();
                  *(v295 + 255) = v120;
                  OUTLINED_FUNCTION_35_0();
                  OUTLINED_FUNCTION_51_0();
                  _os_log_send_and_compose_impl(v296, v297, v298, v299, v300, v301, a2, v302);
                  OUTLINED_FUNCTION_223_0();
                }

                v47 = BYTE4(v901);
                v17 = v45;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_454(v303, v304, v305, v306, v307);
                a2 = 0;
                goto LABEL_94;
              }

LABEL_86:
              a2 = 0;
LABEL_87:
              v47 = BYTE4(v901);
              goto LABEL_95;
            }

            goto LABEL_165;
          }
        }

        else
        {
          v46 = 4294954514;
          v145 = v976;
        }

        if (dword_1EAF16A10)
        {
          v120 = v46;
          v157 = OUTLINED_FUNCTION_28_0(v142, v141, v114, v115, v116, v117, v118, v119, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_110_0(v157, v158, v159, v160, v161, v162, v163, v164, valuee, v682, v697, v712, v727, v742, v757, v772, v787, v802, v817, v832, v847, v862, v876, v891, v905, v920, v939, v952, v966, v980, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (!v17)
          {
            goto LABEL_93;
          }

          if (v145)
          {
            v129 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v129 = "";
          }

          if (!os_log_and_send_and_compose_flags_and_os_log_type)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        a2 = 0;
        goto LABEL_87;
      }

LABEL_165:
      itemfig_ExternalProtectionStatusChangedGuts(os_log_and_send_and_compose_flags_and_os_log_type);
      if (*(v37 + 1640) == 0.0)
      {
        *(v37 + 1640) = CFAbsoluteTimeGetCurrent();
      }

      itemfig_getDurationIfReady(os_log_and_send_and_compose_flags_and_os_log_type, theArray);
      FigSimpleMutexLock();
      *&__dst.value = *theArray;
      __dst.epoch = v993;
      v261 = round(CMTimeGetSeconds(&__dst));
      v262 = *(v37 + 1952);
      v263 = v976;
      if (v262)
      {
        v264 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v264)
        {
          v264(v262, @"playerStats", 0x1F0B3F238, (v261 * 1000.0), 0);
        }
      }

      FigSimpleMutexUnlock();
      OUTLINED_FUNCTION_221_0();
      if (v183)
      {
        v294 = 0;
        v47 = BYTE4(v901);
        goto LABEL_291;
      }

      if (*(v15 + 544) != os_log_and_send_and_compose_flags_and_os_log_type)
      {
        if (dword_1EAF16A10 >= 2)
        {
          v273 = OUTLINED_FUNCTION_28_0(v265, v266, v267, v268, v269, v270, v271, v272, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_135_0(v273, v274, v275, v276, v277, v278, v279, v280, valuef, v684, v699, v714, v729, v744, v759, v774, v789, v804, v819, v834, v849, v863, v877, v892, v906, v925, v940, v953, v967, v983, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v263)
            {
              v281 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v281 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v999 = 136316162;
            OUTLINED_FUNCTION_22_0();
            v1000 = v281;
            v263 = v323;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0(v324, v325, &__dst, v326, &dword_1962D5000, v327, v328, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> we're not doing gapless, so start the render pipeline right now");
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_210_0(v329, v330, v331, v332, v333);
        }

        v334 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v334, v335);
        v336 = OUTLINED_FUNCTION_113_0(MEMORY[0x1E6960C70], value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, *v999, *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, *&__dst.value, __dst.epoch);
        v47 = BYTE4(v901);
        if (v336)
        {
          v46 = v336;
          if (!dword_1EAF16A10)
          {
            a2 = 0;
            goto LABEL_95;
          }

          v337 = v336;
          OUTLINED_FUNCTION_54_0();
          v338 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_110_0(v338, v339, v340, v341, v342, v343, v344, v345, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (v17)
          {
            if (v263)
            {
              v346 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v346 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v999 = 136316418;
            OUTLINED_FUNCTION_22_0();
            v1000 = v346;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_86_0();
            *(v347 + 255) = v337;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v348, v349, v350, v351, v352, v353, a2, v354);
            OUTLINED_FUNCTION_223_0();
          }

          OUTLINED_FUNCTION_187_0();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_454(v355, v356, v357, v358, v359);
          a2 = 0;
LABEL_332:
          v47 = BYTE4(v901);
          v46 = v337;
          goto LABEL_95;
        }

        v294 = 0;
LABEL_291:
        if (*(v15 + 568) && os_log_and_send_and_compose_flags_and_os_log_type == OUTLINED_FUNCTION_233_0())
        {
          itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(os_log_and_send_and_compose_flags_and_os_log_type, *(v15 + 576));
          started = FigPlaybackBossStartPreroll(*(v37 + 352), *(v37 + 512), *(v37 + 512), *(v15 + 572));
          v46 = started;
          *(v15 + 568) = 0;
          if (started && dword_1EAF16A10)
          {
            LODWORD(v935[0]) = started;
            OUTLINED_FUNCTION_54_0();
            v471 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v472 = type[0];
            os_log_type_enabled(v471, type[0]);
            OUTLINED_FUNCTION_106_0();
            if (v46)
            {
              if (v263)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (os_log_and_send_and_compose_flags_and_os_log_type)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v999 = 136316418;
              OUTLINED_FUNCTION_0_0();
              *&v1001[20] = 1024;
              *&v1001[22] = v935[0];
              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl(v502, v503, v504, v505, v506, v507, v472, v508);
              v47 = BYTE4(v901);
            }

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_417(v509, v510, v511, v512, v513);
            v263 = v976;
            v46 = LODWORD(v935[0]);
          }
        }

        else
        {
          v46 = 0;
        }

        v464 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v464 + 536) && ((Count = CFArrayGetCount(*(v464 + 528)), v1013.location = 0, v1013.length = Count, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v464 + 528), v1013, *(v464 + 536)), v467 = FirstIndexOfValue + 1, FirstIndexOfValue != -1) ? (v468 = v467 < Count) : (v468 = 0), v263 = v976, v468))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v464 + 528), v467);
          CFRetain(ValueAtIndex);
          FigSimpleMutexUnlock();
          if (ValueAtIndex)
          {
            v474 = CMBaseObjectGetDerivedStorage();
            itemfig_makePlaybackPrerequisitePropertiesReady(ValueAtIndex, 0, v475, v476, v477, v478, v479, v480, value, v678, v693, SWORD2(v693), SBYTE6(v693), HIBYTE(v693), v708, SWORD2(v708), SBYTE6(v708), SHIBYTE(v708), v723, SHIDWORD(v723), v738, SWORD2(v738), v753, v768, v783, v798, SHIDWORD(v798), v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, *v999, *&v999[8], *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, __dst.value);
            if (*(v474 + 992))
            {
              itemfig_lookForLyrics(ValueAtIndex);
              *(v474 + 992) = 0;
            }

            CFRelease(ValueAtIndex);
            if (*(v15 + 853) && dword_1EAF16A10)
            {
              OUTLINED_FUNCTION_129_0();
              v488 = OUTLINED_FUNCTION_117_0(qword_1EAF16A08, v481, v482, v483, v484, v485, v486, v487, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v930, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
              v489 = type[0];
              os_log_type_enabled(v488, type[0]);
              OUTLINED_FUNCTION_106_0();
              if (v46)
              {
                if (v976)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *v999 = 136315650;
                OUTLINED_FUNCTION_46_0();
                *&v999[14] = v976;
                OUTLINED_FUNCTION_290_0();
                OUTLINED_FUNCTION_36_0();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl(v542, v543, v544, v545, v546, v547, v489, v548);
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_417(v549, v550, v551, v552, v553);
            }

            *(v15 + 853) = 0;
            v17 = 0x1EAF16000;
            v47 = BYTE4(v901);
            a2 = v294;
            goto LABEL_95;
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }

        v17 = 0x1EAF16000;
        a2 = v294;
        if (!*(v15 + 853))
        {
          *(v15 + 853) = 1;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_54_0();
            v469 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v17 = type[0];
            os_log_type_enabled(v469, type[0]);
            OUTLINED_FUNCTION_106_0();
            if (v46)
            {
              if (v263)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v999 = 136315650;
              OUTLINED_FUNCTION_46_0();
              *&v999[14] = v263;
              OUTLINED_FUNCTION_290_0();
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_45_0();
              _os_log_send_and_compose_impl(v490, v491, v492, v493, v494, v495, v17, v496);
            }

            OUTLINED_FUNCTION_187_0();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_417(v497, v498, v499, v500, v501);
            a2 = v294;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

LABEL_95:
        if (os_log_and_send_and_compose_flags_and_os_log_type)
        {
          if (v46)
          {
            v170 = *(v37 + 128);
            LODWORD(__dst.value) = v46;
            v171 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &__dst);
            if (v171)
            {
              v242 = OUTLINED_FUNCTION_627();
              FailedNotificationPayloadWithContentStream = itemfig_createFailedNotificationPayloadWithContentStream(v242, v243);
              v245 = v171;
              v171 = FailedNotificationPayloadWithContentStream;
              CFRelease(v245);
            }

            *(v37 + 1306) = 0;
            v172 = CFDictionaryGetValue(v171, @"CFError");
            itemfig_reportingAgentReportError(os_log_and_send_and_compose_flags_and_os_log_type, v172, @"CoreMediaErrorDomain", @"Failed to become ready for playback", v46);
            if (dword_1EAF16A10)
            {
              v921 = a2;
              v173 = v46;
              OUTLINED_FUNCTION_129_0();
              OUTLINED_FUNCTION_59_0();
              v174 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_434_0(v174, v175, v176, v177, v178, v179, v180, v181, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v921, @"FailedToBecomeReadyForPlayback", v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_425();
              if (v183)
              {
                v184 = v182;
              }

              else
              {
                v184 = v170;
              }

              if (v184)
              {
                if (v981)
                {
                  v185 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v185 = "";
                }

                CMBaseObjectGetDerivedStorage();
                *v999 = 136316418;
                OUTLINED_FUNCTION_46_0();
                *&v999[14] = v981;
                *&v999[22] = 2082;
                v1000 = v185;
                OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_86_0();
                *(v186 + 255) = v173;
                OUTLINED_FUNCTION_35_0();
                v187 = OUTLINED_FUNCTION_78_0();
                _os_log_send_and_compose_impl(v187, v188, v189, v190, v191, v37, v17, v192);
                v47 = v915;
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_635(v193, v194, v195, v196, v197);
              v46 = v173;
              a2 = v922;
            }
          }

          else
          {
            if (!*(v37 + 600))
            {
              NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v976, os_log_and_send_and_compose_flags_and_os_log_type, v114, v115, v116, v117, v118, v119, @"PlayableTimeIntervals", 0);
              DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_425_0(DefaultLocalCenter, DefaultLocalCenter, @"PlayableRangeChanged");
              if (NotificationPayloadForProperties)
              {
                CFRelease(NotificationPayloadForProperties);
              }
            }

            v218 = playerfig_createNotificationPayloadForProperties(v976, os_log_and_send_and_compose_flags_and_os_log_type, v114, v115, v116, v117, v118, v119, @"SeekableTimeIntervals", 0);
            v219 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_425_0(v219, v219, @"SeekableRangeChanged");
            if (v218)
            {
              CFRelease(v218);
            }

            v833 = @"HasDiscoveredVideo";
            v848 = 0;
            v803 = @"HasEnabledAudio";
            v818 = @"HasEnabledVideo";
            v773 = @"VideoTrackMatrix";
            v788 = @"DisplayNonForcedSubtitles";
            v743 = @"CurrentDimensions";
            v758 = @"VideoSlotArray";
            v713 = @"SupportsFrameStepping";
            v728 = @"CurrentDuration";
            v698 = @"CanPlayReverse";
            v923 = playerfig_createNotificationPayloadForProperties(v976, os_log_and_send_and_compose_flags_and_os_log_type, v220, v221, v222, v223, v224, v225, @"CanPlayFastForward", @"CanPlayFastReverse");
            *(v37 + 1306) = 1;
            if (*(v37 + 2032) == 0.0)
            {
              *(v37 + 2032) = CFAbsoluteTimeGetCurrent();
              v282 = CMBaseObjectGetDerivedStorage();
              if (*(v282 + 1744))
              {
                v37 = v282;
                LODWORD(__dst.value) = 0;
                *v999 = 0;
                FigSimpleMutexLock();
                if (*(v37 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  v283 = OUTLINED_FUNCTION_149_0();
                  v284(v283);
                }

                if (*(v37 + 1952))
                {
                  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
                  {
                    v285 = OUTLINED_FUNCTION_149_0();
                    v286(v285);
                  }

                  if (*(v37 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                  {
                    v287 = OUTLINED_FUNCTION_149_0();
                    v288(v287);
                  }
                }

                itemfig_GetDimensions();
                if (*(v37 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  v289 = OUTLINED_FUNCTION_307_0();
                  v290(v289);
                }

                if (*(v37 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  v291 = OUTLINED_FUNCTION_307_0();
                  v292(v291);
                }

                FigSimpleMutexUnlock();
              }

              itemfig_networkActivitySubmitMetricsForInitialStartupIfAvailable(os_log_and_send_and_compose_flags_and_os_log_type);
            }

            v226 = os_log_and_send_and_compose_flags_and_os_log_type;
            v227 = *(v15 + 528);
            v228 = MEMORY[0x1E695FF58];
            v171 = v923;
            if (v227 && CFArrayGetCount(v227) && OUTLINED_FUNCTION_233_0() == v226)
            {
              if (!FigUseVideoReceiverForCALayer())
              {
                itemfig_handleReadyToDisplayVideoLatch(v226, 3, v887);
              }

              playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(v976, v226, MEMORY[0x1E6960C70], v317, v318, v319, v320, v321, valuea, v683, @"CanPlayReverse", @"SupportsFrameStepping", @"CurrentDuration", @"CurrentDimensions", @"VideoSlotArray", @"VideoTrackMatrix", @"DisplayNonForcedSubtitles", @"HasEnabledAudio", @"HasEnabledAudio" >> 32, @"HasEnabledVideo", @"HasDiscoveredVideo", 0, v858, v872, v887, v901, v923, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, *v999, *&v999[8], *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, __dst.value, *&__dst.timescale, __dst.epoch, v1005, v1006, v1007, v1008, v1009, v1010, v1011);
            }

            if (dword_1EAF16A10)
            {
              v229 = v46;
              OUTLINED_FUNCTION_129_0();
              OUTLINED_FUNCTION_59_0();
              v230 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_434_0(v230, v231, v232, v233, v234, v235, v236, v237, valuea, v683, v698, v713, v728, v743, v758, v773, v788, v803, v818, v833, v848, v858, v872, v887, v901, v923, @"ReadyForPlayback", v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_425();
              if (v183)
              {
                v239 = v238;
              }

              else
              {
                v239 = &kFigPlaybackItemNotification_ReadyForPlayback;
              }

              if (v239)
              {
                if (v982)
                {
                  v240 = v982;
                  v241 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v240 = 0;
                  v241 = "";
                }

                CMBaseObjectGetDerivedStorage();
                *v999 = 136316162;
                OUTLINED_FUNCTION_46_0();
                *&v999[14] = v240;
                *&v999[22] = 2082;
                v1000 = v241;
                *v1001 = v248;
                *&v1001[2] = v226;
                OUTLINED_FUNCTION_12_0();
                v249 = OUTLINED_FUNCTION_78_0();
                _os_log_send_and_compose_impl(v249, v250, v251, v252, v253, v37, v17, v254);
                v171 = v924;
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_635(v255, v256, v257, v258, v259);
              v228 = MEMORY[0x1E695FF58];
              v46 = v229;
            }

            if (*v228 == 1)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = v226;
              v260 = CMBaseObjectGetDerivedStorage();
              strncpy(&__dst, (v260 + 2096), 8uLL);
              OUTLINED_FUNCTION_197();
              kdebug_trace();
            }

            else
            {
              os_log_and_send_and_compose_flags_and_os_log_type = v226;
            }

            v47 = BYTE4(v901);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_201_0();
          OUTLINED_FUNCTION_171_0();
          FigDispatchAsyncPostNotification();
          if (v171)
          {
            CFRelease(v171);
          }

          CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
        }

        FigSimpleMutexUnlock();
LABEL_114:
        v34 = MEMORY[0x1E695FF58];
        goto LABEL_115;
      }

      *(v15 + 544) = 0;
      if (dword_1EAF16A10 >= 2)
      {
        OUTLINED_FUNCTION_54_0();
        v308 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_428_0(v308, v309, v310, v311, v312, v313, v314, v315, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
        OUTLINED_FUNCTION_70();
        if (v17)
        {
          if (v263)
          {
            v316 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v316 = "";
          }

          if (os_log_and_send_and_compose_flags_and_os_log_type)
          {
            v360 = (CMBaseObjectGetDerivedStorage() + 2096);
          }

          else
          {
            v360 = "";
          }

          v361 = "does not have an";
          *v999 = 136316418;
          if (!HIDWORD(v995))
          {
            v361 = "created new";
          }

          *&v999[4] = "playerfig_prepareWorkingItem2";
          *&v999[12] = 2048;
          if (HIDWORD(v995) == 1)
          {
            v361 = "reused";
          }

          *&v999[14] = v976;
          *&v999[22] = 2082;
          v1000 = v316;
          v263 = v976;
          *v1001 = 2048;
          *&v1001[2] = os_log_and_send_and_compose_flags_and_os_log_type;
          *&v1001[10] = 2082;
          *&v1001[12] = v360;
          *&v1001[20] = 2082;
          *&v1001[22] = v361;
          OUTLINED_FUNCTION_36_0();
          OUTLINED_FUNCTION_45_0();
          _os_log_send_and_compose_impl(v362, v363, v364, v365, v366, v367, a2, v368);
          OUTLINED_FUNCTION_223_0();
        }

        OUTLINED_FUNCTION_187_0();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_454(v369, v370, v371, v372, v373);
      }

      if (HIDWORD(v995) != 1)
      {
        v374 = OUTLINED_FUNCTION_233_0();
        if (v374 != os_log_and_send_and_compose_flags_and_os_log_type)
        {
          v47 = BYTE4(v901);
          if (HIDWORD(v995) == 2)
          {
            if (dword_1EAF16A10 >= 2)
            {
              v382 = OUTLINED_FUNCTION_28_0(v374, v375, v376, v377, v378, v379, v380, v381, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_135_0(v382, v383, v384, v385, v386, v387, v388, v389, valueg, v685, v700, v715, v730, v745, v760, v775, v790, v805, v820, v835, v850, v864, v878, v893, v907, v926, v941, v954, v968, v984, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_37();
              if (a2)
              {
                if (v976)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                if (os_log_and_send_and_compose_flags_and_os_log_type)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *v999 = 136316162;
                OUTLINED_FUNCTION_0_0();
                OUTLINED_FUNCTION_33_0();
                OUTLINED_FUNCTION_43_0(v434, v435, &__dst, v436, &dword_1962D5000, v437, v438, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> we do not have an audio render pipeline so we'll preroll while lame duck continues playing");
                OUTLINED_FUNCTION_225_0();
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_210_0(v439, v440, v441, v442, v443);
              v263 = v976;
              v47 = BYTE4(v901);
            }

            v444 = OUTLINED_FUNCTION_410();
            itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v444, v445);
            v374 = FigPlaybackBossStartPreroll(*(v37 + 352), *(v37 + 512), *(v37 + 512), *(v15 + 48));
          }

          if (dword_1EAF16A10 >= 2)
          {
            v446 = OUTLINED_FUNCTION_28_0(v374, v375, v376, v377, v378, v379, v380, v381, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_135_0(v446, v447, v448, v449, v450, v451, v452, v453, valuej, v688, v703, v718, v733, v748, v763, v778, v793, v808, v823, v838, v853, v867, v881, v896, v910, v929, v944, v957, v971, v987, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_37();
            if (a2)
            {
              if (v263)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (os_log_and_send_and_compose_flags_and_os_log_type)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v999 = 136316162;
              OUTLINED_FUNCTION_0_0();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_43_0(v454, v455, &__dst, v456, &dword_1962D5000, v457, v458, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> we have a new (or no) audio render pipeline and a lame duck is playing, so we'll start it in the lame duck's ReachedEnd callback");
              OUTLINED_FUNCTION_225_0();
            }

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_210_0(v459, v460, v461, v462, v463);
            v263 = v976;
            v47 = BYTE4(v901);
          }

          v294 = 0;
          *(v37 + 625) = 1;
          goto LABEL_289;
        }

        if (dword_1EAF16A10 >= 2)
        {
          v390 = OUTLINED_FUNCTION_28_0(v374, v375, v376, v377, v378, v379, v380, v381, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_135_0(v390, v391, v392, v393, v394, v395, v396, v397, valueh, v686, v701, v716, v731, v746, v761, v776, v791, v806, v821, v836, v851, v865, v879, v894, v908, v927, v942, v955, v969, v985, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v976)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v999 = 136316162;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0(v413, v414, &__dst, v415, &dword_1962D5000, v416, v417, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> we have a new (or no) audio render pipeline and no lame duck, so we'll start it right now");
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_210_0(v418, v419, v420, v421, v422);
          v263 = v976;
        }

        v423 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v423, v424);
        v425 = OUTLINED_FUNCTION_113_0(MEMORY[0x1E6960C70], value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, *v999, *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, *&__dst.value, __dst.epoch);
        if (v425)
        {
          v337 = v425;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_129_0();
            OUTLINED_FUNCTION_59_0();
            v426 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_110_0(v426, v427, v428, v429, v430, v431, v432, v433, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_70();
            if (v17)
            {
              if (v976)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (os_log_and_send_and_compose_flags_and_os_log_type)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v999 = 136316418;
              OUTLINED_FUNCTION_0_0();
              OUTLINED_FUNCTION_86_0();
              *(v514 + 255) = v337;
              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_51_0();
              _os_log_send_and_compose_impl(v515, v516, v517, v518, v519, v520, a2, v521);
              OUTLINED_FUNCTION_223_0();
            }

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_454(v522, v523, v524, v525, v526);
          }

          a2 = 0;
          goto LABEL_332;
        }

        v294 = 0;
LABEL_272:
        v47 = BYTE4(v901);
LABEL_289:
        if ((HIDWORD(v995) - 1) <= 1)
        {
          playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem(v263);
        }

        goto LABEL_291;
      }

      v263 = v916;
      v872 = v15;
      if (fp_audioPipelineIsRunning())
      {
        if (dword_1EAF16A10 >= 2)
        {
          OUTLINED_FUNCTION_129_0();
          v534 = OUTLINED_FUNCTION_117_0(qword_1EAF16A08, v527, v528, v529, v530, v531, v532, v533, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v15, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_135_0(v534, v535, v536, v537, v538, v539, v540, v541, valuek, v689, v704, v719, v734, v749, v764, v779, v794, v809, v824, v839, v854, v868, v882, v897, v911, v931, v945, v958, v972, v988, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v976)
            {
              v17 = CMBaseObjectGetDerivedStorage() + 972;
            }

            else
            {
              v17 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v999 = 136316162;
            OUTLINED_FUNCTION_46_0();
            *&v999[14] = v976;
            *&v999[22] = 2082;
            v1000 = v17;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0(v586, v587, &__dst, v588, &dword_1962D5000, v589, v590, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> doing the funky Boss start-when-ready thing that will take effect after the lame duck finishes");
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_449(v591, v592, v593, v594, v595);
        }

        fp_bumpTransitionNumber(v976);
        v596 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v596, v597);
        itemfig_applyLoudnessInfo(os_log_and_send_and_compose_flags_and_os_log_type, *(v37 + 1036), 0, 1);
        v598 = FigPlaybackBossPrerollAndScheduleGaplessStart(*(v37 + 352), *(v872 + 560), *(v37 + 512), *(v872 + 48));
        if (v598)
        {
          v337 = v598;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_129_0();
            v606 = OUTLINED_FUNCTION_117_0(qword_1EAF16A08, v599, v600, v601, v602, v603, v604, v605, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_110_0(v606, v607, v608, v609, v610, v611, v612, v613, valuem, v691, v706, v721, v736, v751, v766, v781, v796, v811, v826, v841, v856, v870, v884, v899, v913, v933, v947, v960, v974, v990, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_70();
            if (!v17)
            {
              goto LABEL_387;
            }

            if (v976)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (!os_log_and_send_and_compose_flags_and_os_log_type)
            {
              goto LABEL_386;
            }

            goto LABEL_385;
          }
        }

        else
        {
          v614 = playerfig_setExitTransitionIDOnItemPrecedingWorkingItem(v976, *(v872 + 560));
          if (!v614)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              v17 = &unk_1EAF16000;
              OUTLINED_FUNCTION_376();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v678, v693);
              v46 = v662;
              a2 = 0;
              OUTLINED_FUNCTION_369_0();
              goto LABEL_87;
            }

            v631 = Mutable;
            if (*(v872 + 1140))
            {
              FigCFDictionarySetValueOrCFNull();
            }

            cf = 0;
            itemfig_getTrackStorage(os_log_and_send_and_compose_flags_and_os_log_type, *(v37 + 1036), &cf);
            FigCFDictionarySetValueOrCFNull();
            FigCFDictionarySetValueOrCFNull();
            if (CFDictionaryGetCount(v631) >= 1)
            {
              v15 = FigRenderPipelineSetPropertiesToUpdateAtTransition(*(v872 + 584), *(v872 + 560), v631);
              v645 = FigCFDictionaryCopyArrayOfKeys();
              v646 = FigCFCopyCompactDescription();
              if (dword_1EAF16A10)
              {
                *type = 0;
                HIBYTE(v998) = 0;
                v647 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v648 = *type;
                LODWORD(v935[0]) = HIBYTE(v998);
                if (os_log_type_enabled(v647, HIBYTE(v998)))
                {
                  v649 = v648;
                }

                else
                {
                  v649 = v648 & 0xFFFFFFFE;
                }

                if (v649)
                {
                  if (v976)
                  {
                    v263 = (CMBaseObjectGetDerivedStorage() + 972);
                  }

                  else
                  {
                    v263 = "";
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  *v999 = 136316674;
                  OUTLINED_FUNCTION_0_0();
                  *&v1001[20] = 2114;
                  *&v1001[22] = v646;
                  *&v1001[30] = 1024;
                  LODWORD(v1002) = v15;
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_51_0();
                  _os_log_send_and_compose_impl(v650, v651, v652, v653, v654, v655, LODWORD(v935[0]), v656);
                }

                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_449(v657, v658, v659, v660, v661);
              }

              if (v645)
              {
                CFRelease(v645);
              }

              if (v646)
              {
                CFRelease(v646);
              }
            }

            OUTLINED_FUNCTION_369_0();
            v47 = BYTE4(v901);
            v294 = v631;
            goto LABEL_289;
          }

          v337 = v614;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_129_0();
            v622 = OUTLINED_FUNCTION_117_0(qword_1EAF16A08, v615, v616, v617, v618, v619, v620, v621, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_110_0(v622, v623, v624, v625, v626, v627, v628, v629, valuen, v692, v707, v722, v737, v752, v767, v782, v797, v812, v827, v842, v857, v871, v885, v900, v914, v934, v948, v961, v975, v991, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_70();
            if (!v17)
            {
              goto LABEL_387;
            }

            if (v976)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (!os_log_and_send_and_compose_flags_and_os_log_type)
            {
              goto LABEL_386;
            }

            goto LABEL_385;
          }
        }
      }

      else
      {
        if (dword_1EAF16A10 >= 2)
        {
          OUTLINED_FUNCTION_129_0();
          v405 = OUTLINED_FUNCTION_117_0(qword_1EAF16A08, v398, v399, v400, v401, v402, v403, v404, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v15, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_135_0(v405, v406, v407, v408, v409, v410, v411, v412, valuei, v687, v702, v717, v732, v747, v762, v777, v792, v807, v822, v837, v852, v866, v880, v895, v909, v928, v943, v956, v970, v986, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v976)
            {
              v263 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v263 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v999 = 136316162;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0(v554, v555, &__dst, v556, &dword_1962D5000, v557, v558, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> the audio pipeline is stopped, so we will start it right now");
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_449(v559, v560, v561, v562, v563);
        }

        OUTLINED_FUNCTION_439();
        itemfig_applyLoudnessInfo(v564, v565, v566, v567);
        v568 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v568, v569);
        v570 = OUTLINED_FUNCTION_113_0(MEMORY[0x1E6960C70], value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, *v999, *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, *&__dst.value, __dst.epoch);
        if (!v570)
        {
          v294 = 0;
          OUTLINED_FUNCTION_369_0();
          goto LABEL_272;
        }

        v337 = v570;
        if (dword_1EAF16A10)
        {
          OUTLINED_FUNCTION_129_0();
          v578 = OUTLINED_FUNCTION_117_0(qword_1EAF16A08, v571, v572, v573, v574, v575, v576, v577, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_110_0(v578, v579, v580, v581, v582, v583, v584, v585, valuel, v690, v705, v720, v735, v750, v765, v780, v795, v810, v825, v840, v855, v869, v883, v898, v912, v932, v946, v959, v973, v989, theArray[0], theArray[1], v993, v994, v995, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (!v17)
          {
            goto LABEL_387;
          }

          if (v976)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (!os_log_and_send_and_compose_flags_and_os_log_type)
          {
LABEL_386:
            *v999 = 136316418;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_86_0();
            *(v632 + 255) = v337;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl(v633, v634, v635, v636, v637, v638, a2, v639);
            OUTLINED_FUNCTION_223_0();
LABEL_387:
            OUTLINED_FUNCTION_187_0();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_454(v640, v641, v642, v643, v644);
            a2 = 0;
            goto LABEL_388;
          }

LABEL_385:
          CMBaseObjectGetDerivedStorage();
          goto LABEL_386;
        }
      }

      a2 = 0;
      v17 = 0x1EAF16000;
LABEL_388:
      OUTLINED_FUNCTION_369_0();
      goto LABEL_332;
    }

    v246 = OUTLINED_FUNCTION_255_0(*type, v57, v58, v59, v60, v61, v62, v63, value, v678, v693, v708, v723, v738, v753, v768, v783, v798, v813, v828, v843, v858, v872, v887, v901, v916, v935[0], v935[1], v962, v976, theArray[0], theArray[1], v993, v994, v995, *type, cf, v998, SWORD2(v998), SBYTE6(v998), SHIBYTE(v998), *v999, *&v999[16], v1000, *v1001, *&v1001[8], *&v1001[16], *&v1001[24], v1002, v1003, *&__dst.value, __dst.epoch);
    v83 = HIBYTE(v998);
    v247 = *type;
    v45 = v887;
    if (!v246 && !HIBYTE(v998) && *type)
    {
      CFRelease(*type);
      v83 = 0;
      *type = 0;
      goto LABEL_55;
    }

LABEL_196:
    if (v247)
    {
      CFRelease(v247);
    }

    goto LABEL_55;
  }

  if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v994))
  {
    a3 = v994;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_256_0();
  v47 = 1;
  v46 = v322;
LABEL_115:
  FigDeferredTransactionCommit(v994, 0);
  if (v994)
  {
    CFRelease(v994);
  }

  if (*v34 == 1)
  {
    kdebug_trace();
  }

  if (dword_1EAF16A10 >= 2)
  {
    OUTLINED_FUNCTION_54_0();
    v198 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v199 = cf;
    v200 = type[0];
    os_log_type_enabled(v198, type[0]);
    OUTLINED_FUNCTION_189();
    if (v183)
    {
      v202 = v201;
    }

    else
    {
      v202 = v199;
    }

    if (v202)
    {
      if ((v47 & 1) == 0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v999 = 136315906;
      OUTLINED_FUNCTION_46_0();
      *&v999[14] = os_log_and_send_and_compose_flags_and_os_log_type;
      OUTLINED_FUNCTION_290_0();
      *v1001 = 1024;
      *&v1001[2] = v46;
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl(v203, v204, v205, v206, v207, v208, v200, v209);
    }

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_524(v210, v211, v212, v213, v214);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v46;
}

uint64_t playerasync_reflectSubPlayerNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a5, @"AVController_Volume");
    if (!Value)
    {
      goto LABEL_11;
    }

    v8 = Value;
    v9 = DerivedStorage + 80;
    FigSimpleMutexLock();
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;
    v11 = v8;
    goto LABEL_7;
  }

  if (!FigCFEqual())
  {
    goto LABEL_11;
  }

  v12 = DerivedStorage + 80;
  FigSimpleMutexLock();
  v10 = *(v12 + 16);
  *(v12 + 16) = a5;
  if (a5)
  {
    v11 = a5;
LABEL_7:
    CFRetain(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  FigSimpleMutexUnlock();
LABEL_11:
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

double ensureRegistryInitialized()
{
  MEMORY[0x19A8D3660](&ensureRegistryInitialized_sInitRegistryOnce, initRegistry);
  if (!_MergedGlobals_29 || !CFArrayGetCount(_MergedGlobals_29))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFFFFFLL, "<<< FFR_Common >>>", 2554, v0);
  }

  return result;
}

void initRegistry()
{
  _MergedGlobals_29 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  FigFormatReaderCreatePropertyListDictionaryFromCString("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>video/mp4</key>\t<array>\t\t<string>audio/mp4</string>\t\t<string>audio/x-m4a</string>\t\t<string>audio/x-m4b</string>\t\t<string>audio/x-m4p</string>\t\t<string>video/x-m4v</string>\t\t<string>audio/x-m4r</string>\t\t<string>video/3gpp</string>\t\t<string>audio/3gpp</string>\t\t<string>video/3gpp2</string>\t\t<string>audio/3gpp2</string>\t\t<string>application/mp4</string>\t</array>\t<key>video/quicktime</key>\t<array>\t\t<string>audio/x-quicktime</string>\t</array>\t<key>audio/vnd.wave</key>\t<array>\t\t<string>audio/wav</string>\t\t<string>audio/x-wav</string>\t\t<string>audio/wave</string>\t</array>\t<key>audio/mpeg</key>\t<array>\t\t<string>audio/mpa</string>\t\t<string>audio/x-mpeg</string>\t\t<string>audio/mpg</string>\t\t<string>audio/x-mpg</string>\t\t<string>audio/mpeg3</string>\t\t<string>audio/x-mpeg3</string>\t\t<string>audio/mp3</string>\t\t<string>audio/x-mp3</string>\t</array>\t<key>audio/aac</key>\t<array>\t\t<string>audio/x-aac</string>\t</array>\t<key>video/mp2t</key>\t<array>\t\t<string>video/x-mp2t</string>\t\t<string>video/m2ts</string>\t\t<string>video/x-m2ts</string>\t</array>\t<key>audio/aiff</key>\t<array>\t\t<string>audio/x-aiff</string>\t</array>\t<key>video/vnd.avi</key>\t<array>\t\t<string>video/avi</string>\t\t<string>video/msvideo</string>\t\t<string>video/x-msvideo</string>\t</array></dict></plist>", 0, &qword_1ED4CA6E8);
  if (v0 || RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MooV</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/quicktime</string>\t\t\t<string>video/mp4</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mov</string>\t\t\t<string>qt</string>\t\t\t<string>qta</string>\t\t\t<string>mqv</string>\t\t\t<string>mp4</string>\t\t\t<string>m4a</string>\t\t\t<string>m4v</string>\t\t\t<string>m4b</string>\t\t\t<string>m4p</string>\t\t\t<string>m4r</string>\t\t\t<string>aax</string>\t\t\t<string>3gp</string>\t\t\t<string>3gpp</string>\t\t\t<string>3g2</string>\t\t\t<string>3gp2</string>\t\t\t<string>aivu</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.apple.quicktime-movie</string>\t\t\t<string>com.apple.quicktime-audio</string>\t\t\t<string>public.mpeg-4</string>\t\t\t<string>public.mpeg-4-audio</string>\t\t\t<string>com.apple.m4a-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio-b</string>\t\t\t<string>com.apple.m4v-video</string>\t\t\t<string>com.apple.mpeg-4-ringtone</string>\t\t\t<string>com.audible.aax-audiobook</string>\t\t\t<string>public.3gpp</string>\t\t\t<string>public.3gpp2</string>\t\t\t<string>com.apple.immersive-video</string>\t\t</array>\t</dict></dict></plist>", InstantiateMovieFormatReader) || RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/vnd.avi</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>avi</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.avi</string>\t\t</array>\t</dict></dict></plist>", InstantiateAVIFormatReader))
  {
    return;
  }

  v1 = CFPreferencesCopyValue(@"CombinedAudioFormatReader", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v1)
  {
    goto LABEL_5;
  }

  v4 = v1;
  if (CFEqual(v1, @"AudioFile"))
  {
    qword_1ED4CA6F0 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t\t<string>AIFF</string>\t\t\t<string>AIFC</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/vnd.wave</string>\t\t\t<string>audio/aiff</string>\t\t\t<string>audio/x-caf</string>\t\t\t<string>audio/basic</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aif</string>\t\t\t<string>aiff</string>\t\t\t<string>aifc</string>\t\t\t<string>wav</string>\t\t\t<string>w64</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>caf</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>aa</string>\t\t\t<string>au</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp2</string>\t\t\t<string>public.mp3</string>\t\t\t<string>public.aiff-audio</string>\t\t\t<string>public.aifc-audio</string>\t\t\t<string>com.microsoft.waveform-audio</string>\t\t\t<string>com.sony.wave64</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>com.apple.coreaudio-format</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>com.audible.aa-audiobook</string>\t\t\t<string>public.au-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
    *algn_1ED4CA6F8 = InstantiateAudioFileFormatReader;
    CFRelease(v4);
  }

  else
  {
    v5 = CFEqual(v4, @"AudioFileStream");
    v6 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t\t<string>AIFF</string>\t\t\t<string>AIFC</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/vnd.wave</string>\t\t\t<string>audio/aiff</string>\t\t\t<string>audio/x-caf</string>\t\t\t<string>audio/basic</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aif</string>\t\t\t<string>aiff</string>\t\t\t<string>aifc</string>\t\t\t<string>wav</string>\t\t\t<string>w64</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>caf</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>aa</string>\t\t\t<string>au</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp2</string>\t\t\t<string>public.mp3</string>\t\t\t<string>public.aiff-audio</string>\t\t\t<string>public.aifc-audio</string>\t\t\t<string>com.microsoft.waveform-audio</string>\t\t\t<string>com.sony.wave64</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>com.apple.coreaudio-format</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>com.audible.aa-audiobook</string>\t\t\t<string>public.au-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
    if (v5)
    {
      v7 = InstantiateAudioFileStreamFormatReader;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    qword_1ED4CA6F0 = v6;
    *algn_1ED4CA6F8 = v7;
    CFRelease(v4);
    if (!v5)
    {
LABEL_5:
      if (RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>AIFF</string>\t\t\t<string>AIFC</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/vnd.wave</string>\t\t\t<string>audio/aiff</string>\t\t\t<string>audio/x-caf</string>\t\t\t<string>audio/basic</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>aif</string>\t\t\t<string>aiff</string>\t\t\t<string>aifc</string>\t\t\t<string>caf</string>\t\t\t<string>aa</string>\t\t\t<string>wav</string>\t\t\t<string>au</string>\t\t\t<string>w64</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.aiff-audio</string>\t\t\t<string>public.aifc-audio</string>\t\t\t<string>com.apple.coreaudio-format</string>\t\t\t<string>com.audible.aa-audiobook</string>\t\t\t<string>com.microsoft.waveform-audio</string>\t\t\t<string>public.au-audio</string>\t\t\t<string>com.sony.wave64</string>\t\t</array>\t</dict></dict></plist>", InstantiateAudioFileFormatReader))
      {
        return;
      }

      v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp3</string>\t\t\t<string>public.mp2</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
      v3 = InstantiateAudioFileStreamFormatReader;
      goto LABEL_15;
    }
  }

  v2 = qword_1ED4CA6F0;
  v3 = *algn_1ED4CA6F8;
LABEL_15:
  if (!RegisterStaticFormatReader(v2, v3) && !RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/vtt</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>vtt</string>\t\t\t<string>webvtt</string>\t\t</array>\t\t\t<key>com.apple.uti</key>\t\t\t<array>\t\t\t\t<string>org.w3.webvtt</string>\t\t\t</array>\t</dict></dict></plist>", InstantiateWebVTTFormatReader) && !RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/scc</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>scc</string>\t\t\t<string>sc2</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.scenarist.closed-caption</string>\t\t</array>\t</dict></dict></plist>", InstantiateSCCFormatReader))
  {

    RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>application/ttml+xml</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>itt</string>\t\t\t<string>ttml</string>\t\t</array>\t</dict></dict></plist>", InstantiateTTMLFormatReader);
  }
}

uint64_t FigThingFind(uint64_t a1, uint64_t *a2)
{
  v3 = gAllFigThings;
  if (gAllFigThings)
  {
    while (1)
    {
      v5 = *a1;
      if (!*a1 || (v6 = CFDictionaryGetValue(*(v3 + 8), @"FigThingType"), CFEqual(v5, v6)))
      {
        v7 = *(a1 + 8);
        if (!v7 || (v8 = CFDictionaryGetValue(*(v3 + 8), @"FigThingSubtype"), CFEqual(v7, v8)))
        {
          v9 = *(a1 + 16);
          if (!v9)
          {
            break;
          }

          Value = CFDictionaryGetValue(*(v3 + 8), @"FigThingManufacturer");
          if (CFEqual(v9, Value))
          {
            break;
          }
        }
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    *a2 = v3;
  }

LABEL_11:
  if (*a2)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t QTMovieFormatReaderCreateFromStream(const void *a1, const __CFAllocator *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5)
{
  FigFormatReaderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"Instantiation_AllowIncrementalFragmentParsing");
    v12 = *MEMORY[0x1E695E4D0];
    if (Value == *MEMORY[0x1E695E4D0])
    {
      v13 = 19;
    }

    else
    {
      v13 = 0;
    }

    if (Value == *MEMORY[0x1E695E4D0])
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    CFDictionaryGetValue(a3, @"Instantiation_PrepareForCopying");
    OUTLINED_FUNCTION_8_49();
    CFDictionaryGetValue(a3, @"Instantiation_MovieProxy");
    OUTLINED_FUNCTION_8_49();
    CFDictionaryGetValue(a3, @"ReadEntireMoovAtom");
    OUTLINED_FUNCTION_8_49();
    if (CFDictionaryGetValue(a3, @"Instantiation_EnableAssetAnalysis") == v12)
    {
      FigAssetAnalysisReporterCreate();
    }

    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    CFDictionaryGetValue(a3, @"Instantiation_IgnoreDisabledAPACAudioTracks");
    OUTLINED_FUNCTION_8_49();
    v16 = CFDictionaryGetValue(a3, @"Instantiation_ParseExternalSphericalTags");
    v17 = v13 | 0x100;
    if (v16 != v12)
    {
      v17 = v13;
    }

    v18 = v17 | 2;
    v19 = Int32IfPresent == 0;
  }

  else
  {
    v14 = 0;
    v19 = 1;
    v18 = 2;
  }

  v9 = MovieInformationCreate(a2, v14, (DerivedStorage + 8));
  if (v9)
  {
    goto LABEL_27;
  }

  *DerivedStorage = CFRetain(a1);
  v20 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v20;
  if (!v20 || (v21 = FigSimpleMutexCreate(), (*(DerivedStorage + 72) = v21) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_27:
    TrackReaderDictionary = v9;
    goto LABEL_23;
  }

  if (!v19)
  {
    MovieInformationSetAudibleGroupID(*(DerivedStorage + 8), 0);
  }

  MoovParseByteStream(*(DerivedStorage + 8), v18, *DerivedStorage, 0);
  if (v9)
  {
    goto LABEL_27;
  }

  TrackReaderDictionary = CreateTrackReaderDictionary(a2, DerivedStorage);
  if (!TrackReaderDictionary)
  {
    *a4 = 0;
  }

LABEL_23:
  if (MoovIsParsingError(TrackReaderDictionary))
  {
    return 4294954448;
  }

  else
  {
    return TrackReaderDictionary;
  }
}

uint64_t RegisterFigFormatReader()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t playercentral_SetRate(OpaqueFigPlayer *a1, float a2)
{
  v4 = OUTLINED_FUNCTION_31_9(a1);
  v5 = v4;
  cf = 0;
  if (*(v4 + 8) || !*(v4 + 16))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_3:
    v7 = SetRateOptions;
    goto LABEL_4;
  }

  SetRateOptions = FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 0, &cf);
  if (SetRateOptions)
  {
    goto LABEL_3;
  }

  v9 = cf;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v10)
  {
    SetRateOptions = v10(v2, v9, v3);
    goto LABEL_3;
  }

  v7 = 4294954514;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v7)
  {
    *(v5 + 212) = v3;
  }

  return v7;
}

uint64_t playerfig_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  v8 = *a2;
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v4 = v6;
  v5 = v7;
  return playerfig_setRateGuts(a1, 0, &v8, &v6, &v4, 0, a3);
}

uint64_t playerfig_applySoftwareVolume(uint64_t a1, const void *a2, int a3, float a4, float a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a5;
  valuePtr = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = FigCFCopyCompactDescription();
  if (dword_1EAF16A10)
  {
    HIBYTE(v23) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (!*(DerivedStorage + 584) && !*(DerivedStorage + 664))
  {
    if (dword_1EAF16A10)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = 0;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"SoftwareVolume1"))
  {
    v14 = 0;
  }

  else if (CFEqual(a2, @"SoftwareVolume2"))
  {
    v14 = 0;
  }

  else
  {
    if (!CFEqual(a2, @"SoftwareVolume5"))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v23);
      v11 = v10;
LABEL_11:
      FigSimpleMutexUnlock();
      return v11;
    }

    v14 = 1;
  }

  if (a5 < 0.0)
  {
    v24 = 0.0;
  }

  v15 = *MEMORY[0x1E695E480];
  v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v17 = CFNumberCreate(v15, kCFNumberFloatType, &v24);
  if ((v14 & 1) == 0 && (v18 = fp_setPropertyOnAllAudioRenderPipelines(), v18))
  {
    v11 = v18;
  }

  else
  {
    v19 = fp_setPropertyOnAllAudioRenderPipelines();
    v11 = v19;
    if (a3 && !v19)
    {
      if (v24 > 0.0)
      {
        usleep((v24 * 1000.0 * 1000.0));
      }

      v11 = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v11;
}

uint64_t playerfig_setRateGuts(uint64_t a1, unsigned int a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v7 = a6;
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  HIBYTE(v78) = 0;
  *&v78 = a7;
  HIDWORD(v77) = 0;
  BYTE3(v77) = 0;
  HIDWORD(v76) = 0;
  BYTE3(v76) = 0;
  if (a7 != 0.0)
  {
    LOBYTE(__dst.value) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v15 = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if ((*(a5 + 12) & 1) == 0)
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  if ((*(a4 + 12) & 1) == 0)
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  v67 = @"RateChangeIdentifier";
  v72 = a2;
  FigSimpleMutexLock();
  v18 = *(DerivedStorage + 48);
  if (*(DerivedStorage + 52) == 4)
  {
    v19 = *(DerivedStorage + 48);
  }

  else
  {
    v19 = 0.0;
  }

  v69 = a3;
  if (!*(DerivedStorage + 57) || (*(a4 + 12) & 1) != 0 || (*(a5 + 12) & 1) != 0)
  {
    v15 = 2;
  }

  v20 = v15;
  if (v18 != a7)
  {
    playerfig_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(a1, 0);
  }

  v70 = a4;
  v21 = *(DerivedStorage + 56);
  v22 = *(DerivedStorage + 52);
  v23 = *(DerivedStorage + 536);
  v24 = v23 != 0;
  PlaythroughPrediction = itemfig_getPlaythroughPrediction(v23);
  NextPlaybackState = playerfig_getNextPlaybackState(a1, v72, v22, v18 != a7, v24, v21, v20, PlaythroughPrediction, a7, &v77 + 1, (DerivedStorage + 56), &v78 + 7, &v78);
  if (NextPlaybackState)
  {
    v16 = NextPlaybackState;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigSimpleMutexUnlock();
    return v16;
  }

  LODWORD(v16) = playerfig_enterPlaybackState(a1, HIDWORD(v77));
  if (v16)
  {
    LODWORD(time1.value) = 0;
    LOBYTE(type.value) = 0;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 48) = a7;
  v28 = CMBaseObjectGetDerivedStorage();
  if (a7 == 0.0)
  {
    v29 = *(v28 + 68);
  }

  else
  {
    v29 = 0;
  }

  if (*(a4 + 12) & 1) != 0 || (*(a5 + 12))
  {
    HIBYTE(v78) = 1;
  }

  v30 = *(v28 + 72);
  playerfig_updateResourceUsageOnGlobalResourceArbiter(a1, *(DerivedStorage + 536));
  FigSimpleMutexUnlock();
  HIDWORD(v68) = v30;
  if (a7 != 0.0 && v18 == 0.0 && v29 < v30)
  {
    if (dword_1EAF16A10)
    {
      HIDWORD(v66) = v29;
      LODWORD(time1.value) = 0;
      LOBYTE(type.value) = 0;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v29 = HIDWORD(v66);
    }

    playerfig_updateEffectiveResourceConservationLevel(a1, v31, v32, v33, v34, v35, v36, v37, v62, v63, v64[0], v64[1], HIBYTE(v64[1]), *&v64[2], v65, v66, @"RateChangeIdentifier", @"RateChangeIdentifier" >> 32, v68, v69, a4, v71, v72, type.value, *&type.timescale, type.epoch, v74, time1.value, *&time1.timescale, time1.epoch, v76, v77, v78, v79, v80, v81.value, *&v81.timescale, v81.epoch, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), __dst.value, *&__dst.timescale, __dst.epoch, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  }

  v38 = *(DerivedStorage + 528);
  if (v38 && CFArrayGetCount(v38) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  }

  else
  {
    ValueAtIndex = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (ValueAtIndex)
    {
      v40 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v40 = "";
    }

    strncpy(&__dst, v40, 8uLL);
    if (a1)
    {
      v41 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v41 = "";
    }

    strncpy(&__dst, v41, 8uLL);
    kdebug_trace();
  }

  if (HIBYTE(v78))
  {
    __dst = *v69;
    v81 = *a4;
    time1 = *a5;
    LODWORD(v16) = playerfig_setBossRateWithFade(a1, v72, &__dst, &v81, &time1, *&v78, v19);
    if (v16)
    {
      HIDWORD(v66) = v29;
      LODWORD(time1.value) = 0;
      LOBYTE(type.value) = 0;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = time1.value;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = value;
      }

      else
      {
        v44 = value & 0xFFFFFFFE;
      }

      if (v44)
      {
        if (a1)
        {
          v45 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v45 = "";
        }

        v46 = *&v78;
        Description = FigPlayerPlaybackStateGetDescription(*(DerivedStorage + 52));
        LODWORD(v81.value) = 136316418;
        *(&v81.value + 4) = "playerfig_setRateGuts";
        LOWORD(v81.flags) = 2048;
        *(&v81.flags + 2) = a1;
        HIWORD(v81.epoch) = 2082;
        v82 = v45;
        LOWORD(v83) = 2048;
        *(&v83 + 2) = v46;
        WORD5(v83) = 1024;
        HIDWORD(v83) = v16;
        LOWORD(v84) = 2082;
        *(&v84 + 2) = Description;
        LODWORD(v63) = 58;
        v62 = &v81;
        _os_log_send_and_compose_impl(v44, 0, &__dst, 128, &dword_1962D5000, v42, 0, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s failed to set boss rate to %.2f (err = %d). Current state %{public}s and boss rate may be inconsistent");
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (v18 != a7)
  {
    playerfig_setRateGuts_cold_1(a1, v72, v7, v67, v34, v35, v36, v37);
  }

  if (a7 == 0.0 && v18 != 0.0 && v29 > SHIDWORD(v68))
  {
    if (dword_1EAF16A10)
    {
      LODWORD(time1.value) = 0;
      LOBYTE(type.value) = 0;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = time1.value;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
      }

      else
      {
        v59 = v58 & 0xFFFFFFFE;
      }

      if (v59)
      {
        if (a1)
        {
          v60 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v60 = "";
        }

        LODWORD(v81.value) = 136315650;
        *(&v81.value + 4) = "playerfig_setRateGuts";
        LOWORD(v81.flags) = 2048;
        *(&v81.flags + 2) = a1;
        HIWORD(v81.epoch) = 2082;
        v82 = v60;
        LODWORD(v63) = 32;
        _os_log_send_and_compose_impl(v59, 0, &__dst, 128, &dword_1962D5000, v57, 0, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s ResourceConservationLevel becoming MORE conservative so calling playerfig_updateEffectiveResourceConservationLevel() after playback is paused", &v81);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a4 = v70;
    }

    playerfig_updateEffectiveResourceConservationLevel(a1, v31, v32, v33, v34, v35, v36, v37, v62, v63, v64[0], v64[1], HIBYTE(v64[1]), *&v64[2], v65, v66, v67, SWORD2(v67), v68, v69, v70, v71, v72, type.value, *&type.timescale, type.epoch, v74, time1.value, *&time1.timescale, time1.epoch, v76, v77, v78, v79, v80, v81.value, *&v81.timescale, v81.epoch, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), __dst.value, *&__dst.timescale, __dst.epoch, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  }

  if (v16)
  {
    v48 = 1;
  }

  else
  {
    v48 = ValueAtIndex == 0;
  }

  v49 = v48;
  if (v48)
  {
    v16 = v16;
  }

  else
  {
    v16 = 0;
  }

  if (a7 != 0.0 && (v49 & 1) == 0)
  {
    v50 = CMBaseObjectGetDerivedStorage();
    v51 = v50;
    __dst = *a4;
    if (*(v50 + 176))
    {
      v52 = (v50 + 164);
    }

    else
    {
      v52 = MEMORY[0x1E6960CC0];
    }

    v81 = *v52;
    v79 = *(v50 + 140);
    flags = *(v50 + 152);
    LODWORD(v80) = *(v50 + 148);
    epoch = *(v50 + 156);
    if ((__dst.flags & 1) != 0 || (CurrentTime = itemfig_GetCurrentTime(ValueAtIndex, &__dst), !CurrentTime))
    {
      if (flags)
      {
        goto LABEL_77;
      }

      time1 = **&MEMORY[0x1E6960C70];
      itemfig_getDurationIfReady(ValueAtIndex, &time1);
      if (!CurrentTime)
      {
        v79 = time1.value;
        flags = time1.flags;
        LODWORD(v80) = time1.timescale;
        epoch = time1.epoch;
LABEL_77:
        if (a7 < 0.0 && (time1 = __dst, type = v81, CMTimeCompare(&time1, &type) > 0) || a7 > 0.0 && (time1 = __dst, type.value = v79, type.timescale = v80, type.flags = flags, type.epoch = epoch, CMTimeCompare(&time1, &type) < 0))
        {
          v16 = 0;
          *(v51 + 2217) = 0;
          return v16;
        }

        return 0;
      }
    }

    return CurrentTime;
  }

  return v16;
}

uint64_t FigPlayerGetRate(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

double ParseChildAtoms(void *a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v22 = a5;
  v9 = 0;
  v10 = 0;
  v24 = 0;
  v11 = a4 + 4;
  v12 = a4 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_39_17();
    if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      return result;
    }

    if (a3 >= 1)
    {
      v14 = 0;
      v15 = v12;
      v16 = v11;
      while (*(v16 - 4))
      {
        ++v14;
        v16 += 16;
        v15 += 16;
        if (a3 == v14)
        {
          goto LABEL_14;
        }
      }

      v17 = 1 << v14;
      if ((*v16 & 1) != 0 && (v17 & v9) != 0)
      {
        MovieAtomReportChildAtomParsingFailureMessage(a1, 0, a2, "Repeated non-repeatable atom");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      }

      v9 |= v17;
      v18 = (*(v16 + 4))(a2, v22);
      if (v18 == 1937010544)
      {
LABEL_18:
        if (a3 >= 1)
        {
          v20 = 0;
          v21 = (a4 + 4);
          do
          {
            if ((*v21 & 2) != 0 && ((v9 >> v20) & 1) == 0)
            {
              MovieAtomReportChildAtomParsingFailureMessage(a1, *(v21 - 1), a2, "Missing mandatory atom");
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
            }

            ++v20;
            v21 += 16;
          }

          while (a3 != v20);
        }

        return result;
      }

      if (v18)
      {
        return result;
      }

      if ((*v16 & 4) != 0)
      {
        v10 = 1;
      }
    }

LABEL_14:
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom != -12890)
    {
      if (v10)
      {
        MovieAtomReportChildAtomParsingFailureMessage(a1, 0, a2, "Unexpected additional atom");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      }

      if (!Atom)
      {
        continue;
      }
    }

    goto LABEL_18;
  }
}

uint64_t GetFileTypeAtom(uint64_t a1)
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t GetMovieAtom(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  LODWORD(result) = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    memset(v4, 0, sizeof(v4));
    *(a2 + 40) = *(a2 + 48);
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result == -12890 || !result && (LODWORD(result) = FigAtomStreamGetCurrentAtomTypeAndDataLength(), !result))
    {
      LODWORD(result) = FigAtomStreamInitWithParent();
      if (!result)
      {
        figMDRW_ParseChildAtoms(v4, 3, &GetMovieAtom_atomDispatch, a2);
      }
    }
  }

  if (result)
  {
    return result;
  }

  else
  {
    return 1937010544;
  }
}

void playerasync_GetRate(const void *a1, _DWORD *a2)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954516;
    v10 = 4260;
    goto LABEL_5;
  }

  v6 = DerivedStorage;
  *a2 = 0;
  if (!*DerivedStorage)
  {
    v11 = playerasync_createCommand(a1, 10, 0, &v21);
    v12 = v21;
    if (!v11)
    {
      v21[4] = a2;
      v13 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(v13 + 6))
      {
        v14 = *(v13 + 112);
        if (!v14)
        {
LABEL_19:
          FigSimpleMutexUnlock();
          v19 = *(v6 + 2);
          if (v19)
          {
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v20)
            {
              v20(v19, a2);
            }
          }

          else
          {
            FigSimpleMutexLock();
            FigSimpleMutexUnlock();
          }

          goto LABEL_11;
        }

        while (1)
        {
          v15 = *(v14 + 6);
          v16 = v15 > 0x11;
          v17 = (1 << v15) & 0x28A00;
          if (!v16 && v17 != 0)
          {
            break;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_19;
          }
        }
      }

      FigSimpleMutexUnlock();
      playerasync_runSynchronousCommand(a1, v12);
    }

LABEL_11:
    fpa_releaseCommand(v12);
    return;
  }

  emitter = fig_log_get_emitter();
  v8 = v2;
  v9 = 4294954511;
  v10 = 4264;
LABEL_5:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< Async >>>>", v10, v8);
}

double DoPostParsingSampleTableCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_58;
  }

  if (*(a2 + 288) < 1)
  {
LABEL_46:
    v56 = *(a2 + 728);
    if (v56 && *(v56 + 56))
    {
      AssureTrackFragmentFixups(a2);
    }

    if (MovieSampleTableHaveCompositionShiftLeastInfo(a2))
    {
      *(a2 + 112) = MovieSampleTableGetMaxDecodeToDisplay(a2);
      *(a2 + 116) = MovieSampleTableGetMinDecodeToDisplay(a2);
    }

    else if (MovieSampleTableHaveCompositionOffsetTable(a2))
    {
      v61 = MovieSampleTableNumCompositionOffsetEntries(a2);
      if (v61 >= 1)
      {
        v62 = v61;
        for (i = 0; i != v62; ++i)
        {
          CompositionOffsetDisplayOffset = MovieSampleTableGetCompositionOffsetDisplayOffset(a2, i);
          if (*(a2 + 112) < CompositionOffsetDisplayOffset)
          {
            *(a2 + 112) = CompositionOffsetDisplayOffset;
          }

          if (*(a2 + 116) > CompositionOffsetDisplayOffset)
          {
            *(a2 + 116) = CompositionOffsetDisplayOffset;
          }
        }
      }
    }

    v57 = *(a2 + 728);
    if (v57 && *(v57 + 56) && *(v57 + 13))
    {
      v58 = *(v57 + 32);
      if (*(a2 + 112) < v58)
      {
        *(a2 + 112) = v58;
      }

      v59 = *(v57 + 36);
      if (*(a2 + 116) > v59)
      {
        *(a2 + 116) = v59;
      }
    }

    goto LABEL_58;
  }

  if (*(a2 + 56))
  {
    HaveTimeToSampleTable = MovieSampleTableHaveTimeToSampleTable(a2);
    if (HaveTimeToSampleTable)
    {
      v7 = MovieSampleTableNumTimeToSampleEntries(a2);
      if (v7 <= 0)
      {
        OUTLINED_FUNCTION_15_37(v7, v8, v9, "'stts' atom has zero entries");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
      }

      else
      {
        HaveSampleToChunkTable = MovieSampleTableHaveSampleToChunkTable(a2);
        if (HaveSampleToChunkTable)
        {
          v13 = MovieSampleTableNumSampleToChunkEntries(a2);
          if (v13 <= 0)
          {
            OUTLINED_FUNCTION_15_37(v13, v14, v15, "'stsc' atom has zero entries");
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
          }

          else
          {
            HaveChunkOffsetTable = MovieSampleTableHaveChunkOffsetTable(a2);
            if (HaveChunkOffsetTable)
            {
              v19 = MovieSampleTableNumChunkTableEntries(a2);
              if (v19 > 0)
              {
                SampleCountAtIndex = MovieSampleTableHaveTimeToSampleTable(a2);
                if (SampleCountAtIndex && (SampleCountAtIndex = MovieSampleTableNumTimeToSampleEntries(a2), SampleCountAtIndex >= 1))
                {
                  v25 = SampleCountAtIndex;
                  v26 = 0;
                  for (j = 0; j != v25; ++j)
                  {
                    SampleCountAtIndex = MovieSampleTableGetSampleCountAtIndex(a2, j);
                    v26 += SampleCountAtIndex;
                  }
                }

                else
                {
                  v26 = 0;
                }

                v28 = *(a2 + 288);
                if (v26 == v28)
                {
LABEL_17:
                  v29 = 0;
                  v30 = 1;
                  goto LABEL_18;
                }

                if (v26 > v28)
                {
                  OUTLINED_FUNCTION_15_37(SampleCountAtIndex, v23, v24, "Inconsistent sample count - 'stsz' is under-reporting");
LABEL_91:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_20_0();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, v83, v84);
                  if (v79)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_17;
                }

                SampleToChunkSamplesPerChunk = MovieSampleTableHaveSampleToChunkTable(a2);
                if (!SampleToChunkSamplesPerChunk)
                {
                  goto LABEL_86;
                }

                SampleToChunkSamplesPerChunk = MovieSampleTableNumSampleToChunkEntries(a2);
                v68 = SampleToChunkSamplesPerChunk - 1;
                if (SampleToChunkSamplesPerChunk < 1)
                {
                  goto LABEL_86;
                }

                if (SampleToChunkSamplesPerChunk != 1)
                {
                  v70 = SampleToChunkSamplesPerChunk;
                  v71 = 0;
                  v72 = 1;
                  while (1)
                  {
                    SampleToChunkFirstChunk = MovieSampleTableGetSampleToChunkFirstChunk(a2, v72);
                    SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkFirstChunk(a2, v72 - 1);
                    v74 = 0;
                    if (SampleToChunkFirstChunk < 0)
                    {
                      goto LABEL_87;
                    }

                    if ((SampleToChunkSamplesPerChunk & 0x80000000) != 0)
                    {
                      goto LABEL_87;
                    }

                    v75 = __OFSUB__(SampleToChunkFirstChunk, SampleToChunkSamplesPerChunk);
                    v76 = SampleToChunkFirstChunk - SampleToChunkSamplesPerChunk;
                    if (v76 < 0 != v75)
                    {
                      goto LABEL_87;
                    }

                    v71 += MovieSampleTableGetSampleToChunkSamplesPerChunk(a2, v72++ - 1) * v76;
                    if (v70 == v72)
                    {
                      goto LABEL_81;
                    }
                  }
                }

                v68 = 0;
                v71 = 0;
LABEL_81:
                v77 = MovieSampleTableNumChunkTableEntries(a2);
                SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkFirstChunk(a2, v68);
                v74 = 0;
                if (v77 < 0)
                {
                  goto LABEL_87;
                }

                if ((SampleToChunkSamplesPerChunk & 0x80000000) != 0)
                {
                  goto LABEL_87;
                }

                v75 = __OFSUB__(v77, SampleToChunkSamplesPerChunk);
                v78 = v77 - SampleToChunkSamplesPerChunk;
                if (v78 < 0 != v75)
                {
                  goto LABEL_87;
                }

                if (v78 >= 0)
                {
                  SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkSamplesPerChunk(a2, v68);
                  v74 = SampleToChunkSamplesPerChunk + SampleToChunkSamplesPerChunk * v78 + v71;
                }

                else
                {
LABEL_86:
                  v74 = 0;
                }

LABEL_87:
                if (v74 == v26)
                {
                  OUTLINED_FUNCTION_15_37(SampleToChunkSamplesPerChunk, v66, v67, "Overriding 'stsz' sample count with calculated value from 'stts'/'stco'");
                  OUTLINED_FUNCTION_627();
                  if (MovieTrackReviseParsedSampleCount())
                  {
                    goto LABEL_58;
                  }

                  v30 = 0;
                  v29 = 1;
LABEL_18:
                  v31 = *(a2 + 288);
                  if (MovieSampleTableHaveSampleDependencyTable(a2))
                  {
                    if (!*(a2 + 736))
                    {
                      v32 = MovieSampleTableNumSampleDependencyEntries(a2);
                      if (v32 < v31)
                      {
                        OUTLINED_FUNCTION_15_37(v32, v33, v34, "Number of sample dependency entries too small vs. track sample count");
                      }
                    }

                    if (MovieSampleTableNumSampleDependencyEntries(a2) > v31)
                    {
                      v35 = OUTLINED_FUNCTION_627();
                      if (MovieTrackReviseSampleDependencyTable(v35, v36))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  v37 = *(a2 + 288);
                  if (MovieSampleTableHaveSyncSampleTable(a2))
                  {
                    if (v30)
                    {
                      v38 = MovieSampleTableNumSyncSampleEntries(a2);
                      if (v38 >= 1)
                      {
                        v39 = v38;
                        v40 = 0;
                        while (1)
                        {
                          SyncSampleNumber = MovieSampleTableGetSyncSampleNumber(a2, v40);
                          if (SyncSampleNumber < 1 || SyncSampleNumber > v37)
                          {
                            break;
                          }

                          if (v39 == ++v40)
                          {
                            goto LABEL_36;
                          }
                        }

                        OUTLINED_FUNCTION_15_37(SyncSampleNumber, v42, v43, "Sync sample table has an entry which is out of the range");
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_20_0();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, v83, v84);
                        if (v69)
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else
                    {
                      MovieTrackReviseSyncSampleTable(a2);
                      if (v45)
                      {
                        goto LABEL_58;
                      }
                    }
                  }

LABEL_36:
                  if (MovieSampleTableHavePartialSyncSampleTable(a2))
                  {
                    v46 = v29 ^ 1;
                  }

                  else
                  {
                    v46 = 1;
                  }

                  if ((v46 & 1) != 0 || (MovieTrackRevisePartialSyncSampleTable(a2), !v47))
                  {
                    v48 = *(a2 + 288);
                    v55 = MovieSampleTableHaveCompositionOffsetTable(a2) ? v29 ^ 1 : 1;
                    if ((v55 & 1) != 0 || !MovieTrackReviseCompositionOffsetTable(a2, v48, v49, v50, v51, v52, v53, v54, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, vars0, vars8))
                    {
                      goto LABEL_46;
                    }
                  }

LABEL_58:
                  OUTLINED_FUNCTION_651();
                  return result;
                }

                OUTLINED_FUNCTION_15_37(SampleToChunkSamplesPerChunk, v66, v67, "Inconsistent sample count - 'stts' / 'stco' / 'stsz'");
                goto LABEL_91;
              }

              OUTLINED_FUNCTION_15_37(v19, v20, v21, "Chunk offset atom has zero entries");
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
            }

            else
            {
              OUTLINED_FUNCTION_15_37(HaveChunkOffsetTable, v17, v18, "'stco'/'co64' atom missing");
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_15_37(HaveSampleToChunkTable, v11, v12, "'stsc' atom missing");
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_37(HaveTimeToSampleTable, v5, v6, "'stts' atom missing");
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_37(a1, a2, a3, "'stsd' atom missing");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_651();

  return FigSignalErrorAtGM(v80);
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions(uint64_t a1, CFArrayRef *cf)
{
  v4 = CFGetAllocator(cf);
  v5 = cf[5];
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  if (!cf[7])
  {
    ConvertSampleDescriptionsToFormatDescriptions_cold_6(a1, cf, &values);
    goto LABEL_86;
  }

  v7 = 1986618469;
  v8 = *(cf + 6);
  if (v8 <= 1986618468)
  {
    if (v8 == 1885954932 || v8 == 1635088502)
    {
      goto LABEL_12;
    }

    if (!v8)
    {
      ConvertSampleDescriptionsToFormatDescriptions_cold_1(a1, cf, &values);
      goto LABEL_86;
    }

    goto LABEL_11;
  }

  if (v8 != 1986618469)
  {
LABEL_11:
    v7 = *(cf + 6);
  }

LABEL_12:
  if (Count < 1)
  {
LABEL_81:
    v32 = cf[5];
    if (!v32)
    {
      return 0;
    }

    CFRelease(v32);
    v25 = 0;
    cf[5] = 0;
    return v25;
  }

  v9 = 0;
  alloc = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E6963378];
  v37 = v4;
  v38 = a1;
  v36 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf[5], v9);
    formatDescriptionOut = 0;
    if (v7 <= 1935893869)
    {
      if (v7 <= 1835365472)
      {
        if (v7 == 1668047728)
        {
          v23 = CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(v4, ValueAtIndex, 0, &formatDescriptionOut);
        }

        else
        {
          if (v7 != 1751216244)
          {
            goto LABEL_44;
          }

          v23 = CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionBlockBuffer();
        }
      }

      else
      {
        if (v7 != 1835365473)
        {
          if (v7 == 1885564004)
          {
            v23 = CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionBlockBuffer();
            goto LABEL_49;
          }

          if (v7 == 1935832172)
          {
            v11 = v4;
            v12 = ValueAtIndex;
            v13 = 1935832172;
LABEL_41:
            v23 = CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(v11, v12, 0, v13, &formatDescriptionOut);
            goto LABEL_49;
          }

LABEL_44:
          LODWORD(destination) = 0;
          values = 0;
          v24 = 0;
          if (!FigCreateCFDataWithBlockBufferNoCopy())
          {
            v24 = CFDictionaryCreate(v4, MEMORY[0x1E69600D0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (values)
            {
              CFRelease(values);
            }
          }

          CMBlockBufferCopyDataBytes(ValueAtIndex, 4uLL, 4uLL, &destination);
          v25 = CMFormatDescriptionCreate(v4, v7, bswap32(destination), v24, &formatDescriptionOut);
          if (v24)
          {
            CFRelease(v24);
          }

LABEL_50:
          Mutable = 0;
          if (v25)
          {
            goto LABEL_87;
          }

          goto LABEL_51;
        }

        v23 = CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(v4, ValueAtIndex, 0, &formatDescriptionOut);
      }

LABEL_49:
      v25 = v23;
      goto LABEL_50;
    }

    if (v7 <= 1952807027)
    {
      if (v7 == 1935893870)
      {
        v23 = CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionBlockBuffer();
      }

      else
      {
        if (v7 != 1936684398)
        {
          goto LABEL_44;
        }

        v23 = FigAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBufferWithReporter();
      }

      goto LABEL_49;
    }

    if (v7 == 1952807028)
    {
      v11 = v4;
      v12 = ValueAtIndex;
      v13 = 1952807028;
      goto LABEL_41;
    }

    if (v7 == 1953325924)
    {
      v23 = CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(v4, ValueAtIndex, 0, &formatDescriptionOut);
      goto LABEL_49;
    }

    if (v7 != 1986618469)
    {
      goto LABEL_44;
    }

    if (*(a1 + 86))
    {
      v14 = CFUUIDGetConstantUUIDWithBytes(alloc, 0xFFu, 0xCCu, 0x82u, 0x63u, 0xF8u, 0x55u, 0x4Au, 0x93u, 0x88u, 0x14u, 0x58u, 0x7Au, 2u, 0x52u, 0x1Fu, 0xDDu);
      v15 = cf[112];
      if (v15 < 1)
      {
        Mutable = 0;
      }

      else
      {
        v16 = v14;
        v17 = 0;
        while (1)
        {
          v18 = cf[114];
          v19 = CFUUIDCreateFromUUIDBytes(alloc, *(v18 + v17));
          if (v19)
          {
            v20 = v19;
            v21 = CFEqual(v19, v16);
            CFRelease(v20);
            if (v21)
            {
              break;
            }
          }

          v17 += 40;
          if (!--v15)
          {
            Mutable = 0;
            a1 = v38;
            Count = v36;
            v4 = v37;
            goto LABEL_76;
          }
        }

        cfa = 0;
        a1 = v38;
        v27 = *(v38 + 56);
        values = 0;
        destination = 0;
        v28 = *(v18 + v17 + 16);
        if (v28)
        {
          v29 = *(v18 + v17 + 24);
          Count = v36;
          v4 = v37;
          if (v29)
          {
            v34 = v27;
            v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v30 && !v30(v34, v29, v28, &values, &destination))
            {
              if (values)
              {
                FigMovieCreateDictionaryFromAuxiliaryXMLData(values, &cfa);
              }

              else
              {
                ConvertSampleDescriptionsToFormatDescriptions_cold_2();
              }
            }
          }

          else
          {
            ConvertSampleDescriptionsToFormatDescriptions_cold_3();
          }
        }

        else
        {
          ConvertSampleDescriptionsToFormatDescriptions_cold_4();
          Count = v36;
          v4 = v37;
        }

        if (values)
        {
          CFRelease(values);
        }

        if (cfa)
        {
          v31 = CFGetTypeID(cfa);
          if (v31 == CFDictionaryGetTypeID())
          {
            Mutable = CFDictionaryCreateMutable(alloc, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, key, cfa);
          }

          else
          {
            Mutable = 0;
          }

          a1 = v38;
          if (cfa)
          {
            CFRelease(cfa);
          }
        }

        else
        {
          Mutable = 0;
        }
      }
    }

    else
    {
      Mutable = 0;
    }

LABEL_76:
    CFStringGetSystemEncoding();
    v25 = FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBufferWithOptionsAndReporter();
    if (v25)
    {
      goto LABEL_87;
    }

LABEL_51:
    v26 = cf[6];
    if (!v26)
    {
      v26 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      cf[6] = v26;
      if (!v26)
      {
        break;
      }
    }

    CFArrayAppendValue(v26, formatDescriptionOut);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (++v9 == Count)
    {
      goto LABEL_81;
    }
  }

  ConvertSampleDescriptionsToFormatDescriptions_cold_5(&values);
LABEL_86:
  v25 = values;
LABEL_87:
  MovieInformationReportParsingFailureMessage(a1, cf, "Error when generating format descriptions", 7u);
  ReleaseSampleDescriptionInfoArray(cf);
  return v25;
}

uint64_t RegisterFigTrackReaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t GetMovieUserDataAtom(_OWORD *a1, uint64_t a2)
{
  v3 = a1[5];
  v7[11] = a1[4];
  v7[12] = v3;
  v7[13] = a1[6];
  v4 = a1[1];
  v7[7] = *a1;
  v7[8] = v4;
  v5 = a1[3];
  v7[9] = a1[2];
  v7[10] = v5;
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    memset(v7, 0, 112);
    result = FigAtomStreamAdvanceToNextAtom();
    if (result == -12890 || !result && (result = FigAtomStreamGetCurrentAtomTypeAndDataLength(), !result))
    {
      LODWORD(result) = FigAtomStreamInitWithParent();
      if (!result)
      {
        figMDRW_ParseChildAtoms(v7, 1, &GetMovieUserDataAtom_atomDispatch, a2);
      }

      if (result == -12893)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t RegisterFigCRABS()
{
  CMByteStreamGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FPSupport_BuildAlternateTrackGroups(uint64_t a1, __CFDictionary **a2)
{
  v3 = v2;
  v53 = 0;
  theArray = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v44, v46);
    v25 = v40;
LABEL_62:
    v31 = 0;
    goto LABEL_63;
  }

  FigFormatReaderGetFigBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10 || (v10(v9, @"AlternateGroupArray", v6, &theArray), !theArray) || (Count = CFArrayGetCount(theArray), Count < 1))
  {
LABEL_56:
    LODWORD(cf) = 0;
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v38 && !v38(a1, 1, 1935832172, 0, 0))
    {
      goto LABEL_60;
    }

    v39 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v39 || v39(a1, 0, 1935832172, &v53, &cf))
    {
      goto LABEL_60;
    }

    v31 = CFArrayCreateMutable(v6, 1, MEMORY[0x1E695E9C0]);
    if (!v31)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294967188, "<<<< Alt >>>>", 4659, v3);
LABEL_78:
      v25 = v37;
      goto LABEL_63;
    }

    fpSupport_addTrackInfoToArray(v53, cf, 1935832172, v31);
    v25 = v42;
    if (v42)
    {
      goto LABEL_63;
    }

    CFDictionarySetValue(Mutable, @"Subtitle", v31);
    CFRelease(v31);
    if (v53)
    {
      CFRelease(v53);
      v53 = 0;
    }

LABEL_60:
    v31 = 0;
    v25 = 0;
    *a2 = Mutable;
    Mutable = 0;
    goto LABEL_63;
  }

  v47 = 0;
  v48 = a2;
  v49 = 0;
  v11 = 0;
  while (2)
  {
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      if (!ValueAtIndex)
      {
        goto LABEL_54;
      }

      v13 = ValueAtIndex;
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(v13))
      {
        goto LABEL_54;
      }

      v15 = CFArrayGetCount(v13);
      if (v15 < 1)
      {
        goto LABEL_54;
      }

      v16 = v15;
      v51 = v11;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = CFArrayGetValueAtIndex(v13, v17);
        if (!v20)
        {
          goto LABEL_26;
        }

        v21 = v20;
        v22 = CFNumberGetTypeID();
        if (v22 != CFGetTypeID(v21))
        {
          goto LABEL_26;
        }

        valuePtr = 0;
        CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr + 4);
        v23 = HIDWORD(valuePtr);
        cf = 0;
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v24)
        {
          v25 = 4294954514;
          goto LABEL_62;
        }

        v25 = v24(a1, v23, &cf, &valuePtr);
        v26 = cf;
        if (v25)
        {
          v27 = 1;
          if (!cf)
          {
            goto LABEL_16;
          }

LABEL_15:
          CFRelease(v26);
          goto LABEL_16;
        }

        isTrackEnabled = fpSupport_isTrackEnabled(cf);
        v26 = cf;
        v27 = isTrackEnabled == 0;
        if (cf)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v25)
        {
          goto LABEL_62;
        }

        if (v19)
        {
          if (v19 != valuePtr)
          {
            goto LABEL_53;
          }

          if (v27)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v19 = valuePtr;
          if (v27)
          {
            goto LABEL_26;
          }
        }

        if (v18 > 0)
        {
LABEL_53:
          a2 = v48;
          v3 = v2;
          v11 = v51;
          goto LABEL_54;
        }

        ++v18;
LABEL_26:
        ++v17;
      }

      while (v16 != v17);
      v11 = v51;
      if (v18 < 1)
      {
        goto LABEL_38;
      }

      if (v19 == 1935832172)
      {
        if (!v49)
        {
          v49 = 1;
          v29 = &kFigPlaybackItemAlternateType_Subtitle;
          goto LABEL_42;
        }

        v11 = v51 + 1;
        v49 = 1;
        a2 = v48;
        v3 = v2;
        if (v51 + 1 == Count)
        {
          goto LABEL_60;
        }

        continue;
      }

      break;
    }

    if (v19 == 1835365473)
    {
      if (!HIDWORD(v47))
      {
        HIDWORD(v47) = 1;
        v29 = &kFigPlaybackItemAlternateType_Metadata;
        goto LABEL_42;
      }

      HIDWORD(v47) = 1;
LABEL_38:
      a2 = v48;
      v3 = v2;
LABEL_54:
      if (++v11 != Count)
      {
        continue;
      }

      if (v49)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    break;
  }

  if (v19 != 1936684398)
  {
    goto LABEL_38;
  }

  if (v47)
  {
    LODWORD(v47) = 1;
    goto LABEL_38;
  }

  LODWORD(v47) = 1;
  v29 = &kFigPlaybackItemAlternateType_Audio;
LABEL_42:
  v30 = *v29;
  v31 = CFArrayCreateMutable(v6, v16, MEMORY[0x1E695E9C0]);
  if (!v31)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294967188, "<<<< Alt >>>>", 4616, v2);
    goto LABEL_78;
  }

  v32 = 0;
  while (1)
  {
    v33 = CFArrayGetValueAtIndex(v13, v32);
    if (v33)
    {
      v34 = v33;
      v45 = CFNumberGetTypeID();
      if (v45 == CFGetTypeID(v34))
      {
        break;
      }
    }

LABEL_51:
    if (v16 == ++v32)
    {
      CFDictionarySetValue(Mutable, v30, v31);
      CFRelease(v31);
      goto LABEL_53;
    }
  }

  LODWORD(cf) = 0;
  CFNumberGetValue(v34, kCFNumberSInt32Type, &cf);
  v35 = cf;
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v36)
  {
    v37 = v36(a1, v35, &v53, 0);
    if (v37)
    {
      goto LABEL_78;
    }

    fpSupport_addTrackInfoToArray(v53, cf, v19, v31);
    if (v37)
    {
      goto LABEL_78;
    }

    if (v53)
    {
      CFRelease(v53);
      v53 = 0;
    }

    goto LABEL_51;
  }

  v25 = 4294954514;
LABEL_63:
  if (v53)
  {
    CFRelease(v53);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v25;
}

uint64_t FPSupport_GetDefaultTrackIDForMediaType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v23 = 0;
  cf = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v7)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v8 = 0;
  while (1)
  {
    if (v7(a1, v8, a2, &cf, &v20))
    {
LABEL_27:
      v13 = v23;
      goto LABEL_29;
    }

    if (!fpSupport_isTrackEnabled(cf))
    {
      goto LABEL_24;
    }

    if (a2 != 1936684398)
    {
      break;
    }

    v9 = cf;
    desc = 0;
    fpSupport_copyFormatDescription(cf, &desc);
    v10 = desc;
    if (desc)
    {
      if (!CMAudioFormatDescriptionGetRichestDecodableFormat(desc))
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_24:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v8;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  if (a2 == 1952807028)
  {
    v9 = cf;
    desc = 0;
    fpSupport_copyFormatDescription(cf, &desc);
    v10 = desc;
    if (desc)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
      if (MediaSubType <= 1937142899)
      {
        if (MediaSubType == 1634301044)
        {
          goto LABEL_20;
        }

        v12 = 1937010800;
      }

      else
      {
        if (MediaSubType == 1937142900 || MediaSubType == 2021028980)
        {
          goto LABEL_20;
        }

        v12 = 2004251764;
      }

      if (MediaSubType != v12)
      {
LABEL_23:
        CFRelease(v10);
        goto LABEL_24;
      }

LABEL_20:
      if (!v23)
      {
        v23 = v9;
        if (v9)
        {
          CFRetain(v9);
        }
      }

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (a2 == 1986618469)
  {
    fpSupport_pickPreferredVideoTrack(cf, &v23, &v22, &v21, v4);
    goto LABEL_24;
  }

  v18 = v23;
  v13 = cf;
  v23 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_29:
  if (a2 != 1986618469 || v13)
  {
LABEL_40:
    if (v13)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v16)
      {
        v16(v13, a3, 0);
      }

      CFRelease(v13);
    }
  }

  else
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v14)
    {
      v15 = 0;
      do
      {
        if (v14(a1, v15, 1635088502, &cf, &v20))
        {
          break;
        }

        if (fpSupport_isTrackEnabled(cf))
        {
          fpSupport_pickPreferredVideoTrack(cf, &v23, &v22, &v21, v4);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v15;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      }

      while (v14);
      v13 = v23;
      goto LABEL_40;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t fpSupport_isTrackEnabled(uint64_t a1)
{
  cf1 = 0;
  FigTrackReaderGetFigBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v3(v2, @"TrackEnabled", *MEMORY[0x1E695E480], &cf1);
  if (!cf1)
  {
    return 1;
  }

  v4 = CFEqual(cf1, *MEMORY[0x1E695E4D0]);
  CFRelease(cf1);
  return v4;
}

uint64_t FPSupport_ChooseTrackIDsUsingPreferredLanguageLists(const void *a1, const __CFDictionary *a2, const void *a3, _DWORD *a4)
{
  if (!a3)
  {
    FPSupport_ChooseTrackIDsUsingPreferredLanguageLists_cold_2(&v35);
    return v35;
  }

  if (!a4)
  {
    FPSupport_ChooseTrackIDsUsingPreferredLanguageLists_cold_1(&v34);
    return v34;
  }

  if (!a1)
  {
    return 0;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a3);
  v10 = Value;
  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, a3);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (!Value)
    {
      return 0;
    }
  }

  v12 = CFArrayGetTypeID();
  v13 = CFGetTypeID(v10);
  result = 0;
  if (v11 && v12 == v13)
  {
    v15 = CFArrayGetTypeID();
    if (v15 != CFGetTypeID(v11))
    {
      return 0;
    }

    Count = CFArrayGetCount(v11);
    if (Count < 1)
    {
      return 0;
    }

    v16 = 0;
    cf2 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v16);
      if (ValueAtIndex)
      {
        v18 = ValueAtIndex;
        v19 = CFStringGetTypeID();
        if (v19 == CFGetTypeID(v18))
        {
          v20 = CFArrayGetCount(v10);
          if (v20 >= 1)
          {
            break;
          }
        }
      }

LABEL_27:
      result = 0;
      if (++v16 == Count)
      {
        return result;
      }
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      v23 = CFArrayGetValueAtIndex(v10, v22);
      if (v23)
      {
        v24 = v23;
        v25 = CFDictionaryGetTypeID();
        if (v25 == CFGetTypeID(v24))
        {
          v26 = CFDictionaryGetValue(v24, @"ExcludeFromAutoSelection");
          if (!v26 || !CFEqual(v26, cf2))
          {
            v27 = CFDictionaryGetValue(v24, @"Language");
            if (v27)
            {
              if (CFEqual(v27, v18))
              {
                v28 = CFDictionaryGetValue(v24, @"TrackID");
                if (v28)
                {
                  v29 = v28;
                  v30 = CFNumberGetTypeID();
                  if (v30 == CFGetTypeID(v29))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      if (v21 == ++v22)
      {
        goto LABEL_27;
      }
    }

    valuePtr = 0;
    CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr);
    result = 0;
    *a4 = valuePtr;
  }

  return result;
}

uint64_t fcSupport_GetListOfChapterTrackIDsForMediaType(int a1, int a2, uint64_t a3, uint64_t *a4, int **a5, unsigned int *a6)
{
  value = 0;
  theDict = 0;
  FigFormatReaderGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v18 = 0;
    v19 = 0;
    v15 = 4294954514;
    goto LABEL_11;
  }

  v15 = v14(v13, @"TrackReferenceDictionary", *MEMORY[0x1E695E480], &theDict);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = theDict == 0;
  }

  if (v16)
  {
LABEL_9:
    v18 = 0;
    v19 = 0;
LABEL_11:
    free(v19);
    v20 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  if (!CFDictionaryGetValueIfPresent(theDict, @"chap", &value) || (Count = CFArrayGetCount(value), Count < 2))
  {
    v15 = 0;
    goto LABEL_9;
  }

  v22 = Count;
  v33 = a2;
  v34 = a1;
  v19 = malloc_type_malloc((2 * Count) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
  if (!v19)
  {
    fcSupport_GetListOfChapterTrackIDsForMediaType_cold_1(&v41);
    v18 = 0;
    v15 = v41;
    goto LABEL_11;
  }

  v18 = 0;
  v20 = 0;
  for (i = 1; i < v22; i += 2)
  {
    v41 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(value, i);
    if (ValueAtIndex)
    {
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v25 = valuePtr;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v26)
      {
        if (!v26(a3, v25, 0, &v41) && v41 == v34)
        {
          if (v20 < 1)
          {
LABEL_39:
            v37 = 0;
            fcSupport_getTrackMediaTypeAndEnabled(a3, valuePtr, &v37);
            if (v37)
            {
              v29 = v33 == 1;
            }

            else
            {
              v29 = 0;
            }

            v30 = v29;
            if (v33 == 2 || v30)
            {
              v31 = v20 + 1;
              v19[v20] = valuePtr;
              if (a6 && !v18)
              {
                v32 = CFArrayGetValueAtIndex(value, i - 1);
                if (v32)
                {
                  v36 = 0;
                  v35 = 0;
                  CFNumberGetValue(v32, kCFNumberSInt32Type, &v35);
                  fcSupport_getTrackMediaTypeAndEnabled(a3, v35, &v36);
                  if (v36)
                  {
                    v18 = valuePtr;
                  }

                  else
                  {
                    v18 = 0;
                  }
                }

                else
                {
                  v18 = 0;
                }
              }
            }

            else
            {
              v31 = v20;
            }

            v20 = v31;
          }

          else
          {
            v28 = 0;
            while (valuePtr != v19[v28])
            {
              if (v20 == ++v28)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }
  }

  v15 = 0;
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (a6)
  {
    if (v20 >= 1 && !v18 && v19)
    {
      v18 = *v19;
    }

    *a6 = v18;
  }

  if (a4)
  {
    *a4 = v20;
  }

  if (a5)
  {
    *a5 = v19;
  }

  else
  {
    free(v19);
  }

  return v15;
}

uint64_t itemfig_assureBasicsReadyForInspection(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ready = itemfig_assureBasicsReadyUsingAsset(a1);
  if (!ready && *(DerivedStorage + 992))
  {
    itemfig_lookForLyrics(a1);
    *(DerivedStorage + 992) = 0;
  }

  return ready;
}

void itemfig_lookForLyrics(uint64_t a1)
{
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemProperty_Lyrics, 1, MEMORY[0x1E695E9C0]);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v4)
    {
      v4(a1, v3, 0);
    }

    CFRelease(v3);
  }
}

uint64_t FigPlaybackItemMakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t RegisterFigSampleCursorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void ScanForUnreferencedDataReadyEntries()
{
  if (gFigReadCache && (*(gFigReadCache + 176) || *(gFigReadCache + 208)))
  {
    for (i = *(gFigReadCache + 120); i; i = *(i + 136))
    {
      FigSimpleMutexLock();
      for (j = *(i + 104); j; j = *(j + 64))
      {
        if (*j == 3 && !*(j + 72) && CFGetRetainCount(*(j + 48)) == 1)
        {
          if (*(j + 16))
          {
            v2 = 3;
            v3 = 0;
          }

          else
          {
            v2 = 1;
            v3 = 1;
          }

          MoveToVGroup(j, v2, v3);
          if (*(j + 96))
          {
            *(j + 96) = 0;
            FigAtomicDecrement32();
          }
        }
      }

      FigSimpleMutexUnlock();
    }
  }
}

uint64_t resetTrackCursor(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 80) = 1;
  if (*(v2 + 288))
  {
    *(a1 + 88) = 0;
    v3 = *(*a1 + 24);
    if (v3)
    {
      LOBYTE(v3) = *(v2 + 408) == 1;
    }

    *(a1 + 120) = v3;
    *(a1 + 96) = 0;
    v13 = 0;
    CMBlockBufferCopyDataBytes(*(v2 + 416), 0, 8uLL, &v13);
    *(a1 + 112) = bswap32(v13);
    *(a1 + 116) = 1;
    *(a1 + 128) = xmmword_196E78880;
    if (*(v2 + 432) < 2)
    {
      v6 = (*(v2 + 624))(v2);
    }

    else
    {
      v14 = 0;
      v13 = 0;
      CMBlockBufferCopyDataBytes(*(v2 + 440), 0, 0xCuLL, &v13);
      v4 = bswap32(v13);
      v14 = 0;
      v13 = 0;
      CMBlockBufferCopyDataBytes(*(v2 + 440), 0xCuLL, 0xCuLL, &v13);
      if (v4 <= 0)
      {
        resetTrackCursor_cold_4(&v13);
        return v13;
      }

      v5 = bswap32(v13);
      if (v5 <= 0)
      {
        resetTrackCursor_cold_3(&v13);
        return v13;
      }

      v6 = v5 - v4;
      if (v5 < v4)
      {
        resetTrackCursor_cold_2(&v13);
        return v13;
      }
    }

    *(a1 + 144) = v6;
    v14 = 0;
    v13 = 0;
    CMBlockBufferCopyDataBytes(*(v2 + 440), 0, 0xCuLL, &v13);
    v7 = bswap32(HIDWORD(v13));
    *(a1 + 148) = v7;
    v8 = *(v2 + 244);
    if (v8)
    {
      *(a1 + 112) /= v8;
      v9 = v7 / v8;
      *(a1 + 148) = v9;
      *(a1 + 104) = v8;
    }

    else
    {
      v13 = 0;
      CMBlockBufferCopyDataBytes(*(v2 + 416), 0, 8uLL, &v13);
      *(a1 + 104) = bswap32(HIDWORD(v13));
      v9 = *(a1 + 148);
    }

    if (v9 < 1 || v9 > *(v2 + 288))
    {
      resetTrackCursor_cold_1(&v13);
      return v13;
    }

    *(a1 + 152) = 0;
  }

  v10 = *(v2 + 728);
  if (v10 && (v11 = *(v10 + 56)) != 0)
  {
    *(a1 + 192) = v10;
    *(a1 + 200) = v11;
    *(a1 + 208) = *(v11 + 72);
  }

  else
  {
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  result = 0;
  *(a1 + 184) = *(a1 + 80);
  return result;
}

void FigMetadataReaderCreateForiTunes(uint64_t a1, const void *a2, unint64_t a3, CFTypeRef *a4)
{
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v17 = v4;
    v18 = 4294954696;
    v19 = 1693;
LABEL_31:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v18, "<<<< FMDR_iTunes >>>>", v19, v17);
    return;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v17 = v4;
    v18 = 4294954696;
    v19 = 1696;
    goto LABEL_31;
  }

  v6 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    emitter = fig_log_get_emitter();
    v17 = v4;
    v18 = 4294954695;
    v19 = 1699;
    goto LABEL_31;
  }

  v7 = a2;
  FigMetadataReaderGetClassID();
  if (CMDerivedObjectCreate())
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomStreamInitWithByteStream())
  {
    goto LABEL_39;
  }

  *&v32[0] = 0;
  number[0] = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x1E695FF78], 0, number);
  }

  v11 = CMByteStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E695FF70], 0, v32);
  }

  v13 = *&v32[0];
  if (!number[0] || !*&v32[0])
  {
    goto LABEL_35;
  }

  if (CFNumberCompare(number[0], *&v32[0], 0) == kCFCompareEqualTo)
  {
    v13 = *&v32[0];
LABEL_35:
    if (v13)
    {
      CFRelease(v13);
    }

    if (number[0])
    {
      CFRelease(number[0]);
    }

    goto LABEL_39;
  }

  v33 = 0;
  if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v14 = 0;
  }

  else
  {
    v14 = v33 <= 0x2000;
  }

  v15 = !v14;
  if (*&v32[0])
  {
    CFRelease(*&v32[0]);
  }

  if (number[0])
  {
    CFRelease(number[0]);
  }

  if ((v15 & 1) == 0 && !FigAtomStreamReadCurrentAtomAndCreateBBuf())
  {
    CFGetAllocator(0);
    if (!CMByteStreamCreateForBlockBuffer())
    {
      v7 = 0;
      v6 = 0;
    }
  }

LABEL_39:
  *DerivedStorage = CFRetain(v7);
  DerivedStorage[1] = v6;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *number = 0u;
  v20 = CMBaseObjectGetDerivedStorage();
  if (*(v20 + 16))
  {
    return;
  }

  if (*(v20 + 24))
  {
    return;
  }

  v34 = 0;
  if (FigAtomStreamInitWithByteStream() || FigAtomStreamInitWithParent())
  {
    return;
  }

  v21 = 0;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      CurrentAtomGlobalOffset = CurrentAtomTypeAndDataLength;
      goto LABEL_56;
    }

    if (v34 == 1801812339 || v34 == 1768715124)
    {
      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    }

    else
    {
      if (v34 != 1751411826)
      {
        goto LABEL_53;
      }

      CurrentAtomGlobalOffset = FigMetadataValidateHandlerType(number, v33);
      if (!CurrentAtomGlobalOffset)
      {
        v21 = 1;
      }
    }

    if (CurrentAtomGlobalOffset)
    {
      goto LABEL_56;
    }

LABEL_53:
    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  CurrentAtomGlobalOffset = Atom;
  if (Atom == -12890)
  {
    CurrentAtomGlobalOffset = 0;
  }

LABEL_56:
  if (v21)
  {
    if (!CurrentAtomGlobalOffset)
    {
      *a4 = 0;
    }
  }
}

void itemasync_GetDimensions(const void *a1, _DWORD *a2, _DWORD *a3)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954516;
    v11 = 4723;
    goto LABEL_7;
  }

  *a2 = 0;
  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954516;
    v11 = 4727;
    goto LABEL_7;
  }

  *a3 = 0;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954511;
    v11 = 4731;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< Async >>>>", v11, v9);
    return;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v12)
  {
    v13 = v12;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_GetDimensions_cold_1(&v17);
      v15 = 0;
    }

    else
    {
      v14 = playerasync_createCommand(v13, 28, a1, &v16);
      v15 = v16;
      if (!v14)
      {
        *(v16 + 32) = a2;
        v15[5] = a3;
        playerasync_runSynchronousCommand(v13, v15);
      }
    }

    fpa_releaseCommand(v15);
    CFRelease(v13);
  }

  else
  {
    itemasync_GetDimensions_cold_2();
  }
}

uint64_t itemcentral_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetDimensions(&v11);
    return v11;
  }

  else
  {
    v7 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v8 = *(v7 + 8);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {

        return v9(v8, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_GetDimensions(&v12);
      return v12;
    }
  }
}

uint64_t itemfig_GetDimensions()
{
  OUTLINED_FUNCTION_216_0();
  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_354_0(DerivedStorage);
  OUTLINED_FUNCTION_279_0();
  if (*v3)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, videoDesc, v28);
    v11 = v25;
    if (!v0)
    {
      return v11;
    }

    goto LABEL_11;
  }

  if (!v0)
  {
    return 0;
  }

  if (*(v3 + 656))
  {
    v7 = 0;
    v8 = *(v3 + 736);
    height = *(v3 + 720) * v8;
    v10 = *(v3 + 728) * v8;
    goto LABEL_7;
  }

  if (*(v3 + 1920))
  {
    v7 = 0;
    height = *(v3 + 1928);
    v10 = *(v3 + 1936);
    goto LABEL_7;
  }

  v15 = *(v3 + 1040);
  if (v15)
  {
    itemfig_copyTrackFormatDescription(v5, v15, &videoDesc);
    v7 = videoDesc;
    if (v17)
    {
      v11 = v17;
      if (!videoDesc)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (videoDesc)
    {
      PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, *(v3 + 1193), *(v3 + 1194));
      width = PresentationDimensions.width;
      height = PresentationDimensions.height;
    }

    else
    {
      height = 0.0;
      width = 0.0;
    }

    v20 = OUTLINED_FUNCTION_415_0();
    if (FPSupport_ShouldApplyVideoTrackMatrix(v20, v21) && ((v22 = OUTLINED_FUNCTION_266_0(), VideoMatrixRotationAngleAndFlips = itemfig_getVideoMatrixRotationAngleAndFlips(v22, v23, 0), VideoMatrixRotationAngleAndFlips == 270) || VideoMatrixRotationAngleAndFlips == 90))
    {
      v10 = width;
    }

    else
    {
      v10 = height;
      height = width;
    }

LABEL_7:
    if (height != 0.0 && v10 != 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v7 = 0;
  height = 0.0;
  v10 = 0.0;
LABEL_15:
  OUTLINED_FUNCTION_394_0();
  if (itemfig_IsThereMediaTrack(v16) || itemfig_IsThereMediaTrack(v3))
  {
    height = 1280.0;
    v10 = 720.0;
  }

LABEL_9:
  v11 = 0;
  v12 = height;
  *v2 = v12;
  v13 = v10;
  *v1 = v13;
  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:
  CFRelease(v0);
  return v11;
}

void itemfig_copyVideoFormatDescription()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  v0 = OUTLINED_FUNCTION_228();

  itemfig_copyTrackFormatDescription(v0, v1, v2);
}

uint64_t itemfig_CopyProperty(void *a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  v171 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = OUTLINED_FUNCTION_283_0(DerivedStorage);
  v11 = v10;
  if (*v4 || !a4)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160.value, v160.timescale, LODWORD(v160.epoch));
    IsContentAuthorized = v61;
    if (!v11)
    {
      return IsContentAuthorized;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    return 0;
  }

  if (CFEqual(a2, @"SeekableTimeIntervals"))
  {
    valuePtr = 0;
    cf = 0;
    memset(&keys, 0, 32);
    *values = 0u;
    v170 = 0u;
    Seconds = 0;
    OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
    DurationIfReady = itemfig_getDurationIfReady(a1, &v162);
    if (v18)
    {
      IsContentAuthorized = v18;
      v30 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_92_0(DurationIfReady, v20, v21, v22, v23, v24, v25, v26, *&v160.value, *&v160.timescale, *&v160.epoch, *&v161, *&v162);
      Seconds = CMTimeGetSeconds(v27);
      v28 = *MEMORY[0x1E695E480];
      v29 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      v30 = v29;
      if (v29)
      {
        keys.start.value = @"start";
        values[0] = v29;
        v31 = CFNumberCreate(v28, kCFNumberDoubleType, &Seconds);
        v32 = v31;
        if (v31)
        {
          *&keys.start.timescale = @"end";
          values[1] = v31;
          OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
          v33 = CMTimeCopyAsDictionary(&v160, v28);
          v42 = v33;
          if (v33)
          {
            keys.start.epoch = @"startTime";
            *&v170 = v33;
            OUTLINED_FUNCTION_92_0(v34, v35, v36, v37, v38, v39, v40, v41, *&v160.value, *&v160.timescale, *&v160.epoch, *&v161, *&v162);
            v44 = CMTimeCopyAsDictionary(v43, v28);
            v45 = v44;
            if (v44 && (keys.duration.value = @"endTime", *(&v170 + 1) = v44, (cf = CFDictionaryCreate(v28, &keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0) && (v46 = CFArrayCreate(v28, &cf, 1, MEMORY[0x1E695E9C0])) != 0)
            {
              IsContentAuthorized = 0;
              *a4 = v46;
            }

            else
            {
              OUTLINED_FUNCTION_374();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              IsContentAuthorized = v81;
            }

            goto LABEL_26;
          }

          OUTLINED_FUNCTION_374();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160.value, v160.timescale, LODWORD(v160.epoch));
          IsContentAuthorized = v80;
LABEL_89:
          v45 = 0;
LABEL_26:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v45)
          {
            CFRelease(v45);
          }

          goto LABEL_13;
        }

        OUTLINED_FUNCTION_374();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160.value, v160.timescale, LODWORD(v160.epoch));
        IsContentAuthorized = v79;
LABEL_87:
        v42 = 0;
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160.value, v160.timescale, LODWORD(v160.epoch));
      IsContentAuthorized = v78;
    }

    v32 = 0;
    goto LABEL_87;
  }

  if (!CFEqual(a2, @"PlayableTimeIntervals"))
  {
    if (CFEqual(a2, @"Timebase"))
    {
      DictionaryRepresentation = *(v4 + 336);
      if (!DictionaryRepresentation)
      {
LABEL_11:
        IsContentAuthorized = 0;
LABEL_12:
        *a4 = DictionaryRepresentation;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (CFEqual(a2, @"Lyrics"))
    {
      if (*(CMBaseObjectGetDerivedStorage() + 1000))
      {
        IsContentAuthorized = 0;
      }

      else
      {
        CFGetAllocator(a1);
        FigAssetGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v47 = OUTLINED_FUNCTION_148();
          IsContentAuthorized = v48(v47);
        }

        else
        {
          IsContentAuthorized = 4294954514;
        }
      }

      DictionaryRepresentation = *(v4 + 1000);
      if (DictionaryRepresentation)
      {
        goto LABEL_43;
      }

LABEL_44:
      *a4 = 0;
      goto LABEL_13;
    }

    if (CFEqual(a2, @"AvailableAlternateTrackGroups"))
    {
      DictionaryRepresentation = *(v4 + 1024);
      if (DictionaryRepresentation)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, @"ChosenAlternateTrackIDDictionary"))
    {
      v49 = OUTLINED_FUNCTION_502();
      itemfig_copyChosenAlternateTrackIDsDictionary(v49, v50, a4);
LABEL_47:
      IsContentAuthorized = 0;
      goto LABEL_13;
    }

    if (CFEqual(a2, @"EstimatedDuration"))
    {
      PlayabilityMetricsDictionary = itemfig_assureFormatReader(a1);
      if (PlayabilityMetricsDictionary)
      {
        goto LABEL_7;
      }

      v62 = kFigFormatReaderProperty_EstimatedDuration;
      goto LABEL_66;
    }

    if (CFEqual(a2, @"AccurateDuration"))
    {
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
      Duration = FigPlaybackItemGetDuration(a1, &keys);
      IsContentAuthorized = Duration;
      if (Duration)
      {
        DictionaryRepresentation = 0;
      }

      else
      {
        OUTLINED_FUNCTION_318_0(Duration, v52, v53, v54, v55, v56, v57, v58, v160.value, *&v160.timescale, v160.epoch, v161, v162, v163, v164, Seconds, valuePtr, cf, *&keys.start.value);
        DictionaryRepresentation = CMTimeCopyAsDictionary(v60, a3);
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"EndTime"))
    {
      OUTLINED_FUNCTION_29();
      if (!v89)
      {
        goto LABEL_38;
      }

      *&keys.start.value = *(v4 + 140);
      v59 = *(v4 + 156);
      goto LABEL_72;
    }

    if (CFEqual(a2, @"ReverseEndTime"))
    {
      OUTLINED_FUNCTION_29();
      if (!v89)
      {
        goto LABEL_38;
      }

      *&keys.start.value = *(v4 + 164);
      v59 = *(v4 + 180);
      goto LABEL_72;
    }

    if (CFEqual(a2, @"AdvanceTimeForOverlappedPlayback"))
    {
      OUTLINED_FUNCTION_29();
      if (!v89)
      {
        goto LABEL_38;
      }

      *&keys.start.value = *(v4 + 188);
      v59 = *(v4 + 204);
LABEL_72:
      keys.start.epoch = v59;
      p_keys = &keys;
LABEL_73:
      v68 = a3;
LABEL_74:
      DictionaryRepresentation = CMTimeCopyAsDictionary(&p_keys->start, v68);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"MaximumTimePlayedToSinceLastSeek"))
    {
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
      FigPlaybackItemGetCurrentTime(a1, &keys);
      OUTLINED_FUNCTION_29();
      if (!v89)
      {
        DictionaryRepresentation = 0;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_318_0(v69, v70, v71, v72, v73, v74, v75, v76, v160.value, *&v160.timescale, v160.epoch, v161, v162, v163, v164, Seconds, valuePtr, cf, *&keys.start.value);
      goto LABEL_73;
    }

    if (CFEqual(a2, @"LoopTimeRange"))
    {
      OUTLINED_FUNCTION_29();
      if (v89)
      {
        v77 = *(v4 + 252);
        *&keys.start.value = *(v4 + 236);
        *&keys.start.epoch = v77;
        *&keys.duration.timescale = *(v4 + 268);
        DictionaryRepresentation = CMTimeRangeCopyAsDictionary(&keys, a3);
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, @"ReversesMoreVideoFramesInMemory"))
    {
      v82 = MEMORY[0x1E695E4D0];
      v83 = *(v4 + 284);
      goto LABEL_97;
    }

    if (CFEqual(a2, @"AggressivelyCachesVideoFrames"))
    {
      v82 = MEMORY[0x1E695E4D0];
      v83 = *(v4 + 285);
      goto LABEL_97;
    }

    if (CFEqual(a2, @"DecodeAllFramesDuringOrdinaryPlayback"))
    {
      v82 = MEMORY[0x1E695E4D0];
      v83 = *(v4 + 286);
      goto LABEL_97;
    }

    if (CFEqual(a2, @"CleanApertureRectangle"))
    {
      if (!*(v4 + 656))
      {
        OUTLINED_FUNCTION_197_0();
        itemfig_copyVideoFormatDescription();
        IsContentAuthorized = v92;
        if (v92)
        {
          goto LABEL_13;
        }

        if (keys.start.value)
        {
          v93 = OUTLINED_FUNCTION_410();
          CleanAperture = CMVideoFormatDescriptionGetCleanAperture(v93, v94);
          x = CleanAperture.origin.x;
          y = CleanAperture.origin.y;
          width = CleanAperture.size.width;
          height = CleanAperture.size.height;
          CFRelease(keys.start.value);
        }

        else
        {
          height = 0.0;
          width = 0.0;
          y = 0.0;
          x = 0.0;
        }

        v176.origin.x = x;
        v176.origin.y = y;
        v176.size.width = width;
        v176.size.height = height;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v176);
        goto LABEL_12;
      }

      v84 = *(v4 + 736);
      v174.size.width = *(v4 + 720) * v84;
      v174.size.height = *(v4 + 728) * v84;
      v174.origin.x = 0.0;
      v174.origin.y = 0.0;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v174);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"EncodedDimensions"))
    {
      if (!*(v4 + 656))
      {
        OUTLINED_FUNCTION_197_0();
        itemfig_copyVideoFormatDescription();
        IsContentAuthorized = v102;
        if (v102)
        {
          goto LABEL_13;
        }

        if (keys.start.value)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions(keys.start.value);
          v104 = Dimensions.width;
          v105 = Dimensions.height;
          CFRelease(keys.start.value);
        }

        else
        {
          v105 = 0.0;
          v104 = 0.0;
        }

        v173.width = v104;
        v173.height = v105;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v173);
        goto LABEL_12;
      }

      v85 = *(v4 + 736);
      v172.width = *(v4 + 720) * v85;
      v172.height = *(v4 + 728) * v85;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v172);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"ApertureMode"))
    {
      if (*(v4 + 1193))
      {
        v86 = &kFigPlaybackItemApertureMode_CleanAperture;
        v87 = *(v4 + 1194);
        v88 = &kFigPlaybackItemApertureMode_ProductionAperture;
LABEL_110:
        v89 = v87 == 0;
        goto LABEL_111;
      }

      v86 = &kFigPlaybackItemApertureMode_EncodedPixels;
LABEL_120:
      DictionaryRepresentation = *v86;
      goto LABEL_10;
    }

    if (CFEqual(a2, @"VideoTrackMatrix"))
    {
      v90 = OUTLINED_FUNCTION_284();
      itemfig_copyVideoTrackMatrix(v90, v91, a4);
      goto LABEL_7;
    }

    if (CFEqual(a2, @"TrackIDArray"))
    {
      v107 = OUTLINED_FUNCTION_197_0();
      TrackIDArray = itemfig_createTrackIDArray(v107, v108, v109, v110, v111, v112, v113, v114, v160.value, SHIDWORD(v160.value), *&v160.timescale, v160.epoch, v161, v162, v163, v164, Seconds, valuePtr, cf, keys.start.value, *&keys.start.timescale);
    }

    else
    {
      if (!CFEqual(a2, @"ChosenTrackIDArray"))
      {
        if (CFEqual(a2, @"EQPreset"))
        {
          v99 = *MEMORY[0x1E695E480];
          v100 = (v4 + 976);
          v101 = kCFNumberIntType;
LABEL_125:
          DictionaryRepresentation = CFNumberCreate(v99, v101, v100);
          goto LABEL_11;
        }

        if (CFEqual(a2, @"VideoSlotArray"))
        {
          FigSimpleMutexLock();
          v106 = *(v4 + 1152);
          if (v106)
          {
            IsContentAuthorized = 0;
            *a4 = CFArrayCreateCopy(a3, v106);
          }

          else
          {
            IsContentAuthorized = 4294954513;
          }

LABEL_140:
          FigSimpleMutexUnlock();
          goto LABEL_13;
        }

        if (!CFEqual(a2, @"HasEnqueuedFirstVideoFrame"))
        {
          if (CFEqual(a2, @"BlendsVideoFrames"))
          {
            v86 = MEMORY[0x1E695E4D0];
            v87 = *(v4 + 1176);
LABEL_148:
            v88 = MEMORY[0x1E695E4C0];
            goto LABEL_110;
          }

          if (CFEqual(a2, @"PropagatePerFrameHDRDisplayMetadata"))
          {
            v86 = MEMORY[0x1E695E4D0];
            v87 = *(v4 + 1192);
            goto LABEL_148;
          }

          if (CFEqual(a2, @"ImageQueueInterpolationCurve"))
          {
            DictionaryRepresentation = *(v4 + 1168);
            goto LABEL_10;
          }

          if (CFEqual(a2, @"ReadBandwidth"))
          {
            if (*(v4 + 128))
            {
              v127 = MEMORY[0x1E6960DF8];
LABEL_163:
              v128 = *v127;
              CMBaseObject = CMByteStreamGetCMBaseObject();
              v65 = v128;
              v66 = 0;
              goto LABEL_67;
            }

            goto LABEL_375;
          }

          if (CFEqual(a2, @"FileSize"))
          {
            if (*(v4 + 128))
            {
              v127 = MEMORY[0x1E695FF78];
              goto LABEL_163;
            }

LABEL_375:
            IsContentAuthorized = 4294954513;
            goto LABEL_13;
          }

          if (CFEqual(a2, @"AvailableFileSize"))
          {
            if (*(v4 + 128))
            {
              v127 = MEMORY[0x1E695FF70];
              goto LABEL_163;
            }

            goto LABEL_375;
          }

          if (CFEqual(a2, @"AudioDeviceChannelMap"))
          {
            v129 = *(v4 + 984);
            *a4 = v129;
            if (v129)
            {
              CFRetain(v129);
            }

            goto LABEL_47;
          }

          if (!CFEqual(a2, @"MovieMatrix"))
          {
            if (CFEqual(a2, @"IsReadyForPlayback"))
            {
              v86 = MEMORY[0x1E695E4D0];
              v87 = *(v4 + 1306);
              goto LABEL_148;
            }

            if (CFEqual(a2, @"BasicsReadyForInspection"))
            {
              v86 = MEMORY[0x1E695E4D0];
              v87 = *(v4 + 1280);
              goto LABEL_148;
            }

            if (CFEqual(a2, @"ReadAheadAllowBackfill"))
            {
              if (*(v4 + 1429))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 1428);
                goto LABEL_148;
              }

              if (*(v4 + 128))
              {
                CMByteStreamGetCMBaseObject();
                FigCRABSGetClassID();
                OUTLINED_FUNCTION_577();
                if (CMBaseObjectIsMemberOfClass())
                {
                  v127 = kFigCachedReadAheadByteStreamProperty_ReadAheadAllowBackfill;
                  goto LABEL_163;
                }
              }

              goto LABEL_375;
            }

            if (CFEqual(a2, @"SaveDownloadedDataToDiskWhenDone"))
            {
              if (*(v4 + 128))
              {
                CMByteStreamGetCMBaseObject();
                FigCRABSGetClassID();
                OUTLINED_FUNCTION_577();
                if (CMBaseObjectIsMemberOfClass())
                {
                  v127 = kFigCachedReadAheadByteStreamProperty_SaveMemoryCacheToDiskWhenDone;
                  goto LABEL_163;
                }
              }

              goto LABEL_375;
            }

            if (CFEqual(a2, @"RequiresExternalProtection"))
            {
              v130 = *MEMORY[0x1E695E4C0];
              keys.start.value = *MEMORY[0x1E695E4C0];
              v131 = *(v4 + 1208);
              if (v131)
              {
                values[0] = 0;
                CFNumberGetValue(v131, kCFNumberSInt64Type, values);
                if (values[0])
                {
                  value = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  value = v130;
                }

                keys.start.value = value;
                if (value != v130)
                {
LABEL_190:
                  IsContentAuthorized = 0;
                  *a4 = value;
                  goto LABEL_13;
                }
              }

              else
              {
                value = v130;
              }

              itemfig_assureContentProtectionReadyForInspection(a1);
              v135 = *(v4 + 1200);
              if (v135)
              {
                IsContentAuthorized = CMBaseObjectCopyProperty(v135, @"ExternalProtectionRequiredForPlayback", a3, &keys);
                if (IsContentAuthorized)
                {
                  goto LABEL_13;
                }

                value = keys.start.value;
              }

              goto LABEL_190;
            }

            if (CFEqual(a2, @"CPEProtector"))
            {
              itemfig_assureContentProtectionReadyForInspection(a1);
              DictionaryRepresentation = *(v4 + 1200);
              if (!DictionaryRepresentation)
              {
                goto LABEL_11;
              }

              goto LABEL_10;
            }

            if (CFEqual(a2, @"IsAuthorizationRequired"))
            {
              itemfig_assureContentProtectionReadyForInspection(a1);
              v86 = MEMORY[0x1E695E4D0];
              v88 = MEMORY[0x1E695E4C0];
              v89 = *(v4 + 1200) == 0;
LABEL_111:
              if (v89)
              {
                v86 = v88;
              }

              goto LABEL_120;
            }

            if (!CFEqual(a2, @"IsAuthorized"))
            {
              if (CFEqual(a2, @"Metadata"))
              {
                OUTLINED_FUNCTION_502();
                itemfig_copyMetadata();
                goto LABEL_7;
              }

              if (CFEqual(a2, @"VideoCompositionInstructionArray"))
              {
                FigSimpleMutexLock();
                v133 = *(v4 + 680);
                if (v133)
                {
                  v133 = CFRetain(v133);
                }

                *a4 = v133;
                goto LABEL_203;
              }

              if (CFEqual(a2, @"VideoCompositorSourceSampleDataTrackIDs"))
              {
                FigSimpleMutexLock();
                v134 = *(v4 + 800);
                if (!v134)
                {
LABEL_202:
                  *a4 = v134;
LABEL_203:
                  FigSimpleMutexUnlock();
                  goto LABEL_47;
                }

LABEL_201:
                v134 = CFRetain(v134);
                goto LABEL_202;
              }

              if (CFEqual(a2, @"VideoCompositorSourceVideoTrackWindows"))
              {
                FigSimpleMutexLock();
                v134 = *(v4 + 808);
                if (!v134)
                {
                  goto LABEL_202;
                }

                goto LABEL_201;
              }

              if (CFEqual(a2, @"VideoCompositorSourceSampleDataTrackWindows"))
              {
                FigSimpleMutexLock();
                v134 = *(v4 + 816);
                if (!v134)
                {
                  goto LABEL_202;
                }

                goto LABEL_201;
              }

              if (CFEqual(a2, @"UsesMinimalLatencyForVideoCompositionRendering"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 688);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"VideoCompositor"))
              {
                switch(*(v4 + 664))
                {
                  case 1:
                    v86 = &kFigPlaybackItemVideoCompositor_Basic;
                    goto LABEL_120;
                  case 2:
                    v86 = &kFigPlaybackItemVideoCompositor_OpenGL;
                    goto LABEL_120;
                  case 3:
                    v86 = &kFigPlaybackItemVideoCompositor_vImage;
                    goto LABEL_120;
                  case 4:
                    v86 = &kFigPlaybackItemVideoCompositor_Metal;
                    goto LABEL_120;
                  default:
                    DictionaryRepresentation = *(v4 + 656);
                    if (DictionaryRepresentation)
                    {
                      goto LABEL_10;
                    }

                    break;
                }

                goto LABEL_11;
              }

              if (CFEqual(a2, @"SynchronizedLayers"))
              {
                DictionaryRepresentation = *(v4 + 904);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"BufferState"))
              {
                FigSimpleMutexLock();
                if (*(v4 + 1456))
                {
                  v139 = @"Full";
                }

                else
                {
                  v139 = @"Filling";
                  v142 = OUTLINED_FUNCTION_624();
                  CombinedPreferredMaximumBufferDuration = itemfig_getCombinedPreferredMaximumBufferDuration(v142, v143);
                  if (CombinedPreferredMaximumBufferDuration >= 1 && itemfig_getPlayableDurationAtCurrentTime(a1) >= CombinedPreferredMaximumBufferDuration)
                  {
                    v139 = @"Full";
                  }
                }

                v141 = v139;
                goto LABEL_257;
              }

              if (CFEqual(a2, @"WillKeepUpPrediction"))
              {
                FigSimpleMutexLock();
                v140 = &kFigPlaybackItemWillKeepUpPrediction_LikelyToKeepUp;
                if (*(v4 + 1472))
                {
                  v140 = &kFigPlaybackItemWillKeepUpPrediction_UnlikelyToKeepUp;
                }

                v141 = *v140;
                goto LABEL_257;
              }

              if (CFEqual(a2, @"LikelyToKeepUpTrigger"))
              {
                if (*(v4 + 1392))
                {
                  v86 = &kFigPlaybackItemLikelyToKeepUpTrigger_Live;
                }

                else
                {
                  v86 = &kFigPlaybackItemLikelyToKeepUpTrigger_Default;
                }

                goto LABEL_120;
              }

              if (CFEqual(a2, @"ConnectionState"))
              {
                FigSimpleMutexLock();
                v141 = *(v4 + 1464);
                if (!v141)
                {
LABEL_258:
                  *a4 = v141;
                  FigSimpleMutexUnlock();
                  goto LABEL_47;
                }

LABEL_257:
                v141 = CFRetain(v141);
                goto LABEL_258;
              }

              if (CFEqual(a2, @"ProgressToPlayThrough"))
              {
                LODWORD(keys.start.value) = 0;
                FigSimpleMutexLock();
                v145 = *(v4 + 600);
                if (v145)
                {
                  FigPlayabilityMonitorGetProgressToPlayThrough(v145, &keys);
                }

                FigSimpleMutexUnlock();
                v99 = *MEMORY[0x1E695E480];
                v100 = &keys;
                goto LABEL_302;
              }

              if (CFEqual(a2, @"ContinuePlayingDuringPrerollForSeek"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 287);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"ContinuePlayingDuringPrerollForRateChange"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 288);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"IFrameOnlySpeedThreshold"))
              {
                if (!*(v4 + 290))
                {
                  v146 = *(v4 + 352);
                  if (v146)
                  {
                    *(v4 + 292) = FigPlaybackBossGetIFrameOnlySpeedThreshold(v146);
                  }
                }

                v99 = *MEMORY[0x1E695E480];
                v100 = (v4 + 292);
                goto LABEL_302;
              }

              if (CFEqual(a2, @"UseIFrameOnlyPlaybackForHighRateScaledEdits"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 289);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"MinimumIntervalForIFrameOnlyPlayback"))
              {
                v68 = *MEMORY[0x1E695E480];
                keys.start.epoch = *(v4 + 312);
                *&keys.start.value = *(v4 + 296);
                p_keys = &keys;
                goto LABEL_74;
              }

              if (CFEqual(a2, @"ThoroughlyRefreshClosedCaptionsWhenSeeking"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 320);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"PlayabilityMetrics"))
              {
                if (*(v4 + 600))
                {
                  v147 = OUTLINED_FUNCTION_502();
                  PlayabilityMetricsDictionary = itemfig_createPlayabilityMetricsDictionary(v147, v148, a4);
                }

                else
                {
                  OUTLINED_FUNCTION_374();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160.value, v160.timescale, LODWORD(v160.epoch));
                }

                goto LABEL_7;
              }

              if (CFEqual(a2, @"EnableDownloadWhenInPlayQueue"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 1368);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"EnableDownloadWhenNotInPlayQueue"))
              {
                v86 = MEMORY[0x1E695E4D0];
                v87 = *(v4 + 1369);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"AccessLog"))
              {
                if (*(v4 + 1745))
                {
                  keys.start.value = 0;
                  CMBaseObjectGetDerivedStorage();
                  FigSimpleMutexLock();
                  MutableCopy = FigCFArrayCreateMutableCopy();
                  if (MutableCopy)
                  {
                    OUTLINED_FUNCTION_624();
                    if (!itemfig_createAccessLogEntry())
                    {
                      CFArrayAppendValue(MutableCopy, keys.start.value);
                    }

                    *a4 = MutableCopy;
                    IsContentAuthorized = 0;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_374();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160.value, v160.timescale, LODWORD(v160.epoch));
                    IsContentAuthorized = v150;
                    *a4 = 0;
                  }

                  goto LABEL_140;
                }

                goto LABEL_375;
              }

              if (CFEqual(a2, @"CanPlayFastForward") || CFEqual(a2, @"CanPlayFastReverse") || CFEqual(a2, @"CanPlayReverse") || CFEqual(a2, @"SupportsFrameStepping"))
              {
                goto LABEL_379;
              }

              if (CFEqual(a2, @"SoundCheckVolumeNormalization"))
              {
                v99 = *MEMORY[0x1E695E480];
                v100 = (v4 + 1488);
LABEL_302:
                v101 = kCFNumberFloat32Type;
                goto LABEL_125;
              }

              if (CFEqual(a2, @"Volume"))
              {
                v99 = *MEMORY[0x1E695E480];
                v100 = (v4 + 1476);
                goto LABEL_302;
              }

              if (CFEqual(a2, @"MediaKind"))
              {
                DictionaryRepresentation = *(v4 + 1496);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"LoudnessInfo"))
              {
                DictionaryRepresentation = *(v4 + 1504);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"VisualContextArray"))
              {
                FigSimpleMutexLock();
                v151 = *(v4 + 1776);
                if (v151)
                {
                  Copy = CFArrayCreateCopy(a3, v151);
                }

                else
                {
                  Copy = 0;
                }

                *a4 = Copy;
                goto LABEL_203;
              }

              if (CFEqual(a2, @"TextMarkupArray"))
              {
                DictionaryRepresentation = *(v4 + 1880);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"TextHighlightArray"))
              {
                DictionaryRepresentation = *(v4 + 1888);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"LegibleOutputs"))
              {
                v153 = *(v4 + 1800);
                if (!v153)
                {
                  goto LABEL_38;
                }

                goto LABEL_328;
              }

              if (CFEqual(a2, @"MetadataOutputs"))
              {
                DictionaryRepresentation = FigXMLNodeGetTag(*(v4 + 1808));
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                v153 = DictionaryRepresentation;
                goto LABEL_328;
              }

              if (CFEqual(a2, @"RenderedLegibleOutputs"))
              {
                v153 = *(v4 + 1832);
                if (!v153)
                {
LABEL_38:
                  IsContentAuthorized = 0;
                  goto LABEL_44;
                }

LABEL_328:
                DictionaryRepresentation = CFDictionaryCreateCopy(a3, v153);
                goto LABEL_11;
              }

              if (CFEqual(a2, @"MediaSelectionArray"))
              {
                IsContentAuthorized = itemfig_assureBasicsReadyForInspection(a1);
                DictionaryRepresentation = *(v4 + 1840);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_12;
                }

                goto LABEL_43;
              }

              if (CFEqual(a2, @"SelectedMediaArray"))
              {
                OUTLINED_FUNCTION_284();
                itemfig_createSelectedMediaArray();
                goto LABEL_7;
              }

              if (CFEqual(a2, @"EligibleForDSPBasedEnhancedDialogue"))
              {
                goto LABEL_379;
              }

              if (CFEqual(a2, @"SeekingWaitsForVideoCompositionRendering"))
              {
                v82 = MEMORY[0x1E695E4D0];
                v83 = *(v4 + 545);
                goto LABEL_97;
              }

              if (CFEqual(a2, @"AudioProcessingTap"))
              {
                DictionaryRepresentation = *(v4 + 1480);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (!CFEqual(a2, @"TimePitchAlgorithm"))
              {
                if (CFEqual(a2, @"AudioProcessingUnits"))
                {
                  DictionaryRepresentation = *(v4 + 1528);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (CFEqual(a2, @"AudioCurves"))
                {
                  DictionaryRepresentation = *(v4 + 1520);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
                {
                  v82 = MEMORY[0x1E695E4D0];
                  v83 = *(v4 + 1060);
                  goto LABEL_97;
                }

                if (CFEqual(a2, @"AutomaticallyLoadedAssetProperties"))
                {
                  DictionaryRepresentation = *(v4 + 1264);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (CFEqual(a2, @"AutomaticallyLoadedAssetTrackProperties"))
                {
                  DictionaryRepresentation = *(v4 + 1272);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (!CFEqual(a2, @"CanPlayUpTo2xForward"))
                {
                  if (CFEqual(a2, @"HasEnabledAudio"))
                  {
                    v82 = MEMORY[0x1E695E4D0];
                    v83 = *(v4 + 2065);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"HasEnabledVideo"))
                  {
                    v82 = MEMORY[0x1E695E4D0];
                    v83 = *(v4 + 2066);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"HasDiscoveredVideo"))
                  {
                    v82 = MEMORY[0x1E695E4D0];
                    v83 = *(v4 + 2067);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"PlayHapticTracks"))
                  {
                    v82 = MEMORY[0x1E695E4D0];
                    v83 = *(v4 + 1063);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"HapticPlaybackLocality"))
                  {
                    DictionaryRepresentation = *(v4 + 1072);
                    if (!DictionaryRepresentation)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_10;
                  }

                  if (CFEqual(a2, @"AudioSpatializationAllowed"))
                  {
                    v82 = MEMORY[0x1E695E4D0];
                    v83 = *(v4 + 1440);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"StereoAudioSpatializationAllowed"))
                  {
                    v82 = MEMORY[0x1E695E4D0];
                    v83 = *(v4 + 1441);
LABEL_97:
                    if (!v83)
                    {
                      v82 = MEMORY[0x1E695E4C0];
                    }

                    DictionaryRepresentation = *v82;
                    if (!*v82)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_10;
                  }

                  if (CFEqual(a2, @"CoordinationIdentifier"))
                  {
                    DictionaryRepresentation = *(v4 + 2080);
                    if (DictionaryRepresentation)
                    {
                      goto LABEL_10;
                    }

                    v154 = OUTLINED_FUNCTION_373();
                    FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(v154, v155);
                    DictionaryRepresentation = *(v4 + 2080);
                    if (DictionaryRepresentation)
                    {
                      goto LABEL_10;
                    }

                    goto LABEL_375;
                  }

                  if (CFEqual(a2, @"ParticipatesInCoordinatedPlayback"))
                  {
                    v86 = MEMORY[0x1E695E4D0];
                    v87 = *(v4 + 2088);
                    goto LABEL_148;
                  }

                  if (!CFEqual(a2, @"IsCoordinatedPlaybackSupported"))
                  {
                    if (!CFEqual(a2, @"ReportingAgent"))
                    {
                      if (CFEqual(a2, @"ArtificiallyDelayPreparingItemForTestingOnly"))
                      {
                        DictionaryRepresentation = FigCFNumberCreateFloat64();
                        goto LABEL_11;
                      }

                      if (CFEqual(a2, @"SpeedRampData"))
                      {
                        DictionaryRepresentation = *(v4 + 2128);
                        if (!DictionaryRepresentation)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_10;
                      }

                      if (CFEqual(a2, @"OverlapRange"))
                      {
                        DictionaryRepresentation = *(v4 + 2136);
                        if (!DictionaryRepresentation)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_10;
                      }

                      if (CFEqual(a2, @"UniqueInstanceIdentifier"))
                      {
                        v157 = *(v4 + 2192);
                        if (v157)
                        {
                          DictionaryRepresentation = CFStringCreateCopy(a3, v157);
                          goto LABEL_11;
                        }
                      }

                      else
                      {
                        if (CFEqual(a2, @"ImageQueueGauge"))
                        {
                          v158 = OUTLINED_FUNCTION_502();
                          DictionaryRepresentation = itemfig_copyImageQueueGauge(v158, v159);
                          goto LABEL_11;
                        }

                        if (CFEqual(a2, @"PriorImageQueueGauge"))
                        {
                          DictionaryRepresentation = *(v4 + 2200);
                          if (!DictionaryRepresentation)
                          {
                            goto LABEL_11;
                          }

                          goto LABEL_10;
                        }

                        if (!CFEqual(a2, @"MetricEventTimeline"))
                        {
                          if (!CFEqual(a2, @"PreferredMaximumBufferDuration"))
                          {
                            IsContentAuthorized = 4294954512;
                            goto LABEL_13;
                          }

                          DictionaryRepresentation = FigCFNumberCreateSInt32();
                          goto LABEL_11;
                        }

                        DictionaryRepresentation = *(v4 + 2232);
                        if (DictionaryRepresentation)
                        {
LABEL_10:
                          DictionaryRepresentation = CFRetain(DictionaryRepresentation);
                          goto LABEL_11;
                        }
                      }

                      goto LABEL_38;
                    }

                    FigSimpleMutexLock();
                    v156 = *(v4 + 1952);
                    if (v156)
                    {
                      v156 = CFRetain(v156);
                    }

                    *a4 = v156;
                    goto LABEL_203;
                  }
                }

LABEL_379:
                v86 = MEMORY[0x1E695E4D0];
                goto LABEL_120;
              }

              IsContentAuthorized = itemfig_assureBasicsReadyForInspection(a1);
              DictionaryRepresentation = *(v4 + 1512);
LABEL_43:
              DictionaryRepresentation = CFRetain(DictionaryRepresentation);
              goto LABEL_12;
            }

            itemfig_assureContentProtectionReadyForInspection(a1);
            v136 = *(v4 + 1200);
            if (!v136)
            {
              goto LABEL_379;
            }

            LODWORD(keys.start.value) = 0;
            IsApplicationAuthorized = FigCPEProtectorIsApplicationAuthorized(v136, &keys);
            if (IsApplicationAuthorized)
            {
              IsContentAuthorized = IsApplicationAuthorized;
            }

            else if (keys.start.value)
            {
              IsContentAuthorized = FigCPEProtectorIsContentAuthorized(*(v4 + 1200), &keys);
              if (!IsContentAuthorized && (keys.start.value & 1) != 0)
              {
                v138 = MEMORY[0x1E695E4D0];
                goto LABEL_218;
              }
            }

            else
            {
              IsContentAuthorized = 0;
            }

            v138 = MEMORY[0x1E695E4C0];
LABEL_218:
            DictionaryRepresentation = *v138;
            goto LABEL_43;
          }

          PlayabilityMetricsDictionary = itemfig_assureFormatReader(a1);
          if (PlayabilityMetricsDictionary)
          {
            goto LABEL_7;
          }

          v62 = kFigFormatReaderProperty_MovieMatrix;
LABEL_66:
          v63 = *v62;
          FigFormatReaderGetFigBaseObject();
          v65 = v63;
          v66 = a3;
LABEL_67:
          PlayabilityMetricsDictionary = CMBaseObjectCopyProperty(CMBaseObject, v65, v66, a4);
          goto LABEL_7;
        }

        VideoFrame = itemfig_hasEnqueuedFirstVideoFrame(a1);
        IsContentAuthorized = 0;
        v126 = MEMORY[0x1E695E4D0];
        if (!VideoFrame)
        {
          v126 = MEMORY[0x1E695E4C0];
        }

        v124 = *v126;
LABEL_145:
        *a4 = v124;
        goto LABEL_13;
      }

      v116 = OUTLINED_FUNCTION_197_0();
      TrackIDArray = itemfig_createChosenTrackIDArray(v116, v117, v118, v119, v120, v121, v122, v123, v160.value, *&v160.timescale, v160.epoch, v161, v162, v163, v164, Seconds, valuePtr, cf, keys.start.value, *&keys.start.timescale, keys.start.epoch, keys.duration.value, *&keys.duration.timescale, keys.duration.epoch);
    }

    IsContentAuthorized = TrackIDArray;
    v124 = keys.start.value;
    if (TrackIDArray)
    {
      v124 = 0;
    }

    goto LABEL_145;
  }

  v12 = OUTLINED_FUNCTION_293();
  PlayabilityMetricsDictionary = itemfig_copyPlayableTime(v12, v13);
LABEL_7:
  IsContentAuthorized = PlayabilityMetricsDictionary;
LABEL_13:
  CFRelease(v11);
  return IsContentAuthorized;
}