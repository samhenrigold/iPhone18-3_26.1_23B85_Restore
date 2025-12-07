uint64_t captureDeferredContainerManager_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredContainerManager >>>>", 0x6A, v9, v12, v13, a9);
  }

  else if (a2)
  {
    return 4294954509;
  }

  else
  {
    captureDeferredContainerManager_CopyProperty_cold_1(&v15);
    return v15;
  }
}

uint64_t captureDeferredContainerManager_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredContainerManager >>>>", 0x7F, v9, v12, v13, a9);
  }

  else if (a2)
  {
    return 4294954509;
  }

  else
  {
    captureDeferredContainerManager_SetProperty_cold_1(&v15);
    return v15;
  }
}

id captureDeferredContainerManager_CopySharedContainerIdentifiers(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager manifestsForApplicationID:"manifestsForApplicationID:err:" err:a2, &v4];
  if (v4)
  {
    captureDeferredContainerManager_CopySharedContainerIdentifiers_cold_1();
  }

  return v2;
}

uint64_t captureDeferredContainerManager_QueryContainerStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v7 queryContainerStatusForApplicationID:a2 captureRequestIdentifier:a3 status:a4];
}

uint64_t captureDeferredContainerManager_ReleaseRemoteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v5 releaseRemoteContainerForApplicationID:a2 captureRequestIdentifier:a3];
}

uint64_t captureDeferredContainerManager_DeleteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v5 deleteContainerForApplicationID:a2 captureRequestIdentifier:a3];
}

void __FigCaptureSourceInitialize_block_invoke(uint64_t a1)
{
  sVibeMitigation = [[FigCaptureSourceVibeMitigation alloc] initWithFigCaptureSourceBackings:*(a1 + 32)];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v47;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v47 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([objc_msgSend(objc_msgSend(*(*(&v46 + 1) + 8 * i) "attributes")])
          {
            [FigCaptureCalibrationMonitor initializeSharedInstanceWithCaptureSourceBackings:v2];
            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v34 = a1;
  v7 = *(a1 + 32);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = v7;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v46 + 1) + 8 * v13) attributes];
        v15 = [objc_msgSend(v14 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        v16 = [objc_msgSend(v14 objectForKeyedSubscript:{@"Position", "intValue"}];
        if (v15 <= 0xF && ((1 << v15) & 0x84AC) != 0)
        {
          v18 = v16;
          [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v15)}];
          v19 = BWCaptureDevicePositionAndDeviceTypeToPortType(v18, v15);
          if (v19)
          {
            [v38 addObject:v19];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v9 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      v11 = v9;
    }

    while (v9);
  }

  if (FigCapturePlatformSupportsExternalCameras(v9, v10) && ([v8 containsObject:&unk_1F22477D0] & 1) == 0)
  {
    [v38 addObject:*off_1E798A0E0];
    [v8 addObject:&unk_1F22477D0];
  }

  FigCaptureCameraStreamingPowerLogInitialize(v38, v8);

  sThermalMonitor = objc_alloc_init(FigCaptureThermalMonitor);
  sPowerMonitor = objc_alloc_init(FigCapturePowerMonitor);
  [sThermalMonitor setThermalHandler:&__block_literal_global_135];
  [sPowerMonitor setPowerHandler:&__block_literal_global_32_0];
  v39 = [MEMORY[0x1E695DF90] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obja = *(a1 + 32);
  v20 = [obja countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v35 = 0;
    v22 = *v42;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obja);
        }

        v24 = [*(*(&v41 + 1) + 8 * j) attributes];
        v25 = [objc_msgSend(v24 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        if (v25 <= 0xC)
        {
          if (((1 << v25) & 0x4AC) != 0)
          {
            v26 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(v24 objectForKeyedSubscript:{@"Position", "intValue"}], v25);
            if (!v26)
            {
              __FigCaptureSourceInitialize_block_invoke_cold_1();
            }

            [v39 setObject:objc_msgSend(v24 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorThermalLevelsByTemperature", v26}];
          }

          else if (((1 << v25) & 0x1040) != 0)
          {
            v35 = [objc_msgSend(v24 objectForKeyedSubscript:{@"PearlModuleType", "intValue"}];
          }
        }
      }

      v21 = [obja countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v21);
  }

  else
  {
    v35 = 0;
  }

  qword_1ED8451C0 = -[FigCaptureSystemPressureMonitor initWithPearlModuleType:sensorThermalLevelsByTemperatureByPortType:fineGrainThermalMonitoringEnabled:]([FigCaptureSystemPressureMonitor alloc], "initWithPearlModuleType:sensorThermalLevelsByTemperatureByPortType:fineGrainThermalMonitoringEnabled:", v35, v39, [objc_msgSend(*(v34 + 40) "commonSettings")]);
  [qword_1ED8451C0 setSystemPressureLevelChangedHandler:&__block_literal_global_38_1];
  v50[0] = 0x1F216ED50;
  v50[1] = 0x1F2185210;
  v50[2] = 0x1F2185310;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = [v27 countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    v32 = MEMORY[0x1E695E118];
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v27);
        }

        [v28 setObject:v32 forKeyedSubscript:*(*(&v46 + 1) + 8 * k)];
      }

      v30 = [v27 countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v30);
  }

  CFPreferencesSetValue(@"systemstyle-enabled", v28, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
}

uint64_t __FigCaptureSourceInitialize_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 thermalLevel];
  v4 = [sPowerMonitor powerPressureLevel];
  [a2 maxTorchLevel];
  v6 = v5;
  [sPowerMonitor maxTorchLevel];
  if (v6 >= v7)
  {
    v8 = sPowerMonitor;
  }

  else
  {
    v8 = a2;
  }

  [v8 maxTorchLevel];

  return cs_handleThermalPressureOrPowerChange(v3, v4, v9);
}

uint64_t cs_handleThermalPressureOrPowerChange(int a1, unsigned int a2, float a3)
{
  FigSimpleMutexLock();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = qword_1ED8451D0;
  v7 = [qword_1ED8451D0 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __cs_handleThermalPressureOrPowerChange_block_invoke;
        v17[3] = &__block_descriptor_40_e200_i16__0__FigCaptureSourceStorage_qiCC____8I____OpaqueFigSimpleMutex__q____CFString__i______OpaqueFigCaptureSource_f___i__OpaqueFigFlashlight__iBBB__OpaqueFigSimpleMutex__BB__OpaqueFigCaptureSource____8l;
        v18 = a1;
        v19 = a3;
        captureSource_safelyAccessStorage(v11, v17);
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v8);
  }

  if (_MergedGlobals_13 == 1)
  {
    v12 = a1 > 1 || a2 > 0x1D;
    v13 = v12;
    if (HIBYTE(_MergedGlobals_13) != v13)
    {
      HIBYTE(_MergedGlobals_13) = v13;
      if (dword_1ED844030)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cs_updateTimeOfFlightAFEnabledStatus();
    }
  }

  if (sStructuredLightAFEnabled == 1 && sStructuredLightAFSuspended != a1 > 1)
  {
    sStructuredLightAFSuspended = a1 > 1;
    if (dword_1ED844030)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cs_updateStructuredLightAFEnabledStatus();
  }

  return FigSimpleMutexUnlock();
}

uint64_t __FigCaptureSourceInitialize_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [sThermalMonitor thermalLevel];
  v4 = [a2 powerPressureLevel];
  [a2 maxTorchLevel];
  v6 = v5;
  [sThermalMonitor maxTorchLevel];
  if (v6 >= v7)
  {
    v8 = sThermalMonitor;
  }

  else
  {
    v8 = a2;
  }

  [v8 maxTorchLevel];

  return cs_handleThermalPressureOrPowerChange(v3, v4, v9);
}

void __FigCaptureSourceInitialize_block_invoke_4(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  FigSimpleMutexLock();
  v9 = [sAllVideoCaptureSources copy];
  FigSimpleMutexUnlock();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
  v47 = [v9 countByEnumeratingWithState:&v58 objects:v57 count:16];
  v10 = 0;
  if (!v47)
  {
    goto LABEL_60;
  }

  v46 = *v59;
  if (a2 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = a2 != 0;
  if (a2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  if (a3)
  {
    v12 = v13;
  }

  v41 = v12;
  v42 = v11;
  if (v11 <= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v11;
  }

  v39 = v12 | 4;
  v40 = v14;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  do
  {
    v15 = 0;
    do
    {
      if (*v59 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v58 + 1) + 8 * v15);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v18 = DerivedStorage;
        v48 = v10;
        FigSimpleMutexCheckIsNotLockedOnThisThread();
        FigSimpleMutexLock();
        v19 = [objc_msgSend(v18[13] objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        v20 = v19;
        v22 = v19 == 6 || v19 == 12;
        if (a4 != 0 && v22)
        {
          v23 = v39;
        }

        else
        {
          v23 = v41;
        }

        if (a4 != 0 && v22)
        {
          v24 = v40;
        }

        else
        {
          v24 = v42;
        }

        v25 = [v18[14] allKeys];
        if (v25 || (v25 = [v18[15] allKeys]) != 0)
        {
LABEL_34:
          v27 = v25;
        }

        else
        {
          v26 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(v18[13] objectForKeyedSubscript:{@"Position", "intValue"}], v20);
          if (v26)
          {
            v56 = v26;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
            goto LABEL_34;
          }

          v27 = 0;
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v52 objects:v51 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v53;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v53 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [objc_msgSend(a5 objectForKeyedSubscript:{*(*(&v52 + 1) + 8 * i)), "intValue"}];
              if (v24 <= v32)
              {
                v33 = v32;
              }

              else
              {
                v33 = v24;
              }

              if (v32)
              {
                v23 = v23 | 8;
              }

              else
              {
                v23 = v23;
              }

              if (v32)
              {
                v24 = v33;
              }

              else
              {
                v24 = v24;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v52 objects:v51 count:16];
          }

          while (v29);
        }

        v49[0] = @"Level";
        v34 = [MEMORY[0x1E696AD98] numberWithInt:v24];
        v49[1] = @"Factors";
        v50[0] = v34;
        v50[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
        [v18[18] setObject:v35 forKeyedSubscript:@"SystemPressureState"];
        [v18[10] setSystemPressureLevel:v24];
        [v18[10] setSystemPressureFactors:v23];
        [v18[10] setThermalSystemPressureLevel:v43];
        [v18[10] setPeakPowerSystemPressureLevel:v44];
        if (v24 == 4)
        {
          [v18[10] shutDownSystemPressuredDevice];
        }

        FigSimpleMutexUnlock();
        captureSource_postNotificationWithPayload(v16, @"SystemPressureState", v35);
        v10 = v48;
        if (v48 <= v24)
        {
          v10 = v24;
        }

        a4 = v45;
      }

      ++v15;
    }

    while (v15 != v47);
    v36 = [obj countByEnumeratingWithState:&v58 objects:v57 count:16];
    v47 = v36;
  }

  while (v36);
LABEL_60:

  if (sPreviousMaxSystemPressureLevel >= 4 && v10 <= 3)
  {
    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  }

  sPreviousMaxSystemPressureLevel = v10;
}

uint64_t FigCaptureSourceCreateFromBacking(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, CFTypeRef *a5)
{
  if ([a2 mediaType] == 1936684398)
  {
    v9 = a3[1];
    v12 = *a3;
    v13 = v9;
    return FigAudioCaptureSourceCreateFromBacking(a1, a2, &v12, a5);
  }

  else
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = v11;
    return FigVideoCaptureSourceCreateFromBacking(a1, a2, &v12, a5);
  }
}

uint64_t FigAudioCaptureSourceCreateFromBacking(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v21 = 0;
  v6 = [a2 attributes];
  v8 = v6;
  if (cs_initializeStatics_onceToken != -1)
  {
    FigCaptureSourceInitialize_cold_1();
  }

  FigCaptureSourceGetClassID(v6, v7);
  v9 = CMDerivedObjectCreate();
  v10 = v9;
  if (v9)
  {
    FigAudioCaptureSourceCreateFromBacking_cold_2(v9, &v21);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = a3[1];
    *(DerivedStorage + 16) = *a3;
    *(DerivedStorage + 32) = v12;
    v13 = *(DerivedStorage + 32);
    *clockOut = *(DerivedStorage + 16);
    v20 = v13;
    if (FigCaptureAuditTokenIsValid(clockOut))
    {
      v14 = *(DerivedStorage + 32);
      *clockOut = *(DerivedStorage + 16);
      v20 = v14;
      *(DerivedStorage + 72) = FigCaptureCopyClientCodeSigningIdentifier(clockOut);
    }

    *DerivedStorage = FigAtomicAdd32();
    *(DerivedStorage + 48) = FigSimpleMutexCreate();
    *(DerivedStorage + 56) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 104) = v8;
    *(DerivedStorage + 8) = [objc_msgSend(v8 objectForKeyedSubscript:{@"SourceType", "intValue"}];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clockOut[0] = 0;
    if ((FigCaptureAudiomxdSupportEnabled(v15, v16) & 1) == 0)
    {
      CMAudioDeviceClockCreate(*MEMORY[0x1E695E480], @"VirtualAudioDevice_Default", clockOut);
      if (clockOut[0])
      {
        [v15 setObject:clockOut[0] forKeyedSubscript:@"Clock"];
        CFRelease(clockOut[0]);
      }
    }

    [v15 setObject:&unk_1F22477A0 forKeyedSubscript:0x1F21A0A30];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Connected"];
    [v15 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"array"), @"Formats"}];
    *(DerivedStorage + 144) = v15;
    v18 = 0x1F21A16D0;
    *(DerivedStorage + 152) = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    *(DerivedStorage + 64) = 1;
    *(DerivedStorage + 13) = 1;
    *a4 = v21;
  }

  return v10;
}

void __FigProprietaryDefaultsCaptureSourceCreateWithSourceInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = @"ProprietaryDefaultKey";
  v7[1] = @"ProprietaryDefaultValue";
  v8[0] = a2;
  v8[1] = a3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [*(a1 + 32) retainReferencedObject];
  if (v5)
  {
    v6 = v5;
    captureSource_postNotificationWithPayload(v5, @"ProprietaryDefaultChanged", v4);
    CFRelease(v6);
  }
}

void *cs_updateStructuredLightAFTargetStreamResources()
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v0 = qword_1ED8451D0;
  result = [qword_1ED8451D0 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v11;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v10 + 1) + 8 * v4);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          v7 = DerivedStorage;
          if ([objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{0x1F219F9F0), "BOOLValue"}])
          {
            sStructuredLightAFTargetStreamSource = v5;
            v8 = [objc_msgSend(*(v7 + 80) "captureStream")];
            sStructuredLightAFTargetStream = v8;
            sStructuredLightAFTargetStreamStreaming = 0;
            FigSimpleMutexCheckIsLockedOnThisThread();
            [v8 registerForNotification:*off_1E798B8C0 listener:v8 callback:cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStartedNotification];
            return [v8 registerForNotification:*off_1E798B8C8 listener:v8 callback:cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStoppedNotification];
          }
        }

        v4 = v4 + 1;
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v2 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigVideoCaptureSourceActivateAttachedCaptureSource(const void *a1, const void *a2, void *a3)
{
  v7 = FigSimpleMutexLock();
  if (!a1 || !a2)
  {
    FigVideoCaptureSourceActivateAttachedCaptureSource_cold_2(v7);
    v23 = 4294954516;
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v9 = FigSimpleMutexLock();
  if (*(DerivedStorage + 12))
  {
    FigVideoCaptureSourceActivateAttachedCaptureSource_cold_1(v9);
    v23 = 4294954511;
LABEL_22:
    FigSimpleMutexUnlock();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v23, v3, v25[0], v25[1], v26, v27, v28, v29);
    goto LABEL_18;
  }

  if (*(DerivedStorage + 8) != 1)
  {
    v23 = 4294954516;
    goto LABEL_22;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __captureSourceRegisterWithHostSource_block_invoke;
  v35[3] = &unk_1E799DDE0;
  v35[4] = a3;
  captureSource_safelyAccessStorage(a2, v35);
  *(DerivedStorage + 224) = CFRetain(a2);
  *(DerivedStorage + 232) = a3;
  *(DerivedStorage + 13) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v10 = [sThermalMonitor thermalLevel];
  [sPowerMonitor maxTorchLevel];
  v12 = v11;
  [sThermalMonitor maxTorchLevel];
  if (v12 >= v13)
  {
    v14 = &sThermalMonitor;
  }

  else
  {
    v14 = &sPowerMonitor;
  }

  [*v14 maxTorchLevel];
  captureSource_setThermalLevelAndMaxTorchLevel(DerivedStorage, v10, v15);
  [qword_1ED8451C0 callSystemPressureLevelChangedHandler];
  v34 = @"ActiveMaxFrameRate";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = [*(DerivedStorage + 144) objectForKeyedSubscript:v21];
        if (v22)
        {
          captureSource_setPropertyInternal(a1, v21, v22);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v25 count:16];
    }

    while (v18);
  }

  FigSimpleMutexUnlock();
  [qword_1ED8451D0 addObject:a1];
  v23 = 0;
LABEL_18:
  FigSimpleMutexUnlock();
  return v23;
}

void FigVideoCaptureSourcesDeactivateWithDevices(CFArrayRef theArray, const __CFArray *a2, char a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v7 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count != v7)
  {
    FigVideoCaptureSourcesDeactivateWithDevices_cold_1();
  }

  FigSimpleMutexLock();
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 8) == 1)
      {
        v11 = DerivedStorage;
        if (_MergedGlobals_13 == 1 && (a3 & 1) == 0)
        {
          _MergedGlobals_13 = 256;
          cs_updateTimeOfFlightAFEnabledStatus();
        }

        if (!*(v11 + 12) && CFArrayGetValueAtIndex(a2, i) == *(v11 + 80))
        {
          FigVideoCaptureSourcesDeactivateWithDevices_cold_2(ValueAtIndex, v20);
        }
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = qword_1ED8451D0;
  v13 = [qword_1ED8451D0 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
LABEL_20:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = CMBaseObjectGetDerivedStorage();
      if (v17)
      {
        if ([objc_msgSend(*(v17 + 104) objectForKeyedSubscript:{0x1F219F9F0), "BOOLValue"}])
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v14)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    v18 = sStructuredLightAFEnabled;
    if (sStructuredLightAFEnabled == 1)
    {
      sStructuredLightAFEnabled = 0;
      sStructuredLightAFSuspended = v18;
      sStructuredLightAFTargetStreamStreaming = 0;
      cs_updateStructuredLightAFEnabledStatus();
    }

    v19 = sStructuredLightAFTargetStream;
    if (sStructuredLightAFTargetStream)
    {
      FigSimpleMutexCheckIsLockedOnThisThread();
      [v19 unregisterForNotification:*off_1E798B8C0 listener:v19];
      [v19 unregisterForNotification:*off_1E798B8C8 listener:v19];

      sStructuredLightAFTargetStream = 0;
      sStructuredLightAFTargetStreamSource = 0;
    }
  }

  FigSimpleMutexUnlock();
}

void cs_updateStructuredLightAFEnabledStatus()
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v11 = 0;
  if (sStructuredLightAFTargetStreamStreaming == 1 && sStructuredLightAFEnabled == 1)
  {
    v0 = sStructuredLightAFSuspended ^ 1;
  }

  else
  {
    v0 = 0;
  }

  v1 = [sStructuredLightAFAssistStream streaming];
  v2 = cs_copyActiveCaptureDevice();
  v3 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  v4 = v3;
  if (v0)
  {
    if ((v1 & 1) == 0)
    {
      v5 = sStructuredLightAFAssistStream;
      if (!sStructuredLightAFAssistStream)
      {
        sStructuredLightAFAssistStream = [v3 copyStreamFromDevice:v2 position:2 deviceType:5 deviceClientPriority:1 allowsStreamControlLoss:1 error:&v11];
        v6 = v11;
        if (v11 == -12681)
        {
          LODWORD(v13[0]) = 0;
          FigSimpleMutexCheckIsLockedOnThisThread();
          v7 = [v4 copyStreamWithoutControlFromDevice:v2 position:2 deviceType:5 error:v13];
          sStructuredLightAFAssistStreamControlledByAnotherClient = v7;
          if (v7)
          {
            cs_structuredLightAFAssistRegisterForAssistStreamNotifications(v7);
          }

          v6 = v11;
        }

        if (v6)
        {
          cs_updateStructuredLightAFEnabledStatus_cold_1();
          goto LABEL_24;
        }

        cs_structuredLightAFAssistRegisterForAssistStreamNotifications(sStructuredLightAFAssistStream);
        v5 = sStructuredLightAFAssistStream;
      }

      v8 = *off_1E798AE28;
      v12[0] = *off_1E798AE20;
      v12[1] = v8;
      v13[0] = &unk_1F22477A0;
      v13[1] = &unk_1F22477E8;
      v12[2] = *off_1E798AE30;
      v13[2] = &unk_1F2247800;
      if ([v5 setProperty:*off_1E798BF10 value:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 3)}])
      {
        cs_updateStructuredLightAFEnabledStatus_cold_2();
      }

      else if ([v5 setPropertyIfSupported:*off_1E798BE18 value:MEMORY[0x1E695E110]])
      {
        cs_updateStructuredLightAFEnabledStatus_cold_3();
      }

      else if ([v5 setProperty:*off_1E798C1A8 value:MEMORY[0x1E695E118]])
      {
        cs_updateStructuredLightAFEnabledStatus_cold_4();
      }

      [sStructuredLightAFAssistStream start];
    }
  }

  else if (sStructuredLightAFAssistStream | sStructuredLightAFAssistStreamControlledByAnotherClient)
  {
    if (sStructuredLightAFAssistStream)
    {
      v9 = sStructuredLightAFAssistStream;
    }

    else
    {
      v9 = sStructuredLightAFAssistStreamControlledByAnotherClient;
    }

    [sStructuredLightAFAssistStream stop];
    FigSimpleMutexCheckIsLockedOnThisThread();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigSimpleMutexCheckIsLockedOnThisThread();
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, 0}];
    [v4 takeBackStreams:v10 device:v2 totalStreamingDuration:0];

    sStructuredLightAFAssistStream = 0;
    sStructuredLightAFAssistStreamControlledByAnotherClient = 0;
  }

LABEL_24:
}

uint64_t FigVideoCaptureSourcesEnableTimeOfFlightAFIfSupported()
{
  FigSimpleMutexLock();
  cs_updateTimeOfFlightAFEnabledStatus();

  return FigSimpleMutexUnlock();
}

uint64_t FigVideoCaptureSourcesNeedDeferredTimeOfFlightAFEnablement()
{
  FigSimpleMutexLock();
  [qword_1ED8451D0 firstObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && _MergedGlobals_13 == 1 && (_MergedGlobals_13 & 0x100) == 0)
  {
    v1 = [*(DerivedStorage + 80) timeOfFlightAFEnabled] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void *FigCaptureSourceShowSystemUserInterface(int a1, const void *a2, const char *a3)
{
  if (FigCFEqual())
  {
    v36[0] = 0x1F2185490;
    v36[1] = 0x1F21852D0;
    v36[2] = @"com.apple.VideoConference.AVConferenceTestRunneriOS";
    v36[3] = @"com.apple.AVConferenceTestRunnertvOS";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v36;
    v8 = 4;
  }

  else
  {
    v35 = a2;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v35;
    v8 = 1;
  }

  v9 = [v6 arrayWithObjects:v7 count:v8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  result = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v32;
    v13 = *MEMORY[0x1E699F9D0];
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v31 + 1) + 8 * v14);
      v29 = 0;
      result = [MEMORY[0x1E69C75D0] handleForPredicate:objc_msgSend(MEMORY[0x1E69C7610] error:{"predicateMatchingBundleIdentifier:", v15), &v29}];
      if (v29)
      {
        break;
      }

      v16 = [result currentState];
      if ([v16 taskState] == 4 && objc_msgSend(objc_msgSend(v16, "endowmentNamespaces"), "containsObject:", v13))
      {
        if (a1 == 1)
        {
          v17 = @"com.apple.replaykit.VideoConferenceControlCenterModule";
        }

        else
        {
          if (a1 != 2)
          {
            return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v3, a3, v22, v23, v24, v25);
          }

          v17 = @"com.apple.replaykit.AudioConferenceControlCenterModule";
        }

        getCCSControlCenterServiceClass();
        if (!objc_opt_class())
        {
          return FigCaptureSourceShowSystemUserInterface_cold_1();
        }

        getCCSModulePresentationOptionsClass();
        if (!objc_opt_class())
        {
          return FigCaptureSourceShowSystemUserInterface_cold_1();
        }

        FigSimpleMutexLock();
        v18 = dispatch_semaphore_create(0);
        cs_updateShowSystemUserInterfaceDefaults(a2, a3);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __FigCaptureSourceShowSystemUserInterface_block_invoke;
        v28[3] = &unk_1E798F870;
        v28[4] = v18;
        v19 = [getCCSControlCenterServiceClass() sharedInstance];
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __FigCaptureSourceShowSystemUserInterface_block_invoke_2;
        v25 = &unk_1E799DCA8;
        v26 = v28;
        v27 = v17;
        [v19 setVisibility:1 forModuleWithIdentifier:v17 completionHandler:&v22];
        v20 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v18, v20);
        dispatch_release(v18);
        return FigSimpleMutexUnlock();
      }

      if (v11 == ++v14)
      {
        result = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
        v11 = result;
        if (result)
        {
          goto LABEL_6;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t getCCSControlCenterServiceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__44;
  v0 = getCCSControlCenterServiceClass_softClass;
  v7 = __Block_byref_object_dispose__44;
  v8 = getCCSControlCenterServiceClass_softClass;
  if (!getCCSControlCenterServiceClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCCSControlCenterServiceClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getCCSControlCenterServiceClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC4F1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getCCSModulePresentationOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__44;
  v0 = getCCSModulePresentationOptionsClass_softClass;
  v7 = __Block_byref_object_dispose__44;
  v8 = getCCSModulePresentationOptionsClass_softClass;
  if (!getCCSModulePresentationOptionsClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCCSModulePresentationOptionsClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getCCSModulePresentationOptionsClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC4F2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t cs_updateShowSystemUserInterfaceDefaults(const void *a1, const void *a2)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"show-system-ui-bundle-id", a1, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSetValue(@"show-system-ui-app-name", a2, @"com.apple.cameracapture.volatile", v4, v5);

  return CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v4, v5);
}

intptr_t __FigCaptureSourceShowSystemUserInterface_block_invoke(uint64_t a1)
{
  cs_updateShowSystemUserInterfaceDefaults(0, 0);
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t __FigCaptureSourceShowSystemUserInterface_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [getCCSControlCenterServiceClass() sharedInstance];
    v4 = *(a1 + 40);
    v5 = [getCCSModulePresentationOptionsClass() defaultOptions];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigCaptureSourceShowSystemUserInterface_block_invoke_3;
    v8[3] = &unk_1E799DC80;
    v8[4] = *(a1 + 32);
    return [v3 presentModuleWithIdentifier:v4 options:v5 completionHandler:v8];
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }
}

uint64_t FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType(const void *a1, void *a2, uint64_t a3, int *a4)
{
  v27 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__44;
  v25 = __Block_byref_object_dispose__44;
  v26 = 0;
  v8 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a1, a3, &v27);
  v9 = v8;
  if (v27)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v4, v14, v15, v16, v17, v18, v19);
    if (v9)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

  else
  {
    if (v8 || a1 && (v9 = CFRetain(a1)) != 0)
    {
      v10 = [objc_msgSend(objc_msgSend(a2 "formatDictionary")];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType_block_invoke;
      v18 = &unk_1E799DCF8;
      v19 = v10;
      v20 = &v21;
      v11 = captureSource_safelyAccessStorage(v9, &v15);
      v27 = v11;
      if (v11)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v4, v14, v15, v16, v17, v18, v19);
      }

      goto LABEL_7;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v14, v15, v16, v17, v18, v19);
  }

  if (a4)
  {
    *a4 = v27;
  }

  v12 = v22[5];
  _Block_object_dispose(&v21, 8);
  return v12;
}

void sub_1ACC4F6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a2 + 96);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isFastSwitchingConfigurationRequired])
        {
          v9 = [objc_msgSend(objc_msgSend(v8 "formatDictionary")];
          v10 = *(a1 + 32);
          if ((!v10 || objc_msgSend_isEqualToString_(v10)) && (!v9 || *(a1 + 32)))
          {
            v11 = *(*(*(a1 + 40) + 8) + 40);
            if (!v11)
            {
              *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E695DF70] array];
              v11 = *(*(*(a1 + 40) + 8) + 40);
            }

            [v11 addObject:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }

  return 0;
}

uint64_t FigCaptureSourceDetachFromClient(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844030)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v5 = a2[1];
  v17 = *a2;
  v18 = v5;
  v6 = *(DerivedStorage + 32);
  *v16 = *(DerivedStorage + 16);
  *&v16[16] = v6;
  if (FigCaptureAuditTokensAreEqual(&v17, v16))
  {
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *(DerivedStorage + 16) = v7;
    *(DerivedStorage + 32) = v7;
    v8 = *(DerivedStorage + 80);
    v9 = *(DerivedStorage + 32);
    v17 = *(DerivedStorage + 16);
    v18 = v9;
    [v8 updateClientAuditToken:&v17];
  }

  else if (dword_1ED844030)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v20;
    if (os_log_type_enabled(v10, v19))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *(DerivedStorage + 32);
      v17 = *(DerivedStorage + 16);
      v18 = v13;
      PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v17);
      *v16 = 136315394;
      *&v16[4] = "FigCaptureSourceDetachFromClient";
      *&v16[12] = 1024;
      *&v16[14] = PIDFromAuditToken;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  return 0;
}

const __CFArray *FigCaptureSourceCopySources(int a1)
{
  if (FigCaptureCurrentProcessIsCameracaptured() || FigCaptureCurrentProcessIsMediaserverd())
  {
    v5 = 0u;
    v6 = 0u;
    FigCaptureGetCurrentProcessAuditToken(&v5);
    v4[0] = v5;
    v4[1] = v6;
    return FigCaptureSourceCopySourcesForClientAuditToken(a1, v4, 0, 1);
  }

  else
  {
    v3 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v3);
  }
}

void __cs_initializeStatics_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v2 = fig_note_initialize_category_with_default_work_cf();
  FigCaptureInitializeSingletons(v2, v3);
  qword_1ED8451D0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  qword_1ED8451C8 = FigSimpleMutexCreate();
  sAllVideoCaptureSourcesLock = FigSimpleMutexCreate();
  sAllProprietaryDefaultsCaptureSources = objc_alloc_init(MEMORY[0x1E695DF70]);
  sAllProprietaryDefaultsCaptureSourcesLock = FigSimpleMutexCreate();
  sShowSystemUserInterfaceLock = FigSimpleMutexCreate();
  sAllVideoCaptureSources = objc_alloc_init(MEMORY[0x1E695DF70]);
  sNewCaptureSourceToken = FigGetUpTimeNanoseconds() / 0xF4240uLL;
  if (cs_initializeCameraHistoryTemporaryItems_onceToken != -1)
  {
    __cs_initializeStatics_block_invoke_cold_1();
  }
}

id __cs_initializeCameraHistoryTemporaryItems_block_invoke()
{
  sServerUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [sServerUserDefaults objectForKey:@"boot-time"];
  v1 = mach_continuous_time();
  info = 0;
  if (mach_timebase_info(&info) || info.numer == 1 && info.denom == 1)
  {
    v2 = v1;
  }

  else
  {
    v2 = info.numer / info.denom * v1;
  }

  v3 = v2 / *"";
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4 + v3;
  if (dword_1ED844030)
  {
    v40 = 0;
    v39 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v40;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v39))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      [v0 doubleValue];
      v10 = v9;
      [v0 doubleValue];
      v30 = 136315906;
      v31 = "cs_initializeCameraHistoryTemporaryItems_block_invoke";
      v32 = 2048;
      v33 = v10;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = vabdd_f64(v5, v11);
      LODWORD(v27) = 42;
      v24 = &v30;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v0 doubleValue];
  if (vabdd_f64(v5, v12) <= 1.0)
  {
    if (dword_1ED844030)
    {
      v40 = 0;
      v39 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v40;
      if (os_log_type_enabled(v13, v39))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v30 = 136315138;
        v31 = "cs_initializeCameraHistoryTemporaryItems_block_invoke";
        LODWORD(v28) = 12;
        v25 = &v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [sServerUserDefaults setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v5), @"boot-time"}];
    [sServerUserDefaults setObject:0 forKey:@"tmp"];
  }

  v16 = [sServerUserDefaults objectForKey:{@"tmp", v25, v28}];
  if ([v16 count])
  {
    sTemporaryCameraHistoryItems = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v16];
    if (dword_1ED844030)
    {
      v40 = 0;
      v39 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v40;
      if (os_log_type_enabled(v17, v39))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v30 = 136315395;
        v31 = "cs_initializeCameraHistoryTemporaryItems_block_invoke";
        v32 = 2113;
        v33 = v16;
        LODWORD(v29) = 22;
        v26 = &v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    sTemporaryCameraHistoryItems = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  sTemporaryCameraHistoryItemsLock = FigReentrantMutexCreate();
  v20 = [sTemporaryCameraHistoryItems objectForKeyedSubscript:@"camera-history-downplay-override-list"];
  if ([v20 count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v20];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  sCameraHistoryDownplayOverrideList = v21;
  v22 = [sTemporaryCameraHistoryItems objectForKeyedSubscript:{@"camera-histories-updated-with-overriding-camera", v26, v29}];
  if ([v22 count])
  {
    result = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v22];
  }

  else
  {
    result = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  sCameraHistoriesUpdatedWithOverridingCamera = result;
  return result;
}

void captureSource_handleAttachedAccessoriesNotification(uint64_t a1, const void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = [a5 objectForKeyedSubscript:{0x1F21A1ED0, a4}];
  if (objc_msgSend_isEqualToString_(a3))
  {
    v8 = kFigCaptureSourceProperty_WalletAccessoryConnected;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(a3))
    {
      return;
    }

    v8 = kFigCaptureSourceProperty_BatteryPackAccessoryConnected;
  }

  v9 = *v8;

  captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, v9, v7, 0, 0);
}

uint64_t captureSource_handleHostCaptureSourceNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t __captureSourceUnregisterWithHostSource_block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a2 + 240) containsObject:*(a1 + 32)])
  {
    [*(a2 + 240) removeObject:*(a1 + 32)];
    if (![*(a2 + 240) count])
    {

      *(a2 + 240) = 0;
    }
  }

  return 0;
}

void captureSource_handleFlashlightNotification(uint64_t a1, const void *a2, void *a3, uint64_t a4, void *a5)
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"FlashlightLevel", a4))
  {
    v8 = [a5 objectForKeyedSubscript:@"FlashlightValue"];
    v9 = MEMORY[0x1E696AD98];
    [v8 floatValue];
    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"TorchActive", [v9 numberWithInt:v10 > 0.0], 0, 0);
    v11 = @"TorchLevel";
    v12 = a2;
    v13 = v8;
    v14 = 1;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(a3))
    {
      return;
    }

    v13 = [a5 objectForKeyedSubscript:@"FlashlightValue"];
    v11 = @"TorchOverheated";
    v12 = a2;
    v14 = 0;
  }

  captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v12, v11, v13, v14, 0);
}

uint64_t FigCaptureSourceSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void __captureSource_setPropertyInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v2 + 198) = 0;
  if (*(v2 + 168) <= 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v1, @"AdjustingFocus", *v3, 0, 0);
}

void __captureSource_handleThirdPartyTorchLevelCommand_block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    FigSimpleMutexLock();
  }

  *(*(result + 40) + 192) = a3;
  if (a3 == 1)
  {
    captureSource_turnOffAndTeardownFigFlashlight(*(result + 48));
  }

  v5 = *(*(result + 32) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    FigSimpleMutexUnlock();
    v5 = *(*(result + 32) + 8);
  }

  *(v5 + 24) = 0;
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStartedNotification(uint64_t a1, uint64_t a2)
{
  v3 = FigSimpleMutexLock();
  if (sStructuredLightAFTargetStream == a2)
  {
    if ((sStructuredLightAFTargetStreamStreaming & 1) == 0)
    {
      sStructuredLightAFTargetStreamStreaming = 1;
      cs_updateStructuredLightAFEnabledStatus();
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStartedNotification_cold_1(v3);
  }

  return FigSimpleMutexUnlock();
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStoppedNotification(uint64_t a1, uint64_t a2)
{
  v3 = FigSimpleMutexLock();
  if (sStructuredLightAFTargetStream == a2)
  {
    if (sStructuredLightAFTargetStreamStreaming == 1)
    {
      sStructuredLightAFEnabled = 0;
      sStructuredLightAFTargetStreamStreaming = 0;
      cs_updateStructuredLightAFEnabledStatus();
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStoppedNotification_cold_1(v3);
  }

  return FigSimpleMutexUnlock();
}

uint64_t __captureSourceRegisterWithHostSource_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 240);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    *(a2 + 240) = v4;
  }

  if (([v4 containsObject:*(a1 + 32)] & 1) == 0)
  {
    [*(a2 + 240) addObject:*(a1 + 32)];
  }

  return 0;
}

uint64_t cs_structuredLightAFAssistRegisterForAssistStreamNotifications(uint64_t a1)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlTakenByAnotherClientNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = FigSimpleMutexLock();
  if (sStructuredLightAFTargetStreamSource == a2)
  {
    if (sStructuredLightAFAssistStream == a4)
    {
      if (!sStructuredLightAFAssistStreamControlledByAnotherClient)
      {
        sStructuredLightAFAssistStreamControlledByAnotherClient = sStructuredLightAFAssistStream;
        sStructuredLightAFAssistStream = 0;
      }
    }

    else
    {
      cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlTakenByAnotherClientNotification_cold_2(v6);
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlTakenByAnotherClientNotification_cold_1(v6);
  }

  return FigSimpleMutexUnlock();
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = FigSimpleMutexLock();
  if (sStructuredLightAFTargetStreamSource == a2)
  {
    if (sStructuredLightAFAssistStreamControlledByAnotherClient == a4)
    {
      if (a4)
      {
        v7 = cs_copyActiveCaptureDevice();
        v8 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
        v10 = sStructuredLightAFAssistStreamControlledByAnotherClient;
        LODWORD(v8) = [v8 requestControlOfStreams:objc_msgSend(MEMORY[0x1E695DEC8] device:"arrayWithObjects:count:" deviceClientPriority:{&v10, 1), v7, 1}];

        if (!v8)
        {
          sStructuredLightAFAssistStream = sStructuredLightAFAssistStreamControlledByAnotherClient;
          sStructuredLightAFAssistStreamControlledByAnotherClient = 0;
          cs_updateStructuredLightAFEnabledStatus();
        }
      }

      else
      {
        cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification_cold_3(v6);
      }
    }

    else
    {
      cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification_cold_2(v6);
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlRelinquishedByAnotherClientNotification_cold_1(v6);
  }

  return FigSimpleMutexUnlock();
}

Class __getCCSControlCenterServiceClass_block_invoke(uint64_t a1)
{
  ControlCenterServicesLibrary();
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCCSControlCenterServiceClass_block_invoke_cold_1();
  }

  getCCSControlCenterServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void ControlCenterServicesLibrary()
{
  v0[0] = 0;
  if (!ControlCenterServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ControlCenterServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E799DE48;
    v2 = 0;
    ControlCenterServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ControlCenterServicesLibraryCore_frameworkLibrary)
  {
    ControlCenterServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ControlCenterServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ControlCenterServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCCSModulePresentationOptionsClass_block_invoke(uint64_t a1)
{
  ControlCenterServicesLibrary();
  result = objc_getClass("CCSModulePresentationOptions");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCCSModulePresentationOptionsClass_block_invoke_cold_1();
  }

  getCCSModulePresentationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t captureSource_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = 0;
  v5 = *(DerivedStorage + 8);
  if (v5 == 5)
  {
    v6 = &sAllProprietaryDefaultsCaptureSources;
LABEL_11:
    FigSimpleMutexLock();
    [*v6 removeObject:a1];
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    FigSimpleMutexLock();
    if (_MergedGlobals_13 == 1 && [*(v3 + 80) device])
    {
      captureSource_Invalidate_cold_1((v3 + 80));
    }

    if ([qword_1ED8451D0 containsObject:a1])
    {
      captureSource_Invalidate_cold_2(a1, &v10);
      v4 = v10;
    }

    else
    {
      v4 = 0;
    }

    FigSimpleMutexUnlock();
    v6 = &sAllVideoCaptureSources;
    goto LABEL_11;
  }

LABEL_12:
  *(v3 + 12) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  if (*(v3 + 8) == 5)
  {
    FigSimpleMutexLock();

    *(v3 + 208) = 0;
    FigSimpleMutexUnlock();
  }

  FigSimpleMutexLock();
  v7 = *(v3 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(v3 + 72) = 0;
  }

  *(v3 + 96) = 0;
  *(v3 + 80) = 0;

  *(v3 + 104) = 0;
  *(v3 + 120) = 0;

  *(v3 + 112) = 0;
  *(v3 + 152) = 0;

  *(v3 + 160) = 0;
  captureSource_turnOffAndTeardownFigFlashlight(a1);
  v8 = *(v3 + 184);
  *(v3 + 184) = 0;

  *(v3 + 240) = 0;
  FigSimpleMutexUnlock();
  if (v4)
  {
    CFRelease(v4);
  }

  [v8 invalidate];

  return 0;
}

void captureSource_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844030)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  captureSource_Invalidate(a1);
  if (*(DerivedStorage + 48))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 48) = 0;
  }

  if (*(DerivedStorage + 200))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 200) = 0;
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 56) = 0;
  }
}

uint64_t captureSource_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 12))
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  v7 = BWPhotoEncoderStringFromEncodingScheme(*(DerivedStorage + 8));
  return [v3 initWithFormat:@"<FigCaptureSource %p> retainCount: %ld%s, allocator: %p, type: %@, position: %@, active = %d, token = %lld, prewarmEnabled = %d", a1, v4, v5, v6, v7, BWPhotoEncoderStringFromEncodingScheme(*(DerivedStorage + 88)), *(DerivedStorage + 13), *DerivedStorage, *(DerivedStorage + 216)];
}

uint64_t captureSource_UnregisterNotificationForProprietaryDefaultChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    v14 = qword_1ED844028;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE0FLL, "<<<< FigCaptureSource >>>>", 0x17C3, v9, v12, v13, a9);
  }

  else if (a2)
  {
    v16 = DerivedStorage;
    FigSimpleMutexLock();
    v17 = *(v16 + 208);
    FigSimpleMutexUnlock();
    [v17 stopObservingChangesForKey:a2];

    return 0;
  }

  else
  {
    captureSource_UnregisterNotificationForProprietaryDefaultChanges_cold_1(&v18);
    return v18;
  }
}

uint64_t captureSource_UpdateCameraOverrideHistory(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, _BYTE *a6, void **a7)
{
  v7 = a7;
  v12 = a2;
  *a6 = 0;
  *a7 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 12))
  {
    return 4294954511;
  }

  v58 = a6;
  v59 = a5;
  if (!a5)
  {
    if (dword_1ED844030)
    {
      LODWORD(v71) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if ([sTemporaryCameraHistoryItems objectForKeyedSubscript:a3])
    {
      v29 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(sTemporaryCameraHistoryItems, "objectForKeyedSubscript:", a3)}];
    }

    else
    {
      v29 = [MEMORY[0x1E695DF70] array];
    }

    v30 = v29;
    FigSimpleMutexUnlock();
    v57 = v12;
    if ([v30 count])
    {
      v31 = 0;
      while (!cs_cameraInfosAreEqualExcludingRank(a4, [v30 objectAtIndexedSubscript:{v31, v52, v53}]))
      {
        if (++v31 >= [v30 count])
        {
          goto LABEL_37;
        }
      }

      [v30 removeObjectAtIndex:v31];
      FigSimpleMutexLock();
      v32 = 1;
    }

    else
    {
LABEL_37:
      FigSimpleMutexLock();
      v32 = 0;
      if ([sTemporaryCameraHistoryItems objectForKeyedSubscript:a3])
      {
LABEL_52:
        FigSimpleMutexUnlock();
        v36 = [sCameraHistoriesUpdatedWithOverridingCamera allKeys];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v37 = [v36 countByEnumeratingWithState:&v71 objects:v70 count:16];
        if (v37)
        {
          v38 = v37;
          v56 = v32;
          v54 = v7;
          v55 = a1;
          v39 = 0;
          v40 = *v72;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v72 != v40)
              {
                objc_enumerationMutation(v36);
              }

              v42 = *(*(&v71 + 1) + 8 * i);
              if (cs_cameraInfosAreEqualExcludingRank(a4, [sCameraHistoriesUpdatedWithOverridingCamera objectForKeyedSubscript:{v42, v52, v53}]))
              {
                [sCameraHistoryDownplayOverrideList removeObject:v42];
                [sCameraHistoriesUpdatedWithOverridingCamera setObject:0 forKeyedSubscript:v42];
                v39 = 1;
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v71 objects:v70 count:16];
          }

          while (v38);
          if (v39)
          {
            v7 = v54;
            a1 = v55;
            if (dword_1ED844030)
            {
              v69 = 0;
              v68 = OS_LOG_TYPE_DEFAULT;
              v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v44 = v69;
              if (os_log_type_enabled(v43, v68))
              {
                v45 = v44;
              }

              else
              {
                v45 = v44 & 0xFFFFFFFE;
              }

              if (v45)
              {
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigSimpleMutexLock();
            [sTemporaryCameraHistoryItems setObject:sCameraHistoriesUpdatedWithOverridingCamera forKeyedSubscript:@"camera-histories-updated-with-overriding-camera"];
            [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
            FigSimpleMutexUnlock();
            v46 = 1;
          }

          else
          {
            v46 = 0;
            v7 = v54;
            a1 = v55;
          }

          v32 = v56;
        }

        else
        {
          v46 = 0;
        }

        v28 = v32 | v46;
        v24 = v57;
        goto LABEL_74;
      }
    }

    if (dword_1ED844030)
    {
      LODWORD(v71) = 0;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = v71;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v60 = 136315907;
        v61 = "cs_removeFromCameraOverrideHistory";
        v62 = 1025;
        v63 = v12;
        v64 = 2113;
        v65 = a3;
        v66 = 2113;
        v67 = v30;
        LODWORD(v53) = 38;
        v52 = &v60;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [sTemporaryCameraHistoryItems setObject:v30 forKeyedSubscript:{a3, v52, v53}];
    [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
    goto LABEL_52;
  }

  if (dword_1ED844030)
  {
    LODWORD(v71) = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v17 = v12;
  if ([sTemporaryCameraHistoryItems objectForKeyedSubscript:a3])
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(sTemporaryCameraHistoryItems, "objectForKeyedSubscript:", a3)}];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] array];
  }

  v19 = v18;
  FigSimpleMutexUnlock();
  v20 = [objc_msgSend(a4 objectForKeyedSubscript:{@"OverrideRanking", "intValue"}];
  if ([v19 count])
  {
    v21 = 0;
    do
    {
      v22 = [v19 objectAtIndexedSubscript:{v21, v52, v53}];
      if (cs_cameraInfosAreEqualExcludingRank(a4, v22))
      {
        return 0;
      }

      v23 = [objc_msgSend(v22 objectForKeyedSubscript:{@"OverrideRanking", "intValue"}];
      if (v20)
      {
        if (v20 <= v23)
        {
          goto LABEL_20;
        }
      }

      else if (v23 > 0)
      {
LABEL_20:
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        [v19 insertObject:a4 atIndex:v21];
        v24 = v17;
        while (++v21 < [v19 count])
        {
          if (cs_cameraInfosAreEqualExcludingRank(a4, [v19 objectAtIndexedSubscript:v21]))
          {
            [v19 removeObjectAtIndex:v21];
            goto LABEL_22;
          }
        }

        goto LABEL_22;
      }
    }

    while (++v21 < [v19 count]);
  }

  [v19 addObject:{a4, v52, v53}];
  v24 = v17;
LABEL_22:
  if (dword_1ED844030)
  {
    LODWORD(v71) = 0;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v71;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v60 = 136315907;
      v61 = "cs_addToCameraOverrideHistory";
      v62 = 1025;
      v63 = v24;
      v64 = 2113;
      v65 = a3;
      v66 = 2113;
      v67 = v19;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  [sTemporaryCameraHistoryItems setObject:v19 forKeyedSubscript:a3];
  [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
  FigSimpleMutexUnlock();
  v28 = 1;
LABEL_74:
  if (v59 && v28)
  {
    if (dword_1ED844030)
    {
      LODWORD(v71) = 0;
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = v71;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFE;
      }

      if (v49)
      {
        v60 = 136315651;
        v61 = "captureSource_UpdateCameraOverrideHistory";
        v62 = 1025;
        v63 = v24;
        v64 = 2113;
        v65 = a3;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cs_updateCameraHistoryDownplayOverrideListForPreferenceKey(0);
  }

  if (v28)
  {
    *v58 = 1;
    FigSimpleMutexLock();
    v50 = [sTemporaryCameraHistoryItems objectForKeyedSubscript:a3];
    if (v50)
    {
      v51 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v50];
      *v7 = v51;
    }

    else
    {
      v51 = *v7;
    }

    cs_sendNotificationOfNewTransientValue(a1, v51, a3);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t captureSource_PerformReactionEffect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    v14 = qword_1ED844028;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE0FLL, "<<<< FigCaptureSource >>>>", 0x1894, v9, v12, v13, a9);
  }

  else if (a2)
  {
    [*(DerivedStorage + 80) performReactionEffect:a2];
    return 0;
  }

  else
  {
    captureSource_PerformReactionEffect_cold_1(&v16);
    return v16;
  }
}

uint64_t captureSource_SetPixelBufferProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t captureSource_CopyWildcardProprietaryDefault(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    v15 = qword_1ED844028;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE0FLL, "<<<< FigCaptureSource >>>>", 0x176A, v9, v13, v14, a9);
  }

  else if (a2)
  {
    if (a3)
    {
      v17 = DerivedStorage;
      FigSimpleMutexLock();
      v18 = *(v17 + 208);
      FigSimpleMutexUnlock();
      v19 = [v18 objectsForWildcardKey:a2];

      [v19 count];
      v20 = v19;
      result = 0;
      *a3 = v20;
    }

    else
    {
      captureSource_CopyWildcardProprietaryDefault_cold_1(&v21);
      return v21;
    }
  }

  else
  {
    captureSource_CopyWildcardProprietaryDefault_cold_2(&v22);
    return v22;
  }

  return result;
}

uint64_t captureSource_SetWildcardProprietaryDefault(uint64_t a1, const __CFString *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    v16 = qword_1ED844028;
    v17 = v9;
    v18 = 4294954511;
    v19 = 6025;
  }

  else
  {
    if (!a2)
    {
      captureSource_SetWildcardProprietaryDefault_cold_2(&v24);
      return v24;
    }

    if (!a4)
    {
      captureSource_SetWildcardProprietaryDefault_cold_1(&v23);
      return v23;
    }

    v20 = DerivedStorage;
    if (!CFStringHasPrefix(a2, @"signal/"))
    {
      FigSimpleMutexLock();
      v22 = *(v20 + 208);
      FigSimpleMutexUnlock();
      *a4 = [v22 setObject:a3 forWildcardKey:a2];

      return 0;
    }

    v16 = qword_1ED844028;
    v17 = v9;
    v18 = 4294954514;
    v19 = 6032;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v18, "<<<< FigCaptureSource >>>>", v19, v17, v14, v15, a9);
}

void cs_sendNotificationOfNewTransientValue(uint64_t a1, void *a2, void *a3)
{
  FigSimpleMutexLock();
  v6 = objc_alloc(MEMORY[0x1E695DEC8]);
  v7 = [v6 initWithArray:sAllProprietaryDefaultsCaptureSources];
  FigSimpleMutexUnlock();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v31 + 1) + 8 * i) != a1)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v13 = *(DerivedStorage + 208);
          FigSimpleMutexUnlock();
          [v13 sendNotificationOfNewTransientValue:a2 forKey:a3];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v9);
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    if (ReplayKitLibraryCore(0))
    {
      v14 = getshowReactionsTipSymbolLoc();
      if (a2)
      {
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [a2 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"videoeffects/%@/did-show-gestures-default-disabled-notification", v15];
            v17 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            v18 = *(v17 + 208);
            FigSimpleMutexUnlock();
            v19 = [v18 objectForKey:v16];
            if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v20 BOOLValue])
            {
              v44 = 0;
              v43 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v44;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v43))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                v35 = 136315394;
                v36 = "cs_handleRequestGesturesDefaultDisabledNotificationSignal";
                v37 = 2112;
                v38 = v16;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v24 = getshowReactionsTipSymbolLoc();
              if (!v24)
              {
                cs_sendNotificationOfNewTransientValue_cold_1();
              }

              v25 = v24(a2, a2);
              v44 = 0;
              v43 = OS_LOG_TYPE_DEFAULT;
              v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v27 = v44;
              if (os_log_type_enabled(v26, v43))
              {
                v28 = v27;
              }

              else
              {
                v28 = v27 & 0xFFFFFFFE;
              }

              if (v28)
              {
                v29 = "was not";
                v36 = "cs_handleRequestGesturesDefaultDisabledNotificationSignal";
                v37 = 2080;
                v35 = 136315906;
                if (v25)
                {
                  v29 = "was";
                }

                v38 = v29;
                v39 = 2112;
                v40 = a2;
                v41 = 2112;
                v42 = a2;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (v25)
              {
                [v18 setObject:MEMORY[0x1E695E118] forKey:v16];
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ReplayKitLibraryCore(uint64_t a1)
{
  if (!ReplayKitLibraryCore_frameworkLibrary)
  {
    ReplayKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ReplayKitLibraryCore_frameworkLibrary;
}

uint64_t getshowReactionsTipSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getshowReactionsTipSymbolLoc_ptr;
  v6 = getshowReactionsTipSymbolLoc_ptr;
  if (!getshowReactionsTipSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getshowReactionsTipSymbolLoc_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getshowReactionsTipSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC5257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ReplayKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ReplayKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getshowReactionsTipSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = ReplayKitLibraryCore(&v5);
  if (!v2)
  {
    __getshowReactionsTipSymbolLoc_block_invoke_cold_1(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "showReactionsTip");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getshowReactionsTipSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t cs_updateCameraHistoryDownplayOverrideListForPreferenceKey(uint64_t a1)
{
  if (a1)
  {
    result = [sCameraHistoryDownplayOverrideList containsObject:a1];
    if (result)
    {
      return result;
    }

    [sCameraHistoryDownplayOverrideList addObject:a1];
  }

  else
  {
    result = [sCameraHistoryDownplayOverrideList count];
    if (!result)
    {
      return result;
    }

    [sCameraHistoryDownplayOverrideList removeAllObjects];
  }

  if (dword_1ED844030)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  [sTemporaryCameraHistoryItems setObject:sCameraHistoryDownplayOverrideList forKeyedSubscript:@"camera-history-downplay-override-list"];
  [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
  return FigSimpleMutexUnlock();
}

Class __getCMIOExtensionProviderClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!CoreMediaIOLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreMediaIOLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E799DE98;
    v5 = 0;
    CoreMediaIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreMediaIOLibraryCore_frameworkLibrary)
  {
    __getCMIOExtensionProviderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CMIOExtensionProvider");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCMIOExtensionProviderClass_block_invoke_cold_1();
  }

  getCMIOExtensionProviderClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreMediaIOLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMediaIOLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t flatDictionary_register()
{
  sFigFlatDictionaryClass = 0;
  *algn_1ED844C48 = "FigFlatDictionary";
  qword_1ED844C50 = flatDictionary_init;
  unk_1ED844C58 = 0;
  qword_1ED844C60 = flatDictionary_finalize;
  unk_1ED844C68 = 0u;
  unk_1ED844C78 = 0u;
  result = _CFRuntimeRegisterClass();
  sFigFlatDictionaryID = result;
  return result;
}

uint64_t flatDictionaryKeySpec_register()
{
  sFigFlatDictionaryKeySpecClass = 0;
  unk_1ED844BE0 = "FigFlatDictionaryKeySpec";
  qword_1ED844BE8 = flatDictionaryKeySpec_init;
  unk_1ED844BF0 = 0;
  qword_1ED844BF8 = flatDictionaryKeySpec_finalize;
  unk_1ED844C00 = 0u;
  unk_1ED844C10 = 0u;
  result = _CFRuntimeRegisterClass();
  sFigFlatDictionaryKeySpecID = result;
  return result;
}

uint64_t FigFlatDictionaryContainsValueForKey(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = 0;
      v5 = *(a2 + 4);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(v3 + 8);
        if (v5 < *(v6 + 32))
        {
          v4 = *(*(v6 + 40) + 4 * v5) != -1;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    *a3 = v4;
  }

  v7 = *(a1 + 24);
  v8 = *(*(*(v7 + 8) + 40) + 4 * *(a2 + 4));
  if (v8 == -1)
  {
    return 0;
  }

  else
  {
    return (*(*(v7 + 32) + (v8 >> 3)) >> (v8 & 7)) & 1;
  }
}

uint64_t FigFlatDictionaryGetCountOfKeysWithValues(uint64_t a1, int8x8_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(*(v2 + 8) + 36) + 7;
  if (v3 < 8)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = v3 >> 3;
  v6 = (*(v2 + 24) + 12);
  do
  {
    v8 = *v6++;
    v7 = v8;
    if (v8)
    {
      a2.i32[0] = v7;
      a2 = vcnt_s8(a2);
      a2.i16[0] = vaddlv_u8(a2);
      v7 = a2.i32[0];
    }

    result = (v7 + result);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t FigFlatDictionaryGetKeysWithValues(uint64_t a1, uint64_t a2, unsigned int *a3, int8x8_t a4)
{
  result = 0;
  if (a2 && a3)
  {
    v8 = *a3;
    if (v8 >= FigFlatDictionaryGetCountOfKeysWithValues(a1, a4))
    {
      *a3 = 0;
      v9 = *(a1 + 24);
      v10 = *(v9 + 8);
      if (*(v10 + 36))
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(*(v10 + 48) + v11);
          if (v15)
          {
            v16 = *(*(v10 + 40) + 4 * *(v15 + 4));
            if (v16 != -1 && ((*(*(v9 + 32) + (v16 >> 3)) >> (v16 & 7)) & 1) != 0)
            {
              *(a2 + 8 * v14) = v15;
              *a3 = ++v12;
              ++v14;
              v9 = *(a1 + 24);
            }
          }

          ++v13;
          v10 = *(v9 + 8);
          v11 += 24;
        }

        while (v13 < *(v10 + 36));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void FigFlatDictionaryRemoveValue(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v5 = *(a2 + 4);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(v3 + 8);
        if (v5 < *(v6 + 32))
        {
          v7 = *(*(v6 + 40) + 4 * v5);
          if (v7 != -1)
          {
            v8 = *(*(v6 + 48) + 24 * v7 + 8);
            if (flatDictionary_setterCheck(a1))
            {
              v9 = *(a2 + 32);
              v10 = *(a2 + 16) - 7;
              if (v9)
              {
                if (v10 > 1)
                {
                  v11 = *(a2 + 24);
                  v12 = (*(*(a1 + 24) + 40) + v8);
                }

                else
                {
                  v11 = (*(a2 + 24) - 4);
                  *(*(*(a1 + 24) + 40) + v8) = v11;
                  v9 = *(a2 + 32);
                  v12 = (*(*(a1 + 24) + 40) + v8 + 4);
                }

                memcpy(v12, v9, v11);
              }

              else
              {
                v13 = *(a1 + 24);
                if (v10 > 2)
                {
                  v15 = *(v13 + 40);
                  v14 = *(a2 + 24);
                }

                else
                {
                  v14 = *(*(*(v13 + 8) + 48) + 24 * *(*(*(v13 + 8) + 40) + 4 * *(a2 + 4)) + 12);
                  v15 = *(v13 + 40);
                }

                bzero((v15 + v8), v14);
              }

              v16 = *(a1 + 24);
              v17 = *(*(*(v16 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v16 + 32) + (v17 >> 3)) &= ~(1 << (v17 & 7));
            }
          }
        }
      }
    }
  }
}

uint64_t flatDictionary_setterCheck(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = 1;
  if (*(v2 + 16) != 1)
  {
    v4 = FigFlatDictionaryContentCopy(*v2, v2);
    *(v4 + 16) = 1;
    *(a1 + 24) = v4;
    if (atomic_fetch_add_explicit((v2 + 16), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      FigFlatDictionaryContentDestroy(v2);
    }
  }

  return v3;
}

uint64_t FigFlatDictionaryGetBackingPointer(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 24);
  if (a2)
  {
    *a2 = *(v2 + 20);
  }

  return *(v2 + 24);
}

uint64_t FigFlatDictionarySetInt16(uint64_t result, uint64_t a2, __int16 a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetInt16(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    v7 = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return v7;
}

uint64_t FigFlatDictionarySetInt32(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetInt32(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetInt64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetInt64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetBool(uint64_t result, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetBool(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetFloat32(uint64_t result, uint64_t a2, float a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

float FigFlatDictionaryGetFloat32(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0.0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetFloat64(uint64_t result, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              *(*(*(v3 + 24) + 40) + v10) = a3;
              v11 = *(v3 + 24);
              v12 = *(*(*(v11 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v11 + 32) + (v12 >> 3)) |= 1 << (v12 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

double FigFlatDictionaryGetFloat64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __dst = 0.0;
  if (!a2 || (v3 = *(a1 + 24)) == 0 || (v4 = *(a2 + 4), (v4 & 0x80000000) != 0) || (v5 = v3[1], v4 >= *(v5 + 32)) || (v6 = *(*(v5 + 40) + 4 * v4), v6 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, &__dst);
    return __dst;
  }

  else
  {
    result = *(v3[5] + *(*(v5 + 48) + 24 * v6 + 8));
    if (a3)
    {
      *a3 = (*(v3[4] + (v6 >> 3)) >> (v6 & 7)) & 1;
    }
  }

  return result;
}

__n128 FigFlatDictionarySetCMTime(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v6 = *(a2 + 4);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(v4 + 8);
        if (v6 < *(v7 + 32))
        {
          v8 = *(*(v7 + 40) + 4 * v6);
          if (v8 != -1)
          {
            v10 = *(*(v7 + 48) + 24 * v8 + 8);
            if (flatDictionary_setterCheck(a1))
            {
              v12 = (*(*(a1 + 24) + 40) + v10);
              result = *a3;
              v12[1].n128_u64[0] = a3[1].n128_u64[0];
              *v12 = result;
              v13 = *(a1 + 24);
              v14 = *(*(*(v13 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v13 + 32) + (v14 >> 3)) |= 1 << (v14 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

void FigFlatDictionaryGetCMTime(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!a2 || (v4 = *(a1 + 24)) == 0 || (v5 = *(a2 + 4), (v5 & 0x80000000) != 0) || (v6 = v4[1], v5 >= *(v6 + 32)) || (v7 = *(*(v6 + 40) + 4 * v5), v7 == -1))
  {
    FigFlatDictionaryKeyGetDefaultValue(a2, a4);
  }

  else
  {
    v8 = (v4[5] + *(*(v6 + 48) + 24 * v7 + 8));
    v9 = *v8;
    a4[2] = *(v8 + 2);
    *a4 = v9;
    if (a3)
    {
      *a3 = (*(v4[4] + (v7 >> 3)) >> (v7 & 7)) & 1;
    }
  }
}

uint64_t FigFlatDictionarySetCGRect(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v6 = result;
    v7 = *(result + 24);
    if (v7)
    {
      v9 = *(a2 + 4);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = *(v7 + 8);
        if (v9 < *(v10 + 32))
        {
          v11 = *(*(v10 + 40) + 4 * v9);
          if (v11 != -1)
          {
            v16 = *(*(v10 + 48) + 24 * v11 + 8);
            result = flatDictionary_setterCheck(result);
            if (result)
            {
              v17 = (*(*(v6 + 24) + 40) + v16);
              *v17 = a3;
              v17[1] = a4;
              v17[2] = a5;
              v17[3] = a6;
              v18 = *(v6 + 24);
              v19 = *(*(*(v18 + 8) + 40) + 4 * *(a2 + 4));
              *(*(v18 + 32) + (v19 >> 3)) |= 1 << (v19 & 7);
            }
          }
        }
      }
    }
  }

  return result;
}

double FigFlatDictionaryGetCGRect(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2 || (v5 = *(a1 + 24)) == 0 || (v6 = *(a2 + 4), (v6 & 0x80000000) != 0) || (v7 = v5[1], v6 >= *(v7 + 32)) || (v8 = *(*(v7 + 40) + 4 * v6), v8 == -1))
  {
    v10[4] = v3;
    v10[5] = v4;
    FigFlatDictionaryKeyGetDefaultValue(a2, v10);
    return *v10;
  }

  else
  {
    result = *(v5[5] + *(*(v7 + 48) + 24 * v8 + 8));
    if (a3)
    {
      *a3 = (*(v5[4] + (v8 >> 3)) >> (v8 & 7)) & 1;
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetString(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      return 1;
    }

    v9 = *(a2 + 4);
    result = 1;
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *(v7 + 8);
      if (v9 < *(v10 + 32))
      {
        v11 = *(*(v10 + 40) + 4 * v9);
        if (v11 != -1)
        {
          v13 = *(*(v10 + 48) + 24 * v11 + 8);
          if (flatDictionary_setterCheck(a1))
          {
            v14 = *(a1 + 24);
            if (*(*(*(v14 + 8) + 48) + 24 * *(*(*(v14 + 8) + 40) + 4 * *(a2 + 4)) + 12) - 4 < a4)
            {
              return 0;
            }

            memcpy((*(v14 + 40) + v13 + 4), a3, a4);
            *(*(*(a1 + 24) + 40) + v13) = a4;
            v15 = *(a1 + 24);
            v16 = *(*(*(v15 + 8) + 40) + 4 * *(a2 + 4));
            result = 1;
            *(*(v15 + 32) + (v16 >> 3)) |= 1 << (v16 & 7);
            return result;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetStringSize(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (a2 && a3 && a4)
  {
    v4 = *(result + 24);
    if (!v4 || (v5 = *(a2 + 4), (v5 & 0x80000000) != 0) || (v6 = *(v4 + 8), v5 >= *(v6 + 32)) || (v7 = *(*(v6 + 40) + 4 * v5), v7 == -1))
    {
      *a4 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = *(v6 + 48) + 24 * v7;
      v9 = *(v8 + 8);
      *a4 = *(v8 + 12) - 4;
      *a3 = *(*(v4 + 40) + v9);
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetString(uint64_t a1, uint64_t a2, _BYTE *a3, void *__dst, unsigned int *a5)
{
  result = 0;
  if (a2 && __dst && a5)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      return 1;
    }

    v10 = *(a2 + 4);
    result = 1;
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(v8 + 8);
      if (v10 < *(v11 + 32))
      {
        v12 = *(*(v11 + 40) + 4 * v10);
        if (v12 != -1)
        {
          v13 = (*(v8 + 40) + *(*(v11 + 48) + 24 * v12 + 8));
          v14 = *v13;
          if (!*v13 || v14 > *a5)
          {
            return 0;
          }

          memcpy(__dst, v13 + 1, *v13);
          *a5 = v14;
          if (a3)
          {
            v16 = *(a1 + 24);
            v17 = *(*(*(v16 + 8) + 40) + 4 * *(a2 + 4));
            if (v17 == -1)
            {
              LOBYTE(v18) = 0;
            }

            else
            {
              v18 = (*(*(v16 + 32) + (v17 >> 3)) >> (v17 & 7)) & 1;
            }

            *a3 = v18;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetData(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      return 1;
    }

    v9 = *(a2 + 4);
    result = 1;
    if ((v9 & 0x80000000) != 0)
    {
      return result;
    }

    v10 = *(v7 + 8);
    if (v9 >= *(v10 + 32))
    {
      return result;
    }

    v11 = *(*(v10 + 40) + 4 * v9);
    if (v11 == -1)
    {
      return result;
    }

    v13 = *(*(v10 + 48) + 24 * v11 + 8);
    if (!flatDictionary_setterCheck(a1))
    {
      return 1;
    }

    v14 = *(a1 + 24);
    if (*(*(*(v14 + 8) + 48) + 24 * *(*(*(v14 + 8) + 40) + 4 * *(a2 + 4)) + 12) - 4 >= a4)
    {
      memcpy((*(v14 + 40) + v13 + 4), a3, a4);
      if (*(a2 + 16) == 8)
      {
        *(*(*(a1 + 24) + 40) + v13) = a4;
      }

      v15 = *(a1 + 24);
      v16 = *(*(*(v15 + 8) + 40) + 4 * *(a2 + 4));
      result = 1;
      *(*(v15 + 32) + (v16 >> 3)) |= 1 << (v16 & 7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetDataSize(uint64_t result, uint64_t a2, int *a3, _DWORD *a4)
{
  if (a2 && a3)
  {
    v4 = *(result + 24);
    if (!v4 || (v5 = *(a2 + 4), (v5 & 0x80000000) != 0) || (v6 = *(v4 + 8), v5 >= *(v6 + 32)) || (v7 = *(*(v6 + 40) + 4 * v5), v7 == -1))
    {
      if (a4)
      {
        *a4 = 0;
      }

      *a3 = 0;
    }

    else
    {
      v8 = *(v6 + 48);
      v9 = *(v8 + 24 * v7 + 8);
      if (a4)
      {
        *a4 = *(v8 + 24 * v7 + 12) - 4;
      }

      if (*(a2 + 16) == 8)
      {
        v10 = *(*(v4 + 40) + v9);
      }

      else
      {
        v10 = *(v8 + 24 * v7 + 12) - 4;
      }

      *a3 = v10;
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetData(uint64_t a1, uint64_t a2, _BYTE *a3, void *__dst, unsigned int *a5)
{
  result = 0;
  if (a2 && __dst && a5)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      return 1;
    }

    v10 = *(a2 + 4);
    result = 1;
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(v8 + 8);
      if (v10 < *(v11 + 32))
      {
        v12 = *(*(v11 + 40) + 4 * v10);
        if (v12 != -1)
        {
          v14 = *(v11 + 48);
          v15 = *(v14 + 24 * v12 + 8);
          if (*(a2 + 16) == 8)
          {
            v16 = *(*(v8 + 40) + v15);
            if (!v16)
            {
              return 0;
            }
          }

          else
          {
            v17 = *(v14 + 24 * v12 + 12);
            v16 = v17 - 4;
            if (v17 == 4)
            {
              return 0;
            }
          }

          if (v16 > *a5)
          {
            return 0;
          }

          memcpy(__dst, (*(v8 + 40) + v15 + 4), v16);
          *a5 = v16;
          if (a3)
          {
            v18 = *(a1 + 24);
            v19 = *(*(*(v18 + 8) + 40) + 4 * *(a2 + 4));
            if (v19 == -1)
            {
              LOBYTE(v20) = 0;
            }

            else
            {
              v20 = (*(*(v18 + 32) + (v19 >> 3)) >> (v19 & 7)) & 1;
            }

            *a3 = v20;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionarySetArrayDataType(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = *(result + 24);
    if (v3)
    {
      v4 = *(a2 + 4);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = *(v3 + 8);
        if (v4 < *(v5 + 32))
        {
          v6 = *(*(v5 + 40) + 4 * v4);
          if (v6 != -1)
          {
            *(*(v3 + 40) + *(*(v5 + 48) + 24 * v6 + 8)) = a3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFlatDictionaryGetArrayDataType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = *(a2 + 4);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(v2 + 8);
    if (v4 < *(v5 + 32))
    {
      v6 = *(*(v5 + 40) + 4 * v4);
      if (v6 != -1)
      {
        return *(*(v2 + 40) + *(*(v5 + 48) + 24 * v6 + 8));
      }

      return 0;
    }
  }

  return result;
}

uint64_t flatDictionary_create(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a3)
  {
    return 0;
  }

  if (!*(a3 + 20))
  {
    return 0;
  }

  v5 = *(a3 + 36);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = (*(a3 + 48) + 12);
  v10 = *(a3 + 36);
  do
  {
    v11 = *v9;
    v9 += 6;
    v8 += v11;
    --v10;
  }

  while (v10);
  if (!v8)
  {
    return 0;
  }

  v12 = FigFlatDictionaryContentCreate(a2, a3, v8 + ((v5 + 7) >> 3) + 12);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  MEMORY[0x1B26F02D0](&FigFlatDictionaryGetTypeID_sRegisterFigFlatDictionaryOnce, flatDictionary_register);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a5;
  *(Instance + 24) = v13;
  *(v13 + 4) = 1;
  v15 = v13[1];
  if (*(v15 + 9))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v15 + 6);
      v19 = *(v18 + v16);
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = *(v19 + 16);
      if (v20 > 0xB)
      {
        goto LABEL_27;
      }

      if (((1 << v20) & 0xC7E) != 0)
      {
        v21 = *(v18 + v16 + 8);
        if (a4)
        {
          v22 = *(a4 + 8 * v17);
          if (v22)
          {
            v23 = *(v19 + 24);
            v24 = v13[5] + v21;
LABEL_24:
            memcpy(v24, v22, v23);
            v29 = *(*(v13[1] + 5) + 4 * *(v19 + 4));
            *(v13[4] + (v29 >> 3)) |= 1 << (v29 & 7);
            goto LABEL_27;
          }
        }

        FigFlatDictionaryKeyGetDefaultValue(v19, v13[5] + v21);
      }

      else if (((1 << v20) & 0x380) != 0)
      {
        v25 = *(v18 + v16 + 8);
        if (!a4 || (v26 = *(a4 + 8 * v17)) == 0)
        {
          if (*(v19 + 32))
          {
            v30 = (*(v19 + 24) - 4);
            *(v13[5] + v25) = v30;
            memcpy(v13[5] + v25 + 4, *(v19 + 32), v30);
          }

          goto LABEL_27;
        }

        v27 = *(v19 + 24) - 4;
        if (v20 == 7)
        {
          v28 = strlen(v26);
          if (v27 >= v28 + 1)
          {
            v27 = v28 + 1;
          }
        }

        *(v13[5] + v25) = v27;
        v22 = *(a4 + 8 * v17);
        v23 = v27;
        v24 = v13[5] + v25 + 4;
        goto LABEL_24;
      }

LABEL_27:
      ++v17;
      v15 = *(*(Instance + 24) + 8);
      v16 += 24;
    }

    while (v17 < *(v15 + 9));
  }

  return Instance;
}

CFTypeRef flatDictionary_copy(const __CFAllocator *a1, const __CFAllocator *a2, CFAllocatorRef **cf, int a4, char a5)
{
  v6 = a4;
  if (*(cf + 16) | a4)
  {
    goto LABEL_2;
  }

  v17 = CFGetAllocator(cf);
  v18 = *MEMORY[0x1E695E480];
  Default = a1;
  if (*MEMORY[0x1E695E480] == a1)
  {
    Default = CFAllocatorGetDefault();
  }

  if (v18 == v17)
  {
    v17 = CFAllocatorGetDefault();
  }

  if (!CFEqual(Default, v17))
  {
    goto LABEL_2;
  }

  v20 = *cf[3];
  v21 = a2;
  if (v18 == a2)
  {
    v21 = CFAllocatorGetDefault();
  }

  if (v18 == v20)
  {
    v20 = CFAllocatorGetDefault();
  }

  if (CFEqual(v21, v20))
  {

    return CFRetain(cf);
  }

  else
  {
LABEL_2:
    MEMORY[0x1B26F02D0](&FigFlatDictionaryGetTypeID_sRegisterFigFlatDictionaryOnce, flatDictionary_register);
    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = v6;
    if (a5)
    {
      goto LABEL_8;
    }

    v11 = *cf[3];
    v12 = *MEMORY[0x1E695E480];
    v13 = a2;
    if (*MEMORY[0x1E695E480] == a2)
    {
      v13 = CFAllocatorGetDefault();
    }

    if (v12 == v11)
    {
      v11 = CFAllocatorGetDefault();
    }

    if (CFEqual(v13, v11))
    {
LABEL_8:
      v14 = FigFlatDictionaryContentCopy(a2, cf[3]);
      *(Instance + 24) = v14;
      v15 = (v14 + 16);
    }

    else
    {
      v22 = cf[3];
      *(Instance + 24) = v22;
      v15 = (v22 + 2);
    }

    atomic_fetch_add(v15, 1u);
    return Instance;
  }
}

uint64_t FigFlatDictionaryCreateKeySpec(uint64_t a1, int a2, unsigned int a3)
{
  NumberOfRegisteredKeys = FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(a2);
  MEMORY[0x1B26F02D0](&FigFlatDictionaryKeySpecGetTypeID_sRegisterFigFlatDictionaryKeySpecOnce, flatDictionaryKeySpec_register);
  Instance = _CFRuntimeCreateInstance();
  FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(a2);
  v8 = MEMORY[0x1B26EDEF0](a1, 4 * NumberOfRegisteredKeys + 24 * a3, 0x100004052888210, 0);
  *(Instance + 56) = v8;
  *(Instance + 20) = 0;
  *(Instance + 24) = a3;
  *(Instance + 28) = a2;
  *(Instance + 32) = NumberOfRegisteredKeys;
  *(Instance + 40) = v8;
  memset(v8, 255, 4 * NumberOfRegisteredKeys);
  *(Instance + 48) = *(Instance + 56) + 4 * NumberOfRegisteredKeys;
  return Instance;
}

uint64_t FigFlatDictionaryKeySpecAddKey(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 20))
  {
    return 0;
  }

  if (*a2 != *(a1 + 28))
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(*(a1 + 40) + 4 * *(a2 + 4));
  if (v10 == -1)
  {
    v13 = *(a1 + 36);
    v14 = *(a1 + 24);
    if (v13 >= v14)
    {
      if (v14 + 4 >= FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(*a2))
      {
        NumberOfRegisteredKeys = FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(*(a1 + 28));
      }

      else
      {
        NumberOfRegisteredKeys = *(a1 + 24) + 4;
      }

      *(a1 + 24) = NumberOfRegisteredKeys;
      v17 = CFGetAllocator(a1);
      v18 = MEMORY[0x1B26EDF40](v17, *(a1 + 56), 4 * *(a1 + 32) + 24 * *(a1 + 24), 0x100004052888210, 0);
      v19 = *(a1 + 36);
      v20 = v18 + 4 * *(a1 + 32);
      *(a1 + 40) = v18;
      *(a1 + 48) = v20;
      *(a1 + 56) = v18;
      v15 = v20 + 24 * v19;
    }

    else
    {
      v15 = v9 + 24 * v13;
    }

    *v15 = a2;
    if ((*(a2 + 16) - 7) > 2)
    {
      if (*(a2 + 24) <= a3)
      {
        *(v15 + 12) = a3;
      }

      else
      {
        *(v15 + 12) = FigFlatDictionaryKeyGetDefaultValueSize(a2);
      }
    }

    else
    {
      v21 = a3 + 4;
      v22 = *(a2 + 24);
      if (v21 >= v22)
      {
        *(v15 + 12) = v21;
      }

      else
      {
        *(v15 + 12) = v22;
      }
    }

    *(v15 + 16) = a4;
    v23 = *(a1 + 36);
    *(*(a1 + 40) + 4 * *(a2 + 4)) = v23;
    *(a1 + 36) = v23 + 1;
  }

  else
  {
    v11 = v9 + 24 * v10;
    if ((*(a2 + 16) - 7) > 1)
    {
      LODWORD(v12) = *(v11 + 12);
      if (v12 <= a3)
      {
        LODWORD(v12) = a3;
      }
    }

    else
    {
      v12 = a3 + 4;
      if (v12 <= *(v11 + 12))
      {
        LODWORD(v12) = *(v11 + 12);
      }
    }

    *(v11 + 12) = v12;
    *(v11 + 16) |= a4;
  }

  return 1;
}

uint64_t FigFlatDictionaryKeySpecCommit(uint64_t result)
{
  *(result + 20) = 1;
  *(result + 16) = atomic_fetch_add_explicit(sKeySpecNextIdentifier, 1u, memory_order_relaxed) + 1;
  v1 = *(result + 36);
  if (v1)
  {
    v2 = 0;
    v3 = (*(result + 48) + 12);
    do
    {
      *(v3 - 1) = v2;
      v4 = *v3;
      v3 += 6;
      v2 += v4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t FigFlatDictionaryKeySpecGetIdentifier(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

_DWORD *FigFlatDictionaryKeySpecCreateBinaryForExport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!*(a2 + 20))
  {
    return 0;
  }

  v6 = *(a2 + 36);
  if (v6)
  {
    LODWORD(v7) = 0;
    v8 = *(a2 + 48);
    v9 = *(a2 + 36);
    do
    {
      v10 = *v8;
      v8 += 3;
      v7 = v7 + strlen(*(v10 + 8)) + 1;
      --v9;
    }

    while (v9);
    v11 = v7 + 12;
  }

  else
  {
    v11 = 12;
  }

  v13 = (24 * v6);
  v14 = v11 + v13;
  v15 = MEMORY[0x1B26EDEF0](a1, v11 + v13, 0x10000403E1C8BA9, 0);
  v12 = v15;
  if (v15)
  {
    v15[1] = *(a2 + 16);
    *v15 = FigFlatDictionaryKeySpaceGetLabel(*(a2 + 28));
    v12[2] = *(a2 + 36);
    v16 = (v12 + 3);
    memcpy(v12 + 3, *(a2 + 48), v13);
    if (*(a2 + 36))
    {
      v17 = 0;
      v18 = 0;
      v19 = v16 + v13;
      do
      {
        v20 = *v16;
        *v16 = v18;
        v16 += 3;
        v21 = strlen(*(v20 + 8));
        strncpy(&v19[v18], *(v20 + 8), v21 + 1);
        v18 += strlen(*(v20 + 8)) + 1;
        ++v17;
      }

      while (v17 < *(a2 + 36));
    }

    if (a3)
    {
      *a3 = v14;
    }
  }

  return v12;
}

uint64_t FigFlatDictionaryKeySpecReconstructFromBinary(uint64_t a1, int *a2)
{
  MEMORY[0x1B26F02D0](&FigFlatDictionaryKeySpecGetTypeID_sRegisterFigFlatDictionaryKeySpecOnce, flatDictionaryKeySpec_register);
  Instance = _CFRuntimeCreateInstance();
  KeySpaceWithLabel = FigFlatDictionaryKeySpaceGetKeySpaceWithLabel(*a2);
  *(Instance + 28) = KeySpaceWithLabel;
  if (FigFlatDictionaryKeySpaceIsValid(KeySpaceWithLabel))
  {
    v7 = a2[2];
    *(Instance + 16) = a2[1];
    *(Instance + 36) = v7;
    NumberOfRegisteredKeys = FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(*(Instance + 28));
    *(Instance + 32) = NumberOfRegisteredKeys;
    *(Instance + 20) = 1;
    v9 = MEMORY[0x1B26EDEF0](a1, 24 * *(Instance + 36) + 4 * NumberOfRegisteredKeys, 0x100004052888210, 0);
    v10 = *(Instance + 36);
    v11 = (v9 + 4 * *(Instance + 32));
    *(Instance + 40) = v9;
    *(Instance + 48) = v11;
    *(Instance + 56) = v9;
    v12 = a2 + 3;
    memcpy(v11, v12, 24 * v10);
    v13 = *(Instance + 36);
    if (!v13)
    {
      return Instance;
    }

    v14 = 0;
    v15 = 0;
    v16 = &v12[6 * v13];
    v17 = *(Instance + 48);
    v18 = 1404;
    while (1)
    {
      *(*(Instance + 48) + v14) = FigFlatDictionaryKeyLookupFromIdentifier(*(Instance + 28), v16 + *(v17 + v14));
      v17 = *(Instance + 48);
      v19 = *(v17 + v14);
      if (!v19)
      {
        break;
      }

      *(*(Instance + 40) + 4 * *(v19 + 4)) = v15++;
      v14 += 24;
      if (v15 >= *(Instance + 36))
      {
        return Instance;
      }
    }
  }

  else
  {
    v18 = 1376;
  }

  emitter = fig_log_get_emitter();
  if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE11, "<<<< FigFlatDictionary >>>>", v18, v2, v21, v22, v24))
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t flatDictionary_createFromBacking(uint64_t a1, const __CFAllocator *a2, uint64_t a3, _DWORD *a4, char a5)
{
  if (a4[2] != *(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 36);
  if (!v6)
  {
    return 0;
  }

  v10 = 0;
  v11 = (*(a3 + 48) + 12);
  v12 = *(a3 + 36);
  do
  {
    v13 = *v11;
    v11 += 6;
    v10 += v13;
    --v12;
  }

  while (v12);
  if (!v10)
  {
    return 0;
  }

  v14 = v10 + ((v6 + 7) >> 3);
  MEMORY[0x1B26F02D0](&FigFlatDictionaryGetTypeID_sRegisterFigFlatDictionaryOnce, flatDictionary_register);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a5;
  v16 = FigFlatDictionaryContentCreate(a2, a3, v14 + 12);
  *(Instance + 24) = v16;
  *(v16 + 4) = 1;
  memcpy(v16[3], a4, *(v16 + 5));
  return Instance;
}

uint64_t flatDictionary_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void flatDictionary_finalize(uint64_t result)
{
  if (atomic_fetch_add_explicit((*(result + 24) + 16), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    FigFlatDictionaryContentDestroy(*(result + 24));
    *(result + 24) = 0;
  }
}

void FigFlatDictionaryContentDestroy(void *a1)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  CFAllocatorDeallocate(v3, *(a1 + 3));

  CFAllocatorDeallocate(v3, a1);
}

double flatDictionaryKeySpec_init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void flatDictionaryKeySpec_finalize(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = a1[7];

  CFAllocatorDeallocate(v2, v3);
}

uint64_t FigFlatDictionaryContentCopy(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1B26EDEF0](a1, 48, 0x107004071DFF4BBLL, 0);
  v5 = MEMORY[0x1B26EDEF0](a1, *(a2 + 20), 0x10000403E1C8BA9, 0);
  *(v4 + 24) = v5;
  memcpy(v5, *(a2 + 24), *(a2 + 20));
  v6 = *(v4 + 24) + 12;
  v7 = *(a2 + 8);
  v8 = v6 + ((v7[9] + 7) >> 3);
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *v4 = a1;
  *(v4 + 20) = *(a2 + 20);
  *(v4 + 8) = CFRetain(v7);
  *(v4 + 16) = 0;
  return v4;
}

const __CFAllocator **FigFlatDictionaryContentCreate(const __CFAllocator *a1, _DWORD *a2, unsigned int a3)
{
  v6 = MEMORY[0x1B26EDEF0](a1, 48, 0x107004071DFF4BBLL, 0);
  v7 = v6;
  if (v6)
  {
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    v8 = MEMORY[0x1B26EDEF0](a1, a3, 0x10000403E1C8BA9, 0);
    v7[3] = v8;
    if (v8)
    {
      bzero(v8, a3);
      v9 = v7[3];
      *(v9 + 8) = a2[4];
      v10 = v9 + 12;
      v11 = v9 + 12 + ((a2[9] + 7) >> 3);
      v7[4] = v10;
      v7[5] = v11;
      *v7 = a1;
      v7[1] = CFRetain(a2);
      *(v7 + 5) = a3;
    }

    else
    {
      CFAllocatorDeallocate(a1, v7);
      return 0;
    }
  }

  return v7;
}

void sub_1ACC5CDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC613A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC629DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_154_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + a2) = a1;
  v5 = *(v3 + 3984);

  return objc_alloc_init(v5);
}

uint64_t OUTLINED_FUNCTION_190_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CMSampleBufferRef sampleBufferOut)
{
  sampleBufferOut = 0;

  return BWCMSampleBufferCreateCopyIncludingMetadata(v10, &sampleBufferOut);
}

uint64_t OUTLINED_FUNCTION_194(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{

  return [a14 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_229(NSObject *a1)
{
  v3 = *(v1 - 101);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_241_0(void *a1, const char *a2)
{

  return [a1 addFrame:v2];
}

uint64_t OUTLINED_FUNCTION_242_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return [&a10 copy];
}

void OUTLINED_FUNCTION_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v39 = *v36;

  [(BWPhotonicEngineNode *)v39 _checkIfProcessingCompletedForNRFProcessorInput:v37, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36];
}

uint64_t OUTLINED_FUNCTION_247_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 objectForKeyedSubscript:v2];
}

uint64_t FigImageControl_LockExposure(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 3)
  {
    *(DerivedStorage + 7464) = 3;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SpotMetering(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 2 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 2;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SetSpotMeteringAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) == 2)
  {
    if (*(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
    {
      *(DerivedStorage + 7476) = a2;
      *(DerivedStorage + 7480) = a3;
      *(DerivedStorage + 7484) = a4;
      *(DerivedStorage + 7488) = a5;
      *(DerivedStorage + 7457) = 1;
    }
  }

  else
  {
    FigImageControl_SpotMetering(a1, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t FigImageControl_FlashMetering(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 2 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 5;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_ManualExposure(uint64_t a1, float a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 4 || *(DerivedStorage + 7496) != a3 || *(DerivedStorage + 7492) != a2)
  {
    *(DerivedStorage + 7464) = 4;
    *(DerivedStorage + 7496) = a3;
    *(DerivedStorage + 7504) = 0u;
    *(DerivedStorage + 7500) = -1082130432;
    *(DerivedStorage + 7492) = a2;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_ManualExposureWithISO(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 || *(DerivedStorage + 7464) != 4 || *(DerivedStorage + 7500) != a6 || *(DerivedStorage + 7492) != a3 || *(DerivedStorage + 7504) != a4 || *(DerivedStorage + 7512) != a5)
  {
    *(DerivedStorage + 7464) = 4;
    *(DerivedStorage + 7496) = 0;
    *(DerivedStorage + 7500) = a6;
    *(DerivedStorage + 7492) = a3;
    *(DerivedStorage + 7504) = a4;
    *(DerivedStorage + 7512) = a5;
    *(DerivedStorage + 7520) = a2;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t unlockAEnow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = MEMORY[0x1E695E4D0];
  if (*(DerivedStorage + 40) == 4)
  {
    *(DerivedStorage + 17737) = 0;
    if (*(DerivedStorage + 1548))
    {
      valuePtr = 0xFFFF;
      v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BAF0, v5))
      {
        unlockAEnow_cold_2();
      }

      CFRelease(v5);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF70, Mutable))
      {
        unlockAEnow_cold_3();
      }

      CFRelease(Mutable);
      if ((v3[1566] & 1) == 0)
      {
        v7 = CFNumberCreate(0, kCFNumberIntType, v3 + 616);
        if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v7))
        {
          unlockAEnow_cold_4();
        }

        CFRelease(v7);
      }

      v8 = FigCapturePlatformIdentifier();
      result = FigImageControl_SetExposureStabilityZone(a1, 0, *&dword_1AD056F08[v8 < 10]);
    }

    else
    {
      result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C248, *v4);
      if (result)
      {
        result = unlockAEnow_cold_5();
      }
    }

    if ((v3[1564] & 1) == 0)
    {
      result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C258, *v4);
      if (result)
      {
        result = unlockAEnow_cold_6();
      }
    }
  }

  else
  {
    result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C248, *MEMORY[0x1E695E4D0]);
    if (result)
    {
      result = unlockAEnow_cold_1();
    }
  }

  if (v3[508] == 1)
  {
    result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C260, *v4);
    if (result)
    {
      result = unlockAEnow_cold_7();
    }
  }

  if (v3[520] == 1)
  {
    result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C268, *v4);
    if (result)
    {
      result = unlockAEnow_cold_8();
    }
  }

  v3[7472] = 0;
  return result;
}

void FigImageControl_InvalidateExposure(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigImageControl_RestoreAEValues(a1);
  if (*(DerivedStorage + 7472) == 1)
  {
    unlockAEnow(a1);
  }

  v3 = *(DerivedStorage + 7560);
  if (v3)
  {
    if (*v3)
    {
      free(*v3);
      v3 = *(DerivedStorage + 7560);
    }

    free(v3);
    *(DerivedStorage + 7560) = 0;
  }
}

void setupExposureWindow(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 9084) & 1) == 0)
  {
    v12 = DerivedStorage;
    v13 = *(DerivedStorage + 7552);
    v28 = a5;
    v29 = a4;
    valuePtr = a2;
    v26 = a3;
    if (a2 < 0)
    {
      a4 += a2;
      v29 = a4;
      valuePtr = 0;
      a2 = 0;
    }

    if (a3 < 0)
    {
      v14 = 0;
      a5 += a3;
      v28 = a5;
      v26 = 0;
    }

    else
    {
      v14 = a3;
    }

    if (a4 + a2 >= 1001)
    {
      a4 = 1000 - a2;
      v29 = 1000 - a2;
    }

    if (v14 + a5 >= 961)
    {
      a5 = 960 - v14;
      v28 = 960 - v14;
    }

    if (v13 > a4)
    {
      v29 = v13;
      v15 = (a2 - ((v13 - a4 + (((v13 - a4) & 0x8000) >> 15)) >> 1));
      v16 = v15 & ~(v15 >> 31);
      valuePtr = v16;
      if (v16 + v13 >= 1001)
      {
        valuePtr = 1000 - v13;
      }
    }

    if (v13 > a5)
    {
      v28 = v13;
      v17 = (v13 - a5 + (((v13 - a5) & 0x8000) >> 15));
      v18 = (v14 - (v17 >> 1)) & ~((v14 - (v17 >> 1)) >> 31);
      v26 = v18;
      if (v18 + v13 >= 961)
      {
        v26 = 960 - v13;
      }
    }

    *keys = 0u;
    v34 = 0u;
    *values = 0u;
    v31 = 0u;
    v32 = 0;
    v19 = *off_1E798A280;
    v35 = 0;
    keys[0] = v19;
    v20 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    keys[1] = *off_1E798A2B0;
    values[1] = CFNumberCreate(v20, kCFNumberSInt16Type, &v26);
    *&v34 = *off_1E798A2C0;
    *&v31 = CFNumberCreate(v20, kCFNumberSInt16Type, &v29);
    *(&v34 + 1) = *off_1E798A288;
    *(&v31 + 1) = CFNumberCreate(v20, kCFNumberSInt16Type, &v28);
    v25 = a6 ^ 1;
    v35 = *off_1E798A2B8;
    v32 = CFNumberCreate(v20, kCFNumberIntType, &v25);
    v21 = CFDictionaryCreate(v20, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = 0;
    v25 = 0;
    do
    {
      CFRelease(values[v22]);
      v23 = v25;
      v22 = ++v25;
    }

    while (v23 < 4);
    v24 = *(v12 + 7544);
    if (v24)
    {
      CFRelease(v24);
    }

    *(v12 + 7544) = v21;
    atomic_fetch_add_explicit((v12 + 7460), 1u, memory_order_relaxed);
  }
}

uint64_t exposure_table_initialize(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    exposure_table_initialize_cold_10(0, theDict);
    return 4294954516;
  }

  if (!theDict)
  {
    exposure_table_initialize_cold_9();
    return 4294954516;
  }

  *(a1 + 16) = xmmword_1AD056F40;
  v4 = (a1 + 16);
  Value = CFDictionaryGetValue(theDict, @"ExposureDelta");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberDoubleType, v4);
      if (*v4 > 1.0)
      {
        *v4 = 1.0 / *v4;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"StabilityZone");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v9, kCFNumberDoubleType, v4 + 1);
      v11 = v4[1];
      if (v11 > 1.0)
      {
        v4[1] = 1.0 / v11;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"IntegrationTime");
  if (!v12)
  {
    return 4294954516;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFArrayGetTypeID())
  {
    return 4294954516;
  }

  v15 = CFDictionaryGetValue(theDict, @"MaxGain");
  if (!v15)
  {
    return 4294954516;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 != CFArrayGetTypeID())
  {
    return 4294954516;
  }

  Count = CFArrayGetCount(v13);
  if (Count != CFArrayGetCount(v16))
  {
    return 4294954516;
  }

  theArray = v16;
  v19 = malloc_type_malloc(48 * Count, 0x1000040D315E998uLL);
  ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
  if (!ValueAtIndex)
  {
    exposure_table_initialize_cold_8();
    goto LABEL_55;
  }

  v21 = ValueAtIndex;
  v22 = CFGetTypeID(ValueAtIndex);
  if (v22 != CFNumberGetTypeID())
  {
    goto LABEL_55;
  }

  valuePtr = 0.0;
  v23 = CFNumberGetValue(v21, kCFNumberDoubleType, &valuePtr);
  if (valuePtr <= 0.0)
  {
    exposure_table_initialize_cold_7(v23, valuePtr);
LABEL_55:
    v45 = 4294954516;
    if (v19)
    {
      goto LABEL_56;
    }

    return v45;
  }

  if (valuePtr > 1.0)
  {
    valuePtr = 1.0 / valuePtr;
  }

  if (Count < 1)
  {
LABEL_45:
    exposure_table_initialize_cold_2(v23);
    goto LABEL_55;
  }

  v24 = 0;
  v25 = 0;
  v47 = 2 * Count;
  do
  {
    v26 = Count;
    v27 = v19;
    v49 = 0.0;
    v50 = 0.0;
    v28 = CFArrayGetValueAtIndex(v13, v24);
    if (!v28)
    {
      exposure_table_initialize_cold_6(0);
LABEL_54:
      v19 = v27;
      goto LABEL_55;
    }

    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 != CFNumberGetTypeID())
    {
      goto LABEL_54;
    }

    v31 = CFArrayGetValueAtIndex(theArray, v24);
    if (!v31)
    {
      exposure_table_initialize_cold_5(0);
      goto LABEL_54;
    }

    v32 = v31;
    v33 = CFGetTypeID(v29);
    if (v33 != CFNumberGetTypeID())
    {
      goto LABEL_54;
    }

    CFNumberGetValue(v29, kCFNumberDoubleType, &v50);
    v34 = CFNumberGetValue(v32, kCFNumberDoubleType, &v49);
    v35 = v50;
    if (v50 > 1.0)
    {
      v35 = 1.0 / v50;
      v50 = 1.0 / v50;
    }

    v36 = valuePtr;
    if (valuePtr <= 0.0)
    {
      exposure_table_initialize_cold_4(v34);
      goto LABEL_54;
    }

    v37 = v49;
    if (v49 < 1.0)
    {
      exposure_table_initialize_cold_3(v34);
      goto LABEL_54;
    }

    v19 = v27;
    v38 = *v4;
    if (*v4 <= 0.0 || v38 >= 1.0)
    {
      v23 = exposure_table_initialize_cold_1(v34);
      v42 = -1;
      Count = v26;
    }

    else
    {
      v52[0] = v25;
      v52[1] = 0;
      v53 = v35;
      v54 = v49;
      v23 = exposure_table_fill_metric(v52, valuePtr, v38);
      v39 = v54;
      Count = v26;
      do
      {
        v40 = v52[0]++;
        if (v40 > 4094)
        {
          v42 = -1;
          goto LABEL_40;
        }

        v41 = v39;
        v23 = exposure_table_fill_metric(v52, v36, v38);
        v39 = v54;
      }

      while (v54 < v37);
      if (v37 - v41 < v54 - v37)
      {
        v42 = v52[0] - 1;
      }

      else
      {
        v42 = v52[0];
      }
    }

LABEL_40:
    v43 = &v19[48 * v24];
    *v43 = v25;
    *(v43 + 1) = 0;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    v44 = &v19[24 * ((2 * v24) | 1)];
    *v44 = v42;
    *(v44 + 1) = 0;
    *(v44 + 1) = v35;
    *(v44 + 2) = v37;
    v25 = v42 + 1;
    ++v24;
  }

  while (v24 != Count);
  if ((v42 - 4096) <= 0xFFFFF000)
  {
    goto LABEL_45;
  }

  v45 = 0;
  *a1 = exposure_table_create_lookup_table(v19, v47, *(a1 + 16));
  *(a1 + 8) = v42;
LABEL_56:
  free(v19);
  return v45;
}

uint64_t FigImageControl_FusionFaceDetectionMetering(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 10 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 10;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SetFusionFaceDetectionMeteringAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) == 10)
  {
    if (*(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
    {
      *(DerivedStorage + 7476) = a2;
      *(DerivedStorage + 7480) = a3;
      *(DerivedStorage + 7484) = a4;
      *(DerivedStorage + 7488) = a5;
      *(DerivedStorage + 7457) = 1;
    }
  }

  else
  {
    FigImageControl_FusionFaceDetectionMetering(a1, a2, a3, a4, a5);
  }

  return 0;
}

char *exposure_table_create_lookup_table(uint64_t a1, unint64_t a2, double a3)
{
  if (!a1)
  {
    exposure_table_create_lookup_table_cold_4(0, a2, a3);
    return 0;
  }

  v3 = a2 - 1;
  if (a2 <= 1)
  {
    exposure_table_create_lookup_table_cold_3(a3);
    return 0;
  }

  v5 = *(a1 + 24 * v3);
  if (v5 <= 0)
  {
    exposure_table_create_lookup_table_cold_2(a3);
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = malloc_type_malloc(24 * v5 + 24, 0x1000040D315E998uLL);
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = (a1 + 24 * v9);
    v17 = *v11;
    v18 = *(v11 + 2);
    v12 = *(v11 + 6);
    if (v12 < v10)
    {
      break;
    }

    if (v10 < v12)
    {
      v13 = &v8[24 * v10];
      v14 = v12 - v10;
      do
      {
        LODWORD(v17) = v10;
        exposure_table_fill_metric(&v17, v7, a3);
        v15 = v17;
        *(v13 + 2) = v18;
        *v13 = v15;
        v13 += 24;
        ++v10;
        --v14;
      }

      while (v14);
    }

    ++v9;
    v10 = v12;
    if (v9 == v3)
    {
      return v8;
    }
  }

  exposure_table_create_lookup_table_cold_1(&v17, v8, &v19);
  return v19;
}

uint64_t exposure_table_fill_metric(uint64_t result, double a2, double a3)
{
  if (!result)
  {
    return exposure_table_fill_metric_cold_3(a2, a3);
  }

  if (a2 <= 0.0)
  {
    return exposure_table_fill_metric_cold_2();
  }

  v3 = 1.0;
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    return exposure_table_fill_metric_cold_1();
  }

  v5 = *result;
  if (*result >= 1)
  {
    v6 = a3 + 1.0;
    do
    {
      v3 = v6 * v3;
      --v5;
    }

    while (v5);
  }

  *(result + 16) = a2 / *(result + 8) * v3;
  return result;
}

__CFString *FigCaptureQOSClassToString(uint64_t a1)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return @"QOS_CLASS_DEFAULT";
    }

    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"QOS_CLASS_USER_INITIATED";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QOS class %d", a1];
    }

    return @"QOS_CLASS_USER_INTERACTIVE";
  }

  else
  {
    if (!a1)
    {
      return @"QOS_CLASS_UNSPECIFIED";
    }

    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return @"QOS_CLASS_UTILITY";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown QOS class %d", a1];
    }

    return @"QOS_CLASS_BACKGROUND";
  }
}

__SecTask *FigCaptureClientHasPrivateCaptureEntitlement(__SecTask *result)
{
  if (result)
  {
    return FigCaptureClientHasEntitlementWithSecTask(result, @"com.apple.private.avfoundation.capture.allow");
  }

  return result;
}

uint64_t FigCaptureCurrentProcessIsMediaserverd()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecTaskCopySigningIdentifier(v0, 0);
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  CFRelease(v1);
  return isEqualToString;
}

uint64_t FigCaptureClientIsInternalCommandLineTool(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsRunningInInternalCommandLineToolWithSecTask = FigCaptureClientIsRunningInInternalCommandLineToolWithSecTask(v3);
  CFRelease(v4);
  return IsRunningInInternalCommandLineToolWithSecTask;
}

uint64_t FigCaptureClientIsRunningInInternalCommandLineToolWithSecTask(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopySigningIdentifier(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  isEqualToString = objc_msgSend_isEqualToString_(v1);

  return isEqualToString;
}

__SecTask *FigCaptureClientIsWebBrowserRenderingExtension(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return FigCaptureClientHasEntitlement(v3, @"com.apple.developer.web-browser-engine.rendering");
}

__SecTask *FigCaptureClientIsNonStandardWithSecTask(__SecTask *result)
{
  if (result)
  {
    return FigCaptureClientHasEntitlementWithSecTask(result, @"com.apple.private.avfoundation.capture.nonstandard-client.allow");
  }

  return result;
}

uint64_t FigCaptureClientIsRunningInCameraOrDerivative(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsRunningInCameraOrDerivativeWithSecTask = FigCaptureClientIsRunningInCameraOrDerivativeWithSecTask(v3);
  CFRelease(v4);
  return IsRunningInCameraOrDerivativeWithSecTask;
}

uint64_t FigCaptureClientIsRunningInCameraOrDerivativeWithSecTask(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopySigningIdentifier(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v5 = v1;
  v3 = FigCaptureClientApplicationIDIsCameraOrDerivative(v1, v2);

  return v3;
}

void *__FigCaptureClientApplicationIDIsFaceTimeVariant_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2170190, 0x1F21851B0, 0x1F2185490, 0x1F21852D0, @"com.apple.VideoConference.AVConferenceTestRunneriOS", @"com.apple.AVConferenceTestRunnertvOS", @"com.apple.FaceTime.FaceTimeNotificationCenterService", @"com.apple.TelephonyUtilities", @"com.apple.facetime.legacy", @"com.apple.facetime.debug", 0}];
  qword_1ED8451E0 = result;
  return result;
}

void *__FigCaptureClientApplicationIDIsMagnifier_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2185390, 0x1F21853B0, 0}];
  qword_1ED845210 = result;
  return result;
}

void *__FigCaptureClientApplicationIDIsVoiceOver_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2185630, 0}];
  qword_1ED845220 = result;
  return result;
}

uint64_t FigCaptureIsRunningInVirtualization(uint64_t a1, uint64_t a2)
{
  if (FigCaptureIsRunningInVirtualization_sOnceToken != -1)
  {
    FigCaptureIsRunningInVirtualization_cold_1();
  }

  return FigCaptureIsRunningInVirtualization_sAnswer;
}

uint64_t __FigCaptureIsRunningInVirtualization_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    FigCaptureIsRunningInVirtualization_sAnswer = v2 != 0;
  }

  return result;
}

void __FigCaptureExternalCameraReplacesBuiltIn_block_invoke(uint64_t result, uint64_t a2)
{
  if (FigCaptureIsRunningInVirtualization_sOnceToken != -1)
  {
    FigCaptureIsRunningInVirtualization_cold_1();
  }

  FigCaptureExternalCameraReplacesBuiltIn_sExternalReplacesBuiltIn = FigCaptureIsRunningInVirtualization_sAnswer;
}

void __FigCaptureGetSupportedPrewarmingBundleIdentifiers_block_invoke()
{
  if (!FigCaptureGetSupportedPrewarmingBundleIdentifiers_bundleIdentifiers)
  {
    v0[0] = 0x1F216ED50;
    v0[1] = 0x1F2185310;
    FigCaptureGetSupportedPrewarmingBundleIdentifiers_bundleIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:v0 count:2];
  }
}

void FigCaptureInitializeSingletons(uint64_t result, uint64_t a2)
{
  if (FigCaptureInitializeSingletons_onceToken != -1)
  {
    FigCaptureInitializeSingletons_cold_1();
  }
}

FigContinuityCaptureNotificationMonitor *__FigCaptureInitializeSingletons_block_invoke()
{
  +[FigCaptureCameraParameters sharedInstance];
  +[BWFigCaptureAttachedAccessoriesMonitor sharedAttachedAccessoriesMonitor];
  +[BWAutoFocusPositionSensorMonitor sharedInstance];
  +[BWCoreAnalyticsReporter sharedInstance];
  +[FigCaptureSessionObservatory sharedObservatory];
  +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];

  return +[FigContinuityCaptureNotificationMonitor sharedInstance];
}

uint64_t FigCaptureXPCServerStart(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  if (qword_1ED845228 != -1)
  {
    FigCaptureXPCServerStart_cold_1();
  }

  if (FigCaptureIsDebuggerOrSlowAllocationPathEnabled())
  {
    v5 = *MEMORY[0x1E695E480];
    if (a3)
    {
      Count = CFDictionaryGetCount(a3);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, Count, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v9 = MutableCopy;
    FigCFDictionarySetInt32();
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  if (fcu_registerForGPUErrorNotifications_onceToken != -1)
  {
    FigCaptureXPCServerStart_cold_2();
  }

  if (fcu_registerForANEErrorNotifications_onceToken != -1)
  {
    FigCaptureXPCServerStart_cold_3();
  }

  v10 = FigXPCServerStart();
  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t __FigCaptureAudiomxdSupportEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  FigCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled = result;
  return result;
}

uint64_t FigCaptureCameracapturedEnabled(uint64_t a1, uint64_t a2)
{
  if (FigCaptureCameracapturedEnabled_sOnceToken != -1)
  {
    FigCaptureCameracapturedEnabled_cold_1();
  }

  return FigCaptureCameracapturedEnabled_sCameracapturedEnabled;
}

uint64_t __FigCaptureCameracapturedEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  FigCaptureCameracapturedEnabled_sCameracapturedEnabled = result;
  return result;
}

BOOL FigCaptureVideoCodecTypeSpecifiesCVPixelBufferType(int a1)
{
  if (a1 == 846624121)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 17)
    {
      break;
    }

    v4 = *&FigCaptureVideoCodecTypeSpecifiesCVPixelBufferType_cvPixelFormatTypesThatAreCMVideoCodecTypes[4 * v2++ + 4];
  }

  while (v4 != a1);
  return v3 < 0x11;
}

uint64_t FigCaptureSceneIlluminationValueFromLuxLevel(void *a1, uint64_t a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  [a1 floatValue];
  if (v4 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  result = ((v4 * 1000.0) + 0.5);
  if (v2 != -1)
  {
    return (result * 0.0980392157 + v2 * 0.901960784 + 0.5);
  }

  return result;
}

double __FigCaptureDeviceIORegValuesByKeys_block_invoke()
{
  CameraDriverService = FigCaptureGetCameraDriverService();
  if (CameraDriverService)
  {
    v2 = CameraDriverService;
    v22[0] = @"CmClValidationStatus";
    v22[1] = @"CmPMValidationStatus";
    v22[2] = @"FCClValidationStatus";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v3;
    v5 = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      v8 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = IORegistryEntrySearchCFProperty(v2, "IODeviceTree", v10, v8, 1u);
          if (v11)
          {
            v12 = v11;
            if (objc_msgSend_isEqualToString_(v11))
            {
              v13 = 1;
            }

            else if (objc_msgSend_isEqualToString_(v12))
            {
              v13 = 2;
            }

            else if (objc_msgSend_isEqualToString_(v12))
            {
              v13 = 3;
            }

            else if (objc_msgSend_isEqualToString_(v12))
            {
              v13 = 4;
            }

            else if (objc_msgSend_isEqualToString_(v12))
            {
              v13 = 5;
            }

            else
            {
              v13 = 6;
            }
          }

          else
          {
            v13 = 0;
          }

          [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v13), v10}];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v6);
    }

    v14 = [v4 count];
    if (v14)
    {
      v14 = [v4 copy];
    }

    FigCaptureDeviceIORegValuesByKeys_sDeviceIORegValuesByKeys = v14;
    FigCaptureReleaseCameraDriverService(v2);
  }

  else if (dword_1ED844670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void *__FigCaptureDeviceCoreRepairStatusesByKeys_block_invoke()
{
  v18[0] = @"RearCameraAssembly";
  v18[1] = @"FrontCameraAssembly";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  if (FigCapturePlatformIdentifier() >= 7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v15;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v15 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = *(*(&v14 + 1) + 8 * i);
          if (objc_msgSend_isEqualToString_(v5))
          {
            v6 = 1026;
          }

          else
          {
            if (!objc_msgSend_isEqualToString_(v5))
            {
              continue;
            }

            v6 = 1027;
          }

          v12 = 0;
          v20 = 0;
          v21 = &v20;
          v22 = 0x2020000000;
          v7 = getCRGetComponentStateSymbolLoc_ptr;
          v23 = getCRGetComponentStateSymbolLoc_ptr;
          if (!getCRGetComponentStateSymbolLoc_ptr)
          {
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __getCRGetComponentStateSymbolLoc_block_invoke;
            v19[3] = &unk_1E798FC38;
            v19[4] = &v20;
            __getCRGetComponentStateSymbolLoc_block_invoke(v19);
            v7 = v21[3];
          }

          _Block_object_dispose(&v20, 8);
          if (!v7)
          {
            __FigCaptureDeviceCoreRepairStatusesByKeys_block_invoke_cold_1();
          }

          v8 = v7(v6, &v12);
          if (v12)
          {
          }

          else
          {
            if (v8 < 5)
            {
              v9 = v8 + 1;
            }

            else
            {
              v9 = 0;
            }

            [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v9), v5}];
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v2);
    }
  }

  result = [v11 count];
  if (result)
  {
    result = [v11 copy];
  }

  FigCaptureDeviceCoreRepairStatusesByKeys_sDeviceCoreRepairStatusesByKeys = result;
  return result;
}

void *FigCaptureDeviceCoreRepairStatusForPortType(uint64_t a1)
{
  v2 = FigCaptureDeviceCoreRepairStatusesByKeys(a1);
  v3 = *off_1E798A0D0;
  v12[0] = *off_1E798A0C0;
  v12[1] = v3;
  v4 = *off_1E798A0C8;
  v12[2] = *off_1E798A0D8;
  v12[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v6 = *off_1E798A0F8;
  v11[0] = *off_1E798A0E0;
  v11[1] = v6;
  v7 = *off_1E798A0F0;
  v11[2] = *off_1E798A0E8;
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  if ([v5 containsObject:a1])
  {
    v9 = @"RearCameraAssembly";
  }

  else
  {
    result = [v8 containsObject:a1];
    if (!result)
    {
      return result;
    }

    v9 = @"FrontCameraAssembly";
  }

  return [objc_msgSend(v2 objectForKeyedSubscript:{v9), "intValue"}];
}

uint64_t FigCaptureIsWombatEnabled(unsigned int *a1, uint64_t a2)
{
  if (FigCaptureAudiomxdSupportEnabled_sOnceToken != -1)
  {
    FigCaptureAudiomxdSupportEnabled_cold_1();
  }

  if (FigCaptureAudiomxdSupportEnabled_sCaptureAudiomxdSupportEnabled == 1)
  {
    v3 = [MEMORY[0x1E69AED10] sharedInstance];
    v4 = [objc_msgSend(v3 attributeForKey:{*MEMORY[0x1E69AECF8]), "BOOLValue"}];
    v5 = 0;
    if (!a1)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69AED20]) initWithPID:getpid()];
  v5 = [v6 copyAttributeForKey:*MEMORY[0x1E69B07C0] withValueOut:&v8];
  v4 = [v8 BOOLValue];

  if (a1)
  {
LABEL_7:
    *a1 = v5;
  }

  return v4;
}

uint64_t FigCaptureIsCarryDevice(uint64_t a1, uint64_t a2)
{
  if (FigCaptureIsCarryDevice_onceToken != -1)
  {
    FigCaptureIsCarryDevice_cold_1();
  }

  return FigCaptureIsCarryDevice_sIsCarryDevice;
}

void *__FigCaptureIsCarryDevice_block_invoke()
{
  v0 = [CFPreferencesCopyValue(@"ExperimentGroup" @"com.apple.da"];
  result = objc_msgSend_isEqualToString_(v0);
  FigCaptureIsCarryDevice_sIsCarryDevice = result;
  return result;
}

void *FigCaptureNominalFocalLengthIn35mmFilmForPortType(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0D0))
  {
    v3 = &CMGQRearFacingSuperWideCameraFocalLengthIn35mm;
  }

  else if (objc_msgSend_isEqualToString_(a1))
  {
    v3 = &CMGQRearFacingWideCameraFocalLengthIn35mm;
  }

  else if (objc_msgSend_isEqualToString_(a1))
  {
    v3 = &CMGQRearFacingTeleCameraFocalLengthIn35mm;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(a1);
    if (!result)
    {
      return result;
    }

    v3 = &CMGQFrontFacingCameraFocalLengthIn35mm;
  }

  result = CMCaptureGestaltGetIntegerAnswer(*v3);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t __fcu_registerForGPUErrorNotifications_block_invoke()
{
  fcu_registerForGPUErrorNotifications_pendingNotifications = objc_opt_new();
  fcu_registerForGPUErrorNotifications_exitOnGPUError = FigCaptureCurrentProcessIsDeferredmediad();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __fcu_registerForGPUErrorNotifications_block_invoke_2;
  v2[3] = &__block_descriptor_33_e24_v16__0__NSNotification_8l;
  v3 = 1;
  return [v0 addObserverForName:@"com.apple.cameracapture.gpu-error" object:0 queue:0 usingBlock:v2];
}

void __fcu_registerForGPUErrorNotifications_block_invoke_2(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "userInfo")];
  [objc_msgSend(a2 "userInfo")];
  if (*(a1 + 32) == 1)
  {
    os_unfair_lock_lock(&fcu_registerForGPUErrorNotifications_radarLock);
    if (![fcu_registerForGPUErrorNotifications_pendingNotifications count])
    {
      v4 = dispatch_time(0, 100000000);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_after(v4, global_queue, &__block_literal_global_195_0);
    }

    [fcu_registerForGPUErrorNotifications_pendingNotifications addObject:a2];

    os_unfair_lock_unlock(&fcu_registerForGPUErrorNotifications_radarLock);
  }

  else if (fcu_registerForGPUErrorNotifications_exitOnGPUError == 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    exit(-1);
  }
}

void __fcu_registerForGPUErrorNotifications_block_invoke_3()
{
  os_unfair_lock_lock(&fcu_registerForGPUErrorNotifications_radarLock);
  [fcu_registerForGPUErrorNotifications_pendingNotifications sortUsingComparator:&__block_literal_global_198_0];
  v0 = objc_opt_new();
  [v0 appendString:@"## Recent Failed Command Buffers\n"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = fcu_registerForGPUErrorNotifications_pendingNotifications;
  v2 = [fcu_registerForGPUErrorNotifications_pendingNotifications countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v15;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v14 + 1) + 8 * i);
      [objc_msgSend(objc_msgSend(v7 "userInfo")];
      if (v8 > 0.0 && v4 == 0)
      {
        v4 = [objc_msgSend(v7 "userInfo")];
      }

      [v0 appendString:@"\n"];
      [v0 appendString:{objc_msgSend(objc_msgSend(v7, "userInfo"), "objectForKeyedSubscript:", @"title"}];
    }

    v3 = [v1 countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v3);
  if (!v4)
  {
LABEL_15:
    [objc_msgSend(objc_msgSend(fcu_registerForGPUErrorNotifications_pendingNotifications "firstObject")];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v11 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(9, v11, v0, &unk_1F224A740, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/FigCaptureUtilities.m", 1078, @"LastShownDate:FigCaptureUtilities.m:1078", @"LastShownBuild:FigCaptureUtilities.m:1078", fcu_registerForGPUErrorNotifications_exitOnGPUError);
  free(v11);
  [fcu_registerForGPUErrorNotifications_pendingNotifications removeAllObjects];

  os_unfair_lock_unlock(&fcu_registerForGPUErrorNotifications_radarLock);
  if (fcu_registerForGPUErrorNotifications_exitOnGPUError == 1)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    exit(-1);
  }
}

uint64_t __fcu_registerForGPUErrorNotifications_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(objc_msgSend(a2 "userInfo")];
  v5 = v4;
  [objc_msgSend(objc_msgSend(a3 "userInfo")];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t __fcu_registerForANEErrorNotifications_block_invoke()
{
  fcu_registerForANEErrorNotifications_exitOnANEError = FigCaptureCurrentProcessIsDeferredmediad();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __fcu_registerForANEErrorNotifications_block_invoke_2;
  v2[3] = &__block_descriptor_33_e24_v16__0__NSNotification_8l;
  v3 = 0;
  return [v0 addObserverForName:@"com.apple.cameracapture.ane-error" object:0 queue:0 usingBlock:v2];
}

void __fcu_registerForANEErrorNotifications_block_invoke_2(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "userInfo")];
  if (*(a1 + 32) == 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [objc_msgSend(a2 "userInfo")];
    v5 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(9, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/FigCaptureUtilities.m", 992, @"LastShownDate:FigCaptureUtilities.m:992", @"LastShownBuild:FigCaptureUtilities.m:992", fcu_registerForANEErrorNotifications_exitOnANEError);
    free(v5);
  }

  if (fcu_registerForANEErrorNotifications_exitOnANEError == 1)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    exit(-1);
  }
}

void *__getCRGetComponentStateSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!CoreRepairCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreRepairCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E799E040;
    v6 = 0;
    CoreRepairCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreRepairCoreLibraryCore_frameworkLibrary;
  if (!CoreRepairCoreLibraryCore_frameworkLibrary)
  {
    __getCRGetComponentStateSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "CRGetComponentState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRGetComponentStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRepairCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreRepairCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __fcu_initializeTrace_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __dzpc_initializeTrace_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigRemoteQueueIOSurfaceSender_ShareIOSurface(int a1, int a2)
{
  *&msg[20] = 0u;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v9 = 1245184;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x481200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 275, 0x28u, 0x2Cu, v4, 0x1F4u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg[20] == 18550)
      {
        v6 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v6 = *&msg[32];
          if (!*&msg[32])
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v6;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v6;
}

uint64_t FigRemoteQueueIOSurfaceSender_ReleaseIOSurface(int a1, int a2)
{
  *&msg[20] = 0u;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v9 = 1245184;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x481300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 275, 0x28u, 0x2Cu, v4, 0x1F4u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg[20] == 18551)
      {
        v6 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v6 = *&msg[32];
          if (!*&msg[32])
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v6;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v6;
}

uint64_t FigRemoteQueueIOSurfaceSender_ReleaseIOSurfaces(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x481400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = reply_port;
  }

  v4 = mach_msg(msg, 3, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18552)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v5;
}

uint64_t (*figremotequeue_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 18453) >= 0xFFFFFFFD)
  {
    return FigRemoteQueueIOSurfaceReceiver_figremotequeue_subsystem[5 * (v1 - 18450) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XShareIOSurface(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 40)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      result = FigRemoteQueueIOSurfaceReceiver_ShareIOSurface(*(a1 + 12), *(a1 + 28));
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XReleaseIOSurface(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 40)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      result = FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface(*(a1 + 12), *(a1 + 28));
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XReleaseIOSurfaces(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurfaces(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t figremotequeue_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 18453) >= 0xFFFFFFFD && (v5 = FigRemoteQueueIOSurfaceReceiver_figremotequeue_subsystem[5 * (v4 - 18450) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t FigLivePhotoMetadataSerializeIntoBufferV3(const void *a1, CGPoint *a2, const __CFDictionary *a3, const __CFArray *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, id *a9, size_t a10, char *a11)
{
  if (!a11)
  {
    OUTLINED_FUNCTION_7_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v11, v33, v34, target, v36, v37, v38);
    v26 = OUTLINED_FUNCTION_7_5();
    v29 = 4294949851;
    v30 = 272;
    goto LABEL_43;
  }

  bzero(a11, a10);
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, *off_1E798ACE8);
  }

  else
  {
    Value = 0;
  }

  v16 = a6;
  if (a6)
  {
    v16 = CFDictionaryGetValue(a6, *off_1E798ACE8);
  }

  v44 = v16;
  if (a7)
  {
    v43 = CFDictionaryGetValue(a7, *off_1E798ACE8);
    if (a8)
    {
LABEL_9:
      theArray = CFDictionaryGetValue(a8, *off_1E798ACE8);
      goto LABEL_12;
    }
  }

  else
  {
    v43 = 0;
    if (a8)
    {
      goto LABEL_9;
    }
  }

  theArray = 0;
LABEL_12:
  if (a4)
  {
    key = CFArrayGetCount(a4);
    if (Value)
    {
LABEL_14:
      Count = CFArrayGetCount(Value);
      goto LABEL_17;
    }
  }

  else
  {
    key = 0;
    if (Value)
    {
      goto LABEL_14;
    }
  }

  Count = 0;
LABEL_17:
  if (!v44)
  {
    v40 = 0;
    if (v43)
    {
      goto LABEL_19;
    }

LABEL_21:
    v39 = 0;
    goto LABEL_22;
  }

  v40 = CFArrayGetCount(v44);
  if (!v43)
  {
    goto LABEL_21;
  }

LABEL_19:
  v39 = CFArrayGetCount(v43);
LABEL_22:
  if (theArray)
  {
    v17 = CFArrayGetCount(theArray);
  }

  else
  {
    v17 = 0;
  }

  v55[0] = 0;
  result = FigLivePhotoMetadataComputeSerializationSizeV3(a9, key, Count, v40, v39, v17, v55);
  if (result)
  {
    return result;
  }

  if (v55[0] == a10)
  {
    *a11 = a9;
    v19 = CFDictionaryGetValue(a3, *off_1E798B2A8);
    if (v19)
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v19, kCFNumberFloat32Type, &valuePtr);
      *(a11 + 1) = valuePtr;
    }

    v20 = CFDictionaryGetValue(a3, *off_1E798B1A0);
    if (v20)
    {
      *&valuePtr = 0;
      CFNumberGetValue(v20, kCFNumberSInt64Type, &valuePtr);
      *(a11 + 1) = valuePtr;
    }

    v21 = CFDictionaryGetValue(a3, *off_1E798D438);
    if (v21)
    {
      v22 = v21;
      if (CFDataGetLength(v21) == 8)
      {
        v57.location = 0;
        v57.length = 8;
        CFDataGetBytes(v22, v57, buffer);
        *(a11 + 2) = *buffer;
      }
    }

    v23 = CFDictionaryGetValue(a3, *off_1E798D440);
    if (v23)
    {
      v24 = v23;
      if (CFDataGetLength(v23) == 8)
      {
        v58.location = 0;
        v58.length = 8;
        CFDataGetBytes(v24, v58, v53);
        *(a11 + 3) = *v53;
      }
    }

    v52 = 1065353216;
    v25 = CMGetAttachment(a1, @"TotalZoomFactor", 0);
    if (v25)
    {
      CFNumberGetValue(v25, kCFNumberFloat32Type, &v52);
      *(a11 + 8) = v52;
    }

    v51 = 1065353216;
    FigCaptureComputeImageGainFromMetadata();
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_3_4();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v31, v32, v33, v34, target, v11, v37, v38);
  v26 = OUTLINED_FUNCTION_7_5();
  v29 = 4294949853;
  v30 = 289;
LABEL_43:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v29, "<<<< FigLivePhotoMetadata >>>>", v30, v11, v27, v28, a9);
}

uint64_t FigLivePhotoMetadataSerializeIntoBufferV2(const void *a1, uint64_t a2, const __CFDictionary *a3, const __CFArray *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, int a9, size_t a10, char *a11)
{
  v13 = *a2;
  v14 = *(a2 + 16);
  LODWORD(v12) = a9;
  return FigLivePhotoMetadataSerializeIntoBufferV3(a1, &v13, a3, a4, a5, a6, a7, a8, v12, a10, a11);
}

uint64_t FigLivePhotoMetadataDeserializeIntoBuffer(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (!a3)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v57, v59, v60->i8, v61->i8, v62, v63->i8, v64->i8, i64);
    v54 = OUTLINED_FUNCTION_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, 0xFFFFBBDFLL, "<<<< FigLivePhotoMetadata >>>>", 0x270, v9, v55, v56, a9);
  }

  v70 = 0;
  v69 = 0;
  result = FigLivePhotoMetadataComputeDeserializationSize(a1, a2, a3, 0, &v69, &v70);
  if (result)
  {
    return result;
  }

  if (v69 != a3)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v57, v59, v60->i8, v61->i8, v62, v63->i8, v64->i8, i64);
    v49 = OUTLINED_FUNCTION_2();
    v52 = 4294949855;
    v53 = 627;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v52, "<<<< FigLivePhotoMetadata >>>>", v53, v9, v50, v51, v58);
  }

  if (v70 != a4)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v57, v59, v60->i8, v61->i8, v62, v63->i8, v64->i8, i64);
    v49 = OUTLINED_FUNCTION_2();
    v52 = 4294949852;
    v53 = 628;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v52, "<<<< FigLivePhotoMetadata >>>>", v53, v9, v50, v51, v58);
  }

  v15 = *(a1 + 44);
  *a5 = a3;
  v16 = *(a1 + 42);
  *(a5 + 42) = v16;
  if (v16)
  {
    *(a5 + 4) = *(a1 + 4);
    if ((v16 & 2) == 0)
    {
LABEL_7:
      if ((v16 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a5 + 8) = *(a1 + 8);
  if ((v16 & 4) == 0)
  {
LABEL_8:
    if ((v16 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a5 + 16) = *(a1 + 16);
  if ((v16 & 8) == 0)
  {
LABEL_9:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a5 + 24) = *(a1 + 24);
  if ((v16 & 0x10) == 0)
  {
LABEL_10:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a5 + 32) = *(a1 + 32);
  if ((v16 & 0x20) == 0)
  {
LABEL_11:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_47:
    *(a5 + 40) = *(a1 + 40);
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_46:
  *(a5 + 36) = *(a1 + 36);
  if ((v16 & 0x40) != 0)
  {
    goto LABEL_47;
  }

LABEL_12:
  if ((v16 & 0x80) != 0)
  {
LABEL_13:
    *(a5 + 41) = *(a1 + 41);
  }

LABEL_14:
  *(a5 + 44) = v15;
  if (v15)
  {
    v17 = 0;
    for (i = v15; i; --i)
    {
      v19 = *(a1 + v17 + 78);
      v20 = a5 + v17;
      *(v20 + 78) = v19;
      *(v20 + 76) = 0;
      if (v19)
      {
        *(v20 + 48) = *(a1 + v17 + 48);
        if ((v19 & 2) != 0)
        {
LABEL_23:
          *(a5 + v17 + 56) = *(a1 + v17 + 56);
          if ((v19 & 4) == 0)
          {
            goto LABEL_20;
          }

LABEL_19:
          *(a5 + v17 + 72) = *(a1 + v17 + 72);
          goto LABEL_20;
        }
      }

      else if ((v19 & 2) != 0)
      {
        goto LABEL_23;
      }

      if ((v19 & 4) != 0)
      {
        goto LABEL_19;
      }

LABEL_20:
      v17 += 32;
    }
  }

  if (a3 == 1)
  {
    return 0;
  }

  v21 = (a1 + 32 * v15);
  v23 = v21[3];
  v22 = v21 + 3;
  v24 = (a5 + 32 * v15);
  v24[3] = v23;
  v25 = v24 + 3;
  v26 = v23.u32[0];
  v27 = v23.i32[1];
  v28 = v23.i32[2];
  v29 = v23.i32[3];
  if (vmaxv_u16(vmovn_s32(vtstq_s32(v23, v23))))
  {
    v30 = 0;
    v31 = 0;
    v64 = v22 + 1;
    i64 = v22[2 * v26 + 1].i64;
    v32 = (v27 + v26);
    v33 = (v32 + v28);
    v66 = v22[2 * v32 + 1].i64;
    v67 = v22[2 * v33 + 1].i64;
    v60 = v25 + 1;
    v61 = &v25[2 * v26 + 1];
    v68[0] = v26;
    v68[1] = v27;
    v68[2] = v28;
    v68[3] = v29;
    v62 = v25[2 * v32 + 1].i64;
    v63 = &v25[2 * v33 + 1];
    while (1)
    {
      v34 = v68[v30];
      if (v34)
      {
        break;
      }

LABEL_39:
      if (++v30 == 4)
      {
        v40 = v31 != 0;
        goto LABEL_50;
      }
    }

    v35 = 0;
    v36 = *(&v60 + v30);
    v37 = *(&v64 + v30);
    while (1)
    {
      v38 = &v36[v35];
      v39 = *&v37[v35 + 30];
      *(v38 + 15) = v39;
      *(v38 + 14) = *&v37[v35 + 28];
      if (v39)
      {
        *v38 = *&v37[v35];
        if ((v39 & 2) != 0)
        {
LABEL_37:
          *&v36[v35 + 8] = *&v37[v35 + 8];
          if ((v39 & 4) == 0)
          {
            goto LABEL_34;
          }

LABEL_33:
          *&v36[v35 + 24] = *&v37[v35 + 24];
          goto LABEL_34;
        }
      }

      else if ((v39 & 2) != 0)
      {
        goto LABEL_37;
      }

      if ((v39 & 4) != 0)
      {
        goto LABEL_33;
      }

LABEL_34:
      v31 |= v39;
      v35 += 32;
      if (!--v34)
      {
        goto LABEL_39;
      }
    }
  }

  v40 = 0;
LABEL_50:
  if (a3 < 3)
  {
    return 0;
  }

  v41 = (v27 + v26 + v28 + v29);
  v42 = &v22[2 * v41];
  v45 = v42[1].u16[0];
  v44 = v42 + 1;
  v43 = v45;
  v46 = &v25[2 * v41];
  v46[1].i16[0] = v45;
  v47 = v46 + 1;
  if (v45)
  {
    for (j = 0; j != 9; ++j)
    {
      v47->i32[j + 1] = v44->i32[j + 1];
    }
  }

  else
  {
    v47[2].i32[1] = 0;
    *(&v47[1] + 4) = 0u;
    *(v47 + 4) = 0u;
  }

  if ((v43 & 2) != 0)
  {
    v47[2].i64[1] = v44[2].i64[1];
    if ((v43 & 4) == 0)
    {
LABEL_59:
      if ((v43 & 8) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_68;
    }
  }

  else if ((v43 & 4) == 0)
  {
    goto LABEL_59;
  }

  v47[3].i64[0] = v44[3].i64[0];
  if ((v43 & 8) == 0)
  {
LABEL_60:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_61;
    }

LABEL_69:
    v47[3].i8[9] = v44[3].i8[9];
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_68:
  v47[3].i8[8] = v44[3].i8[8];
  if ((v43 & 0x10) != 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  if ((v43 & 0x20) != 0)
  {
LABEL_62:
    v47[3].i8[10] = v44[3].i8[10];
  }

LABEL_63:
  result = 0;
  v47[4].i64[0] = 0;
  *(&v47[3].i64[1] + 3) = 0;
  if (v16 == 0 && !v40 && !v43)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v57, v59, v60->i8, v61->i8, v62, v63->i8, v64->i8, i64);
    v49 = OUTLINED_FUNCTION_2();
    v52 = 4294949856;
    v53 = 829;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v52, "<<<< FigLivePhotoMetadata >>>>", v53, v9, v50, v51, v58);
  }

  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDFLL, "<<<< FigLivePhotoMetadata >>>>", 0x62, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDELL, "<<<< FigLivePhotoMetadata >>>>", 0x60, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDFLL, "<<<< FigLivePhotoMetadata >>>>", 0x5F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0xC5, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0xC2, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0xB9, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0xB6, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0xA3, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0xA0, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDFLL, "<<<< FigLivePhotoMetadata >>>>", 0x93, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDDLL, "<<<< FigLivePhotoMetadata >>>>", 0x8F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDFLL, "<<<< FigLivePhotoMetadata >>>>", 0x8B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_2(CFErrorRef *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v12, v13, v14, v15, v16, v17, v18);
  v5 = OUTLINED_FUNCTION_9_1();
  Code = CFErrorGetCode(*a1);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, Code, "<<<< FigLivePhotoMetadata >>>>", 0x3BD, v2, v7, v8, v11);
  *a2 = result;
  return result;
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_3(CFErrorRef *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v12, v13, v14, v15, v16, v17, v18);
  v5 = OUTLINED_FUNCTION_9_1();
  Code = CFErrorGetCode(*a1);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, Code, "<<<< FigLivePhotoMetadata >>>>", 0x39C, v2, v7, v8, v11);
  *a2 = result;
  return result;
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBDBLL, "<<<< FigLivePhotoMetadata >>>>", 0x37E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

CMSampleBufferRef qtrmg_createTrimmedSampleBufferIfNeeded(void *a1, CMTime *a2)
{
  sampleBufferOut = 0;
  memset(&v26, 0, sizeof(v26));
  v4 = *MEMORY[0x1E6960560];
  v5 = CMGetAttachment(a1, *MEMORY[0x1E6960560], 0);
  CMTimeMakeFromDictionary(&v26, v5);
  v6 = MEMORY[0x1E6960C70];
  if (v26.flags)
  {
    time1 = v26;
    time2 = **&MEMORY[0x1E6960CC0];
    if (!CMTimeCompare(&time1, &time2))
    {
      v26 = *v6;
    }
  }

  memset(&time1, 0, sizeof(time1));
  v7 = *MEMORY[0x1E6960558];
  v8 = CMGetAttachment(a1, *MEMORY[0x1E6960558], 0);
  CMTimeMakeFromDictionary(&time1, v8);
  if (time1.flags)
  {
    *&time2.value = *&time1.value;
    if (!OUTLINED_FUNCTION_17_2(time1.epoch))
    {
      time1 = *v6;
    }
  }

  if ((v26.flags | time1.flags))
  {
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    if (CMSampleBufferGetSampleTimingInfo(a1, 0, &__dst))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return sampleBufferOut;
    }

    memcpy(&v21, &__dst, sizeof(v21));
    if (v26.flags)
    {
      if (v21.duration.flags)
      {
        time2 = v26;
        rhs = __dst.duration;
        if ((CMTimeCompare(&time2, &rhs) & 0x80000000) == 0)
        {
          return sampleBufferOut;
        }

        time2 = v21.duration;
        rhs = v26;
        CMTimeSubtract(&v21.duration, &time2, &rhs);
      }

      rhs = v21.presentationTimeStamp;
      *&lhs.value = *&v26.value;
      v9 = OUTLINED_FUNCTION_26();
      CMTimeAdd(v11, v9, v10);
      v21.presentationTimeStamp = time2;
    }

    time2 = v21.presentationTimeStamp;
    rhs = *a2;
    if (CMTimeCompare(&time2, &rhs) < 0 && (v21.duration.flags & 1) != 0)
    {
      if (time1.flags)
      {
        rhs = v21.duration;
        *&lhs.value = *&time1.value;
        v12 = OUTLINED_FUNCTION_26();
        CMTimeSubtract(v14, v12, v13);
        OUTLINED_FUNCTION_48_0();
      }

      *&time2.value = *&v21.duration.value;
      if (OUTLINED_FUNCTION_17_2(v21.duration.epoch) >= 1)
      {
        memset(&time2, 0, sizeof(time2));
        rhs = v21.presentationTimeStamp;
        *&lhs.value = *&v21.duration.value;
        v15 = OUTLINED_FUNCTION_26();
        CMTimeAdd(v17, v15, v16);
        rhs = time2;
        OUTLINED_FUNCTION_47_3();
        if (CMTimeCompare(&rhs, &lhs) >= 1)
        {
          OUTLINED_FUNCTION_47_3();
          presentationTimeStamp = v21.presentationTimeStamp;
          CMTimeSubtract(&rhs, &lhs, &presentationTimeStamp);
          v21.duration = rhs;
        }
      }
    }

    if (v21.duration.flags)
    {
      *&time2.value = *&v21.duration.value;
      if (OUTLINED_FUNCTION_17_2(v21.duration.epoch) <= 0)
      {
        CMTimeMake(&time2, 1, v21.duration.timescale);
        OUTLINED_FUNCTION_48_0();
      }
    }

    if (CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], a1, 1, &v21, &sampleBufferOut))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      CMRemoveAttachment(sampleBufferOut, v4);
      CMRemoveAttachment(sampleBufferOut, v7);
    }
  }

  return sampleBufferOut;
}

uint64_t BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG(void *a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_4(v3, v4, v5, v6, v7);
  result = FigCapturePixelFormatIsDemosaicedRaw([a1 rawOutputFormat]);
  if (result)
  {
    if ([a1 outputFileType] == 1785096550)
    {
      return 1;
    }

    else if ([a1 outputFileType] == 1751476579 || objc_msgSend(a1, "outputFileType") == 1751476582)
    {
      return 2;
    }

    else if ([a1 outputFileType] == 1684628333)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL BWPhotoEncoderShouldGenerateClientThumbnail(void *a1, uint64_t a2, unsigned int *a3)
{
  if ([a1 payloadType] != 1)
  {
    return 0;
  }

  v5 = [a1 outputFormat] ? objc_msgSend(a1, "isOutputFormatCompressed") ^ 1 : 0;
  IsBayerRaw = FigCapturePixelFormatIsBayerRaw([a1 rawOutputFormat]);
  v7 = IsBayerRaw;
  if ((v5 & 1) == 0 && !IsBayerRaw)
  {
    return 0;
  }

  if ([a1 previewEnabled])
  {
    v8 = [a1 previewWidth];
    v9 = [a1 previewHeight];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (([a1 thumbnailEnabled] & v5) == 1)
  {
    v10 = [a1 thumbnailWidth];
    v11 = [a1 thumbnailHeight];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (([a1 rawThumbnailEnabled] & v7) == 1)
  {
    v12 = [a1 rawThumbnailWidth];
    v13 = [a1 rawThumbnailHeight];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if ((v11 * v10) <= (v13 * v12))
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if ((v11 * v10) <= (v13 * v12))
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  result = (v14 * v15) > v8 * v9;
  if (a3)
  {
    if ((v14 * v15) > v8 * v9)
    {
      *a3 = v14;
      a3[1] = v15;
      return 1;
    }
  }

  return result;
}

void BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(void *a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_2_16();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4(v3, v4, v5, v6, v7);
  v8 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v36.origin.x = OUTLINED_FUNCTION_3_1();
  if (!CGRectIsEmpty(v36))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    if (ImageBuffer)
    {
      v11 = ImageBuffer;
      v12 = CMGetAttachment(a1, @"StillImageSettings", 0);
      if (v12)
      {
        v13 = v12;
        Width = CVPixelBufferGetWidth(v11);
        v15 = Width | (CVPixelBufferGetHeight(v11) << 32);
        v16 = [v13 outputWidth];
        v17 = v16 | ([v13 outputHeight] << 32);
        v18.n128_f64[0] = OUTLINED_FUNCTION_3_1();
        FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v19, v20, v17, v18, v21, v22, v23, v24, v25, v26, v27);
        FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v9, v15, v17);
        goto LABEL_6;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v28 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v28 = CMGetAttachment(a1, @"RawDNGDictionary", 0);
  if (v28)
  {
    v29 = v28;
    FinalCropRectFromSource = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource(v9);
    v28 = BWCreateDNGDictionaryForZoom(v29, FinalCropRectFromSource, v31, v32, v33);
    if (v28)
    {
      v34 = v28;
      CMSetAttachment(a1, @"RawDNGDictionary", v28, 1u);
      v28 = v34;
    }
  }

LABEL_9:
}

uint64_t BWPhotoEncoderThumbnailEnabled(uint64_t a1, void *a2, unsigned int *a3, signed int *a4, void *a5)
{
  v9 = a1;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_9();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(v10, v11, v12, v13, v14);
  if ((v9 - 3) > 1)
  {
    v19 = [a2 thumbnailEnabled];
    v16 = [a2 thumbnailFormat];
    v17 = [a2 thumbnailWidth];
    v18 = [a2 thumbnailHeight];
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    v15 = [a2 rawThumbnailEnabled];
    v16 = [a2 rawThumbnailFormat];
    v17 = [a2 rawThumbnailWidth];
    v18 = [a2 rawThumbnailHeight];
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v18;
  switch(v9)
  {
    case 1:
    case 3:
      if (v16 != 1785750887)
      {
        return 0;
      }

      goto LABEL_7;
    case 2:
      v27 = v16 == 1752589105;
      v28 = 1785750887;
      goto LABEL_25;
    case 4:
      v27 = v16 == 1785750887;
      v28 = 1786276963;
LABEL_25:
      if (!v27 && v16 != v28)
      {
        return 0;
      }

LABEL_7:
      v21 = [a2 outputWidth];
      if (v17 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      v23 = [a2 outputHeight];
      if (v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v20;
      }

      if (v22 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      if (a3)
      {
        *a3 = v16;
      }

      if (a4)
      {
        *a4 = v22;
        a4[1] = v24;
      }

      if (a5)
      {
        *a5 = v25;
      }

      result = 1;
      break;
    default:
      return 0;
  }

  return result;
}

void *BWPhotoEncoderEncodingOptionsForAuxiliaryImage(unint64_t a1, unint64_t a2, void *a3, int a4, uint64_t a5)
{
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v6 = a3;
  if (!a3)
  {
    return v6;
  }

  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6966090]), "intValue"}];
  if (!(v10 | [objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6966078]), "intValue"}]))
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v11;
  if (v11)
  {
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919C0]];
    v23.size.width = a1;
    v23.size.height = a2;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v23);
    [v6 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];

    if (a4)
    {
      [v6 setObject:&unk_1F2242568 forKeyedSubscript:*MEMORY[0x1E6991960]];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69919A0]];
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v16, v17, v18, v19, v20, v21, v22);
  }

  return v6;
}

void BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(opaqueCMSampleBuffer *a1, uint64_t a2, double a3, double a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_2_16();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4(v7, v8, v9, v10, v11);
  v12 = MEMORY[0x1E695F050];
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  if (CMGetAttachment(a1, *off_1E798A3C8, 0))
  {
    v34 = *v12;
    v35 = v12[1];
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v34 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v35 = _Q0;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    if (ImageBuffer)
    {
      v23 = ImageBuffer;
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(v23);
      if (a4 != 0.0)
      {
        if (Width)
        {
          v31 = Height;
          if (Height)
          {
            v26.n128_u64[0] = v34;
            v28.n128_u64[0] = *(&v35 + 1);
            v27.n128_u64[0] = v35;
            v29.n128_f64[0] = a3;
            v30.n128_f64[0] = a4;
            FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(Width, Height, v26, *(&v34 + 1), v27, v28, v29, v30);
            OUTLINED_FUNCTION_2_3();
            if (CGRectIsNull(v38))
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37);
            }

            else
            {
              v39.origin.x = 0.0;
              v39.origin.y = 0.0;
              v39.size.width = Width;
              v39.size.height = v31;
              v41.origin.x = v13;
              v41.origin.y = v14;
              v41.size.width = v15;
              v41.size.height = v16;
              if (!CGRectContainsRect(v39, v41))
              {
                v40.origin.x = OUTLINED_FUNCTION_3();
                v42.size.width = Width;
                v42.size.height = v31;
                CGRectIntersection(v40, v42);
                OUTLINED_FUNCTION_2_3();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_3();
}

uint64_t BWPhotoEncoderScalePixelBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E078, 0xFFFFCE0ELL, "<<<< BWPhotoEncoderUtilities >>>>", 0x10F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E078, 0xFFFFBDA1, "<<<< BWPhotoEncoderUtilities >>>>", 0x23F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E078, 0xFFFFBDA1, "<<<< BWPhotoEncoderUtilities >>>>", 0x23C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E078, 0xFFFFBDA1, "<<<< BWPhotoEncoderUtilities >>>>", 0x23A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

void SensitiveContentAnalysisLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SensitiveContentAnalysisLibrary(void)") description:{@"BWSensitiveContentAnalysisSoftLinking.m", 11, @"%s", *a1}];
  __break(1u);
}

void getSCAErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (SCAErrorDomain) (*)(void))0)()) getSCAErrorDomain(void)") description:{@"BWSensitiveContentAnalysisSoftLinking.m", 13, @"%s", dlerror()}];
  __break(1u);
}

uint64_t noiseReductionWithTuningOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0xF8, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x121, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x11F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x11E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x11D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionInOutWithTuningOptions_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x11C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidLayers_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x14A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidLayers_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x149, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x15E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x15D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x159, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionWithPyramid_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x158, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusionMaxBuffers_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x171, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusionMaxBuffers_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x170, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x18B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x188, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x187, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x184, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x183, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t noiseReductionPyramidFusion_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< NoiseReduction >>>>", 0x182, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t powerBlurNoiseReductionWithTuningOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  v7 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v1, v9, v10, v11, v12, vars0, vars8);
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< NoiseReduction (PowerBlur) >>>>", 0x572, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t shmemAllocatorPreferredSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a1 >= 1 && *(a3 + 32) > a1)
  {
    v3 = shmemPoolLookupSubPool(a3, a1);
    if (v3)
    {
      return *(v3 + 16) - 16;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  return 0;
}

void FigSharedMemPoolCreate_cold_2(const void *a1, const char **a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  *a2 = v4;
  v5 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v4, v6, v7, v8, v9, vars0, vars8);

  CFRelease(a1);
}

uint64_t captureSessionRemote_cancelPrewarm(uint64_t a1)
{
  os_unfair_lock_lock(&_MergedGlobals);
  v2 = [objc_msgSend(qword_1ED844E48 objectForKeyedSubscript:{a1), "BOOLValue"}];
  os_unfair_lock_unlock(&_MergedGlobals);
  if (v2)
  {
    v3 = csr_ensureClientEstablished();
    if (v3 || (v3 = FigXPCCreateBasicMessage()) != 0 || a1 && (v3 = FigXPCMessageSetCFString()) != 0 || (v3 = FigXPCRemoteClientSendAsyncMessage()) != 0)
    {
      v5 = v3;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5);
    }

    else if (a1)
    {
      os_unfair_lock_lock(&_MergedGlobals);
      [qword_1ED844E48 setObject:0 forKeyedSubscript:a1];
      os_unfair_lock_unlock(&_MergedGlobals);
    }
  }

  return FigXPCRelease();
}

uint64_t FigCaptureSessionRemoteCreate_cold_6(int a1)
{
  OUTLINED_FUNCTION_2_8();
  v6 = a1;
  v3 = OUTLINED_FUNCTION_5_17();
  FigDebugAssert3(v3, v6, v1);
  OUTLINED_FUNCTION_2_8();
  LODWORD(v7) = a1;
  v4 = OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3(v4, v7, v1);
}

uint64_t FigCaptureSessionRemoteSetClientCompositingSinkCallback_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigCaptureSessionRemote >>>>", 0x615, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCaptureSessionRemoteSetClientCompositingSinkCallback_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBFEBLL, "<<<< FigCaptureSessionRemote >>>>", 0x616, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureSessionRemote_handleServerMessage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSessionRemote >>>>", 0x506, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureSessionRemote_SetProperty_cold_2(id *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  v4 = [*a1 code];
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, "<<<< FigCaptureSessionRemote >>>>", 0xAA, v1, v5, v6, v9);
}

uint64_t captureSessionRemote_getObjectID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigCaptureSessionRemote >>>>", 0x1C3, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureSessionRemote_getObjectID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBFEBLL, "<<<< FigCaptureSessionRemote >>>>", 0x1C4, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void captureSessionRemote_SetSectionProperty_cold_5(int a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);

  objc_autoreleasePoolPop(a2);
}

uint64_t dumpCVPixelBufferToRawFile_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFFLL, "(Fig)", 0x19, v8, a7, a8, v11);
  *a1 = result == 0;
  return result;
}

uint64_t FigRemoteOperationReceiverCreateMessageReceiver_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t __FigRemoteOperationReceiverCreateMessageReceiver_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roEnqueueDictionaryPayload_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roDeserializeDictionaryPayload_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roCleanupDictionaryPayloadOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roDeserializeIOSurface_cold_1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3(v4);
  *a2 = *a1;
  return result;
}

uint64_t roDeserializeIOSurface_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roDeserializeIOSurface_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roCleanupIOSurfaceOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roEnqueueSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roCleanupSampleBufferOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roCleanupFormatDescriptionOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t roCleanupConfigurationLiveOperation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void nrfp_addFrame(int a1, uint64_t a2, void *a3, void *a4, int a5)
{
  if (![(BWUBNRFProcessorRequest *)a2 processingType])
  {
    return;
  }

  v10 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if ([a2 err] || !-[BWUBNRFProcessorRequest useFrameForMultiFrameProcessing:](a2, a4))
  {
    if (dword_1EB58DE60)
    {
      v13 = OUTLINED_FUNCTION_6_13();
      os_log_type_enabled(v13, v51);
      OUTLINED_FUNCTION_4_0();
      if (a1)
      {
        [objc_msgSend(a2 "input")];
        if (a2 && [(BWUBNRFProcessorRequest *)a2 processingType])
        {
          [*(a2 + 8) expectedFrameCount];
        }

        [a2 err];
        BWStillImageSampleBufferToDisplayString(a4, v14);
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_5_1(v15, v16, v50, v17, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v18, v19, v20, v21, v22);
    }

    v23 = [a2 err];
    if (a2 && v23 && [objc_msgSend(objc_msgSend(*(a2 + 8) "captureStreamSettings")] && !objc_msgSend(objc_msgSend(a2, "input"), "errorRecoveryFrame") && objc_msgSend(objc_msgSend(objc_msgSend(a2, "input"), "captureStreamSettings"), "isUnifiedBracketingErrorRecoveryFrame:isReferenceFrame:", a4, 0))
    {
      -[BWUBNRFProcessorInput _setErrorRecoveryFrame:]([a2 input]);
    }

    return;
  }

  v49 = v10;
  if ([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B1E8), "intValue"}])
  {
    v40 = 4294954516;
    goto LABEL_75;
  }

  if (a5)
  {
    [a3 setReferenceFrameIndex:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing")}];
    if (dword_1EB58DE60)
    {
      v11 = OUTLINED_FUNCTION_6_13();
      if (os_log_type_enabled(v11, v51))
      {
        v12 = v52;
      }

      else
      {
        v12 = v52 & 0xFFFFFFFE;
      }

      if (v12)
      {
        [objc_msgSend(objc_msgSend(a2 "input")];
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (![a2 deepFusionOutput] || (!objc_msgSend(a3, "referenceFrameHasEVMinus") || objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") != 1) && ((objc_msgSend(a3, "referenceFrameHasEVMinus") & 1) != 0 || !a5))
  {
    goto LABEL_61;
  }

  v24 = [a2 deepFusionOutput];
  if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v24, "proxyPixelBuffer"))
  {
    if (a2)
    {
      v25 = *(a2 + 48);
    }

    else
    {
      v25 = 0;
    }

    [a2 input];
    if (![OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
    {
      goto LABEL_94;
    }

    [OUTLINED_FUNCTION_19_5() setProxyPixelBuffer:?];
    CVPixelBufferRelease(v25);
    [MEMORY[0x1E695DF90] dictionary];
    [OUTLINED_FUNCTION_37_0() setProxyMetadata:?];
  }

  if ([v24 syntheticReferencePixelBuffer])
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v26 = *(a2 + 48);
  }

  else
  {
    v26 = 0;
  }

  [a2 input];
  if (![OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
  {
LABEL_94:
    v40 = 4294954510;
LABEL_75:
    if (![a2 err])
    {
      [a2 setErr:v40];
    }

    return;
  }

  [OUTLINED_FUNCTION_19_5() setSyntheticReferencePixelBuffer:?];
  CVPixelBufferRelease(v26);
LABEL_43:
  if ([v24 syntheticReferenceFusionMapPixelBuffer])
  {
    goto LABEL_48;
  }

  if (a2)
  {
    v27 = *(a2 + 48);
  }

  else
  {
    v27 = 0;
  }

  [a2 input];
  if (![OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
  {
    goto LABEL_94;
  }

  [OUTLINED_FUNCTION_19_5() setSyntheticReferenceFusionMapPixelBuffer:?];
  CVPixelBufferRelease(v27);
LABEL_48:
  [MEMORY[0x1E695DF90] dictionary];
  [OUTLINED_FUNCTION_37_0() setSyntheticReferenceMetadata:?];
  if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v24, "linearOutputPixelBuffer"))
  {
    if (a2)
    {
      v28 = *(a2 + 48);
    }

    else
    {
      v28 = 0;
    }

    [a2 input];
    if ([OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?])
    {
      [OUTLINED_FUNCTION_19_5() setLinearOutputPixelBuffer:?];
      CVPixelBufferRelease(v28);
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_37_0() setLinearOutputMetadata:?];
    }

    else
    {
      [a2 setDemosaicedRawErr:4294954510];
    }
  }

  if ([a2 gainMapEnabled] && !objc_msgSend(v24, "gainMapOutputPixelBuffer"))
  {
    [a2 input];
    v29 = [OUTLINED_FUNCTION_12_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v29 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_37_0() setGainMapOutputMetadata:?];
    }

    [v24 setGainMapOutputPixelBuffer:v29];
    CVPixelBufferRelease(v29);
  }

LABEL_61:
  if (dword_1EB58DE60)
  {
    v30 = OUTLINED_FUNCTION_6_13();
    if (os_log_type_enabled(v30, v51))
    {
      v32 = v52;
    }

    else
    {
      v32 = v52 & 0xFFFFFFFE;
    }

    if (v32)
    {
      BWStillImageSampleBufferToDisplayString(a4, v31);
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v34 = *off_1E798A0B8;
  OUTLINED_FUNCTION_42_1();
  v38 = CVBufferCopyAttachment(v35, v36, v37);
  if (v38)
  {
    v39 = [a3 addInputResource:v38];
  }

  else
  {
    v39 = [OUTLINED_FUNCTION_53_1() addFrame:?];
  }

  v40 = v39;

  CVBufferRemoveAttachment(ImageBuffer, v34);
  if (v40)
  {
    if (a2 && [objc_msgSend(objc_msgSend(*(a2 + 8) "captureStreamSettings")])
    {
      [objc_msgSend(a2 "input")];
      -[BWUBNRFProcessorInput _setErrorRecoveryFrame:]([a2 input]);
      [objc_msgSend(a2 "input")];
      [a3 resetState];
    }

    goto LABEL_75;
  }

  [a2 setNumberOfFramesAddedForMultiFrameProcessing:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") + 1}];
  [objc_msgSend(v49 objectForKeyedSubscript:{*off_1E798B2A8), "floatValue"}];
  v42 = v41;
  [a2 totalExposureTimesOfFramesAddedForMultiFrameProcessing];
  *&v44 = v42 + v43;
  [a2 setTotalExposureTimesOfFramesAddedForMultiFrameProcessing:v44];
  [a2 minExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v42 < *&v45)
  {
    *&v45 = v42;
  }

  [a2 setMinExposureTimesOfFramesAddedForMultiFrameProcessing:v45];
  [a2 maxExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v42 >= *&v46)
  {
    *&v46 = v42;
  }

  [a2 setMaxExposureTimesOfFramesAddedForMultiFrameProcessing:v46];
  if (dword_1EB58DE60)
  {
    v47 = OUTLINED_FUNCTION_6_13();
    if (os_log_type_enabled(v47, v51))
    {
      v48 = v52;
    }

    else
    {
      v48 = v52 & 0xFFFFFFFE;
    }

    if (v48)
    {
      [objc_msgSend(a2 "input")];
      if (a2 && [(BWUBNRFProcessorRequest *)a2 processingType])
      {
        [*(a2 + 8) expectedFrameCount];
      }

      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void *__nrfp_createStateMachine_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [OUTLINED_FUNCTION_34_0(88) setOutput:?];
    [*(a2 + 88) resetState];
  }

  [(BWUBNRFProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_3(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _setupProcessor];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_4(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _processSingleImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _processOriginalImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_6(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBNRFProcessorController *)v5 _processUBFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [(BWUBNRFProcessorController *)a2 _processUBFusion];
  }

  objc_autoreleasePoolPop(v3);

  return [(BWUBNRFProcessorController *)a2 _updateStateIfNeeded];
}

void FusionTrackerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *FusionTrackerLibrary(void)") description:{@"BWFusionTrackerSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getFTCinematicTrackerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicTrackerClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 16, @"Unable to find class %s", "FTCinematicTracker"}];
  __break(1u);
}

void __getFTCinematicTapRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicTapRequestClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 17, @"Unable to find class %s", "FTCinematicTapRequest"}];
  __break(1u);
}

void __getFTCinematicTapResponseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicTapResponseClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 18, @"Unable to find class %s", "FTCinematicTapResponse"}];
  __break(1u);
}

void __getFTCinematicConfigClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicConfigClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 20, @"Unable to find class %s", "FTCinematicConfig"}];
  __break(1u);
}

void __getFTCinematicInputClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTCinematicInputClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 21, @"Unable to find class %s", "FTCinematicInput"}];
  __break(1u);
}

void __getFTTapToBoxClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTTapToBoxClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 22, @"Unable to find class %s", "FTTapToBox"}];
  __break(1u);
}

void __getFTEspressoBufferClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTEspressoBufferClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 23, @"Unable to find class %s", "FTEspressoBuffer"}];
  __break(1u);
}

void __getFTMSRScalerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTMSRScalerClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 25, @"Unable to find class %s", "FTMSRScaler"}];
  __break(1u);
}

void FTCinematicHighPriorityTrackerOpDescription_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString * _Nonnull FTCinematicHighPriorityTrackerOpDescription(FTCinematicHighPriorityTrackerOp)") description:{@"BWFusionTrackerSoftLinking.m", 29, @"%s", dlerror()}];
  __break(1u);
}

void getkFTInvalidTrackId_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kFTInvalidTrackId) (*)(void))0)()) getkFTInvalidTrackId(void)") description:{@"BWFusionTrackerSoftLinking.m", 31, @"%s", dlerror()}];
  __break(1u);
}

void __getFTBipartiteMatcherClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFTBipartiteMatcherClass(void)_block_invoke") description:{@"BWFusionTrackerSoftLinking.m", 33, @"Unable to find class %s", "FTBipartiteMatcher"}];
  __break(1u);
}

uint64_t FigFlashlightRemoteCreate_cold_5(int a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  v3 = a1;
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

void AppleDepthLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleDepthLibrary(void)") description:{@"BWAppleDepthSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getADMonocularPipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularPipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 15, @"Unable to find class %s", "ADMonocularPipelineParameters"}];
  __break(1u);
}

void __getADMonocularPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 16, @"Unable to find class %s", "ADMonocularPipeline"}];
  __break(1u);
}

void __getADMutableJasperPointCloudClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMutableJasperPointCloudClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 18, @"Unable to find class %s", "ADMutableJasperPointCloud"}];
  __break(1u);
}

void __getADJasperPointCloudClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperPointCloudClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 19, @"Unable to find class %s", "ADJasperPointCloud"}];
  __break(1u);
}

void __getADCameraCalibrationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADCameraCalibrationClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 20, @"Unable to find class %s", "ADCameraCalibration"}];
  __break(1u);
}

void __getADPolynomialsLensDistortionModelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADPolynomialsLensDistortionModelClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 22, @"Unable to find class %s", "ADPolynomialsLensDistortionModel"}];
  __break(1u);
}

void __getADJasperColorStillsExecutorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperColorStillsExecutorClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 23, @"Unable to find class %s", "ADJasperColorStillsExecutor"}];
  __break(1u);
}

void __getADJasperColorV2ExecutorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperColorV2ExecutorClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 24, @"Unable to find class %s", "ADJasperColorV2Executor"}];
  __break(1u);
}

void __getADStereoPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADStereoPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 27, @"Unable to find class %s", "ADStereoPipeline"}];
  __break(1u);
}

void __getADStereoV2PipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADStereoV2PipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 28, @"Unable to find class %s", "ADStereoV2Pipeline"}];
  __break(1u);
}

void __getADStereoV2PipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADStereoV2PipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 29, @"Unable to find class %s", "ADStereoV2PipelineParameters"}];
  __break(1u);
}

void __getADPCEDisparityColorPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADPCEDisparityColorPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 30, @"Unable to find class %s", "ADPCEDisparityColorPipeline"}];
  __break(1u);
}

void __getADMonocularVideoPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularVideoPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 33, @"Unable to find class %s", "ADMonocularVideoPipeline"}];
  __break(1u);
}

void __getADMonocularVideoPipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularVideoPipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 34, @"Unable to find class %s", "ADMonocularVideoPipelineParameters"}];
  __break(1u);
}

void __getADMonocularStillsPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularStillsPipelineClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 38, @"Unable to find class %s", "ADMonocularStillsPipeline"}];
  __break(1u);
}

void __getADMonocularStillsPipelineParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADMonocularStillsPipelineParametersClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 39, @"Unable to find class %s", "ADMonocularStillsPipelineParameters"}];
  __break(1u);
}

void __getADImageDimensionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADImageDimensionsClass(void)_block_invoke") description:{@"BWAppleDepthSoftLinking.m", 43, @"Unable to find class %s", "ADImageDimensions"}];
  __break(1u);
}

void __getHDRProcessorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getHDRProcessorClass(void)_block_invoke") description:{@"BWPixelTransferNode.m", 65, @"Unable to find class %s", "HDRProcessor"}];
  __break(1u);
}

void HDRProcessingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *HDRProcessingLibrary(void)") description:{@"BWPixelTransferNode.m", 64, @"%s", *a1}];
  __break(1u);
}

CMTime *msn_getOriginalPTSForSampleBuffer@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  if (result)
  {
    v3 = result;
    v4 = CMGetAttachment(result, *off_1E798A420, 0);
    if (v4)
    {

      return CMTimeMakeFromDictionary(a2, v4);
    }

    else
    {

      return CMSampleBufferGetPresentationTimeStamp(a2, v3);
    }
  }

  return result;
}

void PrivacyAccountingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PrivacyAccountingLibrary(void)") description:{@"BWPrivacyAccountingSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getPAAccessLoggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAAccessLoggerClass(void)_block_invoke") description:{@"BWPrivacyAccountingSoftLinking.m", 14, @"Unable to find class %s", "PAAccessLogger"}];
  __break(1u);
}

void __getPATCCAccessClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPATCCAccessClass(void)_block_invoke") description:{@"BWPrivacyAccountingSoftLinking.m", 15, @"Unable to find class %s", "PATCCAccess"}];
  __break(1u);
}

void __getPAApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAApplicationClass(void)_block_invoke") description:{@"BWPrivacyAccountingSoftLinking.m", 17, @"Unable to find class %s", "PAApplication"}];
  __break(1u);
}

void soft_PAAuthenticatedClientIdentity_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"tcc_identity_t soft_PAAuthenticatedClientIdentity(audit_token_t description:{tcc_identity_t)"), @"BWPrivacyAccountingSoftLinking.m", 18, @"%s", dlerror()}];
  __break(1u);
}

void *FigCaptureMetadataUtilitiesLensModelString(const void *a1)
{
  if (qword_1ED844E60 != -1)
  {
    dispatch_once(&qword_1ED844E60, &__block_literal_global_40);
  }

  v2 = [MEMORY[0x1E696AD60] string];
  if (!v2)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v14, v15, v16, v17, v18, v19, v20);
    return v2;
  }

  if (a1)
  {
    v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
    if (v3)
    {
      v4 = v3;
      v15 = 0;
      v16 = 0;
      FigCaptureMetadataGetManufacturerAndMarketingName(a1, &v15, 0, &v16);
      if (BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]))
      {
        if (v16)
        {
          [v2 appendString:?];
        }

        return v2;
      }

      if (v15)
      {
        [v2 appendString:?];
      }

      v5 = [CMGetAttachment(a1 @"CaptureDeviceType"];
      v6 = *off_1E798B540;
      if (([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B540), "isEqual:", *off_1E798A0E0}] & 1) != 0 || objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v6), "isEqual:", *off_1E798A0F8))
      {
        [v2 appendString:@" front"];
        if (v5 != 6 && v5 != 12)
        {
          goto LABEL_20;
        }

        v8 = @" TrueDepth";
      }

      else
      {
        [v2 appendString:@" back"];
        v12 = v5 - 4;
        if ((v5 - 4) > 6 || ((0x71u >> v12) & 1) == 0)
        {
          goto LABEL_20;
        }

        v8 = off_1E7990530[v12];
      }

      [v2 appendString:v8];
LABEL_20:
      [v2 appendString:@" camera"];
      v9 = [v4 objectForKeyedSubscript:*off_1E798B2E0];
      if (v9)
      {
        [v2 appendFormat:@" %@mm", objc_msgSend(_MergedGlobals_0, "stringFromNumber:", v9)];
      }

      v10 = [v4 objectForKeyedSubscript:*off_1E798B2D0];
      if (v10)
      {
        [v2 appendFormat:@" f/%@", objc_msgSend(qword_1ED844E58, "stringFromNumber:", v10)];
      }
    }
  }

  return v2;
}

id FigCaptureMetadataUtilitiesCreateMetadataAttachments(CMSampleBufferRef sbuf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, void *a16, const void *a17, const void *a18, const void *a19, uint64_t a20, int a21)
{
  LODWORD(v343) = a7;
  if (qword_1ED844E88 != -1)
  {
    dispatch_once(&qword_1ED844E88, &__block_literal_global_285);
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v29 = [OUTLINED_FUNCTION_20_0(ImageBuffer @"FrameIsBlackened")];
  v30 = FigCaptureNormalizeAngle(a21);
  v31 = v30;
  if (v30 % 360 && v30 % 90)
  {
    return 0;
  }

  HIDWORD(v338) = v30 % 360;
  HIDWORD(v375) = a5;
  HIDWORD(v343) = a6;
  v442 = 0u;
  v443 = 0u;
  v441 = 0u;
  fcmu_rotationTransformInsideUnitSquare(v30, &v441);
  DeepCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = *off_1E798A3C8;
  v396 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (!v396)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v302, v307, v312, v317, LODWORD(v323[0]), v323[1], v333, v338);
    return DeepCopy;
  }

  HIDWORD(v391) = v31;
  if (qword_1ED844E80 != -1)
  {
    dispatch_once(&qword_1ED844E80, &__block_literal_global_79);
  }

  LODWORD(v375) = v29;
  v34 = *off_1E798B540;
  if (([objc_msgSend(v396 objectForKeyedSubscript:{*off_1E798B540), "isEqual:", *off_1E798A0E0}] & 1) == 0)
  {
    [objc_msgSend(v396 objectForKeyedSubscript:{v34), "isEqual:", *off_1E798A0F8}];
  }

  v440 = 0;
  v439 = 0;
  v438 = 0;
  FigCaptureMetadataGetManufacturerAndMarketingName(sbuf, &v438, &v440, &v439);
  v35 = FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(a3 - HIDWORD(v391), a4 != 0, 0, a16);
  v36 = MEMORY[0x1E696DE78];
  if (a2 == 1684628333)
  {
    v37 = *MEMORY[0x1E696DE78];
    v38 = &unk_1F2242B68;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:v35];
    v37 = *v36;
  }

  [DeepCopy setObject:v38 forKeyedSubscript:v37];
  v39 = Dimensions;
  v40 = OUTLINED_FUNCTION_9_9();
  if (v40)
  {
    OUTLINED_FUNCTION_10_12(v40);
  }

  if (a14)
  {
    v41 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v41);
    v42 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v42);
    v43 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v43);
    OUTLINED_FUNCTION_10_12([v396 objectForKeyedSubscript:*off_1E798B708]);
    v44 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v44);
    v45 = OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_10_12(v45);
  }

  v46 = *MEMORY[0x1E6960498];
  v47 = OUTLINED_FUNCTION_9_9();
  if (v47)
  {
    [DeepCopy setObject:v47 forKeyedSubscript:v46];
    if (FigCFEqual())
    {
      v48 = OUTLINED_FUNCTION_9_9();
      if (v48)
      {
        OUTLINED_FUNCTION_10_12(v48);
      }
    }
  }

  if (a11)
  {
    [DeepCopy setObject:fcmu_makerNoteMetadata(sbuf forKeyedSubscript:{a17, a18, a19), *MEMORY[0x1E696DE30]}];
  }

  v49 = OUTLINED_FUNCTION_9_9();
  if (v49)
  {
    OUTLINED_FUNCTION_10_12(v49);
  }

  v50 = a13;
  v401 = sbuf;
  v386 = DeepCopy;
  if (a12)
  {
    if (qword_1ED844E88 != -1)
    {
      dispatch_once(&qword_1ED844E88, &__block_literal_global_285);
    }

    v449[0] = 0;
    v51 = CMGetAttachment(sbuf, v33, 0);
    if (v51)
    {
      v52 = v51;
      v53 = OUTLINED_FUNCTION_20_0(v51, @"StillImageProcessingFlags");
      if (v53)
      {
        v54 = [v53 unsignedIntValue];
        if ((v54 & 0x40) == 0)
        {
          goto LABEL_234;
        }

        v55 = OUTLINED_FUNCTION_20_0(v54, *off_1E798D2B8);
        if (!v55)
        {
          goto LABEL_234;
        }

        v56 = v55;
        v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (v57)
        {
          v58 = v57;
          v59 = OUTLINED_FUNCTION_20_0([v57 setObject:&unk_1F2242C58 forKeyedSubscript:*off_1E7989DF0], *off_1E798D320);
          v60 = [v56 objectForKeyedSubscript:*off_1E798CEF8];
          if (v59)
          {
            [v59 floatValue];
            v62 = v61;
            [v60 floatValue];
            if (vabds_f32(v62, v63) > 0.01)
            {
              v324 = v52;
              FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
              v448 = 0;
              v447 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = v448;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v447))
              {
                v67 = v66;
              }

              else
              {
                v67 = v66 & 0xFFFFFFFE;
              }

              if (v67)
              {
                [v60 floatValue];
                v69 = v68;
                [v59 floatValue];
                LODWORD(recta.origin.x) = 136315650;
                *(&recta.origin.x + 4) = "fcmu_createPortraitMetadata";
                WORD2(recta.origin.y) = 2048;
                *(&recta.origin.y + 6) = v69;
                HIWORD(recta.size.width) = 2048;
                recta.size.height = v70;
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_23_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              [v60 floatValue];
              v72 = v71;
              v73 = [v59 floatValue];
              *size = 134218240;
              *&size[4] = v72;
              *&size[12] = 2048;
              *&size[14] = v74;
              v78 = OUTLINED_FUNCTION_6_0(v73, v75, v76, v77, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
              v307 = 0;
              FigCapturePleaseFileRadar(FrameworkRadarComponent, v78, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureMetadataUtilities.m", 5713, @"LastShownDate:FigCaptureMetadataUtilities.m:5713", @"LastShownBuild:FigCaptureMetadataUtilities.m:5713", 0);
              free(v78);
              v52 = v324;
            }
          }

          sbuf = v401;
          v79 = OUTLINED_FUNCTION_20_0([v58 setObject:v60 forKeyedSubscript:*off_1E7989DA0], *off_1E798D358);
          if (v79)
          {
            v80 = v79;
          }

          else
          {
            v80 = &unk_1F224A7C0;
          }

          v81 = OUTLINED_FUNCTION_20_0([v58 setObject:v80 forKeyedSubscript:*off_1E7989DD0], *off_1E798D350);
          if (v81)
          {
            v82 = v81;
          }

          else
          {
            v82 = &unk_1F224A7C0;
          }

          [v58 setObject:v82 forKeyedSubscript:*off_1E7989DC8];
          [v58 setObject:OUTLINED_FUNCTION_20_0(objc_msgSend(v58 forKeyedSubscript:{"setObject:forKeyedSubscript:", objc_msgSend(v56, "objectForKeyedSubscript:", *off_1E798D220), *off_1E7989DD8), *off_1E798D348), *off_1E7989DC0}];
          [v58 setObject:objc_msgSend(v52 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A5B0), *off_1E7989DB0}];
          AttachedInference = BWInferenceGetAttachedInference(v401, 801, 0x1F219E5F0);
          if (AttachedInference)
          {
            v84 = AttachedInference;
          }

          else
          {
            v84 = MEMORY[0x1E695E0F0];
          }

          [v58 setObject:objc_msgSend(MEMORY[0x1E696ACC8] forKeyedSubscript:{"archivedDataWithRootObject:requiringSecureCoding:error:", v84, 1, v449), *off_1E7989DA8}];
          v85 = v449[0];
          if (v449[0])
          {
            v86 = qword_1ED844488;
            v87 = [v449[0] code];
            v85 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, v87, "<<<< FigCaptureMetadataUtilities >>>>", 0x1687, v353[0], v88, v89, v302);
          }

          v90 = [v58 setObject:OUTLINED_FUNCTION_20_0(v85 forKeyedSubscript:{*off_1E798D330), *off_1E7989DE0}];
          v91 = OUTLINED_FUNCTION_20_0(v90, *off_1E798D360);
          DeepCopy = v386;
          v50 = a13;
          if (v91)
          {
            v92 = v91;
            v93 = *(MEMORY[0x1E695F050] + 16);
            *v353 = *MEMORY[0x1E695F050];
            *size = *MEMORY[0x1E695F050];
            *&size[16] = v93;
            *v323 = v93;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              recta.origin = *v353;
              recta.size = *v323;
              if (CGRectMakeWithDictionaryRepresentation(v92, &recta))
              {
                FigCaptureTransformRectToCoordinateSpaceOfRect(recta.origin.x, recta.origin.y, recta.size.width, recta.size.height, *size, *&size[8], *&size[16]);
                OUTLINED_FUNCTION_2_3();
                FigCaptureUnityRect();
                OUTLINED_FUNCTION_8_3();
                v450.origin.x = OUTLINED_FUNCTION_3();
                v451 = CGRectIntersection(v450, v454);
                v92 = CGRectCreateDictionaryRepresentation(v451);
              }
            }

            v91 = [v58 setObject:v92 forKeyedSubscript:*off_1E7989DB8];
          }

          v94 = OUTLINED_FUNCTION_20_0(v91, *off_1E798D368);
          if (v94)
          {
            [v58 setObject:v94 forKeyedSubscript:*off_1E7989DE8];
          }

          if ([v58 count])
          {
            [v386 setObject:v58 forKeyedSubscript:*off_1E7989D98];
          }

          goto LABEL_61;
        }
      }
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_234:
    v58 = 0;
    DeepCopy = v386;
LABEL_61:

    v39 = Dimensions;
  }

  if (v50)
  {
    v95 = OUTLINED_FUNCTION_9_9();
    if (v95)
    {
      OUTLINED_FUNCTION_10_12(v95);
    }
  }

  v96 = a20;
  v97 = [MEMORY[0x1E695DF90] dictionary];
  if (v97)
  {
    [DeepCopy setObject:v97 forKeyedSubscript:*MEMORY[0x1E696DF28]];
  }

  v98 = HIDWORD(*&v39);
  [v97 setObject:v440 forKeyedSubscript:*MEMORY[0x1E696DF48]];
  [v97 setObject:v439 forKeyedSubscript:*MEMORY[0x1E696DF50]];
  [v97 setObject:qword_1ED844E68 forKeyedSubscript:*MEMORY[0x1E696DF68]];
  [v97 setObject:v438 forKeyedSubscript:*MEMORY[0x1E696DF38]];
  if (!a20)
  {
    v96 = [MEMORY[0x1E695DF00] now];
  }

  v99 = [qword_1ED844E70 stringFromDate:v96];
  [v97 setObject:v99 forKeyedSubscript:*MEMORY[0x1E696DF20]];
  [v97 setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696DF88]];
  [v97 setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696DF98]];
  [v97 setObject:&unk_1F2242B98 forKey:*MEMORY[0x1E696DF60]];
  [DeepCopy setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696D888]];
  [DeepCopy setObject:&unk_1F2242B80 forKey:*MEMORY[0x1E696D880]];
  v100 = [MEMORY[0x1E695DF90] dictionary];
  if (v100)
  {
    [DeepCopy setObject:v100 forKeyedSubscript:*MEMORY[0x1E696D9B0]];
  }

  [v100 setObject:@"0232" forKeyedSubscript:*MEMORY[0x1E696DB48]];
  [v100 setObject:v99 forKeyedSubscript:*MEMORY[0x1E696D998]];
  [v100 setObject:v99 forKeyedSubscript:*MEMORY[0x1E696D990]];
  [qword_1ED844E78 stringFromDate:v96];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  [FigCaptureMetadataUtilitiesGetTimeZoneFormatter() stringFromDate:v96];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  v101 = [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  width = v39.width;
  height = v39.height;
  v104 = OUTLINED_FUNCTION_20_0(v101, @"EncodedImageSurfaceCGSize");
  if (v104)
  {
    *&size[8] = 0;
    *size = 0;
    v105 = 0x1E696A000uLL;
    if (CGSizeMakeWithDictionaryRepresentation(v104, size))
    {
      width = *size;
      height = *&size[8];
      v39 = *size;
      v98 = *&size[8];
    }
  }

  else
  {
    v105 = 0x1E696A000;
  }

  if (SHIDWORD(v391) % 180 == 90)
  {
    v106 = __ROR8__(v39.width | (v98 << 32), 32);
    v107 = width;
    v98 = HIDWORD(*&v106);
    v39 = v106;
  }

  else
  {
    v107 = height;
    height = width;
  }

  if (height > 0.0 && v107 > 0.0)
  {
    v108 = [*(v105 + 3480) numberWithUnsignedLong:height];
    [v100 setObject:v108 forKeyedSubscript:*MEMORY[0x1E696DAA8]];
    v109 = [*(v105 + 3480) numberWithUnsignedLong:v107];
    [v100 setObject:v109 forKeyedSubscript:*MEMORY[0x1E696DAB0]];
  }

  v323[0] = v98;
  v381 = v39;
  [v100 setObject:v440 forKeyedSubscript:*MEMORY[0x1E696DA50]];
  v110 = FigCaptureMetadataUtilitiesLensModelString(sbuf);
  if (v110)
  {
    [v100 setObject:v110 forKeyedSubscript:*MEMORY[0x1E696DA58]];
  }

  v318 = [MEMORY[0x1E695DF70] array];
  v353[0] = *off_1E798B2E0;
  v111 = [v396 objectForKeyedSubscript:?];
  v348 = *off_1E798B2D0;
  v112 = [v396 objectForKeyedSubscript:?];
  v113 = OUTLINED_FUNCTION_20_0(v112, @"ExifSlaveFocalLengths");
  v114 = OUTLINED_FUNCTION_20_0(v113, @"ExifSlaveLensFNumbers");
  v434 = 0u;
  v435 = 0u;
  v436 = 0u;
  v437 = 0u;
  v122 = OUTLINED_FUNCTION_38_3(v114, v115, v116, v117, v118, v119, v120, v121, v302, v307, v312, v318, v323[0], v323[1], v333, v338, v343, v348, v353[0], v353[1], v362, ImageBuffer, a16, v375, v381, v386, v391, v396, v401, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *(&v429 + 1), v430, *(&v430 + 1), v431, *(&v431 + 1), v432, *(&v432 + 1), v433);
  if (v122)
  {
    v96 = v122;
    v131 = *v435;
    v130 = v111;
    do
    {
      v132 = 0;
      do
      {
        if (*v435 != v131)
        {
          objc_enumerationMutation(v113);
        }

        v133 = *(*(&v434 + 1) + 8 * v132);
        [v133 doubleValue];
        v135 = v134;
        [v111 doubleValue];
        if (v135 > v136)
        {
          v111 = v133;
        }

        [v133 doubleValue];
        v138 = v137;
        v139 = [v130 doubleValue];
        if (v138 < v147)
        {
          v130 = v133;
        }

        v132 = v132 + 1;
      }

      while (v96 != v132);
      v122 = OUTLINED_FUNCTION_38_3(v139, v140, v141, v142, v143, v144, v145, v146, v303, v308, v313, v319, v325, v329, v334, v339, v344, v349, v354, v358, v363, target, propertyList, v376, v382, v387, v392, v397, v402, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *(&v429 + 1), v430, *(&v430 + 1), v431, *(&v431 + 1), v432, *(&v432 + 1), v433);
      v96 = v122;
    }

    while (v122);
  }

  else
  {
    v130 = v111;
  }

  v431 = 0u;
  v432 = 0u;
  v429 = 0u;
  v430 = 0u;
  v148 = OUTLINED_FUNCTION_19_6(v122, v123, v124, v125, v126, v127, v128, v129, v303, v308, v313, v319, v325, v329, v334, v339, v344, v349, v354, v358, v363, target, propertyList, v376, v382, v387, v392, v397, v402, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428);
  if (v148)
  {
    v96 = v148;
    v156 = *v430;
    v155 = v112;
    do
    {
      v157 = 0;
      do
      {
        if (*v430 != v156)
        {
          objc_enumerationMutation(v114);
        }

        v158 = *(*(&v429 + 1) + 8 * v157);
        [v158 doubleValue];
        v160 = v159;
        [v112 doubleValue];
        if (v160 > v161)
        {
          v112 = v158;
        }

        [v158 doubleValue];
        v163 = v162;
        v164 = [v155 doubleValue];
        if (v163 < v172)
        {
          v155 = v158;
        }

        v157 = v157 + 1;
      }

      while (v96 != v157);
      v148 = OUTLINED_FUNCTION_19_6(v164, v165, v166, v167, v168, v169, v170, v171, v304, v309, v314, v320, v326, v330, v335, v340, v345, v350, v355, v359, v364, targeta, propertyLista, v377, v383, v388, v393, v398, v403, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428);
      v96 = v148;
    }

    while (v148);
  }

  else
  {
    v155 = v112;
  }

  if (v130 && v111 && v155 && v112)
  {
    [v320 addObject:v130];
    [v320 addObject:v111];
    [OUTLINED_FUNCTION_27_1() addObject:?];
    [v320 addObject:v112];
    LODWORD(v148) = [v100 setObject:v320 forKeyedSubscript:*MEMORY[0x1E696DA60]];
  }

  v173 = [objc_msgSend(OUTLINED_FUNCTION_40_2(v148 @"StillSettings"];
  v174 = 0.0;
  v175 = v399;
  if (v173 < 0)
  {
    v176 = [objc_msgSend(v399 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
    v177 = off_1E798B5E0;
    if (!v176)
    {
      v177 = off_1E798B1C0;
    }

    [objc_msgSend(v399 objectForKeyedSubscript:{*v177), "floatValue"}];
    v174 = v178;
  }

  v179 = [v399 objectForKeyedSubscript:*off_1E798B2A8];
  v180 = MEMORY[0x1E696D9E0];
  v181 = MEMORY[0x1E696DAE8];
  if (v179)
  {
    [v179 doubleValue];
    if (v182 <= 0.0)
    {
      v185 = 0.0;
      [v100 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", 0.0), *v180}];
    }

    else
    {
      v183 = v182;
      if (v182 >= 1.0)
      {
        v184 = round(v182 * 10.0) / 10.0;
      }

      else
      {
        v184 = 1.0 / (1.0 / v182 + 0.5);
      }

      [v100 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v184), *v180}];
      v185 = -log2(v183);
    }

    [v100 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v185), *v181}];
  }

  v186 = [v399 objectForKeyedSubscript:*off_1E798B1C8];
  if (v186)
  {
    [v100 setObject:v186 forKeyedSubscript:*MEMORY[0x1E696D960]];
  }

  v187 = [v399 objectForKeyedSubscript:v351];
  if (v187)
  {
    HIDWORD(v155) = HIDWORD(v187);
    [v187 doubleValue];
    v189 = v188;
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    v190 = 0.0;
    if (v189 > 0.0)
    {
      v191 = log2(v189);
      v190 = v191 + v191;
    }

    v192 = [MEMORY[0x1E696AD98] numberWithDouble:v190];
    [v100 setObject:v192 forKeyedSubscript:*MEMORY[0x1E696D8A8]];
  }

  v193 = [v399 objectForKeyedSubscript:*off_1E798B3B0];
  v194 = MEMORY[0x1E696DA40];
  if (v193)
  {
    if (v174 != 0.0)
    {
      [objc_msgSend(v399 objectForKeyedSubscript:{*off_1E798B3A8), "intValue"}];
      *size = 0;
      FigCaptureComputeImageGainFromMetadata();
    }

    v195 = [v193 intValue];
    v196 = &unk_1AD046C1C;
    v197 = 53;
    while (v197)
    {
      v198 = *(v196 - 1);
      v199 = *v196++ + v198;
      --v197;
      if (v195 <= v199 >> 1)
      {
        LOWORD(v195) = v198;
        break;
      }
    }

    v412 = [MEMORY[0x1E696AD98] numberWithShort:v195];
    [v100 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v412, 1), *v194}];
  }

  FigCaptureNormalizedFocusWindowFromMetadata(v399);
  OUTLINED_FUNCTION_13_10();
  IsNull = CGRectIsNull(v452);
  if (!IsNull)
  {
    if (([OUTLINED_FUNCTION_40_2(IsNull *off_1E798A5E0] & 1) == 0)
    {
      FigCaptureMetadataUtilitiesGetFinalCropRectFromSource(v175);
      OUTLINED_FUNCTION_8_3();
      v207 = OUTLINED_FUNCTION_16_3();
      FigCaptureTransformRectToCoordinateSpaceOfRect(v207, v208, v209, v210, v211, v212, v213);
      OUTLINED_FUNCTION_13_10();
    }

    if (HIDWORD(v341))
    {
      *size = v441;
      *&size[16] = v442;
      v446 = v443;
      v453.origin.x = OUTLINED_FUNCTION_16_3();
      CGRectApplyAffineTransform(v453, v214);
      OUTLINED_FUNCTION_13_10();
    }

    v215 = OUTLINED_FUNCTION_16_3();
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v215, v216, v217, v218, v219, v220);
    LODWORD(v155) = llround(v223);
    LODWORD(v96) = llround(v224);
    v225 = v96 / 2 + llround(v222);
    v408 = [MEMORY[0x1E696AD98] numberWithShort:(v155 / 2 + llround(v221))];
    v409 = [MEMORY[0x1E696AD98] numberWithShort:v225];
    v410 = [MEMORY[0x1E696AD98] numberWithShort:v155];
    v411 = [MEMORY[0x1E696AD98] numberWithShort:v96];
    v226 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v408 count:4];
    [v100 setObject:v226 forKeyedSubscript:*MEMORY[0x1E696DAF8]];
  }

  v227 = [v175 objectForKeyedSubscript:*off_1E798B680];
  if (v227)
  {
    v228 = [v227 intValue];
    if ((v228 & 0x80000000) == 0)
    {
      if (v228 < 0xD)
      {
        v229 = 1;
      }

      else
      {
        v229 = 2;
      }

      if (v228 >= 9)
      {
        v230 = v229;
      }

      else
      {
        v230 = 0;
      }

      v231 = [MEMORY[0x1E696AD98] numberWithInt:v230];
      [v100 setObject:v231 forKeyedSubscript:*MEMORY[0x1E696DAE0]];
    }
  }

  v232 = [v175 objectForKeyedSubscript:v356];
  if (v232)
  {
    LODWORD(v232) = [v100 setObject:v232 forKeyedSubscript:*MEMORY[0x1E696DA18]];
  }

  v239 = OUTLINED_FUNCTION_40_2(v232, @"SDOFCustomRendered", v233, v234, v235, v236, v237, v238, v305, v310, v315, v321, v327, v331, v336, v341, v346, v351, v356, v360, v365, targetb, propertyListb, v378, v384, v389, v394, v399, v404);
  if (v239 || (v239 = [v175 objectForKeyedSubscript:*off_1E798B370]) != 0)
  {
    [v100 setObject:v239 forKeyedSubscript:*MEMORY[0x1E696D988]];
  }

  v240 = [v175 objectForKeyedSubscript:@"CompositeImage"];
  if (v240)
  {
    v241 = [v240 intValue];
    if (v241 < 3)
    {
      v242 = OUTLINED_FUNCTION_11_12();
LABEL_161:
      [v242 setObject:? forKeyedSubscript:?];
      goto LABEL_172;
    }

    if (v241 == 3)
    {
      v243 = [v175 objectForKeyedSubscript:@"SourceImageNumberOfCompositeImage"];
      v244 = [v175 objectForKeyedSubscript:@"SourceExposureTimesOfCompositeImage"];
      if (v243 && v244)
      {
        [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
        [v100 setObject:v243 forKeyedSubscript:@"SourceImageNumberOfCompositeImage"];
        v242 = v100;
        goto LABEL_161;
      }

      v245 = FigCaptureGetFrameworkRadarComponent();
      LODWORD(v449[0]) = 0;
      LOBYTE(v448) = 0;
      v246 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v247 = v449[0];
      if (os_log_type_enabled(v246, v448))
      {
        v248 = v247;
      }

      else
      {
        v248 = v247 & 0xFFFFFFFE;
      }

      if (v248)
      {
        LODWORD(recta.origin.x) = 136315138;
        *(&recta.origin.x + 4) = "FigCaptureMetadataUtilitiesCreateMetadataAttachments";
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_23_1();
      v249 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      *size = 0;
      v253 = OUTLINED_FUNCTION_6_0(v249, v250, v251, v252, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      v311 = 0;
      FigCapturePleaseFileRadar(v245, v253, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureMetadataUtilities.m", 1411, @"LastShownDate:FigCaptureMetadataUtilities.m:1411", @"LastShownBuild:FigCaptureMetadataUtilities.m:1411", 0);
      free(v253);
      v175 = v400;
    }
  }

LABEL_172:
  v254 = [v175 objectForKeyedSubscript:*off_1E798B298];
  v255 = MEMORY[0x1E696D9C8];
  if (v254)
  {
    v256 = v254;
    if (v174 != 0.0)
    {
      [v254 floatValue];
      *&v258 = v257 - v174;
      v256 = [MEMORY[0x1E696AD98] numberWithFloat:v258];
    }

    [v100 setObject:v256 forKeyedSubscript:*v255];
  }

  v259 = [v175 objectForKeyedSubscript:@"ExifWhiteBalance"];
  if (v259)
  {
    [v100 setObject:v259 forKeyedSubscript:*MEMORY[0x1E696DB50]];
  }

  v260 = [v175 objectForKeyedSubscript:*off_1E798A5C0];
  if (v260)
  {
    if ([v260 intValue] == 4)
    {
      v261 = &unk_1F2242B68;
    }

    else
    {
      v261 = &unk_1F2242B50;
    }

    [v100 setObject:v261 forKeyedSubscript:*MEMORY[0x1E696D9D0]];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  }

  [objc_msgSend(v175 objectForKeyedSubscript:{*off_1E798B240), "doubleValue"}];
  if (v262 > 1.0)
  {
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  }

  v263 = [v175 objectForKeyedSubscript:*off_1E798B2D8];
  if (v263)
  {
    v264 = [v263 doubleValue];
    if (v271 > 0.0)
    {
      v272 = v271;
      v273 = OUTLINED_FUNCTION_40_2(v264, @"BWStillImageCaptureSettings", v265, v266, v267, v268, v269, v270, v306, v311, v316, v322, v328, v332, v337, v342, v347, v352, v357, v361, v366, targetc, propertyListc, v379, v385, v390, v395, v400, v405);
      [objc_msgSend(v273 "metadata")];
      v275 = v274;
      v276 = v274 == 0.0;
      v277 = 1.0;
      if (!v276)
      {
        v277 = v275;
      }

      v278 = v272 * v277;
      [objc_msgSend(v273 "metadata")];
      if (v279 == 0.0)
      {
        v280 = v278;
      }

      else
      {
        v280 = v279;
      }

      v281 = [MEMORY[0x1E696AD98] numberWithInt:llround(v280)];
      [v100 setObject:v281 forKeyedSubscript:*MEMORY[0x1E696DA08]];
    }
  }

  v282 = [v175 objectForKeyedSubscript:*off_1E798B3F0];
  if (v282)
  {
    [v100 setObject:v282 forKeyedSubscript:*MEMORY[0x1E696DA48]];
  }

  v283 = [v175 objectForKeyedSubscript:*off_1E798B4E8];
  v284 = MEMORY[0x1E696AD98];
  if (v283)
  {
    v285 = [v283 intValue];
  }

  else
  {
    v285 = 1;
  }

  v286 = [v284 numberWithInt:v285];
  [v100 setObject:v286 forKeyedSubscript:*MEMORY[0x1E696DA80]];
  v287 = [objc_msgSend(v175 objectForKeyedSubscript:{*off_1E798B350), "intValue"}];
  v288 = 32 * (HIDWORD(v379) == 0);
  if (HIDWORD(v379))
  {
    v289 = HIDWORD(v395);
    if (HIDWORD(v347))
    {
      if (v347 == 2)
      {
        if (v287 == 1)
        {
          v288 = 25;
        }

        else
        {
          v288 = 24;
        }
      }

      else if (v347 == 1)
      {
        if (v287 == 1)
        {
          v288 = 9;
        }

        else
        {
          v288 = 0;
        }
      }

      else if (v347)
      {
        v288 = 32;
      }

      else
      {
        v288 = 16;
      }
    }
  }

  else
  {
    v289 = HIDWORD(v395);
  }

  v290 = [MEMORY[0x1E696AD98] numberWithInt:v288];
  [v100 setObject:v290 forKeyedSubscript:*MEMORY[0x1E696D9F0]];
  [v100 setObject:&unk_1F2242B98 forKeyedSubscript:*MEMORY[0x1E696DAD8]];
  [v100 setObject:&unk_1F2242BC8 forKeyedSubscript:*MEMORY[0x1E696DAD0]];
  ExifAuxRegionsDictForSampleBuffer = FigCaptureMetadataUtiliesCreateExifAuxRegionsDictForSampleBuffer(v405, a9 != 0, 0, v289);
  v292 = MEMORY[0x1E696D8B0];
  if (ExifAuxRegionsDictForSampleBuffer)
  {
    v293 = ExifAuxRegionsDictForSampleBuffer;
    v406 = @"Regions";
    v407 = ExifAuxRegionsDictForSampleBuffer;
    [v390 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v407, &v406, 1), *MEMORY[0x1E696D8B0]}];
  }

  if (!((a10 == 0) | v379 & 1))
  {
    [v390 setObject:objc_msgSend(v400 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B220), *off_1E798A330}];
  }

  v294 = CMGetAttachment(targetc, *MEMORY[0x1E6965D88], 0);
  if (v294 && objc_msgSend_isEqualToString_(v294))
  {
    v295 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v296 = CGColorSpaceCopyICCData(v295);
    [v390 setObject:v296 forKeyedSubscript:*MEMORY[0x1E696D320]];
    CGColorSpaceRelease(v295);
    CFRelease(v296);
    v297 = &unk_1F2242BE0;
  }

  else
  {
    v297 = &unk_1F2242BC8;
  }

  [v100 setObject:v297 forKeyedSubscript:*MEMORY[0x1E696D968]];
  if (v379)
  {
    [v390 setObject:0 forKeyedSubscript:*v292];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
    [v100 setObject:&unk_1F2248268 forKeyedSubscript:*v194];
    [OUTLINED_FUNCTION_11_12() setObject:? forKeyedSubscript:?];
  }

  if (!propertyListc)
  {
    DeepCopy = v390;
    v298 = v405;
    if (!a15)
    {
      return DeepCopy;
    }

    goto LABEL_228;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], propertyListc, 1uLL);
  v298 = v405;
  if ((BWStillImageProcessingFlagsForSampleBuffer(v405) & 0x100000) != 0)
  {
    CFDictionaryRemoveValue(DeepCopy, *MEMORY[0x1E696DBF0]);
  }

  FigCFDictionaryAddEntriesToDictionaryWithRecursion();

  if (a15)
  {
LABEL_228:
    v299 = *off_1E798A518;
    v300 = CMGetAttachment(v298, *off_1E798A518, 0);
    if (v300)
    {
      [DeepCopy setObject:v300 forKeyedSubscript:v299];
    }
  }

  return DeepCopy;
}