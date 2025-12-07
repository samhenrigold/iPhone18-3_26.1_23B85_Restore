@interface FigCaptureDeferredProcessingEngine
+ (id)sharedProcessingEngine;
+ (void)initialize;
- (BWDeferredProcessingContainer)currentContainer;
- (BWStillImageSettings)_stillImageSettingsForContainer:(BWStillImageSettings *)result;
- (FigCaptureDeferredProcessingEngine)init;
- (uint64_t)_reportCoreAnalyticsDataWithError:(void *)error job:;
- (uint64_t)_reserveForClientPID:(uint64_t)result;
- (uint64_t)_shouldReuseGraphForContainer:(uint64_t)container;
- (uint64_t)_transientContainerForDeviceType:(int)type underlyingDeviceType:(int)deviceType devicePosition:(void *)position settings:(void *)settings processingSettings:(void *)processingSettings sourceAttributes:(void *)attributes underlyingSourceAttributes:(void *)sourceAttributes videoFormat:(void *)self0 underlyingVideoFormat:(void *)self1 depthDataFormat:(uint64_t)self2 photoIdentifier:(void *)self3 applicationIdentifier:;
- (uint64_t)_unreserveForClientPID:(uint64_t)result;
- (unint64_t)expectsGainMapForSettings:(void *)settings captureSettings:;
- (void)_cleanupFromJob;
- (void)_ensureGraphForJob:(void *)job applicationID:;
- (void)_ensureGraphForProcessingContainer:(unsigned int)container sensorRawPixelFormat:(unint64_t)format sensorRawDimensions:(int64_t)dimensions ultraHighResSensorRawDimensions:(uint64_t)rawDimensions depthDataSourceDimensions:(uint64_t)sourceDimensions depthDataTargetDimensions:(uint64_t)targetDimensions photoIdentifier:(void *)identifier applicationID:;
- (void)_handleJobCompletion:(void *)completion;
- (void)_handleProcessedStillImage:(uint64_t)image error:(void *)error settings:;
- (void)_releaseGraph;
- (void)_runJob;
- (void)dealloc;
- (void)ensurePrewarmedGraphForSettings:(id)settings processingSettings:(id)processingSettings applicationID:(id)d;
- (void)executeJob:(id)job;
- (void)graph:(id)graph didFinishStartingWithError:(int)error;
- (void)immediateTermination;
- (void)releasePrewarmingResources;
- (void)releaseResourcesForClientPID:(int)d isPrewarmCancellation:(BOOL)cancellation;
@end

@implementation FigCaptureDeferredProcessingEngine

+ (id)sharedProcessingEngine
{
  if (sharedProcessingEngine_sOnceEngineToken != -1)
  {
    +[FigCaptureDeferredProcessingEngine sharedProcessingEngine];
  }

  return sharedProcessingEngine_sEngine;
}

- (void)_cleanupFromJob
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v4);
    }

    v2 = *(self + 88);
    if (v2)
    {
      -[FigCaptureDeferredProcessingEngine _unreserveForClientPID:](self, [objc_msgSend(v2 "processorRequest")]);
      v3 = *(self + 88);
    }

    else
    {
      v3 = 0;
    }

    *(self + 88) = 0;
  }
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

FigCaptureDeferredProcessingEngine *__60__FigCaptureDeferredProcessingEngine_sharedProcessingEngine__block_invoke()
{
  result = objc_alloc_init(FigCaptureDeferredProcessingEngine);
  sharedProcessingEngine_sEngine = result;
  return result;
}

- (FigCaptureDeferredProcessingEngine)init
{
  v19.receiver = self;
  v19.super_class = FigCaptureDeferredProcessingEngine;
  v2 = [(FigCaptureDeferredProcessingEngine *)&v19 init];
  if (v2)
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_workQueue = FigDispatchQueueCreateWithPriority();
    v2->_reservationLock = FigSimpleMutexCreateWithFlags();
    v3 = objc_autoreleasePoolPush();
    cameraTuningParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters cameraTuningParameters];
    v5 = [MEMORY[0x1E695DFA8] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [(NSDictionary *)cameraTuningParameters allKeys];
    v7 = [(NSArray *)allKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 hasPrefix:@"PortType"])
          {
            [v5 addObjectsFromArray:{objc_msgSend(-[NSDictionary objectForKeyedSubscript:](cameraTuningParameters, "objectForKeyedSubscript:", v11), "allKeys")}];
          }
        }

        v8 = [(NSArray *)allKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v8);
    }

    v2->_allSensorIDStrings = [v5 copy];
    v12 = [-[NSDictionary objectForKeyedSubscript:](cameraTuningParameters objectForKeyedSubscript:{@"DefaultSensorIDs", "copy"}];
    v2->_memoryPool = 0;
    v2->_flushAssertion = 0;
    v2->_defaultSensorIDsByPortType = v12;
    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = FigCaptureDeferredProcessingEngine;
  [(FigCaptureDeferredProcessingEngine *)&v3 dealloc];
}

- (BWDeferredProcessingContainer)currentContainer
{
  prewarmedContainer = self->_prewarmedContainer;
  container = [(FigCaptureDeferredProcessingJob *)self->_job container];
  if (prewarmedContainer)
  {
    v4 = 0;
  }

  else
  {
    v4 = container;
  }

  if (container)
  {
    return v4;
  }

  else
  {
    return prewarmedContainer;
  }
}

- (void)graph:(id)graph didFinishStartingWithError:(int)error
{
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__FigCaptureDeferredProcessingEngine_graph_didFinishStartingWithError___block_invoke;
  v5[3] = &unk_1E7991CF0;
  errorCopy = error;
  v5[4] = self;
  dispatch_async(workQueue, v5);
}

void __71__FigCaptureDeferredProcessingEngine_graph_didFinishStartingWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    [objc_msgSend(v3 "currentJob")];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [(FigCaptureDeferredProcessingEngine *)v6 _handleJobCompletion:v7];
  }

  else
  {
    v4 = [v3 currentContainer];
    v5 = [v4 pipelineParameters];

    *(*(a1 + 32) + 32) = [objc_msgSend(objc_msgSend(v4 "captureSettings")];
    *(*(a1 + 32) + 40) = [v5 copy];
    *(*(a1 + 32) + 48) = fcdpe_demosaicedRawEnabled(v4);
    *(*(a1 + 32) + 49) = ([objc_msgSend(v4 "captureSettings")] & 0x800) != 0;

    *(*(a1 + 32) + 56) = [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _stillImageSettingsForContainer:v4];
    if ([*(a1 + 32) currentJob])
    {
      v8 = *(a1 + 32);

      [(FigCaptureDeferredProcessingEngine *)v8 _runJob];
    }
  }
}

- (void)executeJob:(id)job
{
  -[FigCaptureDeferredProcessingEngine _reserveForClientPID:](self, [objc_msgSend(job "processorRequest")]);
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__FigCaptureDeferredProcessingEngine_executeJob___block_invoke;
  v6[3] = &unk_1E798F898;
  v6[4] = job;
  v6[5] = self;
  dispatch_async(workQueue, v6);
}

void __49__FigCaptureDeferredProcessingEngine_executeJob___block_invoke(uint64_t a1)
{
  if (dword_1ED843F70)
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) setInteractiveQoS:{qos_class_self() > 0x18, v29, v31}];
  v3 = *(a1 + 40);
  if (*(v3 + 88))
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v44;
    if (os_log_type_enabled(v22, v43))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = [objc_msgSend(*(a1 + 32) "container")];
      v26 = [objc_msgSend(*(a1 + 32) "processorRequest")];
      v27 = [objc_msgSend(*(*(a1 + 40) + 88) "container")];
      v28 = [objc_msgSend(*(*(a1 + 40) + 88) "processorRequest")];
      v33 = 136316162;
      v34 = "[FigCaptureDeferredProcessingEngine executeJob:]_block_invoke";
      v35 = 2114;
      *v36 = v25;
      *&v36[8] = 1024;
      *&v36[10] = v26;
      v37 = 2114;
      v38 = v27;
      v39 = 1024;
      LODWORD(v40) = v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"A client requested deferred processing for a container while a job was in-progress for another client", 0}]);
  }

  *(*(a1 + 40) + 96) = 0;
  *(*(a1 + 40) + 88) = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!*(v4 + 64))
  {
    v5 = @"no pre-existing graph";
LABEL_16:
    *(v4 + 136) = 0;
    if (dword_1ED843F70)
    {
      v44 = 0;
      v43 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v44;
      if (os_log_type_enabled(v11, v43))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = [objc_msgSend(*(*(a1 + 40) + 88) "processorRequest")];
        v15 = [objc_msgSend(*(a1 + 32) "processorRequest")];
        v16 = [objc_msgSend(*(a1 + 32) "processorRequest")];
        v17 = [objc_msgSend(objc_msgSend(*(a1 + 32) "container")];
        v33 = 136316418;
        v34 = "[FigCaptureDeferredProcessingEngine executeJob:]_block_invoke";
        v35 = 1024;
        *v36 = v14;
        *&v36[4] = 2114;
        *&v36[6] = v5;
        v37 = 2114;
        v38 = v15;
        v39 = 2114;
        v40 = v16;
        v41 = 2048;
        v42 = v17;
        LODWORD(v32) = 58;
        v30 = &v33;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    -[FigCaptureDeferredProcessingEngine _ensureGraphForJob:applicationID:](*(a1 + 40), *(a1 + 32), [objc_msgSend(*(a1 + 32) processorRequest]);
    return;
  }

  v6 = -[FigCaptureDeferredProcessingEngine _shouldReuseGraphForContainer:](v4, [*(a1 + 32) container]);
  v7 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if (([*(v7 + 88) isInteractiveQoS] & 1) == 0)
    {
      [*(*(a1 + 40) + 64) setGraphStateTransitionTimeoutSeconds:60];
    }

    [(FigCaptureDeferredProcessingEngine *)*(a1 + 40) _releaseGraph];
    v4 = *(a1 + 40);
    v5 = @"should not re-use existing graph";
    goto LABEL_16;
  }

  *(v7 + 136) = 1;
  if (dword_1ED843F70)
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v44;
    if (os_log_type_enabled(v8, v43))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v18 = [objc_msgSend(*(*(a1 + 40) + 88) "processorRequest")];
      v19 = [objc_msgSend(*(a1 + 32) "processorRequest")];
      v20 = [objc_msgSend(*(a1 + 32) "processorRequest")];
      v21 = [objc_msgSend(objc_msgSend(*(a1 + 32) "container")];
      v33 = 136316162;
      v34 = "[FigCaptureDeferredProcessingEngine executeJob:]_block_invoke";
      v35 = 1024;
      *v36 = v18;
      *&v36[4] = 2114;
      *&v36[6] = v19;
      v37 = 2114;
      v38 = v20;
      v39 = 2048;
      v40 = v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(FigCaptureDeferredProcessingEngine *)*(a1 + 40) _runJob];
}

- (void)releaseResourcesForClientPID:(int)d isPrewarmCancellation:(BOOL)cancellation
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__FigCaptureDeferredProcessingEngine_releaseResourcesForClientPID_isPrewarmCancellation___block_invoke;
  block[3] = &unk_1E7991948;
  block[4] = self;
  dCopy = d;
  v11 = 25;
  cancellationCopy = cancellation;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_workQueue, v8);
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

  if (*v7 == 1)
  {
    kdebug_trace();
  }
}

void __89__FigCaptureDeferredProcessingEngine_releaseResourcesForClientPID_isPrewarmCancellation___block_invoke(uint64_t a1)
{
  if ([objc_msgSend(*(*(a1 + 32) + 88) "processorRequest")] == *(a1 + 40) || !*(*(a1 + 32) + 88))
  {
    if (dword_1ED843F70)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(a1 + 32);
    if ((*(a1 + 48) & 1) != 0 || *(v4 + 88) && (v5 = [*(v4 + 88) isInteractiveQoS], v4 = *(a1 + 32), (v5 & 1) == 0))
    {
      [*(v4 + 64) setGraphStateTransitionTimeoutSeconds:{60, v6, v7}];
      v4 = *(a1 + 32);
    }

    [(FigCaptureDeferredProcessingEngine *)v4 _releaseGraph];
    [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _cleanupFromJob];

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)releasePrewarmingResources
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__FigCaptureDeferredProcessingEngine_releasePrewarmingResources__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)immediateTermination
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FigCaptureDeferredProcessingEngine_immediateTermination__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)ensurePrewarmedGraphForSettings:(id)settings processingSettings:(id)processingSettings applicationID:(id)d
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke;
  block[3] = &unk_1E7991D18;
  block[4] = self;
  block[5] = d;
  block[6] = settings;
  block[7] = processingSettings;
  block[8] = v7;
  dispatch_sync(workQueue, block);
  _Block_object_dispose(v7, 8);
}

void __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) currentJob])
  {
    if (!dword_1ED843F70)
    {
LABEL_83:
      v48 = 0;
      goto LABEL_46;
    }

    LODWORD(v101[0]) = 0;
    LOBYTE(v100[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_82:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_83;
  }

  v3 = [*(a1 + 48) deferredSourceDeviceType];
  v4 = v3;
  v5 = v3 - 4;
  v6 = v3;
  if ((v3 - 4) <= 8)
  {
    v6 = v3;
    if ((0x135u >> v5))
    {
      v6 = dword_1AD0551D8[v5];
    }
  }

  v7 = [*(a1 + 48) deferredSourcePosition];
  v8 = *(a1 + 48);
  v9 = [v8 deferredVideoFormatUniqueID];
  v89 = [v8 deferredDepthDataFormatUniqueID];
  v10 = [+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke;
  v95[3] = &__block_descriptor_40_e40_B32__0__FigCaptureSourceBacking_8Q16_B24l;
  v96 = v4;
  v97 = v7;
  v11 = [v10 indexOfObjectPassingTest:v95];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_76;
  }

  v12 = [v10 objectAtIndexedSubscript:v11];
  v88 = [v12 attributes];
  *v92 = MEMORY[0x1E69E9820];
  *&v92[8] = 3221225472;
  *&v92[16] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_2;
  v93 = &__block_descriptor_40_e40_B32__0__FigCaptureSourceBacking_8Q16_B24l;
  v94[0] = v6;
  v94[1] = v7;
  v91 = v7;
  v13 = [v10 indexOfObjectPassingTest:v92];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_5();
    goto LABEL_76;
  }

  HIDWORD(v87) = v4;
  v14 = v6;
  v15 = [v10 objectAtIndexedSubscript:v13];
  v16 = [v15 attributes];
  v17 = [v12 formats];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_3;
  v101[3] = &unk_1E7991DB0;
  v101[4] = v9;
  v18 = [v17 indexOfObjectPassingTest:v101];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_4();
    goto LABEL_76;
  }

  v19 = [v17 objectAtIndexedSubscript:v18];
  v20 = [v15 formats];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_4;
  v100[3] = &unk_1E7991DB0;
  v100[4] = v9;
  v21 = [v20 indexOfObjectPassingTest:v100];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_3();
    goto LABEL_76;
  }

  v22 = [v20 objectAtIndexedSubscript:v21];
  if (v89)
  {
    v23 = [v19 supportedDepthDataFormats];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_5;
    v99[3] = &unk_1E7991DD8;
    v99[4] = v89;
    v24 = [v23 indexOfObjectPassingTest:v99];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_2();
      goto LABEL_76;
    }

    v25 = v16;
    v26 = [v23 objectAtIndexedSubscript:v24];
    if (!v26)
    {
      __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_1();
LABEL_76:
      *(*(*(a1 + 64) + 8) + 24) = -12780;
LABEL_77:
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v1, v84, v85, v86, v1, v87, v88);
      LODWORD(v101[0]) = 0;
      LOBYTE(v100[0]) = 0;
      v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v79 = v101[0];
      if (os_log_type_enabled(v78, v100[0]))
      {
        v80 = v79;
      }

      else
      {
        v80 = v79 & 0xFFFFFFFE;
      }

      if (!v80)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v25 = v16;
    v26 = 0;
  }

  LODWORD(v87) = v14;
  v27 = [v8 deferredPhotoProxyDimensions];
  if (v27 < 1 || SHIDWORD(v27) <= 0)
  {
    v90 = v22;
    v28 = [v8 outputDimensions];
    if (v28 < 1 || SHIDWORD(v28) < 1)
    {
      v29 = [v19 dimensions];
    }

    else
    {
      v29 = [v8 outputDimensions];
    }

    v30 = v29;
    if (![v8 aspectRatio])
    {
      if ([v19 isDynamicAspectRatioSupported])
      {
        v31 = [v8 setAspectRatio:1];
        if (v91 == 2 && FigCaptureFrontCameraRotationAngle(v31, v32) % 180 == 90)
        {
          [v8 setAspectRatio:2];
        }
      }
    }

    v33 = [v19 highResStillImageDimensions];
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_6;
    v98[3] = &__block_descriptor_40_e49_B32__0__FigCaptureSourceFormatDimensions_8Q16_B24l;
    v98[4] = v30;
    v34 = [v33 indexOfObjectPassingTest:v98];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_76;
    }

    v35 = v34;
    [v8 setResolutionFlavor:{+[FigCaptureSourceFormatDimensions identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:](FigCaptureSourceFormatDimensions, "identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:", v30, v33, objc_msgSend(v8, "aspectRatio"))}];
    v36 = [v33 objectAtIndexedSubscript:v35];
    v37 = [v36 deferredPhotoProxyDimensions];
    if ([v8 aspectRatio])
    {
      v38 = BWAspectRatioValueFromAspectRatio([v8 aspectRatio]);
      v37 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v30, v38);
    }

    [v8 setDeferredPhotoProxyWidth:v37];
    [v8 setDeferredPhotoProxyHeight:HIDWORD(v37)];
    v39 = [v36 dimensions];
    if ([v8 aspectRatio])
    {
      v40 = BWAspectRatioValueFromAspectRatio([v8 aspectRatio]);
      v39 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v30, v40);
    }

    [v8 setDeferredPhotoFinalWidth:v39];
    [v8 setDeferredPhotoFinalHeight:HIDWORD(v39)];
    [v8 setOutputWidth:v39];
    [v8 setOutputHeight:HIDWORD(v39)];
    v22 = v90;
  }

  v41 = v88;
  v42 = v25;
  v43 = v19;
  v44 = v22;
  v45 = v26;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  if (!v43)
  {
    goto LABEL_77;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", *(*(*(a1 + 64) + 8) + 24), v1, v84, v85, v86, v1, v87, v88);
    LODWORD(v101[0]) = 0;
    LOBYTE(v100[0]) = 0;
    v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v73 = v101[0];
    if (os_log_type_enabled(v72, v100[0]))
    {
      v74 = v73;
    }

    else
    {
      v74 = v73 & 0xFFFFFFFE;
    }

    if (!v74)
    {
      goto LABEL_82;
    }

LABEL_81:
    v81 = *(a1 + 48);
    *v92 = 136315394;
    *&v92[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
    *&v92[12] = 2114;
    *&v92[14] = v81;
    _os_log_send_and_compose_impl();
    goto LABEL_82;
  }

  v46 = v45;
  v47 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  v48 = [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _transientContainerForDeviceType:v14 underlyingDeviceType:v91 devicePosition:*(a1 + 48) settings:*(a1 + 56) processingSettings:v41 sourceAttributes:v42 underlyingSourceAttributes:v43 videoFormat:v44 underlyingVideoFormat:v46 depthDataFormat:v47 photoIdentifier:*(a1 + 40) applicationIdentifier:?];
  v49 = *(a1 + 32);
  if (!*(v49 + 64))
  {
    goto LABEL_34;
  }

  if (![(FigCaptureDeferredProcessingEngine *)v49 _shouldReuseGraphForContainer:v48])
  {
    v67 = *(*(a1 + 32) + 64);
    if (v67)
    {
      if (dword_1ED843F70)
      {
        LODWORD(v101[0]) = 0;
        LOBYTE(v100[0]) = 0;
        v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v69 = v101[0];
        if (os_log_type_enabled(v68, v100[0]))
        {
          v70 = v69;
        }

        else
        {
          v70 = v69 & 0xFFFFFFFE;
        }

        if (v70)
        {
          v75 = *(a1 + 40);
          v76 = *(a1 + 48);
          v77 = *(a1 + 56);
          *v92 = 136315906;
          *&v92[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
          *&v92[12] = 2112;
          *&v92[14] = v75;
          *&v92[22] = 2112;
          v93 = v76;
          LOWORD(v94[0]) = 2112;
          *(v94 + 2) = v77;
          LODWORD(v83) = 42;
          v82 = v92;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v67 = *(*(a1 + 32) + 64);
      }

      [v67 setGraphStateTransitionTimeoutSeconds:{60, v82, v83}];
      [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _releaseGraph];
      goto LABEL_41;
    }

LABEL_34:
    if (dword_1ED843F70)
    {
      LODWORD(v101[0]) = 0;
      LOBYTE(v100[0]) = 0;
      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v51 = v101[0];
      if (os_log_type_enabled(v50, v100[0]))
      {
        v52 = v51;
      }

      else
      {
        v52 = v51 & 0xFFFFFFFE;
      }

      if (v52)
      {
        v53 = *(a1 + 40);
        v54 = *(a1 + 48);
        v55 = *(a1 + 56);
        *v92 = 136315906;
        *&v92[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
        *&v92[12] = 2112;
        *&v92[14] = v53;
        *&v92[22] = 2112;
        v93 = v54;
        LOWORD(v94[0]) = 2112;
        *(v94 + 2) = v55;
        LODWORD(v83) = 42;
        v82 = v92;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_41:

    *(*(a1 + 32) + 96) = v48;
    v56 = [v46 soleHighResStillImageDimensions];
    v57 = [objc_msgSend(v48 "pipelineParameters")];
    v59 = v56;
    if (v57)
    {
      v60 = FigCaptureFrontDepthDataToRGBRotationAngle(v57, v58);
      if (v60 == 270 || (v59 = v56, v60 == 90))
      {
        v59 = __ROR8__(v56, 32);
      }
    }

    -[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:](*(a1 + 32), v48, [*(a1 + 56) sensorRawPixelFormat], objc_msgSend(*(a1 + 56), "sensorRawDimensions"), objc_msgSend(*(a1 + 56), "ultraHighResSensorRawDimensions"), v59, v56, v47, *(a1 + 40));
    goto LABEL_46;
  }

  if (dword_1ED843F70)
  {
    LODWORD(v101[0]) = 0;
    LOBYTE(v100[0]) = 0;
    v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v62 = v101[0];
    if (os_log_type_enabled(v61, v100[0]))
    {
      v63 = v62;
    }

    else
    {
      v63 = v62 & 0xFFFFFFFE;
    }

    if (v63)
    {
      v64 = *(a1 + 40);
      v65 = *(a1 + 48);
      v66 = *(a1 + 56);
      *v92 = 136315906;
      *&v92[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
      *&v92[12] = 2112;
      *&v92[14] = v64;
      *&v92[22] = 2112;
      v93 = v65;
      LOWORD(v94[0]) = 2112;
      *(v94 + 2) = v66;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_46:
}

- (void)_ensureGraphForProcessingContainer:(unsigned int)container sensorRawPixelFormat:(unint64_t)format sensorRawDimensions:(int64_t)dimensions ultraHighResSensorRawDimensions:(uint64_t)rawDimensions depthDataSourceDimensions:(uint64_t)sourceDimensions depthDataTargetDimensions:(uint64_t)targetDimensions photoIdentifier:(void *)identifier applicationID:
{
  if (!self)
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    [FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:];
  }

  v191[0] = 0;
  code = 0;
  v189[0] = 0;
  v189[1] = v189;
  v189[2] = 0x3052000000;
  v189[3] = __Block_byref_object_copy__17;
  v189[4] = __Block_byref_object_dispose__17;
  v189[5] = self;
  currentJob = [self currentJob];
  settings = [a2 settings];
  v147 = [objc_msgSend(a2 "captureSettings")];
  v17 = [objc_msgSend(a2 "captureSettings")];
  v139 = [objc_msgSend(a2 "photoManifest")];
  if ((*(self + 72) & 1) == 0)
  {
    [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:", 0];
  }

  v154 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v153 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sourceDimensionsCopy = sourceDimensions;
  formatCopy = format;
  dimensionsCopy = dimensions;
  containerCopy = container;
  rawDimensionsCopy = rawDimensions;
  v144 = v17;
  selfCopy = self;
  pipelineParameters = [a2 pipelineParameters];
  v19 = +[FigCaptureCameraParameters sharedInstance];
  nrfVersion = [pipelineParameters nrfVersion];
  if (nrfVersion != -[FigCaptureCameraParameters nrfVersion](v19, "nrfVersion") || [pipelineParameters deepZoomVersion] && (v21 = objc_msgSend(pipelineParameters, "deepZoomVersion"), v21 != -[FigCaptureCameraParameters deepZoomVersion](v19, "deepZoomVersion")) || objc_msgSend(pipelineParameters, "distortionCorrectionVersion") && (v22 = objc_msgSend(pipelineParameters, "distortionCorrectionVersion"), v22 != -[FigCaptureCameraParameters distortionCorrectionVersion](v19, "distortionCorrectionVersion")))
  {
    v33 = 0;
    UpTimeNanoseconds = 0;
    v140 = 0;
    v52 = 0;
    v142 = 0;
    v53 = -16827;
    goto LABEL_169;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [a2 captureRequestIdentifierBytesLow];
    [a2 captureRequestIdentifierBytesHigh];
    kdebug_trace();
  }

  -[BWMemoryPool ensureMemoryAsyncWithSize:withMaximizeSystemMemory:useOptimizedMemorySizeDistributionsIfAvailable:forClientBundleId:](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "ensureMemoryAsyncWithSize:withMaximizeSystemMemory:useOptimizedMemorySizeDistributionsIfAvailable:forClientBundleId:", 1, [currentJob isInteractiveQoS], 0, 0);
  *(self + 120) = +[BWMemoryPool sharedMemoryPool];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (dword_1ED843F70)
  {
    v188 = 0;
    v187 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v186 = v147;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v186 count:{1, v116, v117}];
  obj = [MEMORY[0x1E695DF70] arrayWithArray:v24];
  v145 = [MEMORY[0x1E695DF70] arrayWithArray:v24];
  if ([pipelineParameters pearlModuleType] || (v17 & 0x4000000000) != 0)
  {
    v25 = [objc_msgSend(a2 "captureSettings")];
    [obj addObjectsFromArray:v25];
    [v145 addObjectsFromArray:v25];
    if ([pipelineParameters pearlModuleType])
    {
      [v145 removeObject:*off_1E798A0E8];
    }
  }

  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v26 = [obj countByEnumeratingWithState:&v182 objects:v181 count:16];
  v156 = a2;
  if (v26)
  {
    v27 = *v183;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v183 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v182 + 1) + 8 * i);
        v30 = [objc_msgSend(objc_msgSend(v156 "captureSettings")];
        if (!v30)
        {
          v30 = [*(self + 112) objectForKeyedSubscript:v29];
          if (!v30)
          {
            LODWORD(v116) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
            v33 = 0;
            goto LABEL_63;
          }
        }

        if (([*(self + 104) containsObject:v30] & 1) == 0)
        {
          code = -16134;
          v188 = 0;
          v187 = OS_LOG_TYPE_DEFAULT;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v38 = v188;
          if (os_log_type_enabled(v37, v187))
          {
            v39 = v38;
          }

          else
          {
            v39 = v38 & 0xFFFFFFFE;
          }

          if (v39)
          {
            v40 = *(self + 104);
            v177 = 136315650;
            v178 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
            v179 = 2114;
            *v180 = v30;
            *&v180[8] = 2114;
            *&v180[10] = v40;
            LODWORD(v117) = 32;
            v116 = &v177;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_128:
          v33 = 0;
          v52 = 0;
          v142 = 0;
          v140 = 0;
          goto LABEL_170;
        }

        [v154 setObject:v30 forKeyedSubscript:v29];
        v31 = [v156 copyDictionaryForTag:objc_msgSend(MEMORY[0x1E696AEC0] err:{"stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix, v29), &code}];
        if (!v31)
        {
          goto LABEL_128;
        }

        [v153 setObject:v31 forKeyedSubscript:v29];
      }

      v26 = [obj countByEnumeratingWithState:&v182 objects:v181 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v32 = v156;
  if ([v156 hasTag:BWDeferredIntermediateTagModuleCalibrationByPortType])
  {
    v33 = [v156 copyDictionaryForTag:BWDeferredIntermediateTagModuleCalibrationByPortType customClasses:objc_msgSend(MEMORY[0x1E695DFD8] err:{"setWithObject:", objc_opt_class()), &code}];
    if (code)
    {
      v188 = 0;
      v187 = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = v188;
      if (os_log_type_enabled(v34, v187))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v177 = 136315394;
        v178 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
        v179 = 1024;
        *v180 = code;
        LODWORD(v117) = 18;
        v116 = &v177;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v33 = 0;
  }

  if ([v156 hasTag:{BWDeferredIntermediateTagSourceNodePixelBufferAttributes, v116, v117}])
  {
    v142 = [v156 copyDictionaryForTag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes err:&code];
  }

  else
  {
    if ([objc_msgSend(v156 "captureSettings")] != 12 || (v144 & 4) != 0)
    {
LABEL_62:
      LODWORD(v116) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
LABEL_63:
      v52 = 0;
      v142 = 0;
      v140 = 0;
      v53 = -16131;
      goto LABEL_169;
    }

    v142 = [v156 copyAttributesForBufferType:8 portType:v147 err:&code];
  }

  if (!v142)
  {
    goto LABEL_62;
  }

  v41 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  v42 = cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes(settings, v142);
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  [v41 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6966208]];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v42)];
  [v41 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69660B8]];
  v45 = -[FigCaptureDeferredProcessingEngine expectsGainMapForSettings:captureSettings:](self, settings, [v156 captureSettings]);
  v46 = [v156 hasBufferForType:19 portType:v147];
  if ([objc_msgSend(v156 "captureSettings")])
  {
    LODWORD(v47) = [pipelineParameters generateInferencesForSemanticProcessingIfNeeded];
    v48 = v144;
  }

  else
  {
    v48 = v144;
    v47 = HIDWORD(v144) & 1;
  }

  if ((v45 | v46 | v47))
  {
    v49 = 2.0;
  }

  else
  {
    v49 = 0.0;
  }

  if ((v48 & 4) == 0)
  {
    goto LABEL_61;
  }

  resolutionFlavor = [settings resolutionFlavor];
  v51 = dimensionsCopy;
  if (resolutionFlavor == 2)
  {
    goto LABEL_68;
  }

  if (resolutionFlavor == 1)
  {
    v51 = dimensionsCopy;
    if ((v144 & 0x400000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (resolutionFlavor)
  {
LABEL_61:
    v51 = 0;
    goto LABEL_68;
  }

  if ([settings aspectRatio])
  {
    v51 = v42;
  }

  else
  {
    v51 = formatCopy;
  }

LABEL_68:
  v54 = [v142 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
  if (v54)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [objc_msgSend(v54 "firstObject")];
    }

    else
    {
      unsignedIntValue = [v54 unsignedIntValue];
    }
  }

  else
  {
    if ([objc_msgSend(v156 "captureSettings")] == 12)
    {
      v55 = 1885745712;
    }

    else
    {
      v55 = 875704422;
    }

    unsignedIntValue = v55;
  }

  v56 = [objc_msgSend(v156 "captureSettings")];
  if ([pipelineParameters intelligentDistortionCorrectionEnabled])
  {
    v176 = v147;
    v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
  }

  else
  {
    v129 = 0;
  }

  if ([pipelineParameters geometricDistortionCorrectionEnabled])
  {
    v175 = v147;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
  }

  else
  {
    v57 = 0;
  }

  v58 = [objc_msgSend(v156 "captureSettings")];
  v60 = v145;
  if (!v58)
  {
    v60 = v57;
  }

  v136 = v60;
  if (v56 == 13)
  {
    v174 = v147;
    v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:1];
  }

  else
  {
    v128 = 0;
  }

  v130 = FigCaptureClientApplicationIDIsCameraOrDerivative(identifier, v59);
  v52 = objc_alloc_init(FigCaptureIrisSinkConfiguration);
  -[FigCaptureSinkConfiguration setSinkID:](v52, "setSinkID:", [selfCopy description]);
  -[FigCaptureIrisSinkConfiguration setDemosaicedRawEnabled:](v52, "setDemosaicedRawEnabled:", ([v139 processingFlags] >> 16) & 1);
  -[FigCaptureIrisSinkConfiguration setStereoPhotoCaptureEnabled:](v52, "setStereoPhotoCaptureEnabled:", [objc_msgSend(v156 "captureSettings")] != 0);
  v61 = [[BWGraph alloc] initWithConfigurationQueuePriority:39];
  *(selfCopy + 64) = v61;
  [(BWGraph *)v61 beginConfiguration];
  [*(selfCopy + 64) setStatusDelegate:?];
  [*(selfCopy + 64) setModeDescription:@"Deferred Photo Processing"];
  v62 = *(selfCopy + 120);
  if (v62)
  {
    *(selfCopy + 128) = [v62 newFlushAssertion:@"DeferredProcessingGraph"];
    [*(selfCopy + 64) setMemoryPool:*(selfCopy + 120)];
  }

  v63 = [[BWDeferredProcessingSourceNode alloc] initWithPortTypes:v145 attributes:v41 colorSpaceProperties:3];
  *(selfCopy + 80) = v63;
  if (([*(selfCopy + 64) addNode:v63 error:v191] & 1) == 0)
  {
    LODWORD(v116) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
    v140 = 0;
    v53 = -12780;
    goto LABEL_169;
  }

  v140 = objc_alloc_init(BWInferenceScheduler);
  noiseReductionAndFusionScheme = [pipelineParameters noiseReductionAndFusionScheme];
  if ((v144 & 0x84) != 0)
  {
    v65 = 5;
  }

  else
  {
    v65 = 4;
  }

  if (noiseReductionAndFusionScheme)
  {
    v65 = noiseReductionAndFusionScheme;
  }

  if (v65 != 5)
  {
    if (v65 != 4)
    {
LABEL_168:
      LODWORD(v116) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
      v53 = -12786;
LABEL_169:
      code = v53;
      goto LABEL_170;
    }

    v66 = objc_alloc_init(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration);
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setPipelineStagePriority:39];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setInferencePriority:39];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDeviceType:](v66, "setDeviceType:", [objc_msgSend(objc_msgSend(v156 "captureSettings")]);
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setSensorIDStringsByPortType:v154];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setCameraInfoByPortType:v153];
    LODWORD(v67) = 2.0;
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setUbInferenceMainImageDownscalingFactor:v67];
    *&v68 = v49;
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setGainMapMainImageDownscalingFactor:v68];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setMaxLossyCompressionLevel:+[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel]];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v66 setInputIs10Bit:FigCapturePixelFormatIsTenBit(unsignedIntValue)];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setRedEyeReductionVersion:0];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setSemanticRenderingVersion:0];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setSemanticDevelopmentVersion:0];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setPortTypesWithIntelligentDistortionCorrectionEnabled:v129];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setPortTypesWithGeometricDistortionCorrectionEnabled:v136];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setGdcInDCProcessorSupported:v136 != 0];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDcProcessorVersion:](v66, "setDcProcessorVersion:", [pipelineParameters distortionCorrectionVersion]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDemosaicedRawPixelFormat:](v66, "setDemosaicedRawPixelFormat:", [objc_msgSend(v156 "settings")]);
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setStillImageSinkPipelineProcessingMode:1];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setDeepFusionSupported:v56 == 12];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 setLearnedNRSupported:(v144 >> 7) & 1];
    v69 = v56 == 12 || [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v66 learnedNRSupported];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v66 setStillImageStabilizationSupported:v69];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDeepZoomVersion:](v66, "setDeepZoomVersion:", [pipelineParameters deepZoomVersion]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v66 setClientIsCameraOrDerivative:v130];
    -[FigCaptureIrisSinkConfiguration setPortraitEffectsMatteDeliveryEnabled:](v52, "setPortraitEffectsMatteDeliveryEnabled:", [objc_msgSend(v156 "settings")]);
    LODWORD(v79) = 2.0;
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v66 setPortraitEffectsMatteMainImageDownscalingFactor:v79];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setSupportedSemanticSegmentationMatteURNs:](v66, "setSupportedSemanticSegmentationMatteURNs:", [objc_msgSend(v156 "settings")]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setEnabledSemanticSegmentationMatteURNs:](v66, "setEnabledSemanticSegmentationMatteURNs:", [objc_msgSend(v156 "settings")]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v66 setSinkConfiguration:v52];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v66 setNoiseReductionAndFusionScheme:4];
    v80 = -[FigCaptureStillImageUnifiedBracketingSinkPipeline initWithConfiguration:captureDevice:sourceOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:graph:name:]([FigCaptureStillImageUnifiedBracketingSinkPipeline alloc], "initWithConfiguration:captureDevice:sourceOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:graph:name:", v66, 0, [*(selfCopy + 80) outputsByPortType], 0, 0, 0, 0, v140, 0, *(selfCopy + 64), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Deferred Processing %@", +[FigCaptureStillImageUnifiedBracketingSinkPipeline pipelineBaseName](FigCaptureStillImageUnifiedBracketingSinkPipeline, "pipelineBaseName")));
LABEL_164:
    v97 = v80;
    if (v80)
    {
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v80 stillImageSinkNode] setDeferredPhotoProcessorEnabled:1];
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v97 stillImageSinkNode] setClientIsCameraOrDerivative:v130];
      v157[0] = MEMORY[0x1E69E9820];
      v157[1] = 3221225472;
      v157[2] = __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke;
      v157[3] = &unk_1E7991D68;
      v157[4] = v189;
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v97 stillImageSinkNode] setSampleBufferAvailableHandler:v157];
      v98 = objc_alloc_init(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration);
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFormatDimensionWidth:](v98, "setFormatDimensionWidth:", [objc_msgSend(v32 "settings")]);
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFormatDimensionHeight:](v98, "setFormatDimensionHeight:", [objc_msgSend(v32 "settings")]);
      LODWORD(v99) = 30.0;
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v98 setFormatMaxFrameRate:v99];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v98 setIsHighQualityPhotoWithVideoFormatSupported:0];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v98 setIsPhotoFormat:1];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v98 setIsTimeLapse:0];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v98 setPixelFormat:unsignedIntValue];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v98 setBinned:0];
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setIsSemanticStyleRenderingSupported:](v98, "setIsSemanticStyleRenderingSupported:", [objc_msgSend(v32 "settings")] != 0);
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFastCapturePrioritizationEnabled:](v98, "setFastCapturePrioritizationEnabled:", [objc_msgSend(objc_msgSend(v32 "captureSettings")]);
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v97 stillImageSinkNode] setAnalyticsConfiguration:v98];
      if (([*(selfCopy + 64) commitConfigurationWithID:1 error:v191] & 1) != 0 && objc_msgSend(*(selfCopy + 64), "start:", v191))
      {
        *(selfCopy + 72) = 1;
      }

      else
      {
        LODWORD(v116) = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
      }

      goto LABEL_170;
    }

    goto LABEL_168;
  }

  obja = objc_alloc_init(FigCapturePhotonicEngineSinkPipelineConfiguration);
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPipelineStagePriority:39];
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setInferencePriority:39];
  -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeviceType:](obja, "setDeviceType:", [objc_msgSend(objc_msgSend(v156 "captureSettings")]);
  if ((v144 & 0x4000000000) != 0)
  {
    v70 = [objc_msgSend(v156 "captureSettings")];
    if ([v70 count] != 2)
    {
      LODWORD(v116) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
      code = -12780;
      v188 = 0;
      v187 = OS_LOG_TYPE_DEFAULT;
      v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v101 = v188;
      if (os_log_type_enabled(v100, v187))
      {
        v102 = v101;
      }

      else
      {
        v102 = v101 & 0xFFFFFFFE;
      }

      if (v102)
      {
        v103 = [v70 count];
        v104 = [objc_msgSend(v156 "settings")];
        v177 = 136315650;
        v178 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
        v179 = 1024;
        *v180 = v103;
        *&v180[4] = 2048;
        *&v180[6] = v104;
        LODWORD(v117) = 28;
        v116 = &v177;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_205;
    }

    if ([v70 containsObject:*off_1E798A0C0])
    {
      if ([v70 containsObject:*off_1E798A0D0])
      {
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setDeviceType:8];
        goto LABEL_104;
      }

      LODWORD(v116) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
      code = -12780;
      v188 = 0;
      v187 = OS_LOG_TYPE_DEFAULT;
      v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v109 = v188;
      if (os_log_type_enabled(v108, v187))
      {
        v110 = v109;
      }

      else
      {
        v110 = v109 & 0xFFFFFFFE;
      }

      if (!v110)
      {
LABEL_205:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_170;
      }
    }

    else
    {
      LODWORD(v116) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v137, v118, v119, v120, v121, v122, v123);
      code = -12780;
      v188 = 0;
      v187 = OS_LOG_TYPE_DEFAULT;
      v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v106 = v188;
      if (os_log_type_enabled(v105, v187))
      {
        v107 = v106;
      }

      else
      {
        v107 = v106 & 0xFFFFFFFE;
      }

      if (!v107)
      {
        goto LABEL_205;
      }
    }

    v111 = [objc_msgSend(v156 "settings")];
    v177 = 136315394;
    v178 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
    v179 = 2048;
    *v180 = v111;
    LODWORD(v117) = 22;
    v116 = &v177;
    _os_log_send_and_compose_impl();
    goto LABEL_205;
  }

LABEL_104:
  -[FigCapturePhotonicEngineSinkPipelineConfiguration setDevicePosition:](obja, "setDevicePosition:", [objc_msgSend(objc_msgSend(v156 "captureSettings")]);
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSensorIDStringsByPortType:v154];
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setCameraInfoByPortType:v153];
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setModuleCalibrationByPortType:v33];
  LODWORD(v71) = 2.0;
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setUbInferenceMainImageDownscalingFactor:v71];
  *&v72 = v49;
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setGainMapMainImageDownscalingFactor:v72];
  -[FigCapturePhotonicEngineSinkPipelineConfiguration setAspectRatio:](obja, "setAspectRatio:", [objc_msgSend(v156 "settings")]);
  v124 = v51;
  v125 = v56;
  v126 = v52;
  v127 = v33;
  if ((v144 & 4) == 0)
  {
LABEL_153:
    v52 = v126;
    v33 = v127;
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setMaxLossyCompressionLevel:+[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel]];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setInputIs10Bit:FigCapturePixelFormatIsTenBit(unsignedIntValue)];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setRedEyeReductionVersion:0];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSemanticRenderingVersion:](obja, "setSemanticRenderingVersion:", [pipelineParameters semanticRenderingVersion]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSemanticDevelopmentVersion:0];
    v91 = -[FigCapturePhotonicEngineSinkPipelineConfiguration semanticRenderingVersion](obja, "semanticRenderingVersion") >= 1 && [objc_msgSend(v32 "settings")] != 0;
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSemanticStyleRenderingEnabled:v91];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setGenerateInferencesForSemanticProcessingIfNeeded:](obja, "setGenerateInferencesForSemanticProcessingIfNeeded:", [pipelineParameters generateInferencesForSemanticProcessingIfNeeded]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartStyleRenderingVersion:](obja, "setSmartStyleRenderingVersion:", [pipelineParameters smartStyleRenderingVersion]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartStyleRenderingEnabled:](obja, "setSmartStyleRenderingEnabled:", [pipelineParameters smartStyleRenderingEnabled]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartStyleReversibilityEnabled:](obja, "setSmartStyleReversibilityEnabled:", [pipelineParameters smartStyleReversibilityEnabled]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPortTypesWithIntelligentDistortionCorrectionEnabled:v129];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPortTypesWithGeometricDistortionCorrectionEnabled:v136];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setStillImageGDCSourceMode:](obja, "setStillImageGDCSourceMode:", [pipelineParameters stillImageGDCSourceMode]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setGdcInDCProcessorSupported:v136 != 0];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDcProcessingWithDepthSupported:](obja, "setDcProcessingWithDepthSupported:", [pipelineParameters dcProcessingWithDepthSupported]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDcProcessorVersion:](obja, "setDcProcessorVersion:", [pipelineParameters distortionCorrectionVersion]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDemosaicedRawPixelFormat:](obja, "setDemosaicedRawPixelFormat:", [settings rawOutputFormat]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setStillImageSinkPipelineProcessingMode:1];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPipelineProcessingContext:0x1F2177870];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setDeepFusionSupported:v125 == 12];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPortTypesWithLearnedFusionEnabled:v128];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setLearnedNRSupported:(v144 >> 7) & 1];
    if ([objc_msgSend(v32 "captureSettings")])
    {
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setLearnedNRSupported:1];
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setStereoPhotoOutputDimensions:0x7E000000A80];
    }

    v92 = (v125 & 0xFFFFFFFE) == 0xC || [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja learnedNRSupported];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setStillImageStabilizationSupported:v92];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepZoomVersion:](obja, "setDeepZoomVersion:", [pipelineParameters deepZoomVersion]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepZoomMode:](obja, "setDeepZoomMode:", [pipelineParameters deepZoomMode]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSoftISPSupported:(v144 >> 2) & 1];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSfhrMode:](obja, "setSfhrMode:", [pipelineParameters sfhrMode]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setClientIsCameraOrDerivative:v130];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setCameraSensorOrientationCompensationDegreesCW:](obja, "setCameraSensorOrientationCompensationDegreesCW:", [pipelineParameters cameraSensorOrientationCompensationDegreesCW]);
    if ((v144 & 0x800) != 0)
    {
      [(FigCaptureIrisSinkConfiguration *)v126 setDepthDataDeliveryEnabled:1];
      [(FigCaptureIrisSinkConfiguration *)v126 setPreviewQualityAdjustedPhotoFilterRenderingEnabled:0];
      -[FigCaptureIrisSinkConfiguration setFilterRenderingEnabled:](v126, "setFilterRenderingEnabled:", BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v32 "settings")]));
      [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setDepthDataTargetDimensions:sourceDimensionsCopy];
      [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setDepthDataSourceDimensions:rawDimensionsCopy];
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setContinuousZoomWithDepthSupported:](obja, "setContinuousZoomWithDepthSupported:", [pipelineParameters continuousZoomWithDepthSupported]);
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setPearlModuleType:](obja, "setPearlModuleType:", [pipelineParameters pearlModuleType]);
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDepthDataType:](obja, "setDepthDataType:", [pipelineParameters depthDataType]);
    }

    -[FigCaptureIrisSinkConfiguration setPortraitEffectsMatteDeliveryEnabled:](v126, "setPortraitEffectsMatteDeliveryEnabled:", [objc_msgSend(v32 "settings")]);
    LODWORD(v93) = 2.0;
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setPortraitEffectsMatteMainImageDownscalingFactor:v93];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSupportedSemanticSegmentationMatteURNs:](obja, "setSupportedSemanticSegmentationMatteURNs:", [objc_msgSend(v32 "settings")]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setEnabledSemanticSegmentationMatteURNs:](obja, "setEnabledSemanticSegmentationMatteURNs:", [objc_msgSend(v32 "settings")]);
    -[FigCaptureIrisSinkConfiguration setEnabledSemanticSegmentationMatteURNs:](v126, "setEnabledSemanticSegmentationMatteURNs:", [objc_msgSend(v32 "settings")]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setSinkConfiguration:v126];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setNoiseReductionAndFusionScheme:5];
    v94 = [objc_msgSend(v32 "settings")];
    v95 = [objc_msgSend(v32 "settings")];
    v158 = [[FigCaptureSourceFormatDimensions alloc] initWithDimensions:v94 | (v95 << 32) deferredPhotoProxyDimensions:v94 | (v95 << 32) isPrivate:0 flavor:0 maxUpscalingDimensions:v94 | (v95 << 32)];
    v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v158 count:1];
    LOBYTE(v122) = 1;
    v80 = -[FigCapturePhotonicEngineSinkPipeline initWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:isPrimaryStillImagePipeline:graph:name:]([FigCapturePhotonicEngineSinkPipeline alloc], "initWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:isPrimaryStillImagePipeline:graph:name:", obja, 0, [*(selfCopy + 80) outputsByPortType], 0, v96, 0, 0, 0, v140, 0, 0, 0, v122, *(selfCopy + 64), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Deferred Processing %@", +[FigCapturePhotonicEngineSinkPipeline pipelineBaseName](FigCapturePhotonicEngineSinkPipeline, "pipelineBaseName")));
    goto LABEL_164;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((v144 & 0x300000000) == 0)
  {
    if ([objc_msgSend(v156 "captureSettings")])
    {
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDowngradedDeepFusionEnhancedResolutionDimensions:](obja, "setDowngradedDeepFusionEnhancedResolutionDimensions:", [objc_msgSend(v156 "settings")] | (objc_msgSend(objc_msgSend(v156, "settings"), "deferredPhotoFinalHeight") << 32));
    }

    goto LABEL_131;
  }

  if ((v144 & 0x200000000) != 0)
  {
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepFusionEnhancedResolutionDimensions:](obja, "setDeepFusionEnhancedResolutionDimensions:", [objc_msgSend(v156 "settings")] | (objc_msgSend(objc_msgSend(v156, "settings"), "deferredPhotoFinalHeight") << 32));
  }

  if (dimensionsCopy >= 1 && dimensionsCopy > 0)
  {
    if (![dictionary objectForKeyedSubscript:v147])
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v147}];
    }

    [objc_msgSend(dictionary objectForKeyedSubscript:{v147), "setObject:forKeyedSubscript:", FigCaptureDictionaryRepresentationForDimensions(dimensionsCopy), &unk_1F2243AB0}];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setUltraHighResolutionProcessingEnabled:](obja, "setUltraHighResolutionProcessingEnabled:", [objc_msgSend(v156 "settings")] == 2);
    if ([objc_msgSend(v156 "captureSettings")])
    {
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v74 = [objc_msgSend(v156 "captureSettings")];
      v75 = [v74 countByEnumeratingWithState:&v170 objects:v169 count:16];
      if (v75)
      {
        v76 = *v171;
        do
        {
          for (j = 0; j != v75; ++j)
          {
            if (*v171 != v76)
            {
              objc_enumerationMutation(v74);
            }

            v78 = *(*(&v170 + 1) + 8 * j);
            if ([objc_msgSend(objc_msgSend(v156 "captureSettings")] >= 1)
            {
              if (![dictionary objectForKeyedSubscript:v78])
              {
                [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v78}];
              }

              [objc_msgSend(dictionary objectForKeyedSubscript:{v78), "setObject:forKeyedSubscript:", FigCaptureDictionaryRepresentationForDimensions(dimensionsCopy), &unk_1F2243AB0}];
              [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setUltraHighResolutionProcessingEnabled:1];
            }
          }

          v75 = [v74 countByEnumeratingWithState:&v170 objects:v169 count:16];
        }

        while (v75);
      }
    }

LABEL_131:
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v81 = [objc_msgSend(v156 "captureSettings")];
    v82 = [v81 countByEnumeratingWithState:&v165 objects:v164 count:16];
    if (v82)
    {
      v146 = v81;
      v148 = *v166;
      do
      {
        v83 = 0;
        v150 = v82;
        do
        {
          if (*v166 != v148)
          {
            objc_enumerationMutation(v146);
          }

          v84 = *(*(&v165 + 1) + 8 * v83);
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v85 = [&unk_1F2248790 countByEnumeratingWithState:&v160 objects:v159 count:16];
          if (v85)
          {
            v86 = *v161;
            do
            {
              for (k = 0; k != v85; ++k)
              {
                if (*v161 != v86)
                {
                  objc_enumerationMutation(&unk_1F2248790);
                }

                v88 = *(*(&v160 + 1) + 8 * k);
                v89 = [objc_msgSend(objc_msgSend(pipelineParameters "dimensionsByResolutionFlavorByPortType")];
                if (v89)
                {
                  if (![dictionary objectForKeyedSubscript:v84])
                  {
                    [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v84}];
                  }

                  [objc_msgSend(dictionary objectForKeyedSubscript:{v84), "setObject:forKeyedSubscript:", v89, v88}];
                }
              }

              v85 = [&unk_1F2248790 countByEnumeratingWithState:&v160 objects:v159 count:16];
            }

            while (v85);
          }

          ++v83;
          v32 = v156;
        }

        while (v83 != v150);
        v82 = [v146 countByEnumeratingWithState:&v165 objects:v164 count:16];
      }

      while (v82);
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSensorRawPixelFormat:containerCopy];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setQuadraProcessingSupportEnabled:](obja, "setQuadraProcessingSupportEnabled:", [pipelineParameters quadraProcessingSupportEnabled]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setRawSensorDimensions:v124];
    if ([dictionary count])
    {
      v90 = dictionary;
    }

    else
    {
      v90 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setDimensionsByResolutionFlavorByPortType:v90];
    [pipelineParameters sensorCenterOffset];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSensorCenterOffset:?];
    goto LABEL_153;
  }

  code = -12780;
  if (dword_1ED843F70)
  {
    v188 = 0;
    v187 = OS_LOG_TYPE_DEFAULT;
    v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v113 = v188;
    if (os_log_type_enabled(v112, v187))
    {
      v114 = v113;
    }

    else
    {
      v114 = v113 & 0xFFFFFFFE;
    }

    if (v114)
    {
      v115 = [objc_msgSend(v156 "settings")];
      v177 = 136315394;
      v178 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
      v179 = 2048;
      *v180 = v115;
      LODWORD(v117) = 22;
      v116 = &v177;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_170:
  [currentJob setPrepareGraphNS:FigGetUpTimeNanoseconds() - UpTimeNanoseconds];
  if (v191[0])
  {
    code = [v191[0] code];
    if (!code)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  if (code)
  {
LABEL_174:
    [currentJob failedWithError:{v116, v117}];
    [(FigCaptureDeferredProcessingEngine *)selfCopy _handleJobCompletion:code];
  }

LABEL_175:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v191[0])
  {
    [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 0];
  }

  _Block_object_dispose(v189, 8);
}

void __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke(uint64_t a1, CFTypeRef cf, int a3, uint64_t a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = *(a1 + 32);
  v9 = *(*(*(v8 + 8) + 40) + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke_2;
  v10[3] = &unk_1E7991D40;
  v10[5] = v8;
  v10[6] = cf;
  v11 = a3;
  v10[4] = a4;
  dispatch_async(v9, v10);
}

void __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke_2(uint64_t a1)
{
  [(FigCaptureDeferredProcessingEngine *)*(*(*(a1 + 40) + 8) + 40) _handleProcessedStillImage:*(a1 + 56) error:*(a1 + 32) settings:?];
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)_handleProcessedStillImage:(uint64_t)image error:(void *)error settings:
{
  if (result)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      [FigCaptureDeferredProcessingEngine _handleProcessedStillImage:error:settings:];
    }

    currentJob = [result currentJob];
    captureRequestIdentifier = [error captureRequestIdentifier];
    [objc_msgSend(currentJob "processorRequest")];
    if (!image && (v10 = [error outputFormat], IsDemosaicedRaw = FigCapturePixelFormatIsDemosaicedRaw(objc_msgSend(error, "rawOutputFormat")), v10) && IsDemosaicedRaw)
    {
      image = 4294954516;
      if (!currentJob)
      {
        return;
      }
    }

    else if (!currentJob)
    {
      return;
    }

    [objc_msgSend(currentJob "processorRequest")];
    if ((objc_msgSend_isEqualToString_(captureRequestIdentifier) & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Finished processing of photo with capture request identifier %@ but for processing job with identifier %@", captureRequestIdentifier, objc_msgSend(objc_msgSend(currentJob, "processorRequest"), "captureRequestIdentifier")), 0}]);
    }

    [currentJob setNumberOfPhotosDelivered:{objc_msgSend(currentJob, "numberOfPhotosDelivered") + 1}];
    if (image)
    {
      if (dword_1ED843F70)
      {
        v18 = 0;
        v17 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [currentJob failedWithError:{image, v14, v15}];
    }

    else
    {
      [CMGetAttachment(a2 @"StillImageProcessingFlags"];
      BWPixelBufferDimensionsFromSampleBuffer(a2);
      if (dword_1ED843F70)
      {
        v18 = 0;
        v17 = 0;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [currentJob completedWithSampleBuffer:{a2, v14, v15}];
    }

    numberOfPhotosDelivered = [currentJob numberOfPhotosDelivered];
    if ([objc_msgSend(objc_msgSend(objc_msgSend(currentJob "container")] == numberOfPhotosDelivered)
    {
      [(FigCaptureDeferredProcessingEngine *)result _handleJobCompletion:image];
    }
  }
}

- (uint64_t)_unreserveForClientPID:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (dword_1ED843F70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(v3 + 24);
    if (v5 != a2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced unreserving of FigCaptureDeferredProcessingEngine: unreserving from clientPID %d while reserved for clientPID %d", a2, v5];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v6 userInfo:0]);
    }

    *(v3 + 24) = 0;
    return FigSimpleMutexUnlock();
  }

  return result;
}

- (BWStillImageSettings)_stillImageSettingsForContainer:(BWStillImageSettings *)result
{
  if (result)
  {
    v2 = -[BWStillImageSettings initWithRequestedSettings:captureSettings:processingSettings:]([BWStillImageSettings alloc], "initWithRequestedSettings:captureSettings:processingSettings:", [a2 settings], objc_msgSend(a2, "captureSettings"), objc_msgSend(a2, "processingSettings"));

    return v2;
  }

  return result;
}

- (void)_runJob
{
  if (self)
  {
    currentJob = [(BWStillImageSettings *)self currentJob];
    container = [currentJob container];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v20);
    }

    v5 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [container captureRequestIdentifierBytesLow];
      [container captureRequestIdentifierBytesHigh];
      kdebug_trace();
    }

    [currentJob start];
    v6 = [(FigCaptureDeferredProcessingEngine *)self _stillImageSettingsForContainer:container];
    if (([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)v6 captureSettings] captureFlags]& 0x100000000) == 0)
    {
      [-[BWStillImageCaptureSettings outputForPortType:](self[2]._captureSettings outputForPortType:{-[BWStillImageCaptureSettings masterPortType](-[BWStillImageSettings captureSettings](v6, "captureSettings"), "masterPortType")), "emitStillImagePrewarmMessageWithSettings:resourceConfig:", v6, 0}];
    }

    v29 = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    firstObject = [(NSArray *)[(BWPhotoManifest *)[(BWStillImageProcessingSettings *)[(BWStillImageSettings *)v6 processingSettings] photoManifest] photoDescriptors] firstObject];
    if (firstObject)
    {
      objc_msgSend_presentationTimeStamp(firstObject);
    }

    else
    {
      memset(&v27[2], 0, 24);
    }

    __dst.presentationTimeStamp = *&v27[2];
    OUTLINED_FUNCTION_2_5();
    v14 = CMSampleBufferCreate(v8, v9, v10, v11, v12, v13, 0, 1, &__dst, 0, 0, &v29);
    v15 = v14;
    if (v14)
    {
      LODWORD(sampleTimingArray) = v14;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray, v1, sampleSizeArray, v23, v24, v25, v26, LODWORD(v27[0]));
      [currentJob failedWithError:v15];
      [(FigCaptureDeferredProcessingEngine *)self _handleJobCompletion:v15];
    }

    else
    {
      v16 = *off_1E798B710;
      v27[0] = MEMORY[0x1E695E118];
      v17 = *off_1E798B540;
      v25 = v16;
      v26 = v17;
      v27[1] = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)v6 captureSettings] masterPortType];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v25 count:2];
      v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];
      CMSetAttachment(v29, *off_1E798A3C8, v19, 1u);
      -[FigCaptureStillImageSettings setPhotoLibraryThumbnailDimensions:](-[BWStillImageSettings requestedSettings](v6, "requestedSettings"), "setPhotoLibraryThumbnailDimensions:", [objc_msgSend(currentJob "processorRequest")]);
      CMSetAttachment(v29, @"StillSettings", v6, 1u);
      OUTLINED_FUNCTION_1_55([(BWStillImageProcessingSettings *)[(BWStillImageSettings *)v6 processingSettings] photoManifest]);
      OUTLINED_FUNCTION_1_55([container captureSettings]);
      OUTLINED_FUNCTION_1_55([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(container, "captureSettings"), "captureType")}]);
      OUTLINED_FUNCTION_1_55([container settings]);
      CMSetAttachment(v29, @"DeferredProcessingContainer", container, 1u);
      [(BWStillImageCaptureSettings *)self[2]._captureSettings processBuffer:v29];
      if (v29)
      {
        CFRelease(v29);
      }
    }

    if (*v5 == 1)
    {
      kdebug_trace();
    }
  }
}

- (void)_handleJobCompletion:(void *)completion
{
  if (completion)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v4);
    }

    -[FigCaptureDeferredProcessingEngine _reportCoreAnalyticsDataWithError:job:](completion, a2, [completion currentJob]);

    [(FigCaptureDeferredProcessingEngine *)completion _cleanupFromJob];
  }
}

- (uint64_t)_reserveForClientPID:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (dword_1ED843F70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = FigSimpleMutexLock();
    *(v3 + 24) = a2;
  }

  return result;
}

- (uint64_t)_shouldReuseGraphForContainer:(uint64_t)container
{
  v2 = 0;
  if (container && a2)
  {
    v5 = [objc_msgSend(a2 "captureSettings")];
    pipelineParameters = [a2 pipelineParameters];
    v57[0] = 0;
    v7 = [a2 copyDictionaryForTag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes err:v57];
    if (v57[0])
    {
      v8 = 0;
    }

    else
    {
      v8 = cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes([a2 settings], v7);
    }

    if (v8 < 1 || SHIDWORD(v8) < 1)
    {
      return 0;
    }

    v10 = [objc_msgSend(objc_msgSend(*(container + 80) outputForPortType:{v5), "primaryMediaProperties"), "resolvedVideoFormat"}];
    if (!v10)
    {
      return 0;
    }

    else
    {
      v11 = v10;
      v12 = *(container + 32);
      if (v12 == v5)
      {
        isEqualToString = 1;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(v12);
      }

      v55 = [*(container + 40) isEqual:pipelineParameters];
      v54 = [objc_msgSend(*(container + 56) "captureSettings")];
      v53 = [objc_msgSend(a2 "captureSettings")];
      v13 = [objc_msgSend(*(container + 56) "requestedSettings")];
      if (v13 >= [objc_msgSend(a2 "settings")])
      {
        v14 = [objc_msgSend(*(container + 56) "requestedSettings")];
        v52 = v14 >= [objc_msgSend(a2 "settings")];
      }

      else
      {
        v52 = 0;
      }

      dimensions = [v11 dimensions];
      v50 = *(container + 48);
      v49 = fcdpe_demosaicedRawEnabled(a2);
      v15 = *(container + 48);
      v44 = pipelineParameters;
      v16 = v8;
      if (([objc_msgSend(a2 "captureSettings")] & 0x200000000) != 0)
      {
        v18 = [objc_msgSend(*(container + 56) "requestedSettings")] != 0;
        v17 = v18 ^ ([objc_msgSend(a2 "settings")] == 0);
      }

      else
      {
        v17 = 1;
      }

      v48 = v17;
      v47 = [objc_msgSend(*(container + 56) "captureSettings")];
      *&v19 = OUTLINED_FUNCTION_5_40([objc_msgSend(*(container + 56) "captureSettings")]);
      v46 = v20;
      *&v21 = OUTLINED_FUNCTION_5_40([objc_msgSend(a2 captureSettings]);
      v45 = v22;
      v23 = *(container + 49);
      settings = [a2 settings];
      captureSettings = [a2 captureSettings];
      applicationID = [a2 applicationID];
      captureFlags = [captureSettings captureFlags];
      v29 = FigCaptureClientApplicationIDIsCameraOrDerivative(applicationID, v28);
      captureFlags2 = [captureSettings captureFlags];
      v31 = BWCIFilterArrayContainsPortraitFilters([settings processedImageFilters]);
      v32 = ((captureFlags & 0x800) == 0) ^ v23;
      if ((captureFlags & 0x800) != 0 || (v23 & 1) == 0)
      {
        v33 = v16;
      }

      else
      {
        v33 = v16;
        if (v29)
        {
          v34 = v31;
          if ([v44 continuousZoomWithDepthSupported])
          {
            v32 = ((captureFlags2 & 0x100000000) == 0) & (v34 ^ 1);
          }

          else
          {
            v32 = 0;
          }
        }
      }

      if (BWCIFilterArrayContainsPortraitFilters([objc_msgSend(*(container + 56) "requestedSettings")]))
      {
        v35 = 1;
      }

      else
      {
        v35 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a2 "settings")]) ^ 1;
      }

      v36 = isEqualToString & v55;
      if (v54 != v53)
      {
        v36 = 0;
      }

      v37 = v36 & v52;
      if (dimensions != v33)
      {
        v37 = 0;
      }

      if (v50 != v49)
      {
        v37 = 0;
      }

      v38 = v37 & (v15 ^ 1);
      if ((v47 & 0x100000000) != 0)
      {
        v38 = 0;
      }

      v39 = v38 & v48;
      if (v46 != v45)
      {
        v39 = 0;
      }

      v2 = v39 & v32 & v35;
      if (dword_1ED843F70)
      {
        v59[0] = 0;
        v58 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v59[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v58))
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 & 0xFFFFFFFE;
        }

        if (v42)
        {
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return v2;
}

- (void)_releaseGraph
{
  if (self)
  {
    v2 = *(self + 72);
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v4);
    }

    if (*(self + 72) == 1)
    {
      [*(self + 64) stop:0];
    }

    *(self + 72) = 0;

    *(self + 64) = 0;
    *(self + 80) = 0;

    *(self + 128) = 0;
    [*(self + 120) disableForClientBundleId:0];

    *(self + 120) = 0;
    *(self + 32) = 0;

    *(self + 40) = 0;
    *(self + 48) = 0;
    if (v2)
    {
      v3 = +[BWDeferredTransactionBroker sharedInstance];

      [(BWDeferredTransactionBroker *)v3 closeTransaction:0];
    }
  }
}

- (void)_ensureGraphForJob:(void *)job applicationID:
{
  if (!self)
  {
    return;
  }

  v9 = a2;
  container = [a2 container];
  processorRequest = [v9 processorRequest];
  if (([objc_msgSend(container "captureSettings")] & 4) == 0)
  {
    OUTLINED_FUNCTION_3_41();
    v12 = 0;
    goto LABEL_39;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  intermediates = [container intermediates];
  v12 = [intermediates countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v12)
  {
    v36 = v9;
    v32 = container;
    jobCopy = job;
    v13 = 0;
    LODWORD(v9) = 0;
    v41 = 0;
    LODWORD(v42) = 0;
    v40 = 0;
    v39 = 0;
    pixelFormat = 0;
    v14 = *v45;
    v38 = *MEMORY[0x1E6966208];
    v37 = *MEMORY[0x1E69660B8];
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(intermediates);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if ([v16 isMemberOfClass:objc_opt_class()])
        {
          if ([v16 bufferType] == 1)
          {
            v17 = intermediates;
            attributes = [v16 attributes];
            v19 = [objc_msgSend(attributes objectForKeyedSubscript:{v38), "unsignedIntValue"}];
            v20 = [objc_msgSend(attributes objectForKeyedSubscript:{v37), "unsignedIntValue"}];
            if ((v20 * v19) > (v39 * v40))
            {
              v21 = v20;
              pixelFormat = [v16 pixelFormat];
              v40 = v21;
              v39 = v19;
            }

            intermediates = v17;
          }

          else if (v42 < 1 || v41 < 1 || v9 < 1 || v13 <= 0)
          {
            if ([v16 bufferType] == 2001)
            {
              attributes2 = [v16 attributes];
              LODWORD(v9) = [objc_msgSend(attributes2 objectForKeyedSubscript:{v38), "unsignedIntValue"}];
              v13 = [objc_msgSend(attributes2 objectForKeyedSubscript:{v37), "unsignedIntValue"}];
              v26 = [objc_msgSend(objc_msgSend(v36 "container")];
              if (v9 <= v13 && v26 >= SHIDWORD(v26))
              {
                v42 = __ROR8__(v9 | (v13 << 32), 32);
                v41 = HIDWORD(v42);
                continue;
              }

              v41 = v13;
            }

            else
            {
              if (!BWDepthDataTypeSupportsDeferredDepthGeneration([objc_msgSend(objc_msgSend(v36 "container")]))
              {
                continue;
              }

              v9 = [objc_msgSend(objc_msgSend(v36 "container")];
              v13 = HIDWORD(v9);
              v41 = HIDWORD(v9);
            }

            LODWORD(v42) = v9;
          }
        }
      }

      v12 = [intermediates countByEnumeratingWithState:&v44 objects:v43 count:16];
      if (!v12)
      {
        v3 = v40 << 32;
        v12 = v39;
        intermediates = v13 << 32;
        v5 = v9;
        v6 = v41 << 32;
        v7 = v42;
        job = jobCopy;
        container = v32;
        v9 = v36;
        goto LABEL_40;
      }
    }
  }

  OUTLINED_FUNCTION_3_41();
LABEL_39:
  pixelFormat = 0;
LABEL_40:
  v28 = [objc_msgSend(objc_msgSend(v9 "container")];
  if (v28 < 1 || SHIDWORD(v28) < 1)
  {
    v31 = v12 | v3;
    v30 = v31;
  }

  else
  {
    v30 = [objc_msgSend(objc_msgSend(v9 "container")];
    v31 = v12 | v3;
  }

  -[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:](self, container, pixelFormat, v30, v31, v5 | intermediates, v7 | v6, [processorRequest photoIdentifier], job);
}

- (uint64_t)_transientContainerForDeviceType:(int)type underlyingDeviceType:(int)deviceType devicePosition:(void *)position settings:(void *)settings processingSettings:(void *)processingSettings sourceAttributes:(void *)attributes underlyingSourceAttributes:(void *)sourceAttributes videoFormat:(void *)self0 underlyingVideoFormat:(void *)self1 depthDataFormat:(uint64_t)self2 photoIdentifier:(void *)self3 applicationIdentifier:
{
  LODWORD(v151) = a2;
  if (!self)
  {
    return 0;
  }

  v154 = +[FigCaptureCameraParameters sharedInstance];
  v162 = [MEMORY[0x1E695DFF8] fileURLWithPath:NSTemporaryDirectory()];
  v18 = BWCaptureDevicePositionAndDeviceTypeToPortType(deviceType, type);
  obj = [settings cameraInfoByPortType];
  v19 = [obj objectForKeyedSubscript:v18];
  v124 = *off_1E7989EF8;
  v20 = +[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", [v19 objectForKeyedSubscript:?]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([position rawOutputFormat])
  {
    v157 = 1;
    LODWORD(v145) = 0x10000;
    v22 = 384;
  }

  else
  {
    if ([position depthDataDeliveryEnabled])
    {
      v22 = 5253120;
    }

    else
    {
      v22 = 5251072;
    }

    v157 = 12;
    LODWORD(v145) = 4096;
  }

  v23 = [objc_msgSend(attributes objectForKeyedSubscript:{@"GeometricDistortionCorrection", "BOOLValue"}];
  intelligentDistortionCorrectionSupported = [format intelligentDistortionCorrectionSupported];
  HIDWORD(v142) = intelligentDistortionCorrectionSupported;
  if ((v23 & 1) != 0 || intelligentDistortionCorrectionSupported)
  {
    LODWORD(v142) = [objc_msgSend(objc_msgSend(processingSettings objectForKeyedSubscript:{@"DepthDataDeliveryConfigurations", "objectForKeyedSubscript:", @"DCProcessingSupported", "BOOLValue"}];
    if (v23)
    {
      LODWORD(v139) = [sourceAttributes stillImageGDCSourceMode];
    }

    else
    {
      LODWORD(v139) = 0;
    }

    HIDWORD(v139) = 1;
  }

  else
  {
    LODWORD(v142) = 0;
    v139 = 0;
  }

  resolutionFlavor = [position resolutionFlavor];
  if (resolutionFlavor == 2)
  {
    v27 = 0x100000010;
    if ((v22 & 0x80) == 0)
    {
      v27 = 0x100000000;
    }

    v22 |= v27;
    if (!OUTLINED_FUNCTION_9_23())
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v18}];
    }

    v28 = FigCaptureDictionaryRepresentationForDimensions([settings ultraHighResSensorRawDimensions]);
    resolutionFlavor = [OUTLINED_FUNCTION_9_23() setObject:v28 forKeyedSubscript:&unk_1F2243AB0];
    v133 = 0;
    v136 = 1;
  }

  else if (resolutionFlavor == 1)
  {
    resolutionFlavor = [sourceAttributes stillImageEnhancedResByMaintainingSensorResolutionSupported];
    if (resolutionFlavor)
    {
      v133 = 0;
      v136 = 0;
      v22 |= 0x400000000uLL;
    }

    else
    {
      v22 |= 0x200000000uLL;
      HIDWORD(v133) = [(FigCaptureCameraParameters *)v154 deepZoomVersion];
      resolutionFlavor = [settings uiZoomFactor];
      if (v29 >= 1.4118 && (resolutionFlavor = [settings uiZoomFactor], v30 < 2.0) && (resolutionFlavor = -[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:](v154, "deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:", v18, v20), (resolutionFlavor & 1) != 0))
      {
        v31 = 4;
      }

      else
      {
        v31 = 3;
      }

      LODWORD(v133) = v31;
      v136 = 0x100000001;
    }
  }

  else
  {
    v133 = 0;
    v136 = 0;
  }

  HasCharleston = BWDeviceModelHasCharleston(resolutionFlavor, v26);
  v33 = deviceType == 2 && v151 == 7;
  if (v33 && HasCharleston)
  {
    if (!OUTLINED_FUNCTION_9_23())
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v18}];
    }

    sensorDimensions = [sourceAttributes sensorDimensions];
    v35 = BWAspectRatioValueFromAspectRatio([position aspectRatio]);
    v36 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(sensorDimensions, v35);
    v37 = FigCaptureDictionaryRepresentationForDimensions(v36);
    [OUTLINED_FUNCTION_9_23() setObject:v37 forKeyedSubscript:&unk_1F2243AE0];
  }

  if ([dictionary count])
  {
    v127 = [dictionary copy];
  }

  else
  {
    v127 = 0;
  }

  v38 = v20;
  v39 = v23;
  if ([settings sensorRawPixelFormat])
  {
    v22 |= 4uLL;
    v40 = [objc_msgSend(processingSettings objectForKeyedSubscript:{0x1F21A04B0), "BOOLValue"}];
    v41 = [objc_msgSend(processingSettings objectForKeyedSubscript:{0x1F21A04D0), "BOOLValue"}];
    v42 = v40 | 2;
    if (!v41)
    {
      v42 = v40;
    }

    HIDWORD(v130) = v42;
  }

  else
  {
    HIDWORD(v130) = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v44 = [BWStillImageCaptureStreamSettings alloc];
  v45 = MEMORY[0x1E695E0F0];
  v51 = OUTLINED_FUNCTION_8_25(v44, v46, v18, v47, v48, v49, v50, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, settings, v151, v154, v157);
  [v51 setSensorIDString:v38];
  [array addObject:v51];
  if ([position depthDataDeliveryEnabled] && (objc_msgSend(position, "deferredSourceDeviceType") == 6 || objc_msgSend(position, "deferredSourceDeviceType") == 12))
  {
    v52 = [BWStillImageCaptureStreamSettings alloc];
    v53 = *off_1E798A0E8;
    v59 = OUTLINED_FUNCTION_8_25(v52, v54, *off_1E798A0E8, v55, v56, v57, v58, MEMORY[0x1E695E0F8], v45, v45, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158);
    [v59 setSensorIDString:{+[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", objc_msgSend(objc_msgSend(obj, "objectForKeyedSubscript:", v53), "objectForKeyedSubscript:", v125))}];
    [array addObject:v59];
  }

  v60 = objc_alloc_init(BWStillImageCaptureMetadata);
  -[BWStillImageCaptureMetadata setDeviceType:](v60, "setDeviceType:", [position deferredSourceDeviceType]);
  -[BWStillImageCaptureMetadata setDevicePosition:](v60, "setDevicePosition:", [position deferredSourcePosition]);
  LOBYTE(v113) = 0;
  v61 = -[BWStillImageCaptureSettings initWithSettingsID:captureType:captureFlags:sceneFlags:frameStatisticsByPortType:deliverOriginalImage:deliverSushiRaw:captureStreamSettings:]([BWStillImageCaptureSettings alloc], "initWithSettingsID:captureType:captureFlags:sceneFlags:frameStatisticsByPortType:deliverOriginalImage:deliverSushiRaw:captureStreamSettings:", [position settingsID], v158, v22, 0, 0, 0, v113, array);
  [(BWStillImageCaptureSettings *)v61 setMasterPortType:v18];
  [(BWStillImageCaptureSettings *)v61 setMetadata:v60];

  v62 = objc_alloc_init(BWDeferredPipelineParameters);
  v63 = +[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
  -[BWDeferredPipelineParameters setRawSensorDimensions:](v62, "setRawSensorDimensions:", [sourceAttributes sensorDimensions]);
  [v155 nrfVersion];
  [OUTLINED_FUNCTION_28() setNrfVersion:?];
  [objc_msgSend(processingSettings objectForKeyedSubscript:{0x1F21A0530), "intValue"}];
  [OUTLINED_FUNCTION_28() setNoiseReductionAndFusionScheme:?];
  [(BWDeferredPipelineParameters *)v62 setIntelligentDistortionCorrectionEnabled:HIDWORD(v143)];
  [(BWDeferredPipelineParameters *)v62 setDimensionsByResolutionFlavorByPortType:v128];
  [(BWDeferredPipelineParameters *)v62 setGeometricDistortionCorrectionEnabled:v39];
  [(BWDeferredPipelineParameters *)v62 setDcProcessingWithDepthSupported:v143];
  [(BWDeferredPipelineParameters *)v62 setStillImageGDCSourceMode:v140];
  [(BWDeferredPipelineParameters *)v62 setDistortionCorrectionVersion:HIDWORD(v140)];
  [(BWDeferredPipelineParameters *)v62 setDeepZoomVersion:HIDWORD(v134)];
  [(BWDeferredPipelineParameters *)v62 setDeepZoomMode:v134];
  semanticRenderingSupported = [sourceAttributes semanticRenderingSupported];
  commonSettings = 0;
  if (semanticRenderingSupported)
  {
    commonSettings = [objc_msgSend(v63 commonSettings];
  }

  [(BWDeferredPipelineParameters *)v62 setSemanticRenderingVersion:commonSettings];
  [(BWDeferredPipelineParameters *)v62 setGenerateInferencesForSemanticProcessingIfNeeded:HIDWORD(v137)];
  [(BWDeferredPipelineParameters *)v62 setQuadraProcessingSupportEnabled:v137];
  [(BWDeferredPipelineParameters *)v62 setCanProcessEnhancedResolution:HIDWORD(v137)];
  [(BWDeferredPipelineParameters *)v62 setSfhrMode:HIDWORD(v131)];
  [sourceAttributes sensorCenterOffset];
  [(BWDeferredPipelineParameters *)v62 setSensorCenterOffset:?];
  if ([position depthDataDeliveryEnabled])
  {
    [sourceAttributes maxContinuousZoomFactorForDepthDataDelivery];
    [(BWDeferredPipelineParameters *)v62 setContinuousZoomWithDepthSupported:v66 != 0.0];
    [objc_msgSend(processingSettings objectForKeyedSubscript:{@"StillImageDepthDataType", "intValue"}];
    [OUTLINED_FUNCTION_28() setDepthDataType:?];
    -[BWDeferredPipelineParameters setDepthDataDimensions:](v62, "setDepthDataDimensions:", [videoFormat soleHighResStillImageDimensions]);
    [objc_msgSend(processingSettings objectForKeyedSubscript:{@"PearlModuleType", "intValue"}];
    [OUTLINED_FUNCTION_28() setPearlModuleType:?];
  }

  if (([sourceAttributes isSmartStyleRenderingSupported] & 1) == 0)
  {
    [(BWDeferredPipelineParameters *)v62 setSmartStyleRenderingVersion:0];
    goto LABEL_61;
  }

  v67 = [objc_msgSend(v63 "commonSettings")];
  [(BWDeferredPipelineParameters *)v62 setSmartStyleRenderingVersion:v67];
  if (!v67)
  {
LABEL_61:
    [(BWDeferredPipelineParameters *)v62 setSmartStyleRenderingEnabled:0];
    goto LABEL_62;
  }

  if ([sourceAttributes isPhotoFormat])
  {
    v69 = FigCaptureClientApplicationIDIsCameraOrDerivative(identifier, v68);
  }

  else
  {
    v69 = 0;
  }

  [(BWDeferredPipelineParameters *)v62 setSmartStyleRenderingEnabled:v69];
  if ([sourceAttributes isPhotoFormat])
  {
    v70 = FigCaptureClientApplicationIDIsCameraOrDerivative(identifier, v112);
    goto LABEL_63;
  }

LABEL_62:
  v70 = 0;
LABEL_63:
  [(BWDeferredPipelineParameters *)v62 setSmartStyleReversibilityEnabled:v70];
  v147 = [[BWPhotoDescriptor alloc] initWithPhotoIdentifier:dataFormat processingFlags:v146];
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sensorDimensions2 = [sourceAttributes sensorDimensions];
  if (position)
  {
    if ([position aspectRatio])
    {
      sensorDimensions2 = [position outputDimensions];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v114, v116, v119, v122, v125, v128, v131, v134);
  }

  v189[0] = *MEMORY[0x1E6966208];
  v190[0] = [MEMORY[0x1E696AD98] numberWithInt:sensorDimensions2];
  v189[1] = *MEMORY[0x1E69660B8];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(sensorDimensions2)];
  v74 = *MEMORY[0x1E6966130];
  v190[1] = v73;
  v190[2] = &unk_1F2243B40;
  v75 = *MEMORY[0x1E6966020];
  v189[2] = v74;
  v189[3] = v75;
  v76 = *MEMORY[0x1E6966140];
  v190[3] = &unk_1F2243B58;
  v190[4] = &unk_1F2243B70;
  v77 = *MEMORY[0x1E69660D8];
  v189[4] = v76;
  v189[5] = v77;
  v187 = *MEMORY[0x1E696D0D8];
  v188 = MEMORY[0x1E695E110];
  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
  v79 = *MEMORY[0x1E6966038];
  v190[5] = v78;
  v190[6] = &unk_1F22487A8;
  v80 = *MEMORY[0x1E69660F0];
  v189[6] = v79;
  v189[7] = v80;
  v190[7] = MEMORY[0x1E695E118];
  v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v190 forKeys:v189 count:8];
  v82 = [BWDeferredDictionaryIntermediate alloc];
  v83 = [(BWDeferredDictionaryIntermediate *)v82 initWithDictionary:v81 tag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes URL:v162];
  [v71 addObject:v83];

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v92 = OUTLINED_FUNCTION_7_29(v84, v85, v86, v87, v88, v89, v90, v91, v114, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v147, v149, v62, identifier, v61, position, v162, obj, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
  if (v92)
  {
    v93 = v92;
    v94 = *v184;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v184 != v94)
        {
          objc_enumerationMutation(obja);
        }

        v96 = -[BWDeferredDictionaryIntermediate initWithDictionary:tag:URL:]([BWDeferredDictionaryIntermediate alloc], "initWithDictionary:tag:URL:", [obja objectForKeyedSubscript:*(*(&v183 + 1) + 8 * i)], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix, *(*(&v183 + 1) + 8 * i)), v163);
        [v71 addObject:v96];
      }

      v93 = OUTLINED_FUNCTION_7_29(v97, v98, v99, v100, v101, v102, v103, v104, v115, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v148, v150, v153, v156, v159, v161, v163, obja, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
    }

    while (v93);
  }

  moduleCalibrationByPortType = [v150 moduleCalibrationByPortType];
  if (moduleCalibrationByPortType)
  {
    v106 = moduleCalibrationByPortType;
    v107 = [BWDeferredDictionaryIntermediate alloc];
    v108 = [(BWDeferredDictionaryIntermediate *)v107 initWithDictionary:v106 tag:BWDeferredIntermediateTagModuleCalibrationByPortType URL:v163];
    [v71 addObject:v108];
  }

  v109 = +[BWDeferredProcessingContainerManager sharedInstance];
  v166 = v148;
  v110 = -[BWDeferredProcessingContainerManager createTransientContainerWithApplicationID:resolvedSettings:unresolvedSettings:pipelineParameters:intermediates:photoDescriptors:](v109, "createTransientContainerWithApplicationID:resolvedSettings:unresolvedSettings:pipelineParameters:intermediates:photoDescriptors:", v156, v159, v161, v153, v71, [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1]);

  return v110;
}

- (unint64_t)expectsGainMapForSettings:(void *)settings captureSettings:
{
  if (!result)
  {
    return result;
  }

  captureType = [settings captureType];
  captureFlags = [settings captureFlags];
  v7 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion]>> 16;
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      if ([a2 depthDataDeliveryEnabled])
      {
        v8 = (captureFlags >> 7) & 1;
        if (captureType != 1)
        {
          LODWORD(v8) = 1;
        }

        return v8 & (captureFlags >> 11);
      }

      if (captureType != 1)
      {
        if (captureType == 11 || (captureType & 0xFFFFFFFE) == 12)
        {
          return 1;
        }

        else
        {
          return (captureFlags >> 20) & 1;
        }
      }

      if ((captureFlags & 0x80) != 0)
      {
        return [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion]> 2;
      }
    }

    return 0;
  }

  v9 = (captureFlags >> 7) & 1;
  if (captureType != 1)
  {
    LODWORD(v9) = 1;
  }

  v11 = captureType == 11 || captureType == 2;
  if (captureType == 12)
  {
    v11 = 1;
  }

  v12 = (captureFlags & 0x100000) != 0 || v11;
  if ((captureFlags & 0x880) != 0)
  {
    return v9;
  }

  else
  {
    return v12;
  }
}

- (uint64_t)_reportCoreAnalyticsDataWithError:(void *)error job:
{
  if (result)
  {
    result = [error container];
    v5 = result;
    if (a2 == -16140)
    {
      v6 = 0x1F2197F30;
    }

    else if (a2)
    {
      result = [FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:a2];
      v6 = result ? 0x1F216FC70 : 0x1F2197F10;
    }

    else
    {
      v6 = 0x1F2197EF0;
    }

    if (v6 != 0x1F216FC70)
    {
      v7 = objc_alloc_init(BWDeferredProcessingAnalyticsPayload);
      [(BWDeferredProcessingAnalyticsPayload *)v7 setError:a2];
      [(BWDeferredProcessingAnalyticsPayload *)v7 setProcessingResult:v6];
      if (v5)
      {
        -[BWDeferredProcessingAnalyticsPayload setContainerAgeInSeconds:](v7, "setContainerAgeInSeconds:", [v5 ageSeconds]);
        -[BWDeferredProcessingAnalyticsPayload setContainerSizeInBytes:](v7, "setContainerSizeInBytes:", [v5 sizeBytes]);
        -[BWDeferredProcessingAnalyticsPayload setProcessingType:](v7, "setProcessingType:", [v5 processingType]);
        -[BWDeferredProcessingAnalyticsPayload setFileBacked:](v7, "setFileBacked:", [v5 isRemote] ^ 1);
        if (a2 == -16140)
        {
          processingCount = 0xFFFFFFFFLL;
        }

        else
        {
          processingCount = [v5 processingCount];
        }

        [(BWDeferredProcessingAnalyticsPayload *)v7 setContainerProcessingCount:processingCount];
      }

      -[BWDeferredProcessingAnalyticsPayload setInteractiveQoS:](v7, "setInteractiveQoS:", [error isInteractiveQoS]);
      -[BWDeferredProcessingAnalyticsPayload setGraphPrepareDurationInMilliseconds:](v7, "setGraphPrepareDurationInMilliseconds:", [error prepareGraphNS] / 0xF4240uLL);
      -[BWDeferredProcessingAnalyticsPayload setJobDurationInMilliseconds:](v7, "setJobDurationInMilliseconds:", [error durationNS] / 0xF4240uLL);
      v9 = +[BWCoreAnalyticsReporter sharedInstance];

      return [(BWCoreAnalyticsReporter *)v9 sendEvent:v7];
    }
  }

  return result;
}

- (uint64_t)_ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

- (uint64_t)_handleProcessedStillImage:error:settings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

@end