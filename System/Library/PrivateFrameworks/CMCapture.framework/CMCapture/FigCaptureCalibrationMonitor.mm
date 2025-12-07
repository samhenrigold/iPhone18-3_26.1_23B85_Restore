@interface FigCaptureCalibrationMonitor
+ (void)initializeSharedInstanceWithCaptureSourceBackings:(id)backings;
- (id)_runAndCreateDictionaryForCalibrationContext:(unsigned int)context deviceType:(unsigned int)type devicePosition:(int *)position errors:;
- (id)apsSphereInteractionCalibrationData;
- (id)autoFocusCalibrationData;
- (id)autoFocusPositionSensorCalibrationData;
- (id)runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:(int)type devicePosition:(int)position;
- (id)sphereCalibrationData;
- (id)sphereEndStopCalibrationData;
- (uint64_t)_calibrationShouldAbort;
- (void)_attemptToRunCalibrationForCalibrationContext:(int)context deviceType:(int)type devicePosition:(char)position disableHistoryChecking:(void *)checking resultsBlock:;
- (void)_notifyOfDeviceMotion;
- (void)_setupActivityAndTriggers:(int)triggers interval:(int)interval batteryLevel:(void *)level calibrationBlock:(char)block isRepeating:;
- (void)_setupCalibrationForContext:(uint64_t)context;
- (void)_setupDuetTriggersAndScheduling;
- (void)_setupRepeatingCalibrationScheduling:(void *)scheduling withCalibrationBlock:;
- (void)initWithCaptureSourceBackings:(void *)backings;
- (xpc_object_t)_createDefaultXPCSchedulingParametersWithInterval:(int)interval batteryLevel:;
@end

@implementation FigCaptureCalibrationMonitor

- (id)autoFocusPositionSensorCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  lastSuccessfulCalibrationData = [(FigCaptureCalibrationContext *)self->_autoFocusPositionSensorCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return lastSuccessfulCalibrationData;
}

- (id)autoFocusCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  lastSuccessfulCalibrationData = [(FigCaptureCalibrationContext *)self->_autoFocusCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return lastSuccessfulCalibrationData;
}

- (id)apsSphereInteractionCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  lastSuccessfulCalibrationData = [(FigCaptureCalibrationContext *)self->_apsSphereInteractionCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return lastSuccessfulCalibrationData;
}

+ (void)initializeSharedInstanceWithCaptureSourceBackings:(id)backings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__FigCaptureCalibrationMonitor_initializeSharedInstanceWithCaptureSourceBackings___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = backings;
  if (initializeSharedInstanceWithCaptureSourceBackings__initSharedFCSCalibration != -1)
  {
    dispatch_once(&initializeSharedInstanceWithCaptureSourceBackings__initSharedFCSCalibration, block);
  }
}

void *__82__FigCaptureCalibrationMonitor_initializeSharedInstanceWithCaptureSourceBackings___block_invoke(uint64_t a1)
{
  result = [[FigCaptureCalibrationMonitor alloc] initWithCaptureSourceBackings:?];
  sFCCalibration = result;
  return result;
}

- (id)runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:(int)type devicePosition:(int)position
{
  v7 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__16;
  v23 = __Block_byref_object_dispose__16;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __111__FigCaptureCalibrationMonitor_runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType_devicePosition___block_invoke;
  v18[3] = &unk_1E7991B70;
  v18[4] = v7;
  v18[5] = &v19;
  calibrationRunQueue = self->_calibrationRunQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__FigCaptureCalibrationMonitor_runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType_devicePosition___block_invoke_2;
  block[3] = &unk_1E7991B98;
  typeCopy = type;
  positionCopy = position;
  block[4] = self;
  block[5] = v18;
  dispatch_async(calibrationRunQueue, block);
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v13[0] = @"Result";
    v13[1] = @"StatusCode";
    v14[0] = MEMORY[0x1E695E110];
    v14[1] = &unk_1F22439D8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v20[5] = v10;
  }

  dispatch_release(v7);
  v11 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v11;
}

intptr_t __111__FigCaptureCalibrationMonitor_runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType_devicePosition___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = @"StatusCode";
  v7[0] = [MEMORY[0x1E696AD98] numberWithBool:{a2, @"Result"}];
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_attemptToRunCalibrationForCalibrationContext:(int)context deviceType:(int)type devicePosition:(char)position disableHistoryChecking:(void *)checking resultsBlock:
{
  if (self)
  {
    FigSimpleMutexLock();
    os_unfair_lock_lock((self + 36));
    *(self + 32) = 0;
    os_unfair_lock_unlock((self + 36));
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__16;
    v26 = __Block_byref_object_dispose__16;
    v27 = objc_alloc_init(MEMORY[0x1E69634D0]);
    v12 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v13 = objc_alloc_init(MEMORY[0x1E69634C0]);
    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v15 = [checking copy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke;
    v21[3] = &unk_1E7991BE8;
    v21[4] = self;
    [v13 startActivityUpdatesToQueue:v14 withHandler:v21];

    [v12 setMaxConcurrentOperationCount:1];
    *(self + 76) = 0;
    [v23[5] setDeviceMotionUpdateInterval:1.0];
    v16 = v23[5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke_2;
    v17[3] = &unk_1E7991C10;
    v17[7] = v15;
    v17[8] = &v22;
    v17[4] = self;
    v17[5] = a2;
    contextCopy = context;
    typeCopy = type;
    positionCopy = position;
    v17[6] = v13;
    [v16 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v12 withHandler:v17];

    _Block_object_dispose(&v22, 8);
  }
}

- (id)sphereCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  lastSuccessfulCalibrationData = [(FigCaptureCalibrationContext *)self->_sphereCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return lastSuccessfulCalibrationData;
}

- (id)sphereEndStopCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  lastSuccessfulCalibrationData = [(FigCaptureCalibrationContext *)self->_sphereEndStopCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return lastSuccessfulCalibrationData;
}

void __109__FigCaptureCalibrationMonitor__setupActivityAndTriggers_interval_batteryLevel_calibrationBlock_isRepeating___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }

  else if (!state)
  {
    v5 = [(FigCaptureCalibrationMonitor *)*(a1 + 32) _createDefaultXPCSchedulingParametersWithInterval:*(a1 + 52) batteryLevel:?];
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9D88], *(a1 + 56));
    v6 = xpc_activity_copy_criteria(activity);
    if (v6)
    {
      v7 = v6;
      if (!xpc_equal(v6, v5))
      {
        xpc_activity_set_criteria(activity, v5);
      }

      xpc_release(v7);
    }

    else
    {
      xpc_activity_set_criteria(activity, v5);
    }

    xpc_release(v5);
  }
}

- (xpc_object_t)_createDefaultXPCSchedulingParametersWithInterval:(int)interval batteryLevel:
{
  if (!self)
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9CB0], a2);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DC0], 1);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9C70], *MEMORY[0x1E69E9D08]);
  v6 = xpc_dictionary_create(0, 0, 0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v7 = get_DASCTSMinBatteryLevelKeySymbolLoc_ptr;
  v15 = get_DASCTSMinBatteryLevelKeySymbolLoc_ptr;
  if (!get_DASCTSMinBatteryLevelKeySymbolLoc_ptr)
  {
    v8 = DuetActivitySchedulerLibrary();
    v13[3] = dlsym(v8, "_DASCTSMinBatteryLevelKey");
    get_DASCTSMinBatteryLevelKeySymbolLoc_ptr = v13[3];
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v7)
  {
    [FigCaptureCalibrationMonitor _createDefaultXPCSchedulingParametersWithInterval:batteryLevel:];
  }

  xpc_dictionary_set_int64(v6, [*v7 cStringUsingEncoding:4], interval);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v9 = get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr;
  v15 = get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr;
  if (!get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr)
  {
    v10 = DuetActivitySchedulerLibrary();
    v13[3] = dlsym(v10, "_DASCTSMagneticInterferenceSensitivityKey");
    get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr = v13[3];
    v9 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v9)
  {
    [FigCaptureCalibrationMonitor _createDefaultXPCSchedulingParametersWithInterval:batteryLevel:];
  }

  [(FigCaptureCalibrationMonitor *)v9 _createDefaultXPCSchedulingParametersWithInterval:v6 batteryLevel:v5];
  return v5;
}

- (void)_setupCalibrationForContext:(uint64_t)context
{
  if (context)
  {
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x3052000000;
    v3[3] = __Block_byref_object_copy__16;
    v3[4] = __Block_byref_object_dispose__16;
    v3[5] = context;
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __60__FigCaptureCalibrationMonitor__setupCalibrationForContext___block_invoke;
    v2[3] = &unk_1E79907B0;
    v2[5] = a2;
    v2[6] = v3;
    v2[4] = context;
    [(FigCaptureCalibrationMonitor *)context _setupRepeatingCalibrationScheduling:a2 withCalibrationBlock:v2];
    _Block_object_dispose(v3, 8);
  }
}

void __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 stationary] & 1) == 0)
  {
    v3 = *(a1 + 32);

    [(FigCaptureCalibrationMonitor *)v3 _notifyOfDeviceMotion];
  }
}

void *__140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke_2(void *result, void *a2, uint64_t a3)
{
  if (!*(*(result[8] + 8) + 40))
  {
    return result;
  }

  v3 = a3;
  v5 = result;
  v30 = 0;
  v29 = 0;
  v6 = result[4];
  if (v6)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0.0;
  }

  if (!a2)
  {
    memset(v28, 0, sizeof(v28));
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *(v6 + 64) = 0;
    v11 = result[4];
    v22 = 0u;
    v23 = 0u;
    v11[6] = 0;
    v11[7] = 0;
    v11[5] = 0;
    v20 = 0u;
    v21 = 0u;
    if (!a3)
    {
      goto LABEL_14;
    }

    v18 = 0uLL;
    v19 = 0uLL;
    goto LABEL_12;
  }

  objc_msgSend_magneticField(a2);
  objc_msgSend_magneticField(a2);
  objc_msgSend_magneticField(a2);
  objc_msgSend_magneticField(a2);
  objc_msgSend_magneticField(a2);
  objc_msgSend_magneticField(a2);
  *(v5[4] + 64) = sqrt(v28[5] * v28[1] + v28[12] * v28[8] + *&v27 * *&v25);
  v8 = v5[4];
  objc_msgSend_magneticField(a2);
  *(v8 + 40) = v22;
  *(v8 + 56) = v23;
  objc_msgSend_magneticField(a2);
  if (v3 || DWORD2(v21) == -1)
  {
    result = objc_msgSend_magneticField(a2);
    if (DWORD2(v19) == -1)
    {
      v9 = v5[4];
      v10 = *(v9 + 76);
      if (v10 <= 1)
      {
        *(v9 + 76) = v10 + 1;
        return result;
      }
    }

LABEL_12:
    LOBYTE(v3) = 1;
    goto LABEL_14;
  }

  LOBYTE(v3) = 0;
LABEL_14:
  [*(*(v5[8] + 8) + 40) stopDeviceMotionUpdates];
  v12 = v5[4];
  if ((v3 & 1) != 0 || *(v12 + 64) >= v7)
  {
    v13 = 0;
    ++*(v12 + 72);
    v15 = v5[4];
    if (*(v15 + 64) >= v7)
    {
      LODWORD(v14) = 2;
    }

    else
    {
      LODWORD(v14) = 128;
    }
  }

  else
  {
    v17 = 0;
    v13 = [(FigCaptureCalibrationMonitor *)v12 _runAndCreateDictionaryForCalibrationContext:*(v5 + 18) deviceType:*(v5 + 19) devicePosition:&v17 errors:?];
    LODWORD(v14) = v17;
    *(v5[4] + 72) = 0;
    v15 = v5[4];
  }

  if ([(FigCaptureCalibrationMonitor *)v15 _calibrationShouldAbort])
  {
    v14 = v14 | 0x20;
  }

  else
  {
    v14 = v14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5[5] setDisableHistoryChecking:*(v5 + 80)];
  }

  [v5[5] updateWithNewCalibrationData:v13 orExternalErrors:v14 magneticFieldAttempts:*(v5[4] + 72) magneticField:&v30 isCalibrationValid:&v29 calibrationStatus:{*(v5[4] + 40), *(v5[4] + 48), *(v5[4] + 56)}];
  v16 = v5[7];
  if (v16)
  {
    (*(v16 + 16))(v16, v30, v29);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5[5] setDisableHistoryChecking:0];
  }

  [v5[6] stopActivityUpdates];
  *(*(v5[8] + 8) + 40) = 0;
  return FigSimpleMutexUnlock();
}

void __60__FigCaptureCalibrationMonitor__setupCalibrationForContext___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__FigCaptureCalibrationMonitor__setupCalibrationForContext___block_invoke_2;
  v2[3] = &unk_1E798FAF8;
  v3 = *(a1 + 40);
  dispatch_async(v1, v2);
}

- (void)initWithCaptureSourceBackings:(void *)backings
{
  if (!backings)
  {
    return 0;
  }

  v69.receiver = backings;
  v69.super_class = FigCaptureCalibrationMonitor;
  v2 = objc_msgSendSuper2(&v69, sel_init);
  if (v2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2[1] = v4;
    v12 = OUTLINED_FUNCTION_2_48(v4, v5, v6, v7, v8, v9, v10, v11, v30, v32, a2, v2, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0];
      v33 = @"Sphere";
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(obja);
          }

          attributes = [*(8 * i) attributes];
          v17 = [objc_msgSend(attributes objectForKeyedSubscript:{@"DeviceType", "intValue"}];
          if (v17 <= 0xA && ((1 << v17) & 0x4AC) != 0)
          {
            v26 = v17;
            if (([objc_msgSend(attributes objectForKeyedSubscript:{@"Focus", "BOOLValue"}] & 1) != 0 || (v17 = objc_msgSend(objc_msgSend(attributes, "objectForKeyedSubscript:", v33), "BOOLValue"), v17))
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              [MEMORY[0x1E696AD98] numberWithInt:v26];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              [attributes objectForKeyedSubscript:@"NonLocalizedName"];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              [attributes objectForKeyedSubscript:@"Position"];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              [MEMORY[0x1E695DF70] array];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              v17 = [*(v36 + 8) addObject:dictionary];
            }
          }
        }

        v13 = OUTLINED_FUNCTION_2_48(v17, v18, v19, v20, v21, v22, v23, v24, v31, v33, obja, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
      }

      while (v13);
    }

    v2 = v36;
    *(v36 + 16) = dispatch_queue_create("com.apple.coremedia.apscal", 0);
    *(v36 + 24) = FigSimpleMutexCreate();
    FigGetCFPreferenceDoubleWithDefault();
    *(v36 + 80) = v28;
    FigGetCFPreferenceDoubleWithDefault();
    *(v36 + 88) = v29;
    *(v36 + 72) = FigGetCFPreferenceNumberWithDefault();
    [(FigCaptureCalibrationMonitor *)v36 _setupDuetTriggersAndScheduling];
  }

  return v2;
}

- (void)_setupDuetTriggersAndScheduling
{
  if (self)
  {
    selfCopy = self;
    v51[0] = 0;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v7 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    v44 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    if (v44)
    {
      v39 = array;
      v40 = array2;
      v41 = array3;
      v42 = array4;
      v31 = v7;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v34 = selfCopy;
      obja = *(selfCopy + 8);
      v8 = [obja countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v8)
      {
        v9 = v8;
        v43 = *v48;
        v10 = *off_1E798BC90;
        v11 = *off_1E798C160;
        v12 = *off_1E798BCD8;
        v13 = *off_1E798C168;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v48 != v43)
            {
              objc_enumerationMutation(obja);
            }

            v15 = *(*(&v47 + 1) + 8 * i);
            v16 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
            v17 = v16;
            v18 = v51[0];
            if (v51[0])
            {
              fig_log_get_emitter();
              LODWORD(v27) = v18;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v1, v28, v1, v30, v34, obja, v39);

              selfCopy = v35;
              v7 = v32;
              goto LABEL_28;
            }

            [v15 setObject:objc_msgSend(v16 forKeyedSubscript:{"portType"), @"PortType"}];
            supportedProperties = [v17 supportedProperties];
            v20 = [v15 objectForKeyedSubscript:@"DeviceName"];
            v21 = [v15 objectForKeyedSubscript:@"SupportedCalibrations"];
            if ([supportedProperties objectForKeyedSubscript:v10])
            {
              [v21 addObject:v10];
              [v39 addObject:v20];
            }

            if ([supportedProperties objectForKeyedSubscript:v11])
            {
              [v21 addObject:v11];
              [v40 addObject:v20];
            }

            if ([supportedProperties objectForKeyedSubscript:v12])
            {
              [v21 addObject:v12];
              [v41 addObject:v20];
            }

            if ([supportedProperties objectForKeyedSubscript:v13])
            {
              [v21 addObject:v13];
              [v42 addObject:v20];
            }
          }

          v9 = [obja countByEnumeratingWithState:&v47 objects:v46 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      selfCopy = v34;
      if ([v39 count])
      {
        v22 = [[FigCaptureAutoFocusCalibrationContext alloc] initWithSupportedDeviceNames:v39];
        *(v34 + 104) = v22;
        [(FigCaptureCalibrationMonitor *)v34 _setupCalibrationForContext:v22];
      }

      if ([v40 count])
      {
        v23 = [[FigCaptureSphereCalibrationContext alloc] initWithSupportedDeviceNames:v40];
        *(v34 + 120) = v23;
        [(FigCaptureCalibrationMonitor *)v34 _setupCalibrationForContext:v23];
      }

      v7 = v31;
      if ([v41 count])
      {
        v24 = [[FigCaptureAPSSphereInteractionCalibrationContext alloc] initWithSupportedDeviceNames:v41];
        *(v34 + 112) = v24;
        [(FigCaptureCalibrationMonitor *)v34 _setupCalibrationForContext:v24];
      }

      if ([v42 count])
      {
        v25 = [[FigCaptureSphereEndStopCalibrationContext alloc] initWithSupportedDeviceNames:v42];
        *(v34 + 128) = v25;
        [(FigCaptureCalibrationMonitor *)v34 _setupCalibrationForContext:v25];
      }
    }

    else
    {
      fig_log_get_emitter();
      LODWORD(v27) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v1, v28, v29, v30, v33, obj, v38);
    }

LABEL_28:
    if (v51[0])
    {
      v26 = *MEMORY[0x1E69E9CC8];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __63__FigCaptureCalibrationMonitor__setupDuetTriggersAndScheduling__block_invoke;
      v45[3] = &unk_1E798F870;
      v45[4] = selfCopy;
      [(FigCaptureCalibrationMonitor *)selfCopy _setupActivityAndTriggers:v26 interval:50 batteryLevel:v45 calibrationBlock:0 isRepeating:?];
    }

    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  }
}

- (uint64_t)_calibrationShouldAbort
{
  if (self)
  {
    os_unfair_lock_lock((self + 36));
    v2 = *(self + 32);
    os_unfair_lock_unlock((self + 36));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setupActivityAndTriggers:(int)triggers interval:(int)interval batteryLevel:(void *)level calibrationBlock:(char)block isRepeating:
{
  if (self)
  {
    v11 = [level copy];
    v12 = *MEMORY[0x1E69E9C50];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __109__FigCaptureCalibrationMonitor__setupActivityAndTriggers_interval_batteryLevel_calibrationBlock_isRepeating___block_invoke;
    v13[3] = &unk_1E7991BC0;
    triggersCopy = triggers;
    intervalCopy = interval;
    blockCopy = block;
    v13[4] = self;
    v13[5] = v11;
    xpc_activity_register(a2, v12, v13);
  }
}

- (void)_setupRepeatingCalibrationScheduling:(void *)scheduling withCalibrationBlock:
{
  if (self)
  {
    v6 = [objc_msgSend(a2 "activityName")];
    interval = [a2 interval];
    minimumBatteryLevelToRun = [a2 minimumBatteryLevelToRun];

    [(FigCaptureCalibrationMonitor *)self _setupActivityAndTriggers:v6 interval:interval batteryLevel:minimumBatteryLevelToRun calibrationBlock:scheduling isRepeating:1];
  }
}

- (void)_notifyOfDeviceMotion
{
  if (self)
  {
    os_unfair_lock_lock((self + 36));
    *(self + 32) = 1;

    os_unfair_lock_unlock((self + 36));
  }
}

- (id)_runAndCreateDictionaryForCalibrationContext:(unsigned int)context deviceType:(unsigned int)type devicePosition:(int *)position errors:
{
  v65 = __PAIR64__(type, context);
  v66 = a2;
  if (!self)
  {
    return 0;
  }

  v8 = 0x1E7988000uLL;
  LODWORD(v51) = 0;
  v9 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  v10 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  if (!v10)
  {
    v47 = 0;
    v11 = 0;
    v46 = 64;
    goto LABEL_54;
  }

  v11 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  if (!v11)
  {
    fig_log_get_emitter();
    LODWORD(v52) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v5, v54, v55, v57, v59, v60, v62);
    v46 = 0;
    goto LABEL_55;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = *(self + 8);
  v67 = [obj countByEnumeratingWithState:&v92 objects:v91 count:16];
  if (!v67)
  {
    v46 = 0;
    if (position)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v61 = v12;
  positionCopy = position;
  v58 = v10;
  HIDWORD(v59) = v9;
  HIDWORD(v62) = 0;
  v69 = *v93;
  if (v65)
  {
    v13 = HIDWORD(v65) == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  HIDWORD(v68) = v14;
  v63 = *off_1E798BCB8;
LABEL_12:
  v15 = 0;
  while (1)
  {
    if (*v93 != v69)
    {
      objc_enumerationMutation(obj);
    }

    v16 = *(*(&v92 + 1) + 8 * v15);
    v17 = [objc_msgSend(v16 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
    v18 = [objc_msgSend(v16 objectForKeyedSubscript:{@"DevicePosition", "intValue"}];
    if (!HIDWORD(v68))
    {
      break;
    }

    if (v17 == v65 && v18 == HIDWORD(v65))
    {
      break;
    }

LABEL_40:
    if (++v15 == v67)
    {
      v67 = [obj countByEnumeratingWithState:&v92 objects:v91 count:16];
      if (!v67)
      {
        position = positionCopy;
        v46 = HIDWORD(v62);
        if (HIDWORD(v62))
        {
          goto LABEL_48;
        }

        v8 = 0x1E7988000;
        v9 = HIDWORD(v59);
        v10 = v58;
        v12 = v61;
        if (positionCopy)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      goto LABEL_12;
    }
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v27 = OUTLINED_FUNCTION_1_53(v18, v19, v20, v21, v22, v23, v24, v25, v52, v53, v54, positionCopy, v58, v59, v61, v62, v63, obj, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  if (!v27)
  {
    goto LABEL_47;
  }

  v28 = v27;
  v29 = *v88;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v88 != v29)
      {
        objc_enumerationMutation(v11);
      }

      v31 = *(*(&v87 + 1) + 8 * i);
      portType = [v31 portType];
      v33 = [v16 objectForKeyedSubscript:@"PortType"];
      if (portType == v33)
      {
        if (!v31)
        {
          goto LABEL_47;
        }

        v41 = [v16 objectForKeyedSubscript:@"DeviceName"];
        if ([objc_msgSend(v16 objectForKeyedSubscript:{@"SupportedCalibrations", "containsObject:", objc_msgSend(v66, "propertyName")}])
        {
          if (objc_msgSend_isEqualToString_([v66 propertyName]))
          {
            v42 = [objc_msgSend(v66 "lastSuccessfulCalibrationData")];
            if (v42)
            {
              [v31 setProperty:objc_msgSend(v66 value:{"propertyName"), v42}];
            }
          }

          HIDWORD(v70) = 0;
          v43 = [v31 getProperty:objc_msgSend(v66 error:{"propertyName"), &v70 + 4}];
          if (HIDWORD(v70))
          {
            position = positionCopy;
            v10 = v58;
            v8 = 0x1E7988000;
            v9 = HIDWORD(v59);
            v47 = v61;
            v48 = HIDWORD(v62);
            if (HIDWORD(v70) == -12688)
            {
              v49 = 64;
            }

            else
            {
              v49 = 0x80000000;
            }

            goto LABEL_53;
          }

          v44 = v43;
          v45 = [v43 length];
          if (v45 != [v66 expectedDataSize])
          {
            v49 = 0x80000000;
            position = positionCopy;
            v10 = v58;
            v8 = 0x1E7988000uLL;
            v9 = HIDWORD(v59);
            v47 = v61;
            v48 = HIDWORD(v62);
LABEL_53:
            v46 = v48 | v49;
            goto LABEL_54;
          }

          if (v44)
          {
            [objc_opt_class() printDebugInfoForRawStreamCalibrationData:v44];
            [v61 setObject:v44 forKeyedSubscript:v41];
          }

          else
          {
            HIDWORD(v62) |= 0x80000000;
          }
        }

        goto LABEL_40;
      }
    }

    v28 = OUTLINED_FUNCTION_1_53(v33, v34, v35, v36, v37, v38, v39, v40, v52, v53, v54, positionCopy, v58, v59, v61, v62, v63, obj, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v46 = HIDWORD(v62) | 0x40;
  position = positionCopy;
LABEL_48:
  v8 = 0x1E7988000;
  v9 = HIDWORD(v59);
  v10 = v58;
  v47 = v61;
LABEL_54:

LABEL_55:
  v12 = 0;
  if (position)
  {
LABEL_56:
    *position = v46;
  }

LABEL_57:

  [objc_msgSend(*(v8 + 3776) "sharedCaptureDeviceVendor")];
  return v12;
}

- (void)_createDefaultXPCSchedulingParametersWithInterval:batteryLevel:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *get_DASCTSMagneticInterferenceSensitivityKey(void)") description:{@"FigCaptureCalibrationMonitor.m", 49, @"%s", dlerror()}];
  __break(1u);
}

- (void)_createDefaultXPCSchedulingParametersWithInterval:batteryLevel:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *get_DASCTSMinBatteryLevelKey(void)") description:{@"FigCaptureCalibrationMonitor.m", 50, @"%s", dlerror()}];
  __break(1u);
}

- (void)_createDefaultXPCSchedulingParametersWithInterval:(void *)a3 batteryLevel:.cold.3(id *a1, void *a2, void *a3)
{
  xpc_dictionary_set_BOOL(a2, [*a1 cStringUsingEncoding:4], 1);
  xpc_dictionary_set_value(a3, *MEMORY[0x1E69E9C80], a2);
  xpc_release(a2);
}

@end