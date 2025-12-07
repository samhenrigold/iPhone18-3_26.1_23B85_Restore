@interface BWFigCaptureDeviceVendor
+ (BOOL)videoCaptureDeviceFirmwareIsLoaded;
+ (id)sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction:(void *)Function;
+ (void)initialize;
- (BOOL)_isRearCameraCalibrationValid;
- (BOOL)activeDefaultDeviceEquals:(id)equals;
- (BOOL)hasActiveForClientAssertion;
- (BOOL)rearCameraCalibrationValid;
- (BOOL)streamsInUseForDevice:(id)device;
- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function;
- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function cmioExtensionDeviceCreateFunction:(void *)createFunction cmioDiscoverySession:(id)session;
- (NSArray)deviceIDs;
- (float)structuredLightProjectorStandbyTemperatureWithError:(int *)error;
- (id)_copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types requestControl:(BOOL)control deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error;
- (id)_deviceWithID:(id)d;
- (id)_popLatestVictimizedDeviceClient;
- (id)_popLatestVictimizedDeviceClientThatCanShareWithFlashlight;
- (id)activeDeviceClient;
- (id)activeDeviceClients;
- (id)cameraPoseMatrixForStreamWithPosition:(int)position deviceType:(int)type deviceID:(id)d;
- (id)cmioDeviceCreationHistory;
- (id)controlledStreamsForDevice:(id)device;
- (id)copyDefaultDeviceForVibeMitigation:(int *)mitigation;
- (id)copyDeviceForPublishingWithID:(id)d error:(int *)error;
- (id)copyDeviceWithID:(id)d forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again error:(int *)error;
- (id)copyStreamFromDevice:(id)device position:(int)position deviceType:(int)type deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error;
- (id)copyStreamWithoutControlFromDevice:(id)device position:(int)position deviceType:(int)type error:(int *)error;
- (id)copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error;
- (id)copyStreamsWithUniqueIDs:(id)ds forDevice:(id)device deviceClientPriority:(int)priority error:(int *)error;
- (id)copyStreamsWithoutControlFromDevice:(id)device positions:(id)positions deviceTypes:(id)types error:(int *)error;
- (id)defaultDeviceCreationHistory;
- (id)deviceWithID:(id)d;
- (id)osStatePropertyList;
- (id)registeredDeviceClientWithID:(int)d;
- (id)registeredDeviceClients;
- (id)streamsControlledByOtherClientsForDevice:(id)device;
- (id)victimizedDeviceClients;
- (int)activeClientPriority;
- (int)keepControlOfStreamsWithPositions:(id)positions deviceTypes:(id)types forDevice:(id)device;
- (int)registerClientWithPID:(int)d clientApplicationID:(id)iD clientDescription:(id)description clientPriority:(int)priority canStealFromClientsWithSamePriority:(BOOL)samePriority deviceSharingWithOtherClientsAllowed:(BOOL)allowed clientType:(int)type deviceAvailabilityChangedHandler:(id)self0;
- (int)requestControlOfStreams:(id)streams device:(id)device deviceClientPriority:(int)priority;
- (int)unregisterClient:(int)client;
- (int)usageCountForDevice:(id)device;
- (uint64_t)_activeDeviceClientWithClientID:(uint64_t)d;
- (uint64_t)_deviceStateForDeviceWithStream:(uint64_t)stream;
- (uint64_t)_dumpInventory;
- (uint64_t)_getGameModeEnabledOnDevice:(uint64_t)device;
- (uint64_t)_registerForDeviceNotifications:(uint64_t)result;
- (uint64_t)_registerForStreamNotifications:(uint64_t)result;
- (uint64_t)_releasePowerAssertion;
- (uint64_t)_takePowerAssertion;
- (uint64_t)_unregisterForDeviceNotifications:(uint64_t)result;
- (uint64_t)_unregisterFromStreamNotifications:(uint64_t)result;
- (uint64_t)osStatePropertyList;
- (void)_createDevice:reason:clientPID:figCaptureDevice:;
- (void)_deviceAvailabilityChangedForClient:(uint64_t)client available:postNotification:reason:canShareWithFlashlight:;
- (void)_deviceAvailabilityChangedForClients:(char)clients available:(int)available postNotifications:(int)notifications reason:(char)reason canShareWithFlashlight:(uint64_t)flashlight cameraStolenInterruptor:;
- (void)_handleCMIOExtensionDevicesChangedNotification:(id)notification;
- (void)_handleDeviceNoLongerAvailable:(uint64_t)available;
- (void)_handleDeviceUnrecoverableError:(uint64_t)error fromDevice:;
- (void)_handleErrorForDevice:(uint64_t)device;
- (void)_handleStreamControlTakenByAnotherClientNotification:(uint64_t)notification;
- (void)_handleStreamFrameReceiveTimeoutNotification:(uint64_t)notification;
- (void)_handleStreamRelinquishedByAnotherClientNotification:(uint64_t)notification;
- (void)_invalidate:keepFigCaptureDeviceAlive:preserveTorchState:;
- (void)_logActiveDefaultDeviceClientAndDevice;
- (void)_logISPStartupTimeToCoreAnalytics;
- (void)_performBlockOnDeviceQueue:(uint64_t)queue;
- (void)_performBlockOnDeviceQueueSynchronously:(uint64_t)synchronously;
- (void)_registeredDeviceClientWithID:(void *)result;
- (void)_relinquishControlOfStreamsForDevice:(void *)result;
- (void)_removeActiveDeviceClient:(int)client moveToVictimizedList:;
- (void)_removeDeviceClient:(int)client moveToVictimizedList:;
- (void)_removeRegisteredDeviceClientWithClientID:(void *)result;
- (void)_removeVictimizedDeviceClientWithClientID:(void *)result;
- (void)_requestControlOfStreams:(uint64_t)streams device:deviceClientPriority:;
- (void)_resetDeviceCloseTimerForDevice:(uint64_t)device;
- (void)_setLowMemoryModeEnabledOnDevice:(void *)device;
- (void)_setupDeviceCloseTimerForDevice:(uint64_t)device;
- (void)_showISPLeftOnTapToRadarPromptIfNecessary:(uint64_t)necessary;
- (void)_updateAFDriverShortStatisticsForStream:(void *)result;
- (void)_updateCMIOExtensionDevices;
- (void)_updateDefaultDevicePriorStreamPortTypes:(uint64_t)types;
- (void)dealloc;
- (void)invalidateVideoDevice:(id)device forPID:(int)d;
- (void)prewarmDefaultVideoDeviceForPID:(int)d completionHandler:(id)handler;
- (void)resumeSystemPressuredDevice;
- (void)shutDownSystemPressuredDevice:(id)device;
- (void)takeBackDevice:(id)device forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again prefersDeviceInvalidatedImmediately:(BOOL)immediately;
- (void)takeBackStreams:(id)streams device:(id)device totalStreamingDuration:(unsigned int)duration;
- (void)updateClientPriority:(int)priority clientPriority:(int)clientPriority;
@end

@implementation BWFigCaptureDeviceVendor

- (void)_logISPStartupTimeToCoreAnalytics
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4(result))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v4);
    }

    v2 = objc_alloc_init(BWISPStartupAnalyticsPayload);
    [(BWISPStartupAnalyticsPayload *)v2 setIspStartupTime:*(v1 + 120)];
    v3 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
  }

  return result;
}

- (uint64_t)_takePowerAssertion
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4(result))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v27);
    }

    if (*(v1 + 96) == 1)
    {
      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_42_12();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = OUTLINED_FUNCTION_36_0(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_5_24(v10))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_8_1();
      v16 = OUTLINED_FUNCTION_13_0(v11, v12, v13, v14, v15);
      v28 = 0;
      v20 = OUTLINED_FUNCTION_6_0(v16, v17, v18, v19, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_11();
      v21 = OUTLINED_FUNCTION_82();
      FigCapturePleaseFileRadar(v21, v22, v23, 0, v24, 3591, v25, v26, &v28);
      free(v20);
      [(BWFigCaptureDeviceVendor *)v1 _releasePowerAssertion];
    }

    result = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, [MEMORY[0x1E696AEC0] stringWithFormat:@"cameracaptured-idleSleepPreventionForBWFigCaptureDevice"], (v1 + 100));
    if (!result)
    {
      *(v1 + 96) = 1;
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_42_12();
        v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v3 = os_log_type_enabled(v2, v29);
        if (OUTLINED_FUNCTION_6(v3))
        {
          OUTLINED_FUNCTION_91_7();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_54_1();
        }

        OUTLINED_FUNCTION_2_4();
        return OUTLINED_FUNCTION_17_8(v4, v5, v6, v7, v8);
      }
    }
  }

  return result;
}

- (uint64_t)_dumpInventory
{
  if (result)
  {
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      return FigDebugAssert3(v1);
    }
  }

  return result;
}

- (int)activeClientPriority
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__BWFigCaptureDeviceVendor_activeClientPriority__block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__48__BWFigCaptureDeviceVendor_activeClientPriority__block_invoke(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 40);
  result = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(*(*(a1 + 40) + 8) + 24);
        if (v8 <= [v7 clientPriority])
        {
          v10 = [v7 clientPriority];
          v9 = *(*(a1 + 40) + 8);
        }

        else
        {
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v9 + 24);
        }

        *(v9 + 24) = v10;
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)rearCameraCalibrationValid
{
  os_unfair_lock_lock(&self->_calibrationStatusLock);
  calibrationStatusQueried = self->_calibrationStatusQueried;
  rearCameraCalibrationValid = self->_rearCameraCalibrationValid;
  os_unfair_lock_unlock(&self->_calibrationStatusLock);
  if (!calibrationStatusQueried)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return rearCameraCalibrationValid;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction:(void *)Function
{
  if (sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendorLockOnce != -1)
  {
    +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction:];
  }

  FigSimpleMutexLock();
  if (!sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendor)
  {
    if (objc_opt_class())
    {
      mEMORY[0x1E6963468] = [MEMORY[0x1E6963468] sharedInstance];
      v5 = CMIOExtensionFigCaptureDeviceCreate;
    }

    else
    {
      mEMORY[0x1E6963468] = 0;
      v5 = 0;
    }

    v6 = [BWFigCaptureDeviceVendor alloc];
    if (!Function)
    {
      Function = FigCaptureGetCaptureDeviceCreateFunction();
    }

    sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendor = [(BWFigCaptureDeviceVendor *)v6 initWithDefaultDeviceCreateFunction:Function cmioExtensionDeviceCreateFunction:v5 cmioDiscoverySession:mEMORY[0x1E6963468]];
  }

  FigSimpleMutexUnlock();
  return sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendor;
}

uint64_t __85__BWFigCaptureDeviceVendor_sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction___block_invoke(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendorLock = result;
  return result;
}

- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function
{
  if (objc_opt_class())
  {
    mEMORY[0x1E6963468] = [MEMORY[0x1E6963468] sharedInstance];
    v6 = CMIOExtensionFigCaptureDeviceCreate;
  }

  else
  {
    mEMORY[0x1E6963468] = 0;
    v6 = 0;
  }

  return [(BWFigCaptureDeviceVendor *)self initWithDefaultDeviceCreateFunction:function cmioExtensionDeviceCreateFunction:v6 cmioDiscoverySession:mEMORY[0x1E6963468]];
}

- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function cmioExtensionDeviceCreateFunction:(void *)createFunction cmioDiscoverySession:(id)session
{
  selfCopy = self;
  if (!(function | createFunction))
  {
    [(BWFigCaptureDeviceVendor *)self initWithDefaultDeviceCreateFunction:a2 cmioExtensionDeviceCreateFunction:function cmioDiscoverySession:createFunction, session, v5, v6, v7];
LABEL_14:

    return 0;
  }

  v30.receiver = self;
  v30.super_class = BWFigCaptureDeviceVendor;
  selfCopy = [(BWFigCaptureDeviceVendor *)&v30 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  selfCopy->_devicesStatesByDeviceID = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy->_deviceCloseTimeoutSeconds = 5.0;
  selfCopy->_registeredDeviceClients = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy->_activeDeviceClients = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy->_victimizedDeviceClients = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  selfCopy->_deviceQueue = dispatch_queue_create("com.apple.bwgraph.devicevendor", v12);
  selfCopy->_notificationQueue = dispatch_queue_create("com.apple.bwgraph.devicevendor.notification", 0);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy->_cameraPoseMatricesByPortTypeByDeviceID = v13;
  IsRunningInVirtualization = FigCaptureIsRunningInVirtualization(v13, v14);
  if ((IsRunningInVirtualization & 1) == 0 && !function)
  {
    [BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:];
    goto LABEL_14;
  }

  selfCopy->_defaultDeviceCreateFunction = function;
  if (!createFunction)
  {
    goto LABEL_8;
  }

  if (!session)
  {
    [(BWFigCaptureDeviceVendor *)IsRunningInVirtualization initWithDefaultDeviceCreateFunction:v16 cmioExtensionDeviceCreateFunction:v17 cmioDiscoverySession:v18, v19, v20, v21, v22];
    goto LABEL_14;
  }

  selfCopy->_cmioDiscoverySession = session;
  selfCopy->_cmioExtensionDeviceCreateFunction = createFunction;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__handleCMIOExtensionDevicesChangedNotification_ name:*MEMORY[0x1E6963418] object:0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke;
  v29[3] = &unk_1E798F870;
  v29[4] = selfCopy;
  [(BWFigCaptureDeviceVendor *)selfCopy _performBlockOnDeviceQueueSynchronously:v29];
LABEL_8:
  selfCopy->_osStateHandle = [[FigCaptureOSStateHandle alloc] initWithTitle:@"BWFigCaptureDeviceVendor" queue:selfCopy->_deviceQueue dataProvider:selfCopy];
  selfCopy->_defaultDeviceCreationHistory = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  selfCopy->_cmioDeviceCreationHistory = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v24 = objc_alloc_init(MEMORY[0x1E696AB78]);
  selfCopy->_deviceDateFormatter = v24;
  [(NSDateFormatter *)v24 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
  selfCopy->_defaultDevicePriorStreamPortTypes = 0;
  v25 = [FigCaptureGameModeMonitor alloc];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_2;
  v28[3] = &unk_1E798F870;
  v28[4] = selfCopy;
  selfCopy->_gameModeMonitor = [(FigCaptureGameModeMonitor *)v25 initWithStateChangeHandler:v28];
  selfCopy->_calibrationStatusLock._os_unfair_lock_opaque = 0;
  selfCopy->_calibrationStatusQueried = FigCaptureCurrentProcessIsCameracaptured() == 0;
  selfCopy->_rearCameraCalibrationValid = 1;
  if (FigCaptureCurrentProcessIsCameracaptured())
  {
    global_queue = dispatch_get_global_queue(21, 0);
    dispatch_async(global_queue, &__block_literal_global_268);
  }

  return selfCopy;
}

- (void)_performBlockOnDeviceQueueSynchronously:(uint64_t)synchronously
{
  if (synchronously)
  {
    if (a2)
    {
      v2 = *(synchronously + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__BWFigCaptureDeviceVendor__performBlockOnDeviceQueueSynchronously___block_invoke;
      block[3] = &unk_1E798FEA0;
      block[4] = a2;
      dispatch_sync(v2, block);
    }
  }
}

void __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_3;
  v2[3] = &unk_1E798F870;
  v2[4] = v1;
  [(BWFigCaptureDeviceVendor *)v1 _performBlockOnDeviceQueueSynchronously:v2];
}

void *__119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_266(uint64_t a1)
{
  v1 = FigCaptureDeviceCoreRepairStatusesByKeys(a1);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  result = [v1 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v24;
    do
    {
      v5 = 0;
      do
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v23 + 1) + 8 * v5);
        v7 = [objc_msgSend(v1 objectForKeyedSubscript:{v6, v14, v15), "intValue"}];
        if (v7 == 3)
        {
          v21 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v21;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (!v13)
          {
            goto LABEL_18;
          }

LABEL_17:
          v16 = 136315394;
          v17 = "fcdv_validateCoreRepairStatuses";
          v18 = 2114;
          v19 = v6;
          LODWORD(v15) = 22;
          v14 = &v16;
          _os_log_send_and_compose_impl();
          goto LABEL_18;
        }

        if (v7 != 2)
        {
          goto LABEL_19;
        }

        v21 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v9 = v21;
        if (os_log_type_enabled(v8, type))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          goto LABEL_17;
        }

LABEL_18:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_19:
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v23 objects:v22 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)dealloc
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_devicesStatesByDeviceID allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        -[BWFigCaptureDeviceVendor invalidateVideoDevice:forPID:](self, "invalidateVideoDevice:forPID:", [*(*(&v10 + 1) + 8 * v7++) device], 0xFFFFFFFFLL);
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = BWFigCaptureDeviceVendor;
  [(BWFigCaptureDeviceVendor *)&v8 dealloc];
}

+ (BOOL)videoCaptureDeviceFirmwareIsLoaded
{
  CameraDriverService = FigCaptureGetCameraDriverService();
  if (!CameraDriverService)
  {
    return 0;
  }

  v3 = CameraDriverService;
  CFProperty = IORegistryEntryCreateCFProperty(CameraDriverService, @"FirmwareLoaded", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = CFEqual(CFProperty, *MEMORY[0x1E695E4D0]) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  FigCaptureReleaseCameraDriverService(v3);
  return v6;
}

- (void)prewarmDefaultVideoDeviceForPID:(int)d completionHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__BWFigCaptureDeviceVendor_prewarmDefaultVideoDeviceForPID_completionHandler___block_invoke;
  v4[3] = &unk_1E79994B8;
  dCopy = d;
  v4[4] = self;
  v4[5] = handler;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueue:v4];
}

uint64_t __78__BWFigCaptureDeviceVendor_prewarmDefaultVideoDeviceForPID_completionHandler___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:{0x1F21702D0, v13, v14}])
  {
    v6 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:0x1F21702D0];
    if (dword_1ED844630)
    {
      v7 = v6;
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v20;
      if (os_log_type_enabled(v8, v19))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = [v7 device];
        v15 = 136315394;
        v16 = "[BWFigCaptureDeviceVendor prewarmDefaultVideoDeviceForPID:completionHandler:]_block_invoke";
        v17 = 2048;
        v18 = v11;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [BWFigCaptureDeviceVendor _resetDeviceCloseTimerForDevice:?];
  }

  else
  {
    [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
    if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:0x1F21702D0])
    {
      [(BWFigCaptureDeviceVendor *)*(a1 + 32) _setupDeviceCloseTimerForDevice:?];
    }

    else
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v4 = v20;
      if (os_log_type_enabled(v3, v19))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v15 = 136315138;
        v16 = "[BWFigCaptureDeviceVendor prewarmDefaultVideoDeviceForPID:completionHandler:]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)_performBlockOnDeviceQueue:(uint64_t)queue
{
  if (queue)
  {
    if (a2)
    {
      v2 = *(queue + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__BWFigCaptureDeviceVendor__performBlockOnDeviceQueue___block_invoke;
      block[3] = &unk_1E798FEA0;
      block[4] = a2;
      dispatch_async(v2, block);
    }
  }
}

- (int)registerClientWithPID:(int)d clientApplicationID:(id)iD clientDescription:(id)description clientPriority:(int)priority canStealFromClientsWithSamePriority:(BOOL)samePriority deviceSharingWithOtherClientsAllowed:(BOOL)allowed clientType:(int)type deviceAvailabilityChangedHandler:(id)self0
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __220__BWFigCaptureDeviceVendor_registerClientWithPID_clientApplicationID_clientDescription_clientPriority_canStealFromClientsWithSamePriority_deviceSharingWithOtherClientsAllowed_clientType_deviceAvailabilityChangedHandler___block_invoke;
  v12[3] = &unk_1E79994E0;
  allowedCopy = allowed;
  v12[7] = handler;
  v12[8] = &v18;
  v12[4] = self;
  v12[5] = iD;
  v12[6] = description;
  dCopy = d;
  priorityCopy = priority;
  samePriorityCopy = samePriority;
  typeCopy = type;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v12];
  v10 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v10;
}

void __220__BWFigCaptureDeviceVendor_registerClientWithPID_clientApplicationID_clientDescription_clientPriority_canStealFromClientsWithSamePriority_deviceSharingWithOtherClientsAllowed_clientType_deviceAvailabilityChangedHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 84) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([*(*(a1 + 32) + 40) count])
    {
      [v2 addObjectsFromArray:*(*(a1 + 32) + 40)];
    }

    if ([*(*(a1 + 32) + 32) count])
    {
      [v2 addObject:{objc_msgSend(*(*(a1 + 32) + 32), "lastObject")}];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          if ([v7 canShareRegistrationWithClientPID:*(a1 + 72) deviceAvailabilityChangedHandler:*(a1 + 56)])
          {
            *(*(*(a1 + 64) + 8) + 24) = [v7 clientID];
            if (![v7 deviceAvailabilityChangedHandler])
            {
              [v7 setDeviceAvailabilityChangedHandler:*(a1 + 56)];
            }

            goto LABEL_17;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    v8 = [BWFigCaptureDeviceClient alloc];
    LODWORD(v11) = *(a1 + 80);
    v9 = [(BWFigCaptureDeviceClient *)v8 initWithPID:*(a1 + 72) clientApplicationID:*(a1 + 40) clientDescription:*(a1 + 48) clientPriority:*(a1 + 76) canStealFromClientsWithSamePriority:*(a1 + 85) deviceSharingWithOtherClientsAllowed:*(a1 + 84) clientType:v11 deviceAvailabilityChangedHandler:*(a1 + 56)];
    *(*(*(a1 + 64) + 8) + 24) = [(BWFigCaptureDeviceClient *)v9 clientID];
    if (dword_1ED844630)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 32) addObject:{v9, v12, v13}];
  }
}

- (void)updateClientPriority:(int)priority clientPriority:(int)clientPriority
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke;
  v4[3] = &unk_1E7990178;
  v4[4] = self;
  priorityCopy = priority;
  clientPriorityCopy = clientPriority;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueue:v4];
}

void __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (dword_1ED844630)
  {
    v42 = 0;
    v41 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v8 + 40) <= 0)
  {
    __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = *(*(v8 + 32) + 40);
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v37 + 1) + 8 * v14);
      if ([(__CFString *)v15 clientID:v26]== *(v8 + 40))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v37 objects:v36 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v20 = [(__CFString *)v15 clientPriority];
    [(__CFString *)v15 setClientPriority:*(v8 + 44)];
    if (!dword_1ED844630)
    {
      return;
    }

    v42 = 0;
    v41 = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v42;
    if (os_log_type_enabled(v21, v41))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v24 = [(__CFString *)v15 clientPriority];
      v25 = [(BWFigCaptureDeviceClient *)v15 _stringForBWFigCaptureDeviceVendorClientPriority];
      v28 = 136315906;
      v29 = "[BWFigCaptureDeviceVendor updateClientPriority:clientPriority:]_block_invoke";
      v30 = 1024;
      v31 = v20;
      v32 = 1024;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
LABEL_12:
    if (!dword_1ED844630)
    {
      return;
    }

    v42 = 0;
    v41 = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v42;
    if (os_log_type_enabled(v16, v41))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *(v8 + 40);
      v28 = 136315394;
      v29 = "[BWFigCaptureDeviceVendor updateClientPriority:clientPriority:]_block_invoke";
      v30 = 1024;
      v31 = v19;
      _os_log_send_and_compose_impl();
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (int)unregisterClient:(int)client
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__BWFigCaptureDeviceVendor_unregisterClient___block_invoke;
  v5[3] = &unk_1E7999508;
  clientCopy = client;
  v5[4] = self;
  v5[5] = &v7;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

double __45__BWFigCaptureDeviceVendor_unregisterClient___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 48) <= 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = -12780;
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v28;
    if (os_log_type_enabled(v13, v27))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v18 = 136315138;
      v19 = "[BWFigCaptureDeviceVendor unregisterClient:]_block_invoke";
      _os_log_send_and_compose_impl();
    }

LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = *(*(a1 + 32) + 40);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v23 + 1) + 8 * i) clientID] == *(a1 + 48))
          {
            *(*(*(a1 + 40) + 8) + 24) = -12780;
            v28 = 0;
            v27 = OS_LOG_TYPE_DEFAULT;
            v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = v28;
            if (os_log_type_enabled(v9, v27))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              v12 = *(*(a1 + 32) + 40);
              v18 = 136315394;
              v19 = "[BWFigCaptureDeviceVendor unregisterClient:]_block_invoke";
              v20 = 2112;
              v21 = v12;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_18;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [(BWFigCaptureDeviceVendor *)*(a1 + 32) _removeRegisteredDeviceClientWithClientID:?];
    [(BWFigCaptureDeviceVendor *)*(a1 + 32) _removeVictimizedDeviceClientWithClientID:?];
  }

  return result;
}

- (NSArray)deviceIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__BWFigCaptureDeviceVendor_deviceIDs__block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __37__BWFigCaptureDeviceVendor_deviceIDs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(*(*(a1 + 32) + 24), "allKeys")}];
  v3 = v2;
  if (*(*(a1 + 32) + 8) && ([v2 containsObject:0x1F21702D0] & 1) == 0)
  {
    [v3 insertObject:0x1F21702D0 atIndex:0];
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)copyDeviceWithID:(id)d forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again error:(int *)error
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__29;
  v41 = __Block_byref_object_dispose__29;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__29;
  v31 = __Block_byref_object_dispose__29;
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__29;
  v21 = __Block_byref_object_dispose__29;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__BWFigCaptureDeviceVendor_copyDeviceWithID_forClient_informClientWhenDeviceAvailableAgain_error___block_invoke;
  v14[3] = &unk_1E7999530;
  v14[4] = self;
  v14[5] = d;
  clientCopy = client;
  v14[6] = &v43;
  v14[7] = &v37;
  againCopy = again;
  v14[8] = &v17;
  v14[9] = &v27;
  v14[10] = &v33;
  v14[11] = &v23;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v14];
  [(BWFigCaptureDeviceVendor *)self _deviceAvailabilityChangedForClients:0 available:*(v34 + 24) postNotifications:0 reason:*(v24 + 24) canShareWithFlashlight:v18[5] cameraStolenInterruptor:?];
  [v28[5] removeAllObjects];
  if (!v38[5] && !*(v44 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v44 + 6) = -12786;
  }

  if (error)
  {
    *error = *(v44 + 6);
  }

  v12 = v38[5];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
  return v12;
}

- (id)copyDeviceForPublishingWithID:(id)d error:(int *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__29;
  v12 = __Block_byref_object_dispose__29;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__BWFigCaptureDeviceVendor_copyDeviceForPublishingWithID_error___block_invoke;
  v7[3] = &unk_1E7997788;
  v7[4] = d;
  v7[5] = self;
  v7[6] = &v14;
  v7[7] = &v8;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v7];
  if (error)
  {
    *error = *(v15 + 6);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

void __64__BWFigCaptureDeviceVendor_copyDeviceForPublishingWithID_error___block_invoke(void *a1)
{
  if (dword_1ED844630)
  {
    v25 = 0;
    v24 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = [*(a1[5] + 24) objectForKeyedSubscript:{a1[4], v19, v21}];
  if (v3)
  {
    v4 = v3;
    if (!dword_1ED844630)
    {
      goto LABEL_19;
    }

    v25 = 0;
    v24 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v25;
    if (os_log_type_enabled(v5, v24))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = [v4 device];
    *v23 = 136315394;
    *&v23[4] = "[BWFigCaptureDeviceVendor copyDeviceForPublishingWithID:error:]_block_invoke";
    *&v23[12] = 2048;
    *&v23[14] = v13;
    LODWORD(v22) = 22;
    v20 = v23;
    _os_log_send_and_compose_impl();
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  v8 = a1[5];
  getpid();
  if (v8)
  {
    [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  }

  else
  {
    v9 = 0;
  }

  *(*(a1[6] + 8) + 24) = v9;
  v4 = [*(a1[5] + 24) objectForKeyedSubscript:a1[4]];
  if (dword_1ED844630)
  {
    v25 = 0;
    v24 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v25;
    if (os_log_type_enabled(v10, v24))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  *(*(a1[7] + 8) + 40) = [v4 device];
  if (*(*(a1[7] + 8) + 40))
  {
    [v4 setDeviceUsageCount:{objc_msgSend(v4, "deviceUsageCount") + 1}];
    [v4 setInUseForPublishing:1];
  }

  else
  {
    v25 = 0;
    v24 = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v25;
    if (os_log_type_enabled(v15, v24))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = a1[4];
      *v23 = 136315394;
      *&v23[4] = "[BWFigCaptureDeviceVendor copyDeviceForPublishingWithID:error:]_block_invoke";
      *&v23[12] = 2112;
      *&v23[14] = v18;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(*(a1[7] + 8) + 40))
  {
    v14 = *(a1[6] + 8);
    if (!*(v14 + 24))
    {
      *(v14 + 24) = -12786;
    }
  }
}

- (id)copyDefaultDeviceForVibeMitigation:(int *)mitigation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__29;
  v11 = __Block_byref_object_dispose__29;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__BWFigCaptureDeviceVendor_copyDefaultDeviceForVibeMitigation___block_invoke;
  v6[3] = &unk_1E7990C68;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v6];
  if (mitigation)
  {
    *mitigation = *(v14 + 6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
  return v4;
}

void __63__BWFigCaptureDeviceVendor_copyDefaultDeviceForVibeMitigation___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  if (v2)
  {
    v5 = v2;
    if (!dword_1ED844630)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = a1[4];
  getpid();
  if (v3)
  {
    [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  }

  else
  {
    v4 = 0;
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  if (dword_1ED844630)
  {
LABEL_7:
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  v7 = a1[4];
  [v5 device];
  if ([BWFigCaptureDeviceVendor _getGameModeEnabledOnDevice:v7])
  {
    if (dword_1ED844630)
    {
      v19 = 0;
      v18 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v19;
      if (os_log_type_enabled(v9, v18))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        *v17 = 136315138;
        *&v17[4] = "[BWFigCaptureDeviceVendor copyDefaultDeviceForVibeMitigation:]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(*(a1[5] + 8) + 24) = -12782;
  }

  else
  {
    *(*(a1[6] + 8) + 40) = [v5 device];
    if (*(*(a1[6] + 8) + 40))
    {
      [v5 setDeviceUsageCount:{objc_msgSend(v5, "deviceUsageCount") + 1}];
      [v5 setInUseForVibeMitigation:1];
    }

    else
    {
      v19 = 0;
      v18 = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v19;
      if (os_log_type_enabled(v12, v18))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        *v17 = 136315394;
        *&v17[4] = "[BWFigCaptureDeviceVendor copyDefaultDeviceForVibeMitigation:]_block_invoke";
        *&v17[12] = 2112;
        *&v17[14] = 0x1F21702D0;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = *(a1[5] + 8);
    if (!*(v8 + 24))
    {
      *(v8 + 24) = -12786;
    }
  }
}

- (id)copyStreamFromDevice:(id)device position:(int)position deviceType:(int)type deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error
{
  lossCopy = loss;
  v10 = *&priority;
  v11 = *&type;
  v19 = [MEMORY[0x1E696AD98] numberWithInt:*&position];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v15 = -[BWFigCaptureDeviceVendor copyStreamsFromDevice:positions:deviceTypes:deviceClientPriority:allowsStreamControlLoss:error:](self, "copyStreamsFromDevice:positions:deviceTypes:deviceClientPriority:allowsStreamControlLoss:error:", device, v14, [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1], v10, lossCopy, error);
  firstObject = [v15 firstObject];

  return firstObject;
}

- (id)copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__BWFigCaptureDeviceVendor_copyStreamsFromDevice_positions_deviceTypes_deviceClientPriority_allowsStreamControlLoss_error___block_invoke;
  v10[3] = &unk_1E7999558;
  v10[4] = self;
  v10[5] = device;
  v10[6] = positions;
  v10[7] = types;
  priorityCopy = priority;
  lossCopy = loss;
  v10[8] = &v13;
  v10[9] = error;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v10];
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v8;
}

void *__123__BWFigCaptureDeviceVendor_copyStreamsFromDevice_positions_deviceTypes_deviceClientPriority_allowsStreamControlLoss_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyStreamsFromDevice:*(a1 + 40) positions:*(a1 + 48) deviceTypes:*(a1 + 56) requestControl:1 deviceClientPriority:*(a1 + 80) allowsStreamControlLoss:*(a1 + 84) error:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 40) = result;
  return result;
}

- (id)copyStreamWithoutControlFromDevice:(id)device position:(int)position deviceType:(int)type error:(int *)error
{
  v7 = *&type;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:*&position];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v11 = -[BWFigCaptureDeviceVendor copyStreamsWithoutControlFromDevice:positions:deviceTypes:error:](self, "copyStreamsWithoutControlFromDevice:positions:deviceTypes:error:", device, v10, [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1], error);
  firstObject = [v11 firstObject];

  return firstObject;
}

- (id)copyStreamsWithoutControlFromDevice:(id)device positions:(id)positions deviceTypes:(id)types error:(int *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__29;
  v13 = __Block_byref_object_dispose__29;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__BWFigCaptureDeviceVendor_copyStreamsWithoutControlFromDevice_positions_deviceTypes_error___block_invoke;
  v8[3] = &unk_1E7999580;
  v8[4] = self;
  v8[5] = device;
  v8[6] = positions;
  v8[7] = types;
  v8[8] = &v9;
  v8[9] = error;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void *__92__BWFigCaptureDeviceVendor_copyStreamsWithoutControlFromDevice_positions_deviceTypes_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyStreamsFromDevice:*(a1 + 40) positions:*(a1 + 48) deviceTypes:*(a1 + 56) requestControl:0 deviceClientPriority:1 allowsStreamControlLoss:0 error:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 40) = result;
  return result;
}

- (id)_copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types requestControl:(BOOL)control deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error
{
  lossCopy = loss;
  controlCopy = control;
  v28[0] = 0;
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWFigCaptureDeviceVendor _copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:];
  }

  if (dword_1ED844630)
  {
    v27 = 0;
    v26 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (device)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = [positions count];
    if (os_log_and_send_and_compose_flags_and_os_log_type == [types count])
    {
      os_log_and_send_and_compose_flags_and_os_log_type = -[NSMutableDictionary objectForKeyedSubscript:](self->_devicesStatesByDeviceID, "objectForKeyedSubscript:", [device deviceID]);
      if ([positions count] != 1 || objc_msgSend(objc_msgSend(positions, "objectAtIndexedSubscript:", 0), "intValue") || objc_msgSend(objc_msgSend(types, "objectAtIndexedSubscript:", 0), "intValue"))
      {
        v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(positions, "count", v24, v25)}];
        if ([positions count])
        {
          v17 = 0;
          while (1)
          {
            v18 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(positions objectAtIndexedSubscript:{v17), "intValue"}], objc_msgSend(objc_msgSend(types, "objectAtIndexedSubscript:", v17), "intValue"));
            if (!v18)
            {
              break;
            }

            [v16 addObject:v18];
            if ([positions count] <= ++v17)
            {
              goto LABEL_14;
            }
          }

          v19 = 0;
          v21 = 0;
          v28[0] = -12780;
          goto LABEL_33;
        }

LABEL_14:
        v19 = [device copyStreamsWithPortTypes:v16 error:v28];
        if (v28[0])
        {
          [BWFigCaptureDeviceVendor _copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:];
          v21 = 0;
          errorCopy4 = error;
LABEL_21:
          if (!v28[0])
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        errorCopy4 = error;
        if (lossCopy)
        {
          v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v19 = [objc_msgSend(device "streams")];
        v21 = 0;
        errorCopy4 = error;
      }

      if ([v21 count])
      {
        [-[NSObject portTypesAllowingStreamControlLoss](os_log_and_send_and_compose_flags_and_os_log_type "portTypesAllowingStreamControlLoss")];
      }

      if (controlCopy)
      {
        [BWFigCaptureDeviceVendor _requestControlOfStreams:? device:? deviceClientPriority:?];
        v28[0] = v23;
        if (!v23)
        {
          goto LABEL_26;
        }

        [BWFigCaptureDeviceVendor _copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:];
      }

      goto LABEL_21;
    }
  }

  v19 = 0;
  v21 = 0;
  v28[0] = -12780;
LABEL_33:
  errorCopy4 = error;
LABEL_22:
  if ([v21 count] && v28[0] != -12681)
  {
    [-[NSObject portTypesAllowingStreamControlLoss](os_log_and_send_and_compose_flags_and_os_log_type "portTypesAllowingStreamControlLoss")];
  }

  v19 = 0;
LABEL_26:
  if (errorCopy4)
  {
    *errorCopy4 = v28[0];
  }

  return v19;
}

- (id)copyStreamsWithUniqueIDs:(id)ds forDevice:(id)device deviceClientPriority:(int)priority error:(int *)error
{
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(ds, "count")}];
  if (!device)
  {
    v22 = -12780;
    goto LABEL_25;
  }

  selfCopy = self;
  priorityCopy = priority;
  errorCopy = error;
  obj = ds;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [ds countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        streams = [device streams];
        v16 = [streams countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(streams);
              }

              v20 = *(*(&v30 + 1) + 8 * j);
              if (objc_msgSend_isEqualToString_([v20 uniqueID]))
              {
                [v28 addObject:v20];
                goto LABEL_17;
              }
            }

            v17 = [streams countByEnumeratingWithState:&v30 objects:v29 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
        ;
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v12);
  }

  v21 = [(BWFigCaptureDeviceVendor *)selfCopy requestControlOfStreams:v28 device:device deviceClientPriority:priorityCopy];
  v22 = v21;
  if (v21)
  {
    [BWFigCaptureDeviceVendor copyStreamsWithUniqueIDs:v21 forDevice:? deviceClientPriority:? error:?];
    error = errorCopy;
LABEL_25:

    v28 = 0;
    if (!error)
    {
      return v28;
    }

    goto LABEL_21;
  }

  error = errorCopy;
  if (errorCopy)
  {
LABEL_21:
    *error = v22;
  }

  return v28;
}

- (void)takeBackDevice:(id)device forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again prefersDeviceInvalidatedImmediately:(BOOL)immediately
{
  if (device)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__29;
    v20 = __Block_byref_object_dispose__29;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke;
    v8[3] = &unk_1E79995A8;
    clientCopy = client;
    v8[4] = device;
    v8[5] = self;
    immediatelyCopy = immediately;
    v8[6] = &v12;
    v8[7] = &v16;
    againCopy = again;
    v8[8] = &v22;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v8];
    v7 = v17;
    if (!v13[3] && (v17[5] || (v23[3] & 1) != 0))
    {
      [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
      v7 = v17;
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }
}

void __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (dword_1ED844630)
  {
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = (a1 + 40);
  v5 = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _activeDeviceClientWithClientID:?];
  v6 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:{objc_msgSend(v2, "deviceID")}];
  if (v2 != [v6 device] && objc_msgSend(*(*v4 + 5), "containsObject:", v5) && objc_msgSend(v6, "device") && objc_msgSend(v5, "clientType") == 1)
  {
    if (dword_1ED844630)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v92;
      if (os_log_type_enabled(v7, v91))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = [v6 device];
        v71 = 136315650;
        v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
        v73 = 2048;
        v74 = v2;
        v75 = 2048;
        *v76 = v10;
        LODWORD(v67) = 32;
        v64 = &v71;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2 = [v6 device];
    [v2 resetTorchState];
  }

  if (v2 != [v6 device])
  {
    [v2 invalidate];
    return;
  }

  if (([(BWFigCaptureDeviceVendor *)*v4 _setLowMemoryModeEnabledOnDevice:v2]& 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 76);
  }

  v70 = v11;
  [v6 setDeviceUsageCount:{objc_msgSend(v6, "deviceUsageCount") - 1}];
  *(*(*(a1 + 48) + 8) + 24) = [v6 deviceUsageCount];
  if (dword_1ED844630)
  {
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v92;
    if (os_log_type_enabled(v12, v91))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v71 = 136315650;
      v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
      v73 = 2048;
      v74 = v2;
      v75 = 1024;
      *v76 = v15;
      LODWORD(v67) = 28;
      v65 = &v71;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *(*(*(a1 + 48) + 8) + 24);
  if (!v16)
  {
    v21 = [v6 inUseForPublishing];
    if (v21 && dword_1ED844630)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = v92;
      if (os_log_type_enabled(v22, v91))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v71 = 136315394;
        v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
        v73 = 2048;
        v74 = v2;
        LODWORD(v67) = 22;
        v65 = &v71;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = [v6 inUseForVibeMitigation];
    if (v30 && dword_1ED844630)
    {
      v69 = v21;
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v92;
      if (os_log_type_enabled(v31, v91))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v71 = 136315394;
        v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
        v73 = 2048;
        v74 = v2;
        LODWORD(v68) = 22;
        v66 = &v71;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = v69;
    }

    [v6 setInUseForPublishing:{0, v66, v68}];
    [v6 setInUseForVibeMitigation:0];
    if ([*(*v4 + 5) count] == 1)
    {
      v34 = v30;
    }

    else
    {
      v34 = 1;
    }

    if ((v21 | v34))
    {
      if ((v70 & 1) == 0 || [*(*v4 + 6) count])
      {
        __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke_cold_1(a1 + 40, v2);
      }

      else
      {
        v35 = *v4;
        [v2 deviceID];
        if (v35)
        {
          [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
        }
      }

      goto LABEL_110;
    }

    v36 = [objc_msgSend(v6 "device")];
    v37 = *off_1E7989FE8;
    if ([v36 objectForKeyedSubscript:*off_1E7989FE8])
    {
      v38 = [v6 device];
      [v38 setProperty:v37 value:MEMORY[0x1E695E110]];
    }

    if ([objc_msgSend(v6 "streamsRequiringControlControlledByOtherClients")])
    {
      if ([v5 clientType] == 1)
      {
        [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v5 moveToVictimizedList:*(a1 + 77)];
      }

      else
      {
        [v6 setTakeBackDeviceCalledForActiveClientID:*(a1 + 72)];
        if (dword_1ED844630)
        {
          v92 = 0;
          v91 = OS_LOG_TYPE_DEFAULT;
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v40 = v92;
          if (os_log_type_enabled(v39, v91))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (!v41)
          {
            goto LABEL_109;
          }

          v42 = [objc_msgSend(v6 "streamsControlledByOtherClients")];
          v71 = 136315394;
          v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
          v73 = 1024;
          LODWORD(v74) = v42;
          goto LABEL_39;
        }
      }

      goto LABEL_110;
    }

    -[BWFigCaptureDeviceVendor _relinquishControlOfStreamsForDevice:](*v4, [v2 deviceID]);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v48 = *(*v4 + 3);
    v49 = [v48 countByEnumeratingWithState:&v85 objects:v84 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = 0;
      v52 = *v86;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v86 != v52)
          {
            objc_enumerationMutation(v48);
          }

          v51 |= [objc_msgSend(*(*v4 + 3) objectForKeyedSubscript:{*(*(&v85 + 1) + 8 * i)), "deviceUsageCount"}] > 0;
        }

        v50 = [v48 countByEnumeratingWithState:&v85 objects:v84 count:16];
      }

      while (v50);
    }

    else
    {
      v51 = 0;
    }

    if ((v70 & 1) == 0 || [*(*v4 + 6) count])
    {
      __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke_cold_1(a1 + 40, v2);
      if (v51)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v54 = *v4;
      [v2 deviceID];
      if (v54)
      {
        [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
      }

      if (v51)
      {
LABEL_103:
        if (dword_1ED844630)
        {
          v92 = 0;
          v91 = OS_LOG_TYPE_DEFAULT;
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v56 = v92;
          if (os_log_type_enabled(v55, v91))
          {
            v57 = v56;
          }

          else
          {
            v57 = v56 & 0xFFFFFFFE;
          }

          if (!v57)
          {
            goto LABEL_109;
          }

          v58 = [objc_msgSend(*(*v4 + 5) "firstObject")];
          v71 = 136315394;
          v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
          v73 = 1024;
          LODWORD(v74) = v58;
          goto LABEL_39;
        }

        goto LABEL_110;
      }
    }

    *(*(*(a1 + 56) + 8) + 40) = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v5 moveToVictimizedList:*(a1 + 77)];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v59 = *(*(a1 + 40) + 40);
    v60 = [v59 countByEnumeratingWithState:&v80 objects:v79 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v81;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v81 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [(BWFigCaptureDeviceVendor *)*v4 _removeActiveDeviceClient:0 moveToVictimizedList:?];
        }

        v61 = [v59 countByEnumeratingWithState:&v80 objects:v79 count:16];
      }

      while (v61);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    goto LABEL_110;
  }

  if (v16 < 1)
  {
    goto LABEL_47;
  }

  if ([*(*v4 + 5) count] > 1 || objc_msgSend(v5, "clientType") == 1)
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v5 moveToVictimizedList:*(a1 + 77)];
    if (dword_1ED844630)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v44 = v92;
      if (os_log_type_enabled(v43, v91))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (!v45)
      {
        goto LABEL_109;
      }

      v46 = *(*(*(a1 + 48) + 8) + 24);
      v47 = *(*(a1 + 40) + 40);
      v71 = 136316162;
      v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
      v73 = 2048;
      v74 = v2;
      v75 = 1024;
      *v76 = v46;
      *&v76[4] = 2112;
      *&v76[6] = v5;
      v77 = 2112;
      v78 = v47;
      goto LABEL_39;
    }

    goto LABEL_110;
  }

  if (*(*(*(a1 + 48) + 8) + 24) < 1)
  {
LABEL_47:
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v92;
    if (os_log_type_enabled(v26, v91))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v71 = 136315394;
      v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
      v73 = 2048;
      v74 = v2;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v89 = 134217984;
    v90 = v2;
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 1525, @"LastShownDate:BWFigCaptureDeviceVendor.m:1525", @"LastShownBuild:BWFigCaptureDeviceVendor.m:1525", 0);
    free(v29);
    goto LABEL_110;
  }

  if (dword_1ED844630)
  {
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = v92;
    if (os_log_type_enabled(v17, v91))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (!v19)
    {
      goto LABEL_109;
    }

    v20 = *(*(*(a1 + 48) + 8) + 24);
    v71 = 136315650;
    v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
    v73 = 2048;
    v74 = v2;
    v75 = 1024;
    *v76 = v20;
LABEL_39:
    _os_log_send_and_compose_impl();
LABEL_109:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_110:
  if (!*(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 48) + 8) + 24) == 1 && [objc_msgSend(*(*v4 + 5) "firstObject")] == 1)
  {
    *(*(*(a1 + 56) + 8) + 40) = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClientThatCanShareWithFlashlight];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)invalidateVideoDevice:(id)device forPID:(int)d
{
  if (device)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__29;
    v11 = __Block_byref_object_dispose__29;
    v12 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__BWFigCaptureDeviceVendor_invalidateVideoDevice_forPID___block_invoke;
    v5[3] = &unk_1E79995D0;
    dCopy = d;
    v5[4] = device;
    v5[5] = self;
    v5[6] = &v7;
    v5[7] = v13;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
    [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v13, 8);
  }
}

- (int)keepControlOfStreamsWithPositions:(id)positions deviceTypes:(id)types forDevice:(id)device
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__BWFigCaptureDeviceVendor_keepControlOfStreamsWithPositions_deviceTypes_forDevice___block_invoke;
  v7[3] = &unk_1E7991D18;
  v7[4] = self;
  v7[5] = device;
  v7[6] = positions;
  v7[7] = types;
  v7[8] = &v8;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v7];
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)shutDownSystemPressuredDevice:(id)device
{
  if (device)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__BWFigCaptureDeviceVendor_shutDownSystemPressuredDevice___block_invoke;
    v3[3] = &unk_1E798F898;
    v3[4] = self;
    v3[5] = device;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v3];
  }
}

- (void)resumeSystemPressuredDevice
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__BWFigCaptureDeviceVendor_resumeSystemPressuredDevice__block_invoke;
  v2[3] = &unk_1E798F870;
  v2[4] = self;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v2];
}

- (float)structuredLightProjectorStandbyTemperatureWithError:(int *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke;
  v6[3] = &unk_1E7990C68;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v6];
  if (error)
  {
    *error = *(v8 + 6);
  }

  v4 = v12[6];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  if (!v3)
  {
    __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke_cold_1(v2, 0x1F21702D0, &v8);
    v3 = v8;
  }

  v4 = [objc_msgSend(v3 "device")];
  v7 = v4;
  if (v4)
  {
    v5 = [v4 getProperty:*off_1E798C198 error:*(a1[5] + 8) + 24];
    if (!*(*(a1[5] + 8) + 24))
    {
      [v5 floatValue];
      *(*(a1[6] + 8) + 24) = v6;
    }

    [BWFigCaptureDeviceVendor _resetDeviceCloseTimerForDevice:?];
  }

  else
  {
    __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke_cold_2();
  }
}

- (BOOL)activeDefaultDeviceEquals:(id)equals
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BWFigCaptureDeviceVendor_activeDefaultDeviceEquals___block_invoke;
  v5[3] = &unk_1E79906C0;
  v5[4] = self;
  v5[5] = equals;
  v5[6] = &v6;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__54__BWFigCaptureDeviceVendor_activeDefaultDeviceEquals___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  v3 = a1[5];
  if (v3)
  {
    result = [v2 device];
    v5 = v3 == result;
  }

  else
  {
    result = [v2 deviceUsageCount];
    if (result)
    {
      v6 = 0;
      goto LABEL_8;
    }

    result = [*(a1[4] + 40) count];
    v5 = result == 0;
  }

  v6 = v5;
LABEL_8:
  *(*(a1[6] + 8) + 24) = v6;
  return result;
}

- (id)cameraPoseMatrixForStreamWithPosition:(int)position deviceType:(int)type deviceID:(id)d
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  v7 = BWCaptureDevicePositionAndDeviceTypeToPortType(position, type);
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__BWFigCaptureDeviceVendor_cameraPoseMatrixForStreamWithPosition_deviceType_deviceID___block_invoke;
    v10[3] = &unk_1E79992F0;
    v10[4] = self;
    v10[5] = d;
    v10[6] = v7;
    v10[7] = &v11;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v10];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

void *__86__BWFigCaptureDeviceVendor_cameraPoseMatrixForStreamWithPosition_deviceType_deviceID___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 104) objectForKeyedSubscript:{a1[5]), "objectForKeyedSubscript:", a1[6]}];
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

void *__60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke_296(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 40);
  result = [*(a1 + 32) deviceCloseTimer];
  if (v3 == result)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v19;
    if (os_log_type_enabled(v5, v18))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) deviceCloseTimer];
      v12 = 136315650;
      v13 = "[BWFigCaptureDeviceVendor _setupDeviceCloseTimerForDevice:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return [*(a1 + 32) setDeviceCloseTimer:0];
  }

  return result;
}

void __145__BWFigCaptureDeviceVendor__deviceAvailabilityChangedForClient_available_postNotification_reason_canShareWithFlashlight_cameraStolenInterruptor___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 52) == 1)
  {
    v20[0] = @"DeviceAvailable";
    v21[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 53)];
    v20[1] = @"DeviceAvailabilityChangedReason";
    v21[1] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
    v20[2] = @"DeviceSharingWithFlashlightAllowed";
    v21[2] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 54)];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 32) deviceAvailabilityChangedHandler])
  {
    if (*(a1 + 53) == 1)
    {
      if (!dword_1ED844630)
      {
        goto LABEL_20;
      }
    }

    else if (!dword_1ED844630)
    {
      goto LABEL_20;
    }

    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1ED844630)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v19;
    if (os_log_type_enabled(v5, v18))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 52);
      *&v15[4] = "[BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:available:postNotification:reason:canShareWithFlashlight:cameraStolenInterruptor:]_block_invoke";
      *v15 = 136315650;
      if (v8)
      {
        v9 = @"Sending";
      }

      else
      {
        v9 = @"Not sending";
      }

      *&v15[12] = 2112;
      *&v15[14] = v9;
      v16 = 2114;
      v17 = v3;
      LODWORD(v14) = 32;
      v13 = v15;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_20:
  if (*(a1 + 52) == 1 && (*(a1 + 53) & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"DeviceAvailabilityChanged", 0, v3, 1u);
  }

  if ([*(a1 + 32) deviceAvailabilityChangedHandler])
  {
    v11 = [*(a1 + 32) deviceAvailabilityChangedHandler];
    (*(v11 + 16))(v11, [*(a1 + 32) clientID], *(a1 + 53), *(a1 + 48), *(a1 + 40));
  }

  if (*(a1 + 52) == 1 && *(a1 + 53) == 1)
  {
    v12 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v12, @"DeviceAvailabilityChanged", 0, v3, 1u);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __81__BWFigCaptureDeviceVendor__handleStreamControlTakenByAnotherClientNotification___block_invoke_306(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t __81__BWFigCaptureDeviceVendor__handleStreamRelinquishedByAnotherClientNotification___block_invoke_308(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __71__BWFigCaptureDeviceVendor__handleDeviceUnrecoverableError_fromDevice___block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 device] == *(a1 + 40))
        {
          if (v7)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v9 = *(a1 + 32);
            [objc_msgSend(v7 "device")];
            [BWFigCaptureDeviceVendor _handleErrorForDevice:v9];
          }

          return;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }
}

void __59__BWFigCaptureDeviceVendor__handleDeviceNoLongerAvailable___block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([v7 device] == *(a1 + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  if ([v7 device] == *(a1 + 40))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *(a1 + 32);
    [objc_msgSend(v7 "device")];
    [BWFigCaptureDeviceVendor _handleErrorForDevice:v9];
  }
}

- (int)requestControlOfStreams:(id)streams device:(id)device deviceClientPriority:(int)priority
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__BWFigCaptureDeviceVendor_requestControlOfStreams_device_deviceClientPriority___block_invoke;
  v7[3] = &unk_1E7999640;
  v7[4] = self;
  v7[5] = streams;
  v7[6] = device;
  v7[7] = &v9;
  priorityCopy = priority;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v7];
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __55__BWFigCaptureDeviceVendor__performBlockOnDeviceQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __68__BWFigCaptureDeviceVendor__performBlockOnDeviceQueueSynchronously___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (id)deviceWithID:(id)d
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__BWFigCaptureDeviceVendor_deviceWithID___block_invoke;
  v5[3] = &unk_1E7999668;
  v5[5] = d;
  v5[6] = &v6;
  v5[4] = self;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __41__BWFigCaptureDeviceVendor_deviceWithID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deviceWithID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)_deviceWithID:(id)d
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWFigCaptureDeviceVendor _deviceWithID:];
  }

  v5 = [(NSMutableDictionary *)self->_devicesStatesByDeviceID objectForKeyedSubscript:d];

  return [v5 device];
}

- (id)controlledStreamsForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__BWFigCaptureDeviceVendor_controlledStreamsForDevice___block_invoke;
  v5[3] = &unk_1E79906C0;
  v5[4] = self;
  v5[5] = device;
  v5[6] = &v6;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__55__BWFigCaptureDeviceVendor_controlledStreamsForDevice___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")), "controlledStreams"), "copy"}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)streamsControlledByOtherClientsForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__BWFigCaptureDeviceVendor_streamsControlledByOtherClientsForDevice___block_invoke;
  v5[3] = &unk_1E79906C0;
  v5[4] = self;
  v5[5] = device;
  v5[6] = &v6;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__69__BWFigCaptureDeviceVendor_streamsControlledByOtherClientsForDevice___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")), "streamsControlledByOtherClients"), "copy"}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (int)usageCountForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__BWFigCaptureDeviceVendor_usageCountForDevice___block_invoke;
  v5[3] = &unk_1E7999668;
  v5[5] = device;
  v5[6] = &v6;
  v5[4] = self;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__48__BWFigCaptureDeviceVendor_usageCountForDevice___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 24) objectForKeyedSubscript:{a1[5]), "deviceUsageCount"}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)registeredDeviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__BWFigCaptureDeviceVendor_registeredDeviceClients__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__51__BWFigCaptureDeviceVendor_registeredDeviceClients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)registeredDeviceClientWithID:(int)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__29;
  v11 = __Block_byref_object_dispose__29;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__BWFigCaptureDeviceVendor_registeredDeviceClientWithID___block_invoke;
  v5[3] = &unk_1E7999508;
  v5[4] = self;
  v5[5] = &v7;
  dCopy = d;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)activeDeviceClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__BWFigCaptureDeviceVendor_activeDeviceClient__block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __46__BWFigCaptureDeviceVendor_activeDeviceClient__block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = [v7 clientType];
      *(*(*(a1 + 40) + 8) + 40) = v7;
      if (v8 != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        return *(*(*(a1 + 40) + 8) + 40);
      }
    }
  }

  return *(*(*(a1 + 40) + 8) + 40);
}

- (id)activeDeviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__BWFigCaptureDeviceVendor_activeDeviceClients__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__47__BWFigCaptureDeviceVendor_activeDeviceClients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)victimizedDeviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__BWFigCaptureDeviceVendor_victimizedDeviceClients__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__51__BWFigCaptureDeviceVendor_victimizedDeviceClients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)hasActiveForClientAssertion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__BWFigCaptureDeviceVendor_hasActiveForClientAssertion__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)defaultDeviceCreationHistory
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__BWFigCaptureDeviceVendor_defaultDeviceCreationHistory__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__56__BWFigCaptureDeviceVendor_defaultDeviceCreationHistory__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)cmioDeviceCreationHistory
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__BWFigCaptureDeviceVendor_cmioDeviceCreationHistory__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__53__BWFigCaptureDeviceVendor_cmioDeviceCreationHistory__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 152) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *__76__BWFigCaptureDeviceVendor__createDevice_reason_clientPID_figCaptureDevice___block_invoke_334(uint64_t a1)
{
  v1 = FigCaptureDeviceIORegValuesByKeys(a1);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  result = [v1 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v33;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v7 = [objc_msgSend(v1 objectForKeyedSubscript:{v6, v23, v24), "intValue"}];
        if (v7 <= 3)
        {
          if (v7 == 2)
          {
            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v21 = v30;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v22 = v21;
            }

            else
            {
              v22 = v21 & 0xFFFFFFFE;
            }

            if (!v22)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v7 != 3)
            {
              goto LABEL_39;
            }

            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v12 = v30;
            if (os_log_type_enabled(v11, type))
            {
              v13 = v12;
            }

            else
            {
              v13 = v12 & 0xFFFFFFFE;
            }

            if (!v13)
            {
              goto LABEL_38;
            }
          }

LABEL_37:
          v25 = 136315394;
          v26 = "fcdv_validateCalibrationStatuses";
          v27 = 2114;
          v28 = v6;
          LODWORD(v24) = 22;
          v23 = &v25;
          _os_log_send_and_compose_impl();
          goto LABEL_38;
        }

        if (v7 != 4)
        {
          if (v7 == 5)
          {
            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v18 = v30;
            if (os_log_type_enabled(v17, type))
            {
              v19 = v18;
            }

            else
            {
              v19 = v18 & 0xFFFFFFFE;
            }

            if (!v19)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v7 != 6)
            {
              goto LABEL_39;
            }

            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v9 = v30;
            if (os_log_type_enabled(v8, type))
            {
              v10 = v9;
            }

            else
            {
              v10 = v9 & 0xFFFFFFFE;
            }

            if (!v10)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_37;
        }

        if (!dword_1ED844630)
        {
          goto LABEL_39;
        }

        v30 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = v30;
        if (os_log_type_enabled(v14, type))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          goto LABEL_37;
        }

LABEL_38:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_39:
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v32 objects:v31 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __69__BWFigCaptureDeviceVendor__updateDefaultDevicePriorStreamPortTypes___block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(LocalCenter, @"DefaultDeviceStreamsChanged", v3, 0, 0);
}

- (id)osStatePropertyList
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWFigCaptureDeviceVendor osStatePropertyList];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_defaultDeviceCreationHistory forKeyedSubscript:@"Default Device Creation History"];
  [dictionary setObject:self->_cmioDeviceCreationHistory forKeyedSubscript:@"CMIO Device Creation History"];
  return dictionary;
}

void __55__BWFigCaptureDeviceVendor__updateCMIOExtensionDevices__block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(LocalCenter, @"DevicesChanged", v3, 0, 1u);
}

- (void)_handleCMIOExtensionDevicesChangedNotification:(id)notification
{
  if (objc_msgSend_isEqualToString_([notification name]))
  {
    if (dword_1ED844630)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__BWFigCaptureDeviceVendor__handleCMIOExtensionDevicesChangedNotification___block_invoke;
    v5[3] = &unk_1E798F870;
    v5[4] = self;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueue:v5];
  }

  else
  {
    [BWFigCaptureDeviceVendor _handleCMIOExtensionDevicesChangedNotification:];
  }
}

- (void)_updateCMIOExtensionDevices
{
  if (self)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v113);
    }

    obj = [MEMORY[0x1E695DF70] array];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v4 = *(v2 + 24);
    v6 = OUTLINED_FUNCTION_64(array3, v5, &v183, v182);
    if (v6)
    {
      v7 = v6;
      v8 = *v184;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v184 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(v2 + 24) objectForKeyedSubscript:*(*(&v183 + 1) + 8 * i)];
          isEqualToString = objc_msgSend_isEqualToString_([objc_msgSend(v10 "device")]);
          if ((isEqualToString & 1) == 0)
          {
            isEqualToString = [obj addObject:{objc_msgSend(objc_msgSend(v10, "device"), "deviceID")}];
          }
        }

        v7 = OUTLINED_FUNCTION_64(isEqualToString, v12, &v183, v182);
      }

      while (v7);
    }

    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    devices = [*(v2 + 128) devices];
    v14 = [devices countByEnumeratingWithState:&v178 objects:v177 count:16];
    v130 = v2;
    v124 = array;
    if (v14)
    {
      v16 = v14;
      v119 = 0;
      v128 = *v179;
      *&v15 = 136315650;
      *v123 = v15;
      do
      {
        v17 = 0;
        do
        {
          if (*v179 != v128)
          {
            objc_enumerationMutation(devices);
          }

          v18 = *(*(&v178 + 1) + 8 * v17);
          v19 = [objc_msgSend(v18 "deviceID")];
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          streams = [v18 streams];
          v21 = [streams countByEnumeratingWithState:&v173 objects:v172 count:16];
          if (!v21)
          {
            goto LABEL_26;
          }

          v23 = v21;
          v24 = *v174;
          while (2)
          {
            v25 = 0;
            do
            {
              if (*v174 != v24)
              {
                objc_enumerationMutation(streams);
              }

              if (![*(*(&v173 + 1) + 8 * v25) direction])
              {
                if (![*(v2 + 24) objectForKeyedSubscript:v19])
                {
                  getpid();
                  [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
                  if (v28)
                  {
                    v29 = v28;
                    OUTLINED_FUNCTION_56_11();
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v31 = v171;
                    }

                    else
                    {
                      v31 = v171 & 0xFFFFFFFE;
                    }

                    if (v31)
                    {
                      *v136 = v123[0];
                      OUTLINED_FUNCTION_26_15();
                      *&v136[14] = v19;
                      *&v136[22] = 1024;
                      LODWORD(v137) = v29;
                      OUTLINED_FUNCTION_23_17();
                      OUTLINED_FUNCTION_22_17();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_1_4();
                    v21 = fig_log_call_emit_and_clean_up_after_send_and_compose();
                    array = v124;
                    goto LABEL_36;
                  }

                  [array2 addObject:v19];
                  v119 = 1;
                }

                v21 = [array addObject:v19];
                goto LABEL_36;
              }

              ++v25;
            }

            while (v23 != v25);
            v21 = [streams countByEnumeratingWithState:&v173 objects:v172 count:16];
            v23 = v21;
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_26:
          if (dword_1ED844630)
          {
            OUTLINED_FUNCTION_56_11();
            v26 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
            if (os_log_type_enabled(v26, type))
            {
              v27 = v171;
            }

            else
            {
              v27 = v171 & 0xFFFFFFFE;
            }

            if (v27)
            {
              *v136 = 136315394;
              OUTLINED_FUNCTION_26_15();
              *&v136[14] = v19;
              OUTLINED_FUNCTION_23_17();
              OUTLINED_FUNCTION_22_17();
              _os_log_send_and_compose_impl();
            }

            v2 = v130;
            array = v124;
            OUTLINED_FUNCTION_2_4();
            v21 = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_36:
          ++v17;
        }

        while (v17 != v16);
        v32 = OUTLINED_FUNCTION_52(v21, v22, &v178, v177);
        v16 = v32;
      }

      while (v32);
    }

    else
    {
      v119 = 0;
    }

    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    OUTLINED_FUNCTION_103_5();
    v33 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v33)
    {
      v34 = v33;
      v35 = *v163;
      v36 = array3;
      v37 = v119;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v163 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v162 + 1) + 8 * j);
          if (([array containsObject:v39] & 1) == 0)
          {
            [array3 addObject:v39];
            v37 = 1;
          }
        }

        OUTLINED_FUNCTION_103_5();
        v34 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v34);
    }

    else
    {
      v36 = array3;
      v37 = v119;
    }

    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    OUTLINED_FUNCTION_102_4();
    v40 = [v36 countByEnumeratingWithState:? objects:? count:?];
    HIDWORD(v118) = v37;
    if (v40)
    {
      v42 = v40;
      v122 = *v159;
      *&v41 = 136315650;
      *v126 = v41;
      do
      {
        v43 = 0;
        v121 = v42;
        do
        {
          if (*v159 != v122)
          {
            objc_enumerationMutation(v36);
          }

          v44 = *(*(&v158 + 1) + 8 * v43);
          v45 = [objc_msgSend(*(v2 + 24) objectForKeyedSubscript:{v44), "deviceUsageCount"}];
          OUTLINED_FUNCTION_100();
          [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
          if (v45 >= 1)
          {
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v54 = *(v2 + 40);
            v55 = OUTLINED_FUNCTION_35_14(v46, v47, v48, v49, v50, v51, v52, v53, v114, v115, v116, array2, v118, array3, v121, v122, v43, v123[1], v124, obj, v126[0], v126[1], v127, v44, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], *&v136[16], v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
            if (v55)
            {
              v56 = v55;
              v57 = *v155;
              do
              {
                for (k = 0; k != v56; ++k)
                {
                  if (*v155 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v154 + 1) + 8 * k);
                  if (dword_1ED844630)
                  {
                    OUTLINED_FUNCTION_56_11();
                    v60 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
                    v61 = os_log_type_enabled(v60, type);
                    if (OUTLINED_FUNCTION_12(v61))
                    {
                      *v136 = v126[0];
                      OUTLINED_FUNCTION_26_15();
                      *&v136[14] = v129;
                      *&v136[22] = v62;
                      v137 = v59;
                      OUTLINED_FUNCTION_23_17();
                      OUTLINED_FUNCTION_22_17();
                      v63 = _os_log_send_and_compose_impl();
                    }

                    else
                    {
                      v63 = 0;
                    }

                    OUTLINED_FUNCTION_39_0(qword_1ED844628, 1, 1, v63, v63 != block);
                    v2 = v130;
                  }

                  v64 = *(v2 + 80);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __145__BWFigCaptureDeviceVendor__deviceAvailabilityChangedForClient_available_postNotification_reason_canShareWithFlashlight_cameraStolenInterruptor___block_invoke;
                  block[3] = &unk_1E7999618;
                  v168 = 1;
                  v167 = 3;
                  v169 = 0;
                  block[4] = v59;
                  block[5] = 0;
                  dispatch_async(v64, block);
                }

                v56 = OUTLINED_FUNCTION_35_14(v65, v66, v67, v68, v69, v70, v71, v72, v114, v115, v116, array2, v118, array3, v121, v122, v123[0], v123[1], v124, obj, v126[0], v126[1], v127, v129, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], *&v136[16], v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
              }

              while (v56);
            }

            [*(v2 + 40) removeAllObjects];
            v36 = array3;
            v42 = v121;
            array = v124;
            v43 = v123[0];
          }

          ++v43;
        }

        while (v43 != v42);
        OUTLINED_FUNCTION_102_4();
        v42 = [v36 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v42);
    }

    v73 = BYTE4(v118);
    if (dword_1ED844630)
    {
      OUTLINED_FUNCTION_56_11();
      v74 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
      v75 = os_log_type_enabled(v74, type);
      if (OUTLINED_FUNCTION_31(v75))
      {
        *v136 = 136315394;
        OUTLINED_FUNCTION_26_15();
        *&v136[14] = obj;
        OUTLINED_FUNCTION_23_17();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0(v76, v77, v78, v79, v80);
      v73 = BYTE4(v118);
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_56_11();
        v81 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
        v82 = os_log_type_enabled(v81, type);
        if (OUTLINED_FUNCTION_12(v82))
        {
          *v136 = 136315394;
          OUTLINED_FUNCTION_26_15();
          *&v136[14] = array;
          OUTLINED_FUNCTION_23_17();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v83, v84, v85, v86, v87);
        v2 = v130;
        if (dword_1ED844630)
        {
          OUTLINED_FUNCTION_56_11();
          v88 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
          v89 = OUTLINED_FUNCTION_120_2(v88);
          if (OUTLINED_FUNCTION_5_24(v89))
          {
            *v136 = 136315394;
            OUTLINED_FUNCTION_26_15();
            *&v136[14] = array2;
            OUTLINED_FUNCTION_23_17();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0(v90, v91, v92, v93, v94);
          v2 = v130;
          if (dword_1ED844630)
          {
            OUTLINED_FUNCTION_56_11();
            v95 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
            v96 = OUTLINED_FUNCTION_120_2(v95);
            if (OUTLINED_FUNCTION_5_24(v96))
            {
              *v136 = 136315394;
              OUTLINED_FUNCTION_26_15();
              *&v136[14] = array3;
              OUTLINED_FUNCTION_23_17();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_13_0(v97, v98, v99, v100, v101);
            v2 = v130;
          }
        }
      }
    }

    if (v73)
    {
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_56_11();
        v102 = OUTLINED_FUNCTION_50_13(qword_1ED844628);
        v103 = os_log_type_enabled(v102, type);
        if (OUTLINED_FUNCTION_5_24(v103))
        {
          *v136 = 136315138;
          *&v136[4] = "[BWFigCaptureDeviceVendor _updateCMIOExtensionDevices]";
          OUTLINED_FUNCTION_23_17();
          OUTLINED_FUNCTION_58_1(v104, v105, block, v106, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0(v107, v108, v109, v110, v111);
        v2 = v130;
      }

      v112 = *(v2 + 80);
      v131 = MEMORY[0x1E69E9820];
      v132 = 3221225472;
      v133 = __55__BWFigCaptureDeviceVendor__updateCMIOExtensionDevices__block_invoke;
      v134 = &unk_1E798F870;
      v135 = v2;
      dispatch_async(v112, &v131);
    }

    OUTLINED_FUNCTION_128_0();
  }
}

void __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:0x1F21702D0] || !*(a1 + 32))
  {
    goto LABEL_2;
  }

  [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  if (v2)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v10, v11, v12, v13, v14, v15, v16);
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_12(v6))
    {
      OUTLINED_FUNCTION_91_7();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_58_1(v7, v8, &v16 + 3, v9, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_2;
  }

  if (!*(a1 + 32))
  {
LABEL_2:
    OUTLINED_FUNCTION_98();
    return;
  }

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_98();

  [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
}

- (void)_setupDeviceCloseTimerForDevice:(uint64_t)device
{
  if (device && (FigCaptureIsDebuggerOrSlowAllocationPathEnabled() & 1) == 0)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v29);
    }

    v4 = [*(device + 24) objectForKeyedSubscript:a2];
    if (objc_msgSend_isEqualToString_([objc_msgSend(v4 "device")]))
    {
      if (![v4 deviceCloseTimer] || dispatch_source_testcancel(objc_msgSend(v4, "deviceCloseTimer")))
      {
        if (dword_1ED844630)
        {
          v16 = OUTLINED_FUNCTION_86_5();
          if (os_log_type_enabled(v16, v37))
          {
            v17 = v38;
          }

          else
          {
            v17 = v38 & 0xFFFFFFFE;
          }

          if (v17)
          {
            v32 = 136315394;
            v33 = "[BWFigCaptureDeviceVendor _setupDeviceCloseTimerForDevice:]";
            v34 = 2048;
            device = [v4 device];
            OUTLINED_FUNCTION_34_16();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_141(v18, v19, v20, v21, v22);
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0(v23, v24, v25, v26, v27);
        }

        v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(device + 56));
        [v4 setDeviceCloseTimer:v28];
        [BWFigCaptureDeviceVendor _resetDeviceCloseTimerForDevice:device];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke;
        handler[3] = &unk_1E798FE78;
        handler[4] = v4;
        handler[5] = device;
        handler[6] = a2;
        handler[7] = v28;
        dispatch_source_set_event_handler(v28, handler);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke_296;
        v30[3] = &unk_1E798F898;
        v30[4] = v4;
        v30[5] = v28;
        dispatch_source_set_cancel_handler(v28, v30);
        dispatch_resume(v28);
        dispatch_release(v28);
      }

      else if (dword_1ED844630)
      {
        v5 = OUTLINED_FUNCTION_86_5();
        os_log_type_enabled(v5, v37);
        OUTLINED_FUNCTION_39_7();
        if (v7)
        {
          v8 = v6;
        }

        else
        {
          v8 = v38;
        }

        if (v8)
        {
          v32 = 136315394;
          v33 = "[BWFigCaptureDeviceVendor _setupDeviceCloseTimerForDevice:]";
          v34 = 2048;
          device = [v4 device];
          OUTLINED_FUNCTION_34_16();
          OUTLINED_FUNCTION_58_1(v8, v9, v36, v10, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8(v11, v12, v13, v14, v15);
      }
    }
  }
}

- (void)_resetDeviceCloseTimerForDevice:(uint64_t)device
{
  if (device)
  {
    if (!OUTLINED_FUNCTION_59_9(device))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v19);
    }

    if ((FigCaptureIsDebuggerOrSlowAllocationPathEnabled() & 1) == 0)
    {
      v3 = [*(v2 + 24) objectForKeyedSubscript:v1];
      if ([v3 deviceCloseTimer])
      {
        v4 = (*(v2 + 72) * 1000000000.0);
        if (dword_1ED844630)
        {
          OUTLINED_FUNCTION_112();
          v5 = OUTLINED_FUNCTION_77(qword_1ED844628);
          if (os_log_type_enabled(v5, v20))
          {
            v6 = v21;
          }

          else
          {
            v6 = v21 & 0xFFFFFFFE;
          }

          if (v6)
          {
            [v3 device];
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_141(v7, v8, v9, v10, v11);
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0(v12, v13, v14, v15, v16);
        }

        [v3 deviceCloseTimer];
        dispatch_time(0, v4);
        v17 = OUTLINED_FUNCTION_3_30();
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }
  }
}

- (void)_removeRegisteredDeviceClientWithClientID:(void *)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4(result))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v5);
    }

    OUTLINED_FUNCTION_8_7();
    v7 = 3221225472;
    v8 = __70__BWFigCaptureDeviceVendor__removeRegisteredDeviceClientWithClientID___block_invoke;
    v9 = &__block_descriptor_36_e41_B32__0__BWFigCaptureDeviceClient_8Q16_B24l;
    v10 = a2;
    result = [v4 indexOfObjectPassingTest:v6];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return [*(v2 + 32) removeObjectAtIndex:result];
    }
  }

  return result;
}

- (void)_removeVictimizedDeviceClientWithClientID:(void *)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4(result))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v5);
    }

    OUTLINED_FUNCTION_8_7();
    v7 = 3221225472;
    v8 = __70__BWFigCaptureDeviceVendor__removeVictimizedDeviceClientWithClientID___block_invoke;
    v9 = &__block_descriptor_36_e41_B32__0__BWFigCaptureDeviceClient_8Q16_B24l;
    v10 = a2;
    result = [v4 indexOfObjectPassingTest:v6];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return [*(v2 + 48) removeObjectAtIndex:result];
    }
  }

  return result;
}

void __98__BWFigCaptureDeviceVendor_copyDeviceWithID_forClient_informClientWhenDeviceAvailableAgain_error___block_invoke()
{
  OUTLINED_FUNCTION_84();
  v1 = v0;
  v3 = v2;
  v4 = [*(*(v2 + 32) + 24) objectForKeyedSubscript:*(v2 + 40)];
  v5 = [v4 device];
  v6 = [v4 deviceUsageCount];
  v186 = [MEMORY[0x1E695DF70] array];
  v7 = [v4 deviceCloseTimer];
  v8 = [(BWFigCaptureDeviceVendor *)*(v3 + 32) _registeredDeviceClientWithID:?];
  if (!v8)
  {
    if (*(v3 + 96) < sNextClientID)
    {
      OUTLINED_FUNCTION_5_21();
      *(v9 + 24) = -12785;
    }

    goto LABEL_95;
  }

  v10 = v8;
  if ([OUTLINED_FUNCTION_53_9() containsObject:v8] && objc_msgSend(v4, "device") && objc_msgSend(v10, "clientType") == 1)
  {
    OUTLINED_FUNCTION_93_2([v4 device], *(v3 + 56));
    goto LABEL_95;
  }

  v177 = v1;
  source = v7;
  v11 = v4;
  HIDWORD(v180) = v6;
  v179 = v5;
  v12 = [OUTLINED_FUNCTION_53_9() count];
  v183 = [(BWFigCaptureDeviceVendor *)*(v3 + 32) _deviceCanBeSharedWithClient:v10];
  v184 = v10;
  v13 = [OUTLINED_FUNCTION_53_9() containsObject:v10];
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v14 = *(*(v3 + 32) + 40);
  v15 = OUTLINED_FUNCTION_123_3();
  if (v15)
  {
    v17 = v15;
    v16 = 0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        OUTLINED_FUNCTION_89();
        if (!v99)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v201 + 1) + 8 * i);
        if (v16 <= [v19 clientPriority])
        {
          v16 = [v19 clientPriority];
        }
      }

      v17 = OUTLINED_FUNCTION_123_3();
    }

    while (v17);
  }

  else
  {
    v16 = 0;
  }

  v20 = v184;
  v21 = [v184 canStealFromClientsWithSamePriority];
  v22 = [v184 clientPriority];
  if (v21)
  {
    v23 = v22 >= v16;
  }

  else
  {
    v23 = v22 > v16;
  }

  if (!((v12 == 0) | v13 & 1) && !(v183 | v23))
  {
    v6 = HIDWORD(v180);
    v4 = v11;
    if (*(v3 + 100) == 1)
    {
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_52_12();
        v24 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
        if (OUTLINED_FUNCTION_87_4(v24))
        {
          v25 = v200[0];
        }

        else
        {
          v25 = v200[0] & 0xFFFFFFFE;
        }

        if (v25)
        {
          v43 = [v11 device];
          [OUTLINED_FUNCTION_53_9() componentsJoinedByString:{@", "}];
          OUTLINED_FUNCTION_92_3(4.8153e-34);
          *(v44 + 4) = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
          v193 = 2048;
          *(v44 + 14) = v43;
          HIWORD(v196) = 2114;
          v197 = v45;
          LOWORD(v198) = 2114;
          *(v44 + 34) = v184;
          OUTLINED_FUNCTION_19_22();
          OUTLINED_FUNCTION_58_1(v25, v46, v199, v47, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v48, v49, v50, v51, v52);
      }

      OUTLINED_FUNCTION_5_21();
      *(v53 + 24) = -12681;
      [(BWFigCaptureDeviceVendor *)*(v3 + 32) _removeDeviceClient:v184 moveToVictimizedList:1];
    }

    else
    {
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_52_12();
        v29 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
        if (OUTLINED_FUNCTION_87_4(v29))
        {
          v30 = v200[0];
        }

        else
        {
          v30 = v200[0] & 0xFFFFFFFE;
        }

        if (v30)
        {
          [v11 device];
          v192[0] = 136315906;
          OUTLINED_FUNCTION_108_2();
          v193 = v54;
          *(v56 + 14) = v55;
          HIWORD(v196) = 2114;
          v197 = v57;
          LOWORD(v198) = 2114;
          *(v56 + 34) = v184;
          OUTLINED_FUNCTION_19_22();
          OUTLINED_FUNCTION_58_1(v30, v58, v199, v59, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v60, v61, v62, v63, v64);
      }

      [*(*(v3 + 32) + 32) removeObject:v184];
    }

LABEL_68:
    v5 = v179;
    goto LABEL_95;
  }

  v6 = HIDWORD(v180);
  v4 = v11;
  if (!v11)
  {
    v26 = *(v3 + 32);
    [v184 pid];
    if (v26)
    {
      OUTLINED_FUNCTION_82();
      [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
    }

    OUTLINED_FUNCTION_5_21();
    *(v28 + 24) = v27;
    v4 = [*(*(v3 + 32) + 24) objectForKeyedSubscript:*(v3 + 40)];
    if (!v4)
    {
      goto LABEL_68;
    }
  }

  if (v12)
  {
    if (v183)
    {
      v5 = v179;
      if (dword_1ED844630)
      {
        v31 = v4;
        OUTLINED_FUNCTION_52_12();
        v32 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
        OUTLINED_FUNCTION_66_6(v32);
        OUTLINED_FUNCTION_39_7();
        if (v99)
        {
          v34 = v33;
        }

        else
        {
          v34 = v12;
        }

        if (v34)
        {
          [v31 device];
          OUTLINED_FUNCTION_92_3(4.8152e-34);
          OUTLINED_FUNCTION_15_27(v87, "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke");
          OUTLINED_FUNCTION_58_1(v34, v88, v199, v89, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8(v90, v91, v92, v93, v94);
        v4 = v31;
      }

      [OUTLINED_FUNCTION_53_9() addObject:v184];
      goto LABEL_91;
    }

    if ([OUTLINED_FUNCTION_53_9() containsObject:v184])
    {
      v5 = v179;
      if (dword_1ED844630)
      {
        v39 = v4;
        OUTLINED_FUNCTION_52_12();
        v40 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
        OUTLINED_FUNCTION_66_6(v40);
        OUTLINED_FUNCTION_39_7();
        if (v99)
        {
          v42 = v41;
        }

        else
        {
          v42 = v12;
        }

        if (v42)
        {
          [v39 device];
          OUTLINED_FUNCTION_92_3(4.8152e-34);
          OUTLINED_FUNCTION_15_27(v113, "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke");
          OUTLINED_FUNCTION_58_1(v42, v114, v199, v115, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8(v116, v117, v118, v119, v120);
        v4 = v39;
      }

      goto LABEL_72;
    }

    if (!v23)
    {
      v5 = v179;
      goto LABEL_72;
    }

    if (dword_1ED844630)
    {
      OUTLINED_FUNCTION_52_12();
      v76 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
      if (OUTLINED_FUNCTION_87_4(v76))
      {
        v77 = v200[0];
      }

      else
      {
        v77 = v200[0] & 0xFFFFFFFE;
      }

      if (v77)
      {
        [v4 device];
        v192[0] = 136315906;
        OUTLINED_FUNCTION_108_2();
        v193 = v121;
        *(v123 + 14) = v122;
        HIWORD(v196) = 2112;
        v197 = v124;
        LOWORD(v198) = 2112;
        *(v123 + 34) = v184;
        OUTLINED_FUNCTION_19_22();
        OUTLINED_FUNCTION_58_1(v77, v125, v199, v126, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_93_2([v184 applicationID], *(v3 + 64));
    v176 = mach_absolute_time();
    v127 = [MEMORY[0x1E695DF70] array];
    *v190 = 0u;
    v191 = 0u;
    *v188 = 0u;
    v189 = 0u;
    v128 = [*(*(v3 + 32) + 24) allKeys];
    v129 = [v128 countByEnumeratingWithState:v188 objects:v187 count:16];
    if (v129)
    {
      v131 = v129;
      v181 = 0;
      v130 = 0;
      v132 = *v189;
      v185 = v127;
      do
      {
        v133 = 0;
        do
        {
          if (*v189 != v132)
          {
            objc_enumerationMutation(v128);
          }

          v134 = *(v188[1] + 8 * v133);
          v135 = [*(*(v3 + 32) + 24) objectForKeyedSubscript:v134];
          v136 = [v135 deviceUsageCount];
          if (v136 >= 1)
          {
            v136 = [v135 inUseForPublishing];
            if ((v136 & 1) == 0)
            {
              if ([v135 deviceUsageCount] != 1 || (v136 = objc_msgSend(v135, "inUseForVibeMitigation"), (v136 & 1) == 0))
              {
                if (objc_msgSend_isEqualToString_(v134))
                {
                  isEqualToString = objc_msgSend_isEqualToString_(*(v3 + 40));
                  v139 = [v184 canShareWithFlashlightAndVibeMitigation] & isEqualToString;
                  if (isEqualToString)
                  {
                    v140 = [objc_msgSend(*(*(v3 + 32) + 24) objectForKeyedSubscript:{0x1F21702D0), "figCaptureDevice"}];
                    if (v140)
                    {
                      v181 = CFRetain(v140);
                    }

                    else
                    {
                      v181 = 0;
                    }

                    v127 = v185;
                  }

                  else
                  {
                    v127 = v185;
                  }
                }

                else
                {
                  [v184 canShareWithFlashlightAndVibeMitigation];
                  LOBYTE(v139) = 0;
                }

                [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
                v136 = [v127 addObject:v134];
                v130 |= v139;
              }
            }
          }

          ++v133;
        }

        while (v131 != v133);
        v141 = OUTLINED_FUNCTION_52(v136, v137, v188, v187);
        v131 = v141;
      }

      while (v141);
    }

    else
    {
      v181 = 0;
      v130 = 0;
    }

    if ([v127 containsObject:*(v3 + 40)])
    {
      [v184 pid];
      OUTLINED_FUNCTION_82();
      [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
      OUTLINED_FUNCTION_5_21();
      *(v143 + 24) = v142;
    }

    mach_absolute_time();
    v144 = FigHostTimeToNanoseconds();
    if (dword_1ED844630)
    {
      v145 = v144;
      OUTLINED_FUNCTION_52_12();
      v146 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
      v147 = v200[0];
      if (OUTLINED_FUNCTION_87_4(v146))
      {
        v148 = v147;
      }

      else
      {
        v148 = v147 & 0xFFFFFFFE;
      }

      if (v148)
      {
        v192[0] = 136315650;
        *&v192[1] = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
        v193 = 1024;
        v194 = v145 / 1000000;
        v195 = 1024;
        v196 = v181 != 0;
        OUTLINED_FUNCTION_19_22();
        OUTLINED_FUNCTION_58_1(v149, v150, v199, v151, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v181)
    {
      CFRelease(v181);
    }

    v182 = [*(*(v3 + 32) + 24) objectForKeyedSubscript:*(v3 + 40)];
    [*(*(*(v3 + 72) + 8) + 40) addObjectsFromArray:*(*(v3 + 32) + 40)];
    v152 = *(*(*(v3 + 72) + 8) + 40);
    OUTLINED_FUNCTION_86_0();
    v157 = OUTLINED_FUNCTION_52(v153, v154, v155, v156);
    if (v157)
    {
      v158 = v157;
      v159 = MEMORY[0];
      do
      {
        v160 = 0;
        do
        {
          if (MEMORY[0] != v159)
          {
            objc_enumerationMutation(v152);
          }

          v161 = *(8 * v160);
          if ((v130 & 1) != 0 && [*(8 * v160) clientType] == 1)
          {
            if (dword_1ED844630)
            {
              OUTLINED_FUNCTION_52_12();
              v162 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
              v163 = os_log_type_enabled(v162, v199[128]);
              if (OUTLINED_FUNCTION_5_2(v163))
              {
                v192[0] = 136315138;
                *&v192[1] = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
                OUTLINED_FUNCTION_19_22();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_16_1(v164, v165, v166, v167, v168);
            }

            [v186 addObject:v161];
          }

          else
          {
            [(BWFigCaptureDeviceVendor *)*(v3 + 32) _removeActiveDeviceClient:v161 moveToVictimizedList:1];
          }

          ++v160;
        }

        while (v158 != v160);
        OUTLINED_FUNCTION_86_0();
        v173 = OUTLINED_FUNCTION_52(v169, v170, v171, v172);
        v158 = v173;
      }

      while (v173);
    }

    v5 = v179;
    v6 = HIDWORD(v180);
    v20 = v184;
    v4 = v182;
    if (!v182)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v174, v175, v176, v177, source, v179, v180, 0);
      goto LABEL_95;
    }
  }

  else if (dword_1ED844630)
  {
    v35 = v4;
    OUTLINED_FUNCTION_52_12();
    v36 = OUTLINED_FUNCTION_47_11(qword_1ED844628);
    OUTLINED_FUNCTION_66_6(v36);
    OUTLINED_FUNCTION_39_7();
    if (v99)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v5 = v179;
    if (v38)
    {
      [v35 device];
      OUTLINED_FUNCTION_92_3(4.8152e-34);
      OUTLINED_FUNCTION_15_27(v65, "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke");
      OUTLINED_FUNCTION_58_1(v38, v66, v199, v67, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v68, v69, v70, v71, v72);
    v4 = v35;
  }

  else
  {
    v5 = v179;
  }

  [OUTLINED_FUNCTION_53_9() addObject:v20];
  if ((v183 & 1) == 0)
  {
LABEL_72:
    if ([objc_msgSend(v4 "controlledStreams")])
    {
      OUTLINED_FUNCTION_52_12();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = v200[0];
      if (OUTLINED_FUNCTION_87_4(os_log_and_send_and_compose_flags_and_os_log_type))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (v75)
      {
        [objc_msgSend(v4 "controlledStreams")];
        OUTLINED_FUNCTION_92_3(4.8151e-34);
        *(v78 + 4) = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
        v193 = 2112;
        *(v78 + 14) = v79;
        OUTLINED_FUNCTION_19_22();
        OUTLINED_FUNCTION_58_1(v75, v80, v199, v81, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_13_0(v82, v83, v84, v85, v86);
    }

    [(BWFigCaptureDeviceVendor *)*(v3 + 32) _relinquishControlOfStreamsForDevice:?];
  }

LABEL_91:
  OUTLINED_FUNCTION_93_2([v4 device], *(v3 + 56));
  [v4 setDeviceUsageCount:{objc_msgSend(v4, "deviceUsageCount") + objc_msgSend(v186, "count") + 1}];
  v95 = [objc_msgSend(v4 "device")];
  v96 = *off_1E7989FE8;
  if ([v95 objectForKeyedSubscript:*off_1E7989FE8])
  {
    v97 = [v4 device];
    [v97 setProperty:v96 value:MEMORY[0x1E695E118]];
  }

  if (source)
  {
    dispatch_source_cancel(source);
  }

LABEL_95:
  [(BWFigCaptureDeviceVendor *)*(v3 + 32) _dumpInventory];
  v98 = [v4 device];
  v99 = v6 == [v4 deviceUsageCount] && v5 == v98;
  if (!v99)
  {
    *(*(*(v3 + 80) + 8) + 24) = 1;
  }

  *(*(*(v3 + 88) + 8) + 24) = [OUTLINED_FUNCTION_53_9() count] != 0;
  v100 = *(*(v3 + 32) + 40);
  OUTLINED_FUNCTION_85();
  v105 = OUTLINED_FUNCTION_37(v101, v102, v103, v104);
  if (v105)
  {
    v106 = v105;
    v107 = MEMORY[0];
    do
    {
      for (j = 0; j != v106; ++j)
      {
        if (MEMORY[0] != v107)
        {
          objc_enumerationMutation(v100);
        }

        *(*(*(v3 + 88) + 8) + 24) &= [*(8 * j) canShareWithFlashlightAndVibeMitigation];
      }

      OUTLINED_FUNCTION_85();
      v106 = OUTLINED_FUNCTION_37(v109, v110, v111, v112);
    }

    while (v106);
  }

  OUTLINED_FUNCTION_81();
}

- (void)_registeredDeviceClientWithID:(void *)result
{
  if (result)
  {
    v4 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v20);
    }

    v5 = OUTLINED_FUNCTION_43_13();
    v6 = v4[4];
    result = OUTLINED_FUNCTION_33_14(v7, v8, v21, v9, v10, v11, v12, v5);
    if (result)
    {
      OUTLINED_FUNCTION_81_4();
      while (1)
      {
        OUTLINED_FUNCTION_21_20();
        if (!v13)
        {
          objc_enumerationMutation(v6);
        }

        if ([OUTLINED_FUNCTION_75_6(v22) clientID] == a2)
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v13)
        {
          result = OUTLINED_FUNCTION_33_14(v14, v15, v21, v16, v17, v18, v19);
          if (!result)
          {
            return result;
          }
        }
      }

      return v2;
    }
  }

  return result;
}

- (void)_removeDeviceClient:(int)client moveToVictimizedList:
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    result = _FigIsCurrentDispatchQueue();
    if (result)
    {
      if (!v3)
      {
        return result;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3(v13);
      if (!v3)
      {
        return result;
      }
    }

    result = [*(v4 + 32) removeObject:v3];
    if (client)
    {
      result = [v3 deviceAvailabilityChangedHandler];
      if (result)
      {
        if ([v3 clientType] == 2 && objc_msgSend(v3, "clientPriority") <= 3)
        {
          reverseObjectEnumerator = [*(v4 + 48) reverseObjectEnumerator];
          if (![reverseObjectEnumerator countByEnumeratingWithState:v15 objects:v14 count:16])
          {
            return [*(v4 + 48) addObject:v3];
          }

          while (1)
          {
            OUTLINED_FUNCTION_89();
            if (!v7)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v8 = *v16;
            if (![*v16 clientType])
            {
              break;
            }

            OUTLINED_FUNCTION_95_6();
            if (v7 && !OUTLINED_FUNCTION_64(v9, v10, v15, v14))
            {
              return [*(v4 + 48) addObject:v3];
            }
          }

          v12 = [*(v4 + 48) indexOfObject:v8];
          if (v12 == -1)
          {
            return [*(v4 + 48) addObject:v3];
          }

          else
          {
            return [*(v4 + 48) insertObject:v3 atIndex:v12];
          }
        }

        else
        {
          v11 = *(v4 + 48);

          return [v11 addObject:v3];
        }
      }
    }
  }

  return result;
}

- (void)_invalidate:keepFigCaptureDeviceAlive:preserveTorchState:
{
  OUTLINED_FUNCTION_84();
  if (v0)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = v0;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v52);
    }

    v8 = [*(v7 + 24) objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;
      if (dword_1ED844630)
      {
        v104[0] = 0;
        v103 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_39_7();
        if (v12)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v99 = 136315394;
          v100 = "[BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:]";
          v101 = 2048;
          device = [v9 device];
          OUTLINED_FUNCTION_34_16();
          v53 = &v99;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8(v14, v15, v16, v17, v18);
      }

      v65 = v6;
      isEqualToString = objc_msgSend_isEqualToString_(v6, v53);
      v27 = 152;
      if (isEqualToString)
      {
        v27 = 144;
      }

      v28 = v7;
      v29 = *(v7 + v27);
      v30 = OUTLINED_FUNCTION_117_4(isEqualToString, v20, v21, v22, v23, v24, v25, v26, v54, v56, v58, 0x1F21702D0, __SPAIR64__(v5, v4), v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
      if (v30)
      {
        v31 = v30;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            OUTLINED_FUNCTION_89();
            if (!v12)
            {
              objc_enumerationMutation(v29);
            }

            v33 = [*(8 * i) objectForKeyedSubscript:@"Description"];
            [objc_msgSend(v9 "device")];
            v34 = objc_msgSend_isEqualToString_(v33);
            if (v34)
            {
              [*(v28 + 160) stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
              v34 = [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
            }
          }

          v31 = OUTLINED_FUNCTION_117_4(v34, v35, v36, v37, v38, v39, v40, v41, v55, v57, v59, v61, v63, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
        }

        while (v31);
      }

      [v9 device];
      [BWFigCaptureDeviceVendor _unregisterForDeviceNotifications:v28];
      device2 = [v9 device];
      if ((v63 & 0x100000000) != 0)
      {
        [(BWFigCaptureDeviceVendor *)v28 _setLowMemoryModeEnabledOnDevice:device2];
        [objc_msgSend(v9 "device")];
        [objc_msgSend(v9 "device")];
        v43 = OUTLINED_FUNCTION_3_30();
        [(BWFigCaptureDeviceVendor *)v43 _relinquishControlOfStreamsForDevice:v44];
      }

      else
      {
        [device2 deviceID];
        v45 = OUTLINED_FUNCTION_3_30();
        [(BWFigCaptureDeviceVendor *)v45 _relinquishControlOfStreamsForDevice:v46];
        [v9 device];
        v47 = OUTLINED_FUNCTION_3_30();
        [(BWFigCaptureDeviceVendor *)v47 _setLowMemoryModeEnabledOnDevice:v48];
        [objc_msgSend(v9 "device")];
      }

      if ([v9 deviceCloseTimer])
      {
        dispatch_source_cancel([v9 deviceCloseTimer]);
      }

      [*(v28 + 24) setObject:0 forKeyedSubscript:v66];
      if ((v63 & 0x100000000) == 0)
      {
        v49 = OUTLINED_FUNCTION_40();
        if (objc_msgSend_isEqualToString_(v49))
        {

          *(v28 + 88) = 0;
          [(BWFigCaptureDeviceVendor *)v28 _releasePowerAssertion];
        }
      }

      v50 = OUTLINED_FUNCTION_40();
      if (objc_msgSend_isEqualToString_(v50))
      {
        v51 = *(v28 + 64);
        if (v51)
        {
          dispatch_source_cancel(v51);
          dispatch_release(*(v28 + 64));
          *(v28 + 64) = 0;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v53, v56, v58, v60, v62, v64, v67, v69);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_createDevice:reason:clientPID:figCaptureDevice:
{
  OUTLINED_FUNCTION_84();
  v4 = v3;
  cf = v2;
  if (v3)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
    if (!IsCurrentDispatchQueue)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      IsCurrentDispatchQueue = FigDebugAssert3(v211);
    }

    _takePowerAssertion = OUTLINED_FUNCTION_98_6(IsCurrentDispatchQueue, v9);
    if (_takePowerAssertion)
    {
      if (v6 <= 0)
      {
        getpid();
      }

      _takePowerAssertion = FigOSTransactionCreate();
      v12 = _takePowerAssertion;
      v13 = v4[11];
      if (v13)
      {
        if (!v5)
        {
          OUTLINED_FUNCTION_4_60();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v83 = OUTLINED_FUNCTION_67_7(os_log_and_send_and_compose_flags_and_os_log_type);
          if (OUTLINED_FUNCTION_6(v83))
          {
            v84 = v4[11];
            v231[0] = 136315394;
            *&v231[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
            v232 = 2112;
            v233 = v84;
            OUTLINED_FUNCTION_14_28();
            OUTLINED_FUNCTION_58_1(v85, v86, &v238, v87, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_17_8(v88, v89, v90, v91, v92);
          [(BWFigCaptureDeviceVendor *)v4 _showISPLeftOnTapToRadarPromptIfNecessary:?];
          v13 = v4[11];
        }

        v5 = cf;
      }

      v4[11] = v12;
      if (!v5)
      {
        _takePowerAssertion = [(BWFigCaptureDeviceVendor *)v4 _takePowerAssertion];
      }
    }

    v14 = OUTLINED_FUNCTION_98_6(_takePowerAssertion, v11);
    v225 = v4;
    if (v14)
    {
      v16 = v4;
      v17 = v4[1];
      if (v16[8])
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        OUTLINED_FUNCTION_4_60();
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = OUTLINED_FUNCTION_67_7(v19);
        if (OUTLINED_FUNCTION_6(v20))
        {
          OUTLINED_FUNCTION_90_5(4.8149e-34);
          OUTLINED_FUNCTION_7_49(v21);
          OUTLINED_FUNCTION_58_1(v22, v23, &v238, v24, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_8_1();
        v31 = OUTLINED_FUNCTION_17_8(v26, v27, v28, v29, v30);
        LOWORD(v238) = 0;
        v35 = OUTLINED_FUNCTION_6_0(v31, v32, v33, v34, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        OUTLINED_FUNCTION_11();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v35, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 2943, @"LastShownDate:BWFigCaptureDeviceVendor.m:2943", @"LastShownBuild:BWFigCaptureDeviceVendor.m:2943", &v238);
        free(v35);
        dispatch_source_cancel(v16[8]);
        dispatch_release(v16[8]);
        v16[8] = 0;
      }

      v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v16[7]);
      v37 = dispatch_time(0, 30000000000);
      dispatch_source_set_timer(v36, v37, 0x6FC23AC00uLL, 0x29A2241AF62C0000uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __76__BWFigCaptureDeviceVendor__createDevice_reason_clientPID_figCaptureDevice___block_invoke;
      handler[3] = &unk_1E798F870;
      handler[4] = v16;
      dispatch_source_set_event_handler(v36, handler);
      v16[8] = v36;
      dispatch_activate(v36);
      v25 = @"com.apple.CMCapture";
    }

    else
    {
      v17 = v4[2];
      v25 = v7;
    }

    if (v17)
    {
      if (OUTLINED_FUNCTION_98_6(v14, v15))
      {
        mach_absolute_time();
        if (*MEMORY[0x1E695FF58])
        {
          v38 = fig_log_handle();
          if (os_signpost_enabled(v38))
          {
            LOWORD(v238) = 0;
            OUTLINED_FUNCTION_55_11();
            _os_signpost_emit_with_name_impl(v39, v38, OS_SIGNPOST_INTERVAL_BEGIN, v40, v41, v42, v43, 2u);
          }
        }
      }

      v224 = cf;
      if (cf)
      {
        if (dword_1ED844630)
        {
          OUTLINED_FUNCTION_4_60();
          v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v45 = OUTLINED_FUNCTION_30_8(v44);
          if (OUTLINED_FUNCTION_5_2(v45))
          {
            v231[0] = 136315394;
            OUTLINED_FUNCTION_108_2();
            v232 = v46;
            *(v48 + 14) = v47;
            OUTLINED_FUNCTION_14_28();
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_16_1(v55, v56, v57, v58, v59);
        }

LABEL_49:
        v104 = [BWFigCaptureDevice alloc];
        v105 = [(BWFigCaptureDevice *)v104 initWithFigCaptureDevice:cf deviceID:v7];
        v226 = v105;
        if (!v105)
        {
          OUTLINED_FUNCTION_4_60();
          v215 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v216 = OUTLINED_FUNCTION_30_8(v215);
          if (OUTLINED_FUNCTION_5_2(v216))
          {
            OUTLINED_FUNCTION_90_5(4.8149e-34);
            OUTLINED_FUNCTION_7_49(v217);
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_1_4();
          v183 = OUTLINED_FUNCTION_16_1(v218, v219, v220, v221, v222);
          v180 = 0;
          v196 = 0;
          v195 = 0;
          if (v224)
          {
            goto LABEL_136;
          }

          goto LABEL_131;
        }

        v106 = v105;
        v107 = 0x1E695D000uLL;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:objc_msgSend(v106 forKeyedSubscript:{"description"), @"Description"}];
        [dictionary setObject:objc_msgSend(v106 forKeyedSubscript:{"deviceID"), @"DeviceID"}];
        v109 = v225;
        [MEMORY[0x1E695DF00] date];
        v110 = [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_17() forKeyedSubscript:{"stringFromDate:"), @"CreationDate"}];
        v112 = OUTLINED_FUNCTION_98_6(v110, v111);
        v113 = 152;
        if (v112)
        {
          v113 = 144;
        }

        v114 = *(v225 + v113);
        if ([v114 count] >= 0xA)
        {
          if (v112)
          {
            firstObject = [v114 firstObject];
            if (![firstObject objectForKeyedSubscript:@"ReleaseDate"])
            {
              LODWORD(v240[0]) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v116 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v117 = os_log_type_enabled(v116, type[0]);
              if (OUTLINED_FUNCTION_31(v117))
              {
                v231[0] = 136315394;
                *&v231[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
                v232 = 2112;
                v233 = firstObject;
                OUTLINED_FUNCTION_14_28();
                OUTLINED_FUNCTION_4_4();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              OUTLINED_FUNCTION_56_0(v135, v136, v137, v138, v139);
              [(BWFigCaptureDeviceVendor *)v225 _showISPLeftOnTapToRadarPromptIfNecessary:?];
              v106 = v226;
              v107 = 0x1E695D000uLL;
            }

            [v114 removeObjectAtIndex:0];
            [v114 addObject:dictionary];
            goto LABEL_78;
          }

          v118 = [v114 count];
          v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
          OUTLINED_FUNCTION_86_0();
          v124 = OUTLINED_FUNCTION_37(v120, v121, v122, v123);
          if (v124)
          {
            v127 = v124;
            v128 = 0;
            do
            {
              for (i = 0; i != v127; ++i)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v130)
                {
                  objc_enumerationMutation(v114);
                }

                if ([OUTLINED_FUNCTION_75_6(0) objectForKeyedSubscript:@"ReleaseDate"])
                {
                  [v119 addObject:v118];
                  if (v128 == v118 - 10)
                  {
                    goto LABEL_58;
                  }

                  ++v128;
                }
              }

              OUTLINED_FUNCTION_86_0();
              v127 = OUTLINED_FUNCTION_37(v131, v132, v133, v134);
            }

            while (v127);
          }

LABEL_58:
          v107 = 0x1E695D000;
          if ([v119 count])
          {
            [OUTLINED_FUNCTION_40() removeObjectsInArray:?];
          }

          v109 = v225;
          v106 = v226;
        }

        [v114 addObject:dictionary];
        if (!v112)
        {
          [BWFigCaptureDeviceVendor _registerForDeviceNotifications:v109];
          goto LABEL_119;
        }

LABEL_78:
        v223 = v7;
        mach_absolute_time();
        *(v109 + 120) = (FigHostTimeToNanoseconds() / 1000 + 999) / 1000;
        if (*MEMORY[0x1E695FF58])
        {
          v140 = fig_log_handle();
          if (os_signpost_enabled(v140))
          {
            v141 = *(v109 + 120);
            v238 = 67240192;
            v239 = v141;
            OUTLINED_FUNCTION_55_11();
            _os_signpost_emit_with_name_impl(v142, v140, OS_SIGNPOST_INTERVAL_END, v143, v144, v145, v146, 8u);
          }
        }

        [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportISPCreateDuration:"reportISPCreateDuration:", *(v109 + 120)];
        [(BWFigCaptureDeviceVendor *)v109 _logISPStartupTimeToCoreAnalytics];
        [BWFigCaptureDeviceVendor _registerForDeviceNotifications:v109];
        v147 = objc_alloc_init(*(v107 + 3984));
        memset(v243, 0, 28);
        v242 = 0u;
        v241 = 1065353216;
        v243[0] = 1065353216;
        v243[5] = 1065353216;
        v148 = [MEMORY[0x1E695DEF0] dataWithBytes:&v241 length:48];
        memset(v240, 0, sizeof(v240));
        obj = [v106 streams];
        v149 = [obj countByEnumeratingWithState:v240 objects:&v238 count:16];
        if (v149)
        {
          v150 = v149;
          v151 = *off_1E798BD38;
          do
          {
            v152 = 0;
            v227 = v150;
            do
            {
              OUTLINED_FUNCTION_89();
              if (!v130)
              {
                objc_enumerationMutation(obj);
              }

              v153 = *(v240[1] + 8 * v152);
              if (![objc_msgSend(v153 "supportedProperties")])
              {
                v156 = v148;
                v236 = 0u;
                v237 = 0u;
                *type = 0u;
                v235 = 0u;
                synchronizedStreamsGroups = [v106 synchronizedStreamsGroups];
                v158 = [synchronizedStreamsGroups countByEnumeratingWithState:type objects:v231 count:16];
                if (v158)
                {
                  v159 = v158;
LABEL_92:
                  v160 = 0;
                  while (1)
                  {
                    OUTLINED_FUNCTION_89();
                    if (!v130)
                    {
                      objc_enumerationMutation(synchronizedStreamsGroups);
                    }

                    v161 = *(*&type[8] + 8 * v160);
                    v162 = [objc_msgSend(v161 "streams")];
                    if (v162)
                    {
                      break;
                    }

                    if (v159 == ++v160)
                    {
                      v159 = OUTLINED_FUNCTION_37(v162, v163, type, v231);
                      if (v159)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_101;
                    }
                  }

                  v164 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v153, 0}];
                  v165 = [[BWFigVideoCaptureSynchronizedStreamsGroup alloc] initWithSynchronizedStreamsGroup:v161 activeStreams:v164 readOnly:1 baseZoomFactorOverrides:0 clientBaseZoomFactorsByPortType:0 error:0];

                  if (!v165)
                  {
                    goto LABEL_101;
                  }

                  [v153 portType];
                  v166 = [OUTLINED_FUNCTION_4() cameraPoseMatrixForPortType:?];
                  v148 = v156;
LABEL_105:
                  v150 = v227;
                  goto LABEL_106;
                }

LABEL_101:
                if (objc_msgSend_isEqualToString_([v153 portType]))
                {
                  v165 = 0;
                  v148 = v156;
                  v166 = v156;
                  goto LABEL_105;
                }

                v148 = v156;
                if (objc_msgSend_isEqualToString_([v153 portType]))
                {
                  v165 = 0;
                  v166 = v156;
                  goto LABEL_105;
                }

                v165 = 0;
                v166 = v156;
                v150 = v227;
                if (objc_msgSend_isEqualToString_([v153 portType]))
                {
LABEL_106:
                  [v147 setObject:v166 forKeyedSubscript:{objc_msgSend(v153, "portType")}];
                }

                v106 = v226;
                goto LABEL_108;
              }

              v154 = [v153 getProperty:v151 error:0];
              v155 = v148;
              if (v154)
              {
                v155 = BWInvertRowMajorViewMatrixData(v154);
              }

              [v147 setObject:v155 forKeyedSubscript:{objc_msgSend(v153, "portType")}];
LABEL_108:
              ++v152;
            }

            while (v152 != v150);
            v167 = [obj countByEnumeratingWithState:v240 objects:&v238 count:16];
            v150 = v167;
          }

          while (v167);
        }

        v168 = [v147 copy];

        v109 = v225;
        v7 = v223;
        [*(v225 + 104) setObject:v168 forKeyedSubscript:v223];

        [(BWFigCaptureDeviceVendor *)v225 _updateDefaultDevicePriorStreamPortTypes:v106];
        if (FigCaptureCurrentProcessIsCameracaptured())
        {
          os_unfair_lock_lock((v225 + 112));
          v169 = *(v225 + 116);
          v170 = *(v225 + 117);
          os_unfair_lock_unlock((v225 + 112));
          if (v169)
          {
            if (v170)
            {
              goto LABEL_119;
            }
          }

          else
          {
            isRearCameraCalibration = [(BWFigCaptureDeviceVendor *)v225 _isRearCameraCalibrationValid];
            os_unfair_lock_lock((v225 + 112));
            *(v225 + 117) = isRearCameraCalibration;
            *(v225 + 116) = 1;
            os_unfair_lock_unlock((v225 + 112));
            global_queue = dispatch_get_global_queue(21, 0);
            dispatch_async(global_queue, &__block_literal_global_336);
            if (isRearCameraCalibration)
            {
              goto LABEL_119;
            }
          }

          LODWORD(v240[0]) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v171 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v172 = OUTLINED_FUNCTION_30_8(v171);
          if (OUTLINED_FUNCTION_5_2(v172))
          {
            OUTLINED_FUNCTION_90_5(4.8149e-34);
            OUTLINED_FUNCTION_7_49(v173);
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_16_1(v174, v175, v176, v177, v178);
          v106 = v226;
        }

LABEL_119:
        v179 = [BWFigCaptureDeviceVendorDeviceState alloc];
        v180 = [(BWFigCaptureDeviceVendorDeviceState *)v179 initWithDevice:v106 figCaptureDevice:cf];
        [*(v109 + 24) setObject:v180 forKeyedSubscript:v7];
        streams = [v106 streams];
        OUTLINED_FUNCTION_85();
        v183 = [v182 countByEnumeratingWithState:? objects:? count:?];
        if (v183)
        {
          v185 = v183;
          v186 = MEMORY[0];
          v187 = *off_1E798C218;
          v188 = *off_1E798BC98;
          do
          {
            v189 = 0;
            do
            {
              if (MEMORY[0] != v186)
              {
                objc_enumerationMutation(streams);
              }

              v190 = *(8 * v189);
              if ([objc_msgSend(v190 "supportedProperties")])
              {
                [(BWFigCaptureDeviceVendorDeviceState *)v180 portTypesToCheckForToFAFEstimator];
                [v190 portType];
                [OUTLINED_FUNCTION_36() addObject:?];
              }

              if ([objc_msgSend(v190 "supportedProperties")])
              {
                [(BWFigCaptureDeviceVendorDeviceState *)v180 portTypesToCheckForAFDriverShortStatistics];
                [v190 portType];
                [OUTLINED_FUNCTION_36() addObject:?];
              }

              ++v189;
            }

            while (v185 != v189);
            OUTLINED_FUNCTION_85();
            v183 = OUTLINED_FUNCTION_37(v191, v192, v193, v194);
            v185 = v183;
          }

          while (v183);
        }

        v195 = v226;
        if (v224)
        {
LABEL_133:
          v196 = v195;
          if (v180)
          {
LABEL_139:

            goto LABEL_140;
          }

          if (!OUTLINED_FUNCTION_98_6(v183, v184))
          {
            goto LABEL_137;
          }

LABEL_136:
          if (*MEMORY[0x1E695FF58])
          {
            v202 = fig_log_handle();
            if (os_signpost_enabled(v202))
            {
              LOWORD(v238) = 0;
              OUTLINED_FUNCTION_55_11();
              _os_signpost_emit_with_name_impl(v203, v202, OS_SIGNPOST_INTERVAL_END, v204, v205, v206, v207, 2u);
            }
          }

          *(v225 + 88) = 0;
          [(BWFigCaptureDeviceVendor *)v225 _releasePowerAssertion];
          v208 = *(v225 + 64);
          if (v208)
          {
            dispatch_source_cancel(v208);
            dispatch_release(*(v225 + 64));
            v180 = 0;
            *(v225 + 64) = 0;
          }

          else
          {
LABEL_137:
            v180 = 0;
          }

          v195 = v196;
          goto LABEL_139;
        }

LABEL_131:
        v183 = cf;
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_133;
      }

      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_4_60();
        v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v50 = OUTLINED_FUNCTION_67_7(v49);
        if (OUTLINED_FUNCTION_6(v50))
        {
          OUTLINED_FUNCTION_90_5(4.8149e-34);
          OUTLINED_FUNCTION_7_49(v51);
          OUTLINED_FUNCTION_58_1(v52, v53, &v238, v54, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8(v60, v61, v62, v63, v64);
      }

      v65 = v17(*MEMORY[0x1E695E480], v25, &cf);
      v67 = v65;
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_4_60();
        v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v69 = OUTLINED_FUNCTION_30_8(v68);
        if (OUTLINED_FUNCTION_5_2(v69))
        {
          v231[0] = 136315394;
          OUTLINED_FUNCTION_108_2();
          v232 = v70;
          *(v72 + 14) = v71;
          OUTLINED_FUNCTION_14_28();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_61_7();
        }

        OUTLINED_FUNCTION_2_4();
        v65 = OUTLINED_FUNCTION_16_1(v73, v74, v75, v76, v77);
      }

      if (v67 != -536870174)
      {
        if (!v67)
        {
          goto LABEL_49;
        }

        if (OUTLINED_FUNCTION_98_6(v65, v66))
        {
          IsCameracaptured = FigCaptureCurrentProcessIsCameracaptured();
          if (IsCameracaptured)
          {
            if ((FigCaptureIsRunningInVirtualization(IsCameracaptured, v79) & 1) == 0)
            {
              OUTLINED_FUNCTION_4_60();
              v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v81 = OUTLINED_FUNCTION_30_8(v80);
              if (OUTLINED_FUNCTION_5_2(v81))
              {
                v231[0] = 136315394;
                *&v231[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
                v232 = 1024;
                LODWORD(v233) = v67;
                OUTLINED_FUNCTION_14_28();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_61_7();
              }

              OUTLINED_FUNCTION_8_1();
              v98 = OUTLINED_FUNCTION_16_1(v93, v94, v95, v96, v97);
              v238 = 67109120;
              v239 = v67;
              v102 = OUTLINED_FUNCTION_6_0(v98, v99, v100, v101, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
              FigCaptureGetHxCameraNewBugsRadarComponent();
              OUTLINED_FUNCTION_11();
              FigCapturePleaseFileRadar(v103, v102, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 2994, @"LastShownDate:BWFigCaptureDeviceVendor.m:2994", @"LastShownBuild:BWFigCaptureDeviceVendor.m:2994", &v238);
              free(v102);
            }
          }
        }
      }

      OUTLINED_FUNCTION_4_60();
      v125 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v126 = OUTLINED_FUNCTION_30_8(v125);
      if (OUTLINED_FUNCTION_5_2(v126))
      {
        v231[0] = 136315394;
        *&v231[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
        v232 = 1024;
        LODWORD(v233) = v67;
        OUTLINED_FUNCTION_14_28();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_61_7();
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_60();
      v212 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v213 = OUTLINED_FUNCTION_30_8(v212);
      if (OUTLINED_FUNCTION_5_2(v213))
      {
        OUTLINED_FUNCTION_90_5(4.8149e-34);
        OUTLINED_FUNCTION_7_49(v214);
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_61_7();
      }
    }

    OUTLINED_FUNCTION_1_4();
    v183 = OUTLINED_FUNCTION_16_1(v197, v198, v199, v200, v201);
    v196 = 0;
    goto LABEL_136;
  }

LABEL_140:
  OUTLINED_FUNCTION_81();
}

- (void)_removeActiveDeviceClient:(int)client moveToVictimizedList:
{
  if (result)
  {
    v5 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v31);
    }

    v6 = a2;
    [OUTLINED_FUNCTION_7() removeObject:?];
    if (dword_1ED844630)
    {
      OUTLINED_FUNCTION_112();
      v7 = OUTLINED_FUNCTION_77(qword_1ED844628);
      v8 = OUTLINED_FUNCTION_15_1(v7);
      if (OUTLINED_FUNCTION_12(v8))
      {
        OUTLINED_FUNCTION_91_7();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_141(v9, v10, v11, v12, v13);
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v14, v15, v16, v17, v18);
      if (client && dword_1ED844630)
      {
        OUTLINED_FUNCTION_112();
        v19 = OUTLINED_FUNCTION_77(qword_1ED844628);
        v20 = OUTLINED_FUNCTION_15_1(v19);
        if (OUTLINED_FUNCTION_12(v20))
        {
          OUTLINED_FUNCTION_91_7();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_141(v21, v22, v23, v24, v25);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v26, v27, v28, v29, v30);
      }
    }

    return [(BWFigCaptureDeviceVendor *)v5 _removeDeviceClient:a2 moveToVictimizedList:client];
  }

  return result;
}

- (void)_relinquishControlOfStreamsForDevice:(void *)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4(result))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v23);
    }

    v4 = [*(v2 + 24) objectForKeyedSubscript:a2];
    if ([objc_msgSend(v4 "controlledStreams")] || (result = objc_msgSend(objc_msgSend(v4, "streamsControlledByOtherClients"), "count")) != 0)
    {
      controlledStreams = [v4 controlledStreams];
      v6 = [controlledStreams countByEnumeratingWithState:v26 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        do
        {
          v8 = 0;
          do
          {
            OUTLINED_FUNCTION_21_20();
            if (!v9)
            {
              objc_enumerationMutation(controlledStreams);
            }

            v10 = [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:v2];
            ++v8;
          }

          while (v7 != v8);
          v7 = OUTLINED_FUNCTION_64(v10, v11, v26, v25);
        }

        while (v7);
      }

      streamsControlledByOtherClients = [v4 streamsControlledByOtherClients];
      OUTLINED_FUNCTION_17_20();
      v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          v17 = 0;
          do
          {
            OUTLINED_FUNCTION_29_11();
            if (v18 != v16)
            {
              objc_enumerationMutation(streamsControlledByOtherClients);
            }

            [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:v2];
            ++v17;
          }

          while (v15 != v17);
          OUTLINED_FUNCTION_17_20();
          v15 = OUTLINED_FUNCTION_64(v19, v20, v21, v22);
        }

        while (v15);
      }

      [v4 device];
      [v4 controlledStreams];
      [OUTLINED_FUNCTION_17() relinquishControlOfStreams:?];
      [objc_msgSend(v4 "controlledStreams")];
      [objc_msgSend(v4 "streamsControlledByOtherClients")];
      [objc_msgSend(v4 "streamsToKeepControlled")];
      return [objc_msgSend(v4 "streamsInUse")];
    }
  }

  return result;
}

- (void)_deviceAvailabilityChangedForClients:(char)clients available:(int)available postNotifications:(int)notifications reason:(char)reason canShareWithFlashlight:(uint64_t)flashlight cameraStolenInterruptor:
{
  if (self)
  {
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_17_20();
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          OUTLINED_FUNCTION_29_11();
          if (v16 != v14)
          {
            objc_enumerationMutation(a2);
          }

          OUTLINED_FUNCTION_10_35();
          v26 = v17;
          v27 = &unk_1E7999618;
          v31 = 0;
          clientsCopy2 = clients;
          notificationsCopy2 = notifications;
          reasonCopy = 0;
          v28 = v18;
          flashlightCopy = flashlight;
          dispatch_async(v19, block);
          ++v15;
        }

        while (v13 != v15);
        OUTLINED_FUNCTION_17_20();
        v13 = [a2 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v13);
    }

    if (available)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      OUTLINED_FUNCTION_16_29();
      v26 = v20;
      v27 = &unk_1E7999618;
      v31 = 1;
      clientsCopy2 = clients;
      notificationsCopy2 = notifications;
      reasonCopy = reason;
      v28 = 0;
      flashlightCopy = 0;
      dispatch_async(v21, block);
    }
  }
}

- (uint64_t)_getGameModeEnabledOnDevice:(uint64_t)device
{
  if (!device)
  {
    return 0;
  }

  if (!OUTLINED_FUNCTION_79_4(device))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v4);
  }

  v2 = *(v1 + 176);
  if (!v2)
  {
    return 0;
  }

  return [v2 isGameModeEnabled];
}

- (void)_requestControlOfStreams:(uint64_t)streams device:deviceClientPriority:
{
  if (streams)
  {
    OUTLINED_FUNCTION_60();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    if (!OUTLINED_FUNCTION_79_4(v8))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v96);
    }

    if (([v5 invalidated] & 1) == 0)
    {
      if (dword_1ED844630)
      {
        v196 = 0;
        v195 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v11 = OUTLINED_FUNCTION_31(v10);
        if (v11)
        {
          v183 = 136315906;
          v184 = "[BWFigCaptureDeviceVendor _requestControlOfStreams:device:deviceClientPriority:]";
          v185 = 2112;
          v186 = v7;
          v187 = 2112;
          v188 = v5;
          v189 = 1024;
          v190 = v3;
          LODWORD(v100) = 38;
          v97 = &v183;
          OUTLINED_FUNCTION_58_1(v11, v12, v191, v13, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v14, v15, v16, v17, v18);
      }

      [v5 deviceID];
      v19 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      if (![v19 device] || objc_msgSend(v19, "device") == v5)
      {
        array = [MEMORY[0x1E695DF70] array];
        v21 = OUTLINED_FUNCTION_121_2();
        if (v21)
        {
          v22 = v21;
          v23 = MEMORY[0];
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (MEMORY[0] != v23)
              {
                objc_enumerationMutation(v7);
              }

              v25 = *(8 * i);
              v26 = [objc_msgSend(v19 "controlledStreams")];
              streamsInUse = array;
              if (v26)
              {
                [objc_msgSend(v19 "streamsToKeepControlled")];
                streamsInUse = [v19 streamsInUse];
              }

              [streamsInUse addObject:v25];
            }

            v22 = OUTLINED_FUNCTION_121_2();
          }

          while (v22);
        }

        if ([array count])
        {
          v28 = [v5 requestControlOfStreams:array clientPriority:v3];
          if (v28 == -12681)
          {
            v196 = 0;
            v195 = OS_LOG_TYPE_DEFAULT;
            v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v40 = os_log_type_enabled(v39, v195);
            if (OUTLINED_FUNCTION_12(v40))
            {
              v183 = 136315394;
              v184 = "[BWFigCaptureDeviceVendor _requestControlOfStreams:device:deviceClientPriority:]";
              v185 = 2112;
              v186 = array;
              OUTLINED_FUNCTION_34_16();
              v98 = &v183;
              OUTLINED_FUNCTION_13();
              OUTLINED_FUNCTION_141(v41, v42, v43, v44, v45);
            }

            OUTLINED_FUNCTION_1_4();
            OUTLINED_FUNCTION_39_0(v46, v47, v48, v49, v50);
            OUTLINED_FUNCTION_102_4();
            v55 = OUTLINED_FUNCTION_64(v51, v52, v53, v54);
            if (v55)
            {
              while (1)
              {
                OUTLINED_FUNCTION_89();
                if (!v33)
                {
                  objc_enumerationMutation(array);
                }

                v63 = MEMORY[0];
                if (([objc_msgSend(v19 streamsControlledByOtherClients] & 1) == 0)
                {
                  [objc_msgSend(v19 "streamsControlledByOtherClients")];
                  [BWFigCaptureDeviceVendor _registerForStreamNotifications:v1];
                }

                OUTLINED_FUNCTION_95_6();
                if (v33)
                {
                  OUTLINED_FUNCTION_102_4();
                  v55 = OUTLINED_FUNCTION_64(v64, v65, v66, v67);
                  if (!v55)
                  {
                    break;
                  }
                }
              }
            }

            v68 = OUTLINED_FUNCTION_35_14(v55, v56, v57, v58, v59, v60, v61, v62, v98, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181);
            if (v68)
            {
              v69 = v68;
              v70 = MEMORY[0];
              while (2)
              {
                for (j = 0; j != v69; ++j)
                {
                  if (MEMORY[0] != v70)
                  {
                    objc_enumerationMutation(array);
                  }

                  v72 = [objc_msgSend(v19 "portTypesAllowingStreamControlLoss")];
                  if (!v72)
                  {
                    v80 = [*(v1 + 40) copy];
                    OUTLINED_FUNCTION_54_8();
                    OUTLINED_FUNCTION_17_20();
                    if ([v81 countByEnumeratingWithState:? objects:? count:?])
                    {
                      OUTLINED_FUNCTION_57_9();
                      v83 = *v82;
                      do
                      {
                        v84 = 0;
                        do
                        {
                          OUTLINED_FUNCTION_29_11();
                          if (v85 != v83)
                          {
                            objc_enumerationMutation(v80);
                          }

                          v86 = *(v138 + 8 * v84);
                          clientType = [v86 clientType];
                          if (clientType != 1)
                          {
                            [(BWFigCaptureDeviceVendor *)v1 _removeActiveDeviceClient:v86 moveToVictimizedList:1];
                            v95 = *(v1 + 80);
                            v191[0] = MEMORY[0x1E69E9820];
                            v191[1] = 3221225472;
                            v191[2] = __145__BWFigCaptureDeviceVendor__deviceAvailabilityChangedForClient_available_postNotification_reason_canShareWithFlashlight_cameraStolenInterruptor___block_invoke;
                            v191[3] = &unk_1E7999618;
                            v193 = 1;
                            v192 = 0;
                            v194 = 1;
                            v191[4] = v86;
                            v191[5] = 0;
                            dispatch_async(v95, v191);
                          }

                          v84 = v84 + 1;
                        }

                        while (array != v84);
                        array = OUTLINED_FUNCTION_1_2(clientType, v88, v89, v90, v91, v92, v93, v94, v99, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134);
                      }

                      while (array);
                    }

                    goto LABEL_60;
                  }
                }

                v69 = OUTLINED_FUNCTION_35_14(v72, v73, v74, v75, v76, v77, v78, v79, v99, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182);
                if (v69)
                {
                  continue;
                }

                break;
              }
            }
          }

          else if (!v28)
          {
            OUTLINED_FUNCTION_103_5();
            if (OUTLINED_FUNCTION_64(v29, v30, v31, v32))
            {
              while (1)
              {
                OUTLINED_FUNCTION_89();
                if (!v33)
                {
                  objc_enumerationMutation(array);
                }

                v34 = MEMORY[0];
                [MEMORY[0] flushPropertyCache];
                [objc_msgSend(v19 "streamsInUse")];
                if (([objc_msgSend(v19 "controlledStreams")] & 1) == 0)
                {
                  [objc_msgSend(v19 "controlledStreams")];
                  [BWFigCaptureDeviceVendor _registerForStreamNotifications:v1];
                }

                [objc_msgSend(v19 "streamsControlledByOtherClients")];
                OUTLINED_FUNCTION_95_6();
                if (v33)
                {
                  OUTLINED_FUNCTION_103_5();
                  if (!OUTLINED_FUNCTION_64(v35, v36, v37, v38))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_60:
    OUTLINED_FUNCTION_128_0();
  }
}

- (uint64_t)_activeDeviceClientWithClientID:(uint64_t)d
{
  if (!d)
  {
    return 0;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v21);
  }

  v5 = OUTLINED_FUNCTION_43_13();
  v6 = *(d + 40);
  if (!OUTLINED_FUNCTION_33_14(v7, v8, v22, v9, v10, v11, v12, v5))
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_4();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (!v13)
    {
      objc_enumerationMutation(v6);
    }

    if ([OUTLINED_FUNCTION_75_6(v23) clientID] == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_51_11();
    if (v13 && !OUTLINED_FUNCTION_33_14(v14, v15, v22, v16, v17, v18, v19))
    {
      return 0;
    }
  }

  return v2;
}

- (void)_setLowMemoryModeEnabledOnDevice:(void *)device
{
  deviceCopy = device;
  if (device)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v13);
    }

    v4 = deviceCopy[22];
    if (v4)
    {
      deviceCopy = [v4 isGameModeEnabled];
      if (dword_1ED844630)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v6 = OUTLINED_FUNCTION_24_15(os_log_and_send_and_compose_flags_and_os_log_type);
        if (OUTLINED_FUNCTION_5_24(v6))
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0(v7, v8, v9, v10, v11);
      }

      [a2 setPropertyIfSupported:*off_1E798A008 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", deviceCopy)}];
    }

    else
    {
      return 0;
    }
  }

  return deviceCopy;
}

- (id)_popLatestVictimizedDeviceClient
{
  if (!self)
  {
    return 0;
  }

  if (!OUTLINED_FUNCTION_79_4(self))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v4);
  }

  if (![*(v1 + 48) count])
  {
    return 0;
  }

  lastObject = [*(v1 + 48) lastObject];
  [*(v1 + 48) removeLastObject];
  return lastObject;
}

- (id)_popLatestVictimizedDeviceClientThatCanShareWithFlashlight
{
  if (!self)
  {
    return 0;
  }

  if (!OUTLINED_FUNCTION_79_4(self))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v4);
  }

  if (![objc_msgSend(*(v1 + 48) "lastObject")])
  {
    return 0;
  }

  lastObject = [*(v1 + 48) lastObject];
  [*(v1 + 48) removeLastObject];
  return lastObject;
}

- (void)_deviceAvailabilityChangedForClient:(uint64_t)client available:postNotification:reason:canShareWithFlashlight:
{
  if (client)
  {
    OUTLINED_FUNCTION_7_1();
    v5 = 3221225472;
    OUTLINED_FUNCTION_16_29();
    v6 = v1;
    v7 = &unk_1E7999618;
    OUTLINED_FUNCTION_104_4();
    v8 = v2;
    v9 = 0;
    dispatch_async(v3, block);
  }
}

- (BOOL)streamsInUseForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (device)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__BWFigCaptureDeviceVendor_streamsInUseForDevice___block_invoke;
    v5[3] = &unk_1E79906C0;
    v5[4] = self;
    v5[5] = device;
    v5[6] = &v6;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void *__50__BWFigCaptureDeviceVendor_streamsInUseForDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 40) deviceID];
  result = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 40);
    result = [result device];
    if (v4 == result)
    {
      result = [objc_msgSend(v3 "streamsInUse")];
      *(*(*(a1 + 48) + 8) + 24) = result != 0;
    }
  }

  return result;
}

uint64_t __57__BWFigCaptureDeviceVendor_invalidateVideoDevice_forPID___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v3 = OUTLINED_FUNCTION_37_10();
    v4 = OUTLINED_FUNCTION_29_4(v3);
    if (OUTLINED_FUNCTION_6(v4))
    {
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_58_1(v5, v6, v77, v7, &dword_1AC90E000);
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v8, v9, v10, v11, v12);
  }

  [*(a1 + 32) deviceID];
  v13 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  v14 = *(a1 + 32);
  if (v14 == [v13 device])
  {
    [v13 setDeviceUsageCount:{objc_msgSend(v13, "deviceUsageCount") - 1}];
    [v13 deviceUsageCount];
    v15 = *(a1 + 40);
    [*(a1 + 32) deviceID];
    if (v15)
    {
      OUTLINED_FUNCTION_100();
      [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
    }

    v16 = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    OUTLINED_FUNCTION_93_2(v16, *(a1 + 48));
    v17 = OUTLINED_FUNCTION_69_0();
    v18 = *(*(a1 + 40) + 40);
    if (OUTLINED_FUNCTION_1_2(v19, v20, v21, v22, v23, v24, v25, v26, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v17))
    {
      OUTLINED_FUNCTION_57_9();
      v29 = *v28;
      while (1)
      {
        OUTLINED_FUNCTION_29_11();
        if (v30 != v29)
        {
          objc_enumerationMutation(v18);
        }

        if ([OUTLINED_FUNCTION_75_6(v76) pid] == *(a1 + 64))
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v39 && !OUTLINED_FUNCTION_1_2(v31, v32, v33, v34, v35, v36, v37, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v1 = 0;
    }

    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v1 moveToVictimizedList:0];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return [(BWFigCaptureDeviceVendor *)*(a1 + 40) _dumpInventory];
}

void __84__BWFigCaptureDeviceVendor_keepControlOfStreamsWithPositions_deviceTypes_forDevice___block_invoke(id *a1)
{
  v2 = a1;
  [a1[5] deviceID];
  v3 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
  if (dword_1ED844630)
  {
    v4 = OUTLINED_FUNCTION_115_4();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_12(v5))
    {
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141(v6, v7, v8, v9, v10);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0(v11, v12, v13, v14, v15);
  }

  if (v2[5] && (v16 = [v2[6] count], v16 == objc_msgSend(v2[7], "count")))
  {
    v17 = v2[5];
    if (v17 == [v3 device])
    {
      v18 = [v2[4] _copyStreamsFromDevice:v2[5] positions:v2[6] deviceTypes:v2[7] requestControl:0 deviceClientPriority:1 allowsStreamControlLoss:0 error:*(v2[8] + 1) + 24];
      if (*(*(v2[8] + 1) + 24))
      {
        LODWORD(v34) = *(*(v2[8] + 1) + 24);
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v34, v1, v36, v37, v38, v39, v40, v41);
      }

      else
      {
        v19 = [v3 controlledStreams];
        OUTLINED_FUNCTION_17_20();
        if ([v20 countByEnumeratingWithState:? objects:? count:?])
        {
          OUTLINED_FUNCTION_57_9();
          v22 = *v21;
          do
          {
            v23 = 0;
            do
            {
              OUTLINED_FUNCTION_29_11();
              if (v24 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(v52 + 8 * v23);
              v26 = [v18 containsObject:v25];
              if (v26)
              {
                v26 = [objc_msgSend(v3 "streamsToKeepControlled")];
                if ((v26 & 1) == 0)
                {
                  v26 = [objc_msgSend(v3 "streamsToKeepControlled")];
                }
              }

              v23 = (v23 + 1);
            }

            while (v2 != v23);
            v2 = OUTLINED_FUNCTION_1_2(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          }

          while (v2);
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    *(*(v2[8] + 1) + 24) = -12780;
  }
}

- (void)takeBackStreams:(id)streams device:(id)device totalStreamingDuration:(unsigned int)duration
{
  if (device)
  {
    OUTLINED_FUNCTION_33_0();
    v9[1] = 3221225472;
    v9[2] = __74__BWFigCaptureDeviceVendor_takeBackStreams_device_totalStreamingDuration___block_invoke;
    v9[3] = &unk_1E7999250;
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v10 = v8;
    [(BWFigCaptureDeviceVendor *)v7 _performBlockOnDeviceQueueSynchronously:v9];
  }
}

void *__74__BWFigCaptureDeviceVendor_takeBackStreams_device_totalStreamingDuration___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    OUTLINED_FUNCTION_112();
    v2 = OUTLINED_FUNCTION_77(qword_1ED844628);
    v3 = os_log_type_enabled(v2, v33[128]);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_58_1(v4, v5, v33, v6, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v7, v8, v9, v10, v11);
  }

  [*(a1 + 40) deviceID];
  v12 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  result = [v12 device];
  if (result == *(a1 + 40))
  {
    v14 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_54_8();
    v15 = *(a1 + 32);
    OUTLINED_FUNCTION_17_20();
    v20 = OUTLINED_FUNCTION_52(v16, v17, v18, v19);
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        v23 = 0;
        do
        {
          OUTLINED_FUNCTION_29_11();
          if (v24 != v22)
          {
            objc_enumerationMutation(v15);
          }

          v25 = *(v31 + 8 * v23);
          [objc_msgSend(v12 "streamsInUse")];
          [v12 portTypesToCheckForToFAFEstimator];
          OUTLINED_FUNCTION_126_3();
          if ([OUTLINED_FUNCTION_36() containsObject:?])
          {
            [(BWFigCaptureDeviceVendor *)*(a1 + 48) _updateTofAFEstimatorResultsForStream:v25 totalStreamingDuration:*(a1 + 56)];
          }

          [v12 portTypesToCheckForAFDriverShortStatistics];
          OUTLINED_FUNCTION_126_3();
          if ([OUTLINED_FUNCTION_36() containsObject:?])
          {
            [BWFigCaptureDeviceVendor _updateAFDriverShortStatisticsForStream:?];
          }

          [v12 portTypesAllowingStreamControlLoss];
          OUTLINED_FUNCTION_126_3();
          if ([OUTLINED_FUNCTION_36() containsObject:?])
          {
            [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
            [v12 portTypesAllowingStreamControlLoss];
            OUTLINED_FUNCTION_126_3();
            [OUTLINED_FUNCTION_36() removeObject:?];
            if ([objc_msgSend(v12 "streamsControlledByOtherClients")])
            {
              [objc_msgSend(v12 "streamsControlledByOtherClients")];
            }
          }

          if ([objc_msgSend(v12 "controlledStreams")] && (objc_msgSend(objc_msgSend(v12, "streamsToKeepControlled"), "containsObject:", v25) & 1) == 0)
          {
            [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
            [objc_msgSend(v12 "controlledStreams")];
            [v14 addObject:v25];
          }

          ++v23;
        }

        while (v21 != v23);
        OUTLINED_FUNCTION_17_20();
        v30 = OUTLINED_FUNCTION_52(v26, v27, v28, v29);
        v21 = v30;
      }

      while (v30);
    }

    result = [v14 count];
    if (result)
    {
      return [*(a1 + 40) relinquishControlOfStreams:v14];
    }
  }

  return result;
}

- (void)_updateAFDriverShortStatisticsForStream:(void *)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_59_9(result))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v8);
    }

    v3 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:v2];
    if (v3)
    {
      v4 = v3;
      result = [v1 getProperty:*off_1E798BC98 error:0];
      if (result)
      {
        v5 = result;
        afDriverShortStatisticsByPortType = [v4 afDriverShortStatisticsByPortType];
        portType = [v1 portType];

        return [afDriverShortStatisticsByPortType setObject:v5 forKeyedSubscript:portType];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v10, v11, v12, v13, v14, vars0, vars8);
    }
  }

  return result;
}

- (uint64_t)_unregisterFromStreamNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();

    return CMNotificationCenterRemoveListener();
  }

  return result;
}

uint64_t __58__BWFigCaptureDeviceVendor_shutDownSystemPressuredDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 40) deviceID];
  v2 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  v3 = *(a1 + 40);
  if (v3 == [v2 device])
  {
    [v2 setShutDownDueToSystemPressure:1];
    [(BWFigCaptureDeviceVendor *)*(a1 + 32) _deviceAvailabilityChangedForClients:0 available:1 postNotifications:1 reason:0 canShareWithFlashlight:0 cameraStolenInterruptor:?];
  }

  v4 = *(a1 + 32);

  return [(BWFigCaptureDeviceVendor *)v4 _dumpInventory];
}

void __55__BWFigCaptureDeviceVendor_resumeSystemPressuredDevice__block_invoke(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v3 = [*(*(a1 + 32) + 24) allValues];
  if ([v3 countByEnumeratingWithState:v8 objects:v7 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_21_20();
      if (!v4)
      {
        objc_enumerationMutation(v3);
      }

      if ([OUTLINED_FUNCTION_75_6(*(&v8[0] + 1)) shutDownDueToSystemPressure])
      {
        [v1 setShutDownDueToSystemPressure:0];
        if (![OUTLINED_FUNCTION_53_9() count])
        {
          [(BWFigCaptureDeviceVendor *)*(a1 + 32) _popLatestVictimizedDeviceClient];
          [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
        }
      }

      OUTLINED_FUNCTION_51_11();
    }

    while (!v4 || OUTLINED_FUNCTION_37(v5, v6, v8, v7));
  }

  [(BWFigCaptureDeviceVendor *)*(a1 + 32) _dumpInventory];
  OUTLINED_FUNCTION_98();
}

void __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    OUTLINED_FUNCTION_71_3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v13[128]);
    OUTLINED_FUNCTION_39_7();
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = v14;
    }

    if (v5)
    {
      [*(a1 + 32) device];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_58_1(v5, v6, v13, v7, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v8, v9, v10, v11, v12);
  }

  if ([objc_msgSend(*(a1 + 32) "tofAFEstimatorResultsByPortType")])
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _logToFAFEstimatorResultsToCoreAnalyticsForDevice:?];
  }

  if ([objc_msgSend(*(a1 + 32) "afDriverShortStatisticsByPortType")])
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _logAFDriverShortStatisticsToCoreAnalyticsForDevice:?];
  }

  if (*(a1 + 40))
  {
    OUTLINED_FUNCTION_100();
    [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
  }

  dispatch_source_cancel(*(a1 + 56));
  if (![*(*(a1 + 40) + 40) count])
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
  }
}

- (uint64_t)_deviceStateForDeviceWithStream:(uint64_t)stream
{
  if (!stream)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v13);
  }

  allValues = [*(v2 + 24) allValues];
  if (![allValues countByEnumeratingWithState:v15 objects:v14 count:16])
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_4();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (!v5)
    {
      objc_enumerationMutation(allValues);
    }

    if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_75_6(v16) "device")])
    {
      break;
    }

    OUTLINED_FUNCTION_51_11();
    if (v5 && !OUTLINED_FUNCTION_33_14(v6, v7, v15, v8, v9, v10, v11))
    {
      return 0;
    }
  }

  return v3;
}

- (void)_handleStreamControlTakenByAnotherClientNotification:(uint64_t)notification
{
  if (notification)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

void *__81__BWFigCaptureDeviceVendor__handleStreamControlTakenByAnotherClientNotification___block_invoke(uint64_t a1)
{
  v2 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:?];
  result = [objc_msgSend(v2 "controlledStreams")];
  if (result)
  {
    if (dword_1ED844630)
    {
      v176 = 0;
      v175[128] = 0;
      v4 = OUTLINED_FUNCTION_115_4();
      v5 = OUTLINED_FUNCTION_36_0(v4);
      if (OUTLINED_FUNCTION_5_24(v5))
      {
        v6 = *(a1 + 40);
        v7 = *(*(a1 + 32) + 40);
        v169 = 136315650;
        v170 = "[BWFigCaptureDeviceVendor _handleStreamControlTakenByAnotherClientNotification:]_block_invoke";
        v171 = 2114;
        v172 = v6;
        v173 = 2112;
        v174 = v7;
        LODWORD(v68) = 32;
        v64 = &v169;
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v14, v15, v16, v17, v18);
    }

    if (([objc_msgSend(v2 streamsControlledByOtherClients] & 1) == 0)
    {
      [objc_msgSend(v2 "streamsControlledByOtherClients")];
    }

    [objc_msgSend(v2 "controlledStreams")];
    [objc_msgSend(v2 "streamsToKeepControlled")];
    v19 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__BWFigCaptureDeviceVendor__handleStreamControlTakenByAnotherClientNotification___block_invoke_306;
    block[3] = &unk_1E798F870;
    block[4] = *(a1 + 40);
    dispatch_async(v19, block);
    result = [objc_msgSend(v2 "streamsRequiringControlControlledByOtherClients")];
    if (result == 1)
    {
      v20 = [MEMORY[0x1E695DF70] array];
      v21 = *(*(a1 + 32) + 40);
      if (OUTLINED_FUNCTION_35_14(v20, v22, v23, v24, v25, v26, v27, v28, v65, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166))
      {
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v29)
          {
            objc_enumerationMutation(v21);
          }

          v30 = MEMORY[0];
          if ([MEMORY[0] clientType] != 1)
          {
            [v20 addObject:v30];
          }

          OUTLINED_FUNCTION_95_6();
        }

        while (!v29 || OUTLINED_FUNCTION_35_14(v31, v32, v33, v34, v35, v36, v37, v38, v66, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167));
      }

      v39 = OUTLINED_FUNCTION_69_0();
      result = OUTLINED_FUNCTION_1_2(v40, v41, v42, v43, v44, v45, v46, v47, v66, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v39);
      if (result)
      {
        OUTLINED_FUNCTION_57_9();
        v49 = *v48;
        while (1)
        {
          OUTLINED_FUNCTION_29_11();
          if (v50 != v49)
          {
            objc_enumerationMutation(v20);
          }

          [(BWFigCaptureDeviceVendor *)*(a1 + 32) _removeActiveDeviceClient:1 moveToVictimizedList:?];
          [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
          OUTLINED_FUNCTION_51_11();
          if (v29)
          {
            result = OUTLINED_FUNCTION_1_2(v51, v52, v53, v54, v55, v56, v57, v58, v67, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119);
            if (!result)
            {
              break;
            }
          }
        }
      }
    }
  }

  else if (dword_1ED844630)
  {
    v8 = OUTLINED_FUNCTION_37_10();
    v9 = OUTLINED_FUNCTION_29_4(v8);
    if (OUTLINED_FUNCTION_6(v9))
    {
      v10 = *(a1 + 40);
      v169 = 136315394;
      v170 = "[BWFigCaptureDeviceVendor _handleStreamControlTakenByAnotherClientNotification:]_block_invoke_2";
      v171 = 2114;
      v172 = v10;
      OUTLINED_FUNCTION_34_16();
      OUTLINED_FUNCTION_58_1(v11, v12, v175, v13, &dword_1AC90E000);
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_2_4();
    return OUTLINED_FUNCTION_17_8(v59, v60, v61, v62, v63);
  }

  return result;
}

- (void)_handleStreamRelinquishedByAnotherClientNotification:(uint64_t)notification
{
  if (notification)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

void __81__BWFigCaptureDeviceVendor__handleStreamRelinquishedByAnotherClientNotification___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v2 = OUTLINED_FUNCTION_37_10();
    v3 = OUTLINED_FUNCTION_29_4(v2);
    if (OUTLINED_FUNCTION_6(v3))
    {
      v4 = *(a1 + 32);
      v36 = 136315394;
      v37 = "[BWFigCaptureDeviceVendor _handleStreamRelinquishedByAnotherClientNotification:]_block_invoke";
      v38 = 2114;
      v39 = v4;
      OUTLINED_FUNCTION_34_16();
      v33 = &v36;
      OUTLINED_FUNCTION_58_1(v5, v6, v40, v7, &dword_1AC90E000);
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v8, v9, v10, v11, v12);
  }

  v13 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:?];
  v14 = [objc_msgSend(v13 "streamsControlledByOtherClients")];
  v15 = *(*(a1 + 40) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__BWFigCaptureDeviceVendor__handleStreamRelinquishedByAnotherClientNotification___block_invoke_308;
  block[3] = &unk_1E798F870;
  block[4] = *(a1 + 32);
  dispatch_async(v15, block);
  [v13 portTypesAllowingStreamControlLoss];
  [*(a1 + 32) portType];
  if ([OUTLINED_FUNCTION_7() containsObject:?])
  {
    [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
    [objc_msgSend(v13 "streamsControlledByOtherClients")];
  }

  else if (v14 && ![objc_msgSend(v13 "device")])
  {
    if ([v13 takeBackDeviceCalledForActiveClientID])
    {
      v16 = *(a1 + 40);
      v17 = -[BWFigCaptureDeviceVendor _activeDeviceClientWithClientID:](v16, [v13 takeBackDeviceCalledForActiveClientID]);
      [(BWFigCaptureDeviceVendor *)v16 _removeActiveDeviceClient:v17 moveToVictimizedList:0];
      [v13 setTakeBackDeviceCalledForActiveClientID:0];
    }

    v18 = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    [v13 device];
    [v13 streamsControlledByOtherClients];
    [OUTLINED_FUNCTION_7() relinquishControlOfStreams:?];
    v19 = [v13 streamsControlledByOtherClients];
    OUTLINED_FUNCTION_17_20();
    v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        v24 = 0;
        do
        {
          OUTLINED_FUNCTION_29_11();
          if (v25 != v23)
          {
            objc_enumerationMutation(v19);
          }

          [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
          ++v24;
        }

        while (v22 != v24);
        OUTLINED_FUNCTION_17_20();
        v22 = OUTLINED_FUNCTION_52(v26, v27, v28, v29);
      }

      while (v22);
    }

    [objc_msgSend(v13 streamsControlledByOtherClients];
    v30 = *(a1 + 40);
    [v18 canShareWithFlashlightAndVibeMitigation];
    [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:v30 available:? postNotification:? reason:? canShareWithFlashlight:?];
    if (![*(*(a1 + 40) + 40) count])
    {
      v31 = *(a1 + 40);
      v32 = [objc_msgSend(v13 "device")];
      if (v18)
      {
        [(BWFigCaptureDeviceVendor *)v31 _setupDeviceCloseTimerForDevice:v32];
      }

      else if (v31)
      {
        OUTLINED_FUNCTION_100();
        [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
      }
    }
  }
}

- (void)_handleStreamFrameReceiveTimeoutNotification:(uint64_t)notification
{
  if (notification)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

void __73__BWFigCaptureDeviceVendor__handleStreamFrameReceiveTimeoutNotification___block_invoke(uint64_t a1)
{
  v2 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:?];
  if ([objc_msgSend(objc_msgSend(v2 "device")])
  {
    OUTLINED_FUNCTION_71_3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = OUTLINED_FUNCTION_24_15(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_24(v4))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_13_0(v5, v6, v7, v8, v9);
    [objc_msgSend(v2 "device")];
    v10 = OUTLINED_FUNCTION_3_30();
    [BWFigCaptureDeviceVendor _handleErrorForDevice:v10];
  }
}

- (void)_handleErrorForDevice:(uint64_t)device
{
  if (device)
  {
    OUTLINED_FUNCTION_60();
    v3 = v2;
    if (!OUTLINED_FUNCTION_79_4(v4))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v41);
    }

    v5 = [*(v1 + 24) objectForKeyedSubscript:v3];
    if (v5)
    {
      v6 = v5;
      array = [MEMORY[0x1E695DF70] array];
      v8 = [array addObjectsFromArray:*(v1 + 40)];
      memset(v79, 0, 64);
      v10 = OUTLINED_FUNCTION_37(v8, v9, v79, v78);
      if (v10)
      {
        v11 = v10;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v13)
            {
              objc_enumerationMutation(array);
            }

            v14 = [(BWFigCaptureDeviceVendor *)v1 _removeActiveDeviceClient:0 moveToVictimizedList:?];
          }

          v11 = OUTLINED_FUNCTION_37(v14, v15, v79, v78);
        }

        while (v11);
      }

      [objc_msgSend(v6 "device")];
      OUTLINED_FUNCTION_3_30();
      OUTLINED_FUNCTION_100();
      [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
      v16 = OUTLINED_FUNCTION_69_0();
      if (OUTLINED_FUNCTION_1_2(v17, v18, v19, v20, v21, v22, v23, v24, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v16))
      {
        OUTLINED_FUNCTION_57_9();
        v26 = *v25;
        do
        {
          for (j = 0; j != v6; ++j)
          {
            OUTLINED_FUNCTION_29_11();
            if (v28 != v26)
            {
              objc_enumerationMutation(array);
            }

            OUTLINED_FUNCTION_10_35();
            v80 = v29;
            v81 = &unk_1E7999618;
            OUTLINED_FUNCTION_99_3(v30, 1);
            OUTLINED_FUNCTION_10_35();
            v80 = v31;
            v81 = &unk_1E7999618;
            OUTLINED_FUNCTION_99_3(v32, 257);
          }

          v6 = OUTLINED_FUNCTION_1_2(v33, v34, v35, v36, v37, v38, v39, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
        }

        while (v6);
      }
    }

    OUTLINED_FUNCTION_128_0();
  }
}

- (void)_handleDeviceUnrecoverableError:(uint64_t)error fromDevice:
{
  if (error)
  {
    OUTLINED_FUNCTION_33_0();
    v2 = OUTLINED_FUNCTION_0_78(v1, COERCE_DOUBLE(3221225472));
    OUTLINED_FUNCTION_101_4(v2, v3);
  }
}

- (void)_handleDeviceNoLongerAvailable:(uint64_t)available
{
  if (available)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

- (uint64_t)_registerForStreamNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();

    return CMNotificationCenterAddListener();
  }

  return result;
}

- (uint64_t)_registerForDeviceNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

- (uint64_t)_unregisterForDeviceNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

- (void)_showISPLeftOnTapToRadarPromptIfNecessary:(uint64_t)necessary
{
  if (necessary)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v16);
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_42_12();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = OUTLINED_FUNCTION_36_0(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      OUTLINED_FUNCTION_91_7();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_8_1();
    v11 = OUTLINED_FUNCTION_13_0(v6, v7, v8, v9, v10);
    v17 = 138412290;
    v18 = a2;
    v15 = OUTLINED_FUNCTION_6_0(v11, v12, v13, v14, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_11();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v15, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 3581, @"LastShownDate:BWFigCaptureDeviceVendor.m:3581", @"LastShownBuild:BWFigCaptureDeviceVendor.m:3581", &v17);
    free(v15);
    OUTLINED_FUNCTION_98();
  }
}

- (void)_logActiveDefaultDeviceClientAndDevice
{
  if (self)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v54);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v59 = v2;
    obj = *(v2 + 40);
    v3 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
    v5 = &unk_1ED844000;
    if (v3)
    {
      v6 = v3;
      v7 = *v88;
      *&v4 = 136316163;
      v60 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v17)
          {
            objc_enumerationMutation(obj);
          }

          if (v5[396])
          {
            v18 = *(*(&v87 + 1) + 8 * i);
            v19 = OUTLINED_FUNCTION_46_13(v9, v10, v11, v12, v13, v14, v15, v16, v55, v57, v58, v59, v60, *(&v60 + 1), obj, applicationID, *v63, *&v63[8], *&v63[16], *v64, *&v64[8], *&v64[16], v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, type, v85);
            v20 = v85;
            if (os_log_type_enabled(v19, type))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (v21)
            {
              applicationID = [v18 applicationID];
              v22 = [v18 pid];
              v23 = v6;
              v24 = v7;
              v25 = v5;
              clientID = [v18 clientID];
              clientDescription = [v18 clientDescription];
              *v63 = v60;
              *&v63[4] = "[BWFigCaptureDeviceVendor _logActiveDefaultDeviceClientAndDevice]";
              *&v63[12] = 2114;
              *&v63[14] = applicationID;
              *&v63[22] = 1025;
              *v64 = v22;
              *&v64[4] = 1024;
              *&v64[6] = clientID;
              v5 = v25;
              v7 = v24;
              v6 = v23;
              *&v64[10] = 2114;
              *&v64[12] = clientDescription;
              LODWORD(v57) = 44;
              v55 = v63;
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v6 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
      }

      while (v6);
    }

    v28 = v59;
    v29 = [*(v59 + 40) count];
    v37 = v5[396];
    if (!v29 && v37)
    {
      v38 = OUTLINED_FUNCTION_46_13(0, v30, v31, v32, v33, v34, v35, v36, v56, v57, v58, v59, v60, *(&v60 + 1), obj, applicationID, *v63, *&v63[8], *&v63[16], *v64, *&v64[8], *&v64[16], v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, type, v85);
      v39 = os_log_type_enabled(v38, type);
      v40 = OUTLINED_FUNCTION_6(v39);
      if (v40)
      {
        *v63 = 136315138;
        *&v63[4] = "[BWFigCaptureDeviceVendor _logActiveDefaultDeviceClientAndDevice]";
        LODWORD(v57) = 12;
        v56 = v63;
        OUTLINED_FUNCTION_58_1(v40, v41, &v66 + 3, v42, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      v29 = OUTLINED_FUNCTION_17_8(v43, v44, v45, v46, v47);
      v37 = dword_1ED844630;
    }

    if (v37)
    {
      v48 = OUTLINED_FUNCTION_46_13(v29, v30, v31, v32, v33, v34, v35, v36, v56, v57, v58, v59, v60, *(&v60 + 1), obj, applicationID, *v63, *&v63[8], *&v63[16], *v64, *&v64[8], *&v64[16], v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, type, v85);
      v49 = v85;
      if (os_log_type_enabled(v48, type))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        v51 = [objc_msgSend(*(v28 + 24) objectForKeyedSubscript:{0x1F21702D0), "device"}];
        *v63 = 136315394;
        *&v63[4] = "[BWFigCaptureDeviceVendor _logActiveDefaultDeviceClientAndDevice]";
        *&v63[12] = 2112;
        *&v63[14] = v51;
        OUTLINED_FUNCTION_34_16();
        OUTLINED_FUNCTION_58_1(v50, v52, &v66 + 3, v53, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_81();
  }
}

- (void)_updateDefaultDevicePriorStreamPortTypes:(uint64_t)types
{
  if (types)
  {
    if (objc_msgSend_isEqualToString_([a2 deviceID]))
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      memset(v20, 0, sizeof(v20));
      streams = [a2 streams];
      if ([streams countByEnumeratingWithState:v20 objects:v19 count:16])
      {
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v6)
          {
            objc_enumerationMutation(streams);
          }

          [*v20[1] portType];
          [OUTLINED_FUNCTION_4() addObject:?];
          OUTLINED_FUNCTION_95_6();
        }

        while (!v6 || OUTLINED_FUNCTION_64(v7, v8, v20, v19));
      }

      v9 = *(types + 168);
      if (v9)
      {
        if (([v9 isEqualToSet:v4] & 1) == 0)
        {
          [*(types + 168) setSet:v4];
          OUTLINED_FUNCTION_8_7();
          v15 = 3221225472;
          v16 = __69__BWFigCaptureDeviceVendor__updateDefaultDevicePriorStreamPortTypes___block_invoke;
          v17 = &unk_1E798F870;
          typesCopy = types;
          dispatch_async(v10, &block);
        }
      }

      else
      {
        *(types + 168) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v4];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v12, v13, block, v15, v16, v17, typesCopy);
    }
  }
}

- (BOOL)_isRearCameraCalibrationValid
{
  if (result)
  {
    v1 = FigCapturePlatformIdentifier();
    if (v1 < 7)
    {
      return 1;
    }

    if (!BWDeviceIsiPhone(v1, v2))
    {
      return 1;
    }

    v3 = MGGetBoolAnswer();
    return (v3 & 1) != 0 || ([objc_msgSend(FigCaptureDeviceIORegValuesByKeys(v3) objectForKeyedSubscript:{0x1F21ADBD0), "intValue"}] & 0xFFFFFFFE) != 2;
  }

  return result;
}

- (uint64_t)_releasePowerAssertion
{
  if (result)
  {
    result = OUTLINED_FUNCTION_79_4(result);
    if (!result)
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3(v9);
    }

    if (*(v1 + 96) == 1)
    {
      result = IOPMAssertionRelease(*(v1 + 100));
      *(v1 + 96) = 0;
      if (!result)
      {
        if (dword_1ED844630)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v3 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_5_2(v3))
          {
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          return OUTLINED_FUNCTION_16_1(v4, v5, v6, v7, v8);
        }
      }
    }
  }

  return result;
}

- (uint64_t)initWithDefaultDeviceCreateFunction:(uint64_t)a3 cmioExtensionDeviceCreateFunction:(uint64_t)a4 cmioDiscoverySession:(uint64_t)a5 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_36_15(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_2_11("[BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

- (uint64_t)initWithDefaultDeviceCreateFunction:(uint64_t)a3 cmioExtensionDeviceCreateFunction:(uint64_t)a4 cmioDiscoverySession:(uint64_t)a5 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_36_15(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_2_11("[BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

uint64_t __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_36_15(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_2_11("[BWFigCaptureDeviceVendor updateClientPriority:clientPriority:]_block_invoke");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

- (uint64_t)_copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 deviceID];
  v2 = OUTLINED_FUNCTION_3_30();
  [(BWFigCaptureDeviceVendor *)v2 _setupDeviceCloseTimerForDevice:v3];
}

void *__80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  result = [*(*a1 + 24) objectForKeyedSubscript:a2];
  *a3 = result;
  return result;
}

- (uint64_t)_deviceWithID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)osStatePropertyList
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

@end